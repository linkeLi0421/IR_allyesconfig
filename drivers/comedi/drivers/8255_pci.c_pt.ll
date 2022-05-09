; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/8255_pci.c_pt.bc'
source_filename = "../drivers/comedi/drivers/8255_pci.c"
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
%struct.pci_8255_boardinfo = type { ptr, i32, i32, i8 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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

@__initcall__kmod_8255_pci__236_289_pci_8255_driver_init6 = internal global ptr @pci_8255_driver_init, section ".initcall6.init", align 4
@pci_8255_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr null, ptr @comedi_pci_detach, ptr @pci_8255_auto_attach, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@pci_8255_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @pci_8255_pci_table, ptr @pci_8255_pci_probe, ptr @comedi_pci_auto_unconfig, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_pci_8255_driver_exit = internal global ptr @pci_8255_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description237 = internal constant [72 x i8] c"8255_pci.description=COMEDI - Generic PCI based 8255 Digital I/O boards\00", section ".modinfo", align 1
@__UNIQUE_ID_author238 = internal constant [46 x i8] c"8255_pci.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [46 x i8] c"8255_pci.file=drivers/comedi/drivers/8255_pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [21 x i8] c"8255_pci.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"8255_pci\00", [23 x i8] zeroinitializer }, align 32
@pci_8255_boards = internal constant { [15 x %struct.pci_8255_boardinfo], [48 x i8] } { [15 x %struct.pci_8255_boardinfo] [%struct.pci_8255_boardinfo { ptr @.str.1, i32 2, i32 1, i8 0 }, %struct.pci_8255_boardinfo { ptr @.str.2, i32 2, i32 2, i8 0 }, %struct.pci_8255_boardinfo { ptr @.str.3, i32 2, i32 4, i8 0 }, %struct.pci_8255_boardinfo { ptr @.str.4, i32 2, i32 1, i8 0 }, %struct.pci_8255_boardinfo { ptr @.str.5, i32 2, i32 1, i8 0 }, %struct.pci_8255_boardinfo { ptr @.str.6, i32 1, i32 2, i8 0 }, %struct.pci_8255_boardinfo { ptr @.str.6, i32 2, i32 2, i8 0 }, %struct.pci_8255_boardinfo { ptr @.str.7, i32 2, i32 4, i8 0 }, %struct.pci_8255_boardinfo { ptr @.str.8, i32 1, i32 4, i8 -128 }, %struct.pci_8255_boardinfo { ptr @.str.9, i32 1, i32 4, i8 -128 }, %struct.pci_8255_boardinfo { ptr @.str.10, i32 1, i32 4, i8 -128 }, %struct.pci_8255_boardinfo { ptr @.str.11, i32 1, i32 1, i8 -128 }, %struct.pci_8255_boardinfo { ptr @.str.12, i32 1, i32 1, i8 -128 }, %struct.pci_8255_boardinfo { ptr @.str.13, i32 1, i32 1, i8 -128 }, %struct.pci_8255_boardinfo { ptr @.str.14, i32 1, i32 1, i8 -128 }], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"adl_pci-7224\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"adl_pci-7248\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"adl_pci-7296\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cb_pci-dio24\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cb_pci-dio24h\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cb_pci-dio48h\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cb_pci-dio96h\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ni_pci-dio-96\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ni_pci-dio-96b\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ni_pxi-6508\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ni_pci-6503\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ni_pci-6503b\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ni_pci-6503x\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ni_pxi-6503\00", [20 x i8] zeroinitializer }, align 32
@pci_8255_pci_table = internal constant { [16 x %struct.pci_device_id], [128 x i8] } { [16 x %struct.pci_device_id] [%struct.pci_device_id { i32 5194, i32 29220, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5194, i32 29256, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 5194, i32 29334, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4871, i32 40, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4871, i32 20, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4871, i32 11, i32 0, i32 0, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4871, i32 11, i32 4871, i32 11, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 4871, i32 23, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 4243, i32 352, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4243, i32 5680, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 4243, i32 5056, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4243, i32 1024, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4243, i32 4688, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 4243, i32 6096, i32 -1, i32 -1, i32 0, i32 0, i32 13, i32 0 }, %struct.pci_device_id { i32 4243, i32 6144, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id zeroinitializer], [128 x i8] zeroinitializer }, align 32
@___asan_gen_.15 = private unnamed_addr constant [16 x i8] c"pci_8255_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 248, i32 29 }
@___asan_gen_.18 = private unnamed_addr constant [20 x i8] c"pci_8255_pci_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 283, i32 26 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 249, i32 17 }
@___asan_gen_.24 = private unnamed_addr constant [16 x i8] c"pci_8255_boards\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 84, i32 40 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 86, i32 12 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 91, i32 12 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 96, i32 12 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 101, i32 12 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 106, i32 12 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 111, i32 12 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 121, i32 12 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 126, i32 12 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 132, i32 12 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 138, i32 12 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 144, i32 12 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 150, i32 12 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 156, i32 12 }
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 162, i32 12 }
@___asan_gen_.69 = private unnamed_addr constant [19 x i8] c"pci_8255_pci_table\00", align 1
@___asan_gen_.70 = private constant [37 x i8] c"../drivers/comedi/drivers/8255_pci.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 261, i32 35 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_pci_8255_driver_exit, ptr @__initcall__kmod_8255_pci__236_289_pci_8255_driver_init6, ptr @pci_8255_driver_exit, ptr @pci_8255_driver, ptr @pci_8255_pci_driver, ptr @.str, ptr @pci_8255_boards, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @pci_8255_pci_table], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_8255_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_8255_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_8255_boards to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_8255_pci_table to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_8255_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_pci_driver_register(ptr noundef nonnull @pci_8255_driver, ptr noundef nonnull @pci_8255_pci_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pci_8255_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @comedi_pci_driver_unregister(ptr noundef nonnull @pci_8255_driver, ptr noundef nonnull @pci_8255_pci_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_driver_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_detach(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_8255_auto_attach(ptr noundef %dev, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_pci_dev(ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %context)
  %cmp = icmp ugt i32 %context, 14
  %arrayidx = getelementptr [15 x %struct.pci_8255_boardinfo], ptr @pci_8255_boards, i32 0, i32 %context
  %tobool.not86 = icmp eq ptr %arrayidx, null
  %tobool.not = or i1 %cmp, %tobool.not86
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
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
  %call3 = tail call i32 @comedi_pci_enable(ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %4 = and i32 %context, 268435448
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool7.not = icmp eq i32 %4, 0
  br i1 %tobool7.not, label %if.end6.if.end13_crit_edge, label %if.then8

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then8:                                         ; preds = %if.end6
  %call.i = tail call ptr @pci_ioremap_bar(ptr noundef %call, i32 noundef 0) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then8.cleanup_crit_edge, label %pci_8255_mite_init.exit.thread

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

pci_8255_mite_init.exit.thread:                   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %call, i32 0, i32 47, i32 1
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  tail call void @arm_heavy_mb() #4
  %or.i = or i32 %6, 128
  %7 = tail call i32 @llvm.bswap.i32(i32 %or.i) #4
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #4, !srcloc !58
  tail call void @iounmap(ptr noundef nonnull %call.i) #4
  br label %if.end13

if.end13:                                         ; preds = %pci_8255_mite_init.exit.thread, %if.end6.if.end13_crit_edge
  %dio_badr = getelementptr [15 x %struct.pci_8255_boardinfo], ptr @pci_8255_boards, i32 0, i32 %context, i32 1
  %8 = ptrtoint ptr %dio_badr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dio_badr, align 4
  %flags = getelementptr %struct.pci_dev, ptr %call, i32 0, i32 47, i32 %9, i32 3
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end13
  %call18 = tail call ptr @pci_ioremap_bar(ptr noundef %call, i32 noundef %9) #4
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %12 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call18, ptr %mmio, align 4
  %tobool20.not = icmp eq ptr %call18, null
  br i1 %tobool20.not, label %if.then16.cleanup_crit_edge, label %if.then16.if.end26_crit_edge

if.then16.if.end26_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx14 = getelementptr %struct.pci_dev, ptr %call, i32 0, i32 47, i32 %9
  %13 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx14, align 8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %15 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %iobase, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then16.if.end26_crit_edge
  %n_8255 = getelementptr [15 x %struct.pci_8255_boardinfo], ptr @pci_8255_boards, i32 0, i32 %context, i32 2
  %16 = ptrtoint ptr %n_8255 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n_8255, align 4
  %call27 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef %17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %for.body.lr.ph, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end26
  %18 = ptrtoint ptr %n_8255 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_8255, align 4
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %mmio34 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %smax = call i32 @llvm.smax.i32(i32 %19, i32 1)
  br label %for.body

for.cond:                                         ; preds = %if.end41
  %inc = add nuw nsw i32 %i.088, 1
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.088 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %20 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %subdevices, align 4
  %arrayidx33 = getelementptr %struct.comedi_subdevice, ptr %21, i32 %i.088
  %22 = ptrtoint ptr %mmio34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio34, align 4
  %tobool35.not = icmp eq ptr %23, null
  %mul39 = shl i32 %i.088, 2
  br i1 %tobool35.not, label %if.else38, label %if.then36

if.then36:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %call37 = tail call i32 @subdev_8255_mm_init(ptr noundef %dev, ptr noundef %arrayidx33, ptr noundef null, i32 noundef %mul39) #4
  br label %if.end41

if.else38:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %call40 = tail call i32 @subdev_8255_init(ptr noundef %dev, ptr noundef %arrayidx33, ptr noundef null, i32 noundef %mul39) #4
  br label %if.end41

if.end41:                                         ; preds = %if.else38, %if.then36
  %ret.0 = phi i32 [ %call37, %if.then36 ], [ %call40, %if.else38 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool42.not = icmp eq i32 %ret.0, 0
  br i1 %tobool42.not, label %for.cond, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %if.end41.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %call3, %if.end2.cleanup_crit_edge ], [ -12, %if.then16.cleanup_crit_edge ], [ %call27, %if.end26.cleanup_crit_edge ], [ -12, %if.then8.cleanup_crit_edge ], [ %ret.0, %if.end41.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_to_pci_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @subdev_8255_mm_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @subdev_8255_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_8255_pci_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %call = tail call i32 @comedi_pci_auto_config(ptr noundef %dev, ptr noundef nonnull @pci_8255_driver, i32 noundef %1) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_auto_unconfig(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_auto_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__initcall__kmod_8255_pci__236_289_pci_8255_driver_init6, !1, !"__initcall__kmod_8255_pci__236_289_pci_8255_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/8255_pci.c", i32 289, i32 1}
!2 = !{ptr @__exitcall_pci_8255_driver_exit, !1, !"__exitcall_pci_8255_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description237, !4, !"__UNIQUE_ID_description237", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/8255_pci.c", i32 291, i32 1}
!5 = !{ptr @__UNIQUE_ID_author238, !6, !"__UNIQUE_ID_author238", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/8255_pci.c", i32 292, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/8255_pci.c", i32 293, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/8255_pci.c", i32 249, i32 17}
!12 = !{ptr @pci_8255_driver, !13, !"pci_8255_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/8255_pci.c", i32 248, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/8255_pci.c", i32 86, i32 12}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/comedi/drivers/8255_pci.c", i32 91, i32 12}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/comedi/drivers/8255_pci.c", i32 96, i32 12}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/comedi/drivers/8255_pci.c", i32 101, i32 12}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/comedi/drivers/8255_pci.c", i32 106, i32 12}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/comedi/drivers/8255_pci.c", i32 111, i32 12}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/comedi/drivers/8255_pci.c", i32 121, i32 12}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/comedi/drivers/8255_pci.c", i32 126, i32 12}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/comedi/drivers/8255_pci.c", i32 132, i32 12}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/comedi/drivers/8255_pci.c", i32 138, i32 12}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/comedi/drivers/8255_pci.c", i32 144, i32 12}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/comedi/drivers/8255_pci.c", i32 150, i32 12}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/comedi/drivers/8255_pci.c", i32 156, i32 12}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/comedi/drivers/8255_pci.c", i32 162, i32 12}
!42 = !{ptr @pci_8255_boards, !43, !"pci_8255_boards", i1 false, i1 false}
!43 = !{!"../drivers/comedi/drivers/8255_pci.c", i32 84, i32 40}
!44 = !{ptr @pci_8255_pci_driver, !45, !"pci_8255_pci_driver", i1 false, i1 false}
!45 = !{!"../drivers/comedi/drivers/8255_pci.c", i32 283, i32 26}
!46 = !{ptr @pci_8255_pci_table, !47, !"pci_8255_pci_table", i1 false, i1 false}
!47 = !{!"../drivers/comedi/drivers/8255_pci.c", i32 261, i32 35}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i64 2154529215}
!58 = !{i64 4987437}
