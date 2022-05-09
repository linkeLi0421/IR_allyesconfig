; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/dt3000.c_pt.bc'
source_filename = "../drivers/comedi/drivers/dt3000.c"
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
%struct.dt3k_boardtype = type { ptr, i32, i32, ptr, i8 }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.dt3k_private = type { i32, i32, i32 }
%struct.comedi_async = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.comedi_cmd, %struct.wait_queue_head, i32, ptr }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }

@__initcall__kmod_dt3000__237_735_dt3000_driver_init6 = internal global ptr @dt3000_driver_init, section ".initcall6.init", align 4
@dt3000_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr null, ptr @comedi_pci_detach, ptr @dt3000_auto_attach, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dt3000_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @dt3000_pci_table, ptr @dt3000_pci_probe, ptr @comedi_pci_auto_unconfig, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_dt3000_driver_exit = internal global ptr @dt3000_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author238 = internal constant [44 x i8] c"dt3000.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description239 = internal constant [75 x i8] c"dt3000.description=Comedi driver for Data Translation DT3000 series boards\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [42 x i8] c"dt3000.file=drivers/comedi/drivers/dt3000\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [19 x i8] c"dt3000.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dt3000\00", [25 x i8] zeroinitializer }, align 32
@dt3k_boardtypes = internal constant { [7 x %struct.dt3k_boardtype], [52 x i8] } { [7 x %struct.dt3k_boardtype] [%struct.dt3k_boardtype { ptr @.str.1, i32 16, i32 3000, ptr @range_dt3000_ai, i8 64 }, %struct.dt3k_boardtype { ptr @.str.2, i32 16, i32 3000, ptr @range_dt3000_ai_pgl, i8 64 }, %struct.dt3k_boardtype { ptr @.str.3, i32 32, i32 3000, ptr @range_dt3000_ai, i8 0 }, %struct.dt3k_boardtype { ptr @.str.4, i32 64, i32 3000, ptr @range_dt3000_ai, i8 64 }, %struct.dt3k_boardtype { ptr @.str.5, i32 64, i32 3000, ptr @range_dt3000_ai_pgl, i8 64 }, %struct.dt3k_boardtype { ptr @.str.6, i32 16, i32 10000, ptr @range_dt3000_ai, i8 -64 }, %struct.dt3k_boardtype { ptr @.str.7, i32 16, i32 5000, ptr @range_dt3000_ai, i8 -64 }], [52 x i8] zeroinitializer }, align 32
@range_bipolar10 = external dso_local constant %struct.comedi_lrange, align 4
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@range_unknown = external dso_local constant %struct.comedi_lrange, align 4
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dt3001\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dt3001-pgl\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dt3002\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dt3003\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dt3003-pgl\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dt3004\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dt3005\00", [25 x i8] zeroinitializer }, align 32
@range_dt3000_ai_pgl = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -1000000, i32 1000000, i32 0 }, %struct.comedi_krange { i32 -100000, i32 100000, i32 0 }, %struct.comedi_krange { i32 -20000, i32 20000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@debug_n_ints = internal global { i32, [28 x i8] } zeroinitializer, align 32
@range_dt3000_ai = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@dt3k_send_cmd.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.11, ptr @.str.12, i8 0, i8 60, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dt3k_send_cmd\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/comedi/drivers/dt3000.c\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: timeout/error status=0x%04x\0A\00", [63 x i8] zeroinitializer }, align 32
@dt3000_pci_table = internal constant { [8 x %struct.pci_device_id], [64 x i8] } { [8 x %struct.pci_device_id] [%struct.pci_device_id { i32 4374, i32 34, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4374, i32 35, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4374, i32 36, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4374, i32 37, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4374, i32 38, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 4374, i32 39, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4374, i32 40, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@___asan_gen_.16 = private unnamed_addr constant [14 x i8] c"dt3000_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 704, i32 29 }
@___asan_gen_.19 = private unnamed_addr constant [18 x i8] c"dt3000_pci_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 729, i32 26 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 705, i32 17 }
@___asan_gen_.25 = private unnamed_addr constant [16 x i8] c"dt3k_boardtypes\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 167, i32 36 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 169, i32 12 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 176, i32 12 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 183, i32 12 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 189, i32 12 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 196, i32 12 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 203, i32 12 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 211, i32 12 }
@___asan_gen_.49 = private unnamed_addr constant [20 x i8] c"range_dt3000_ai_pgl\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 139, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant [13 x i8] c"debug_n_ints\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 312, i32 12 }
@___asan_gen_.55 = private unnamed_addr constant [16 x i8] c"range_dt3000_ai\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 130, i32 35 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 242, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"dt3000_pci_table\00", align 1
@___asan_gen_.68 = private constant [35 x i8] c"../drivers/comedi/drivers/dt3000.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 717, i32 35 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_dt3000_driver_exit, ptr @__initcall__kmod_dt3000__237_735_dt3000_driver_init6, ptr @dt3000_driver_exit, ptr @dt3000_driver, ptr @dt3000_pci_driver, ptr @.str, ptr @dt3k_boardtypes, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @range_dt3000_ai_pgl, ptr @debug_n_ints, ptr @range_dt3000_ai, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @dt3000_pci_table], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt3000_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt3000_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt3k_boardtypes to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_dt3000_ai_pgl to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_n_ints to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_dt3000_ai to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt3000_pci_table to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dt3000_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_pci_driver_register(ptr noundef nonnull @dt3000_driver, ptr noundef nonnull @dt3000_pci_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dt3000_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @comedi_pci_driver_unregister(ptr noundef nonnull @dt3000_driver, ptr noundef nonnull @dt3000_pci_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_driver_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_detach(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt3000_auto_attach(ptr noundef %dev, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_pci_dev(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %context)
  %cmp = icmp ugt i32 %context, 6
  %arrayidx = getelementptr [7 x %struct.dt3k_boardtype], ptr @dt3k_boardtypes, i32 0, i32 %context
  %tobool.not138 = icmp eq ptr %arrayidx, null
  %tobool.not = or i1 %cmp, %tobool.not138
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  %call3 = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 12) #6
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end2.cleanup_crit_edge, label %if.end6

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %call7 = tail call i32 @comedi_pci_enable(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %call11 = tail call ptr @pci_ioremap_bar(ptr noundef %call, i32 noundef 0) #6
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %4 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call11, ptr %mmio, align 4
  %tobool13.not = icmp eq ptr %call11, null
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %irq = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 46
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool16.not = icmp eq i32 %6, 0
  br i1 %tobool16.not, label %if.end15.if.end26_crit_edge, label %if.then17

if.end15.if.end26_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then17:                                        ; preds = %if.end15
  %7 = ptrtoint ptr %board_name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %board_name, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %6, ptr noundef nonnull @dt3k_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %8, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp21 = icmp eq i32 %call.i, 0
  br i1 %cmp21, label %if.then22, label %if.then17.if.end26_crit_edge

if.then17.if.end26_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then22:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  %irq24 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %11 = ptrtoint ptr %irq24 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %irq24, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.then17.if.end26_crit_edge, %if.end15.if.end26_crit_edge
  %call27 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %12 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %13, i32 0, i32 4
  %15 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 5308416, ptr %subdev_flags, align 4
  %adchan = getelementptr [7 x %struct.dt3k_boardtype], ptr @dt3k_boardtypes, i32 0, i32 %context, i32 1
  %16 = ptrtoint ptr %adchan to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %adchan, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %13, i32 0, i32 3
  %18 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %n_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %context)
  %19 = icmp ult i32 %context, 5
  %cond = select i1 %19, i32 4095, i32 65535
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %13, i32 0, i32 13
  %20 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cond, ptr %maxdata, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %13, i32 0, i32 15
  %21 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @range_dt3000_ai, ptr %range_table, align 4
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, ptr %13, i32 0, i32 18
  %22 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @dt3k_ai_insn_read, ptr %insn_read, align 4
  %irq33 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %23 = ptrtoint ptr %irq33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool34.not = icmp eq i32 %24, 0
  br i1 %tobool34.not, label %if.end30.if.end37_crit_edge, label %if.then35

if.end30.if.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %25 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %13, ptr %read_subdev, align 4
  %26 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %subdev_flags, align 4
  %or = or i32 %27, 32768
  store i32 %or, ptr %subdev_flags, align 4
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, ptr %13, i32 0, i32 5
  %28 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 512, ptr %len_chanlist, align 4
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, ptr %13, i32 0, i32 22
  %29 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @dt3k_ai_cmd, ptr %do_cmd, align 4
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, ptr %13, i32 0, i32 23
  %30 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @dt3k_ai_cmdtest, ptr %do_cmdtest, align 4
  %cancel = getelementptr inbounds %struct.comedi_subdevice, ptr %13, i32 0, i32 25
  %31 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @dt3k_ai_cancel, ptr %cancel, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end30.if.end37_crit_edge
  %32 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %subdevices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %context)
  %tobool43.not = icmp eq i32 %context, 2
  br i1 %tobool43.not, label %if.else, label %if.then44

if.then44:                                        ; preds = %if.end37
  %arrayidx39 = getelementptr %struct.comedi_subdevice, ptr %33, i32 1
  %type45 = getelementptr %struct.comedi_subdevice, ptr %33, i32 1, i32 2
  %34 = ptrtoint ptr %type45 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %type45, align 4
  %subdev_flags46 = getelementptr %struct.comedi_subdevice, ptr %33, i32 1, i32 4
  %35 = ptrtoint ptr %subdev_flags46 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 131072, ptr %subdev_flags46, align 4
  %n_chan47 = getelementptr %struct.comedi_subdevice, ptr %33, i32 1, i32 3
  %36 = ptrtoint ptr %n_chan47 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %n_chan47, align 4
  %maxdata48 = getelementptr %struct.comedi_subdevice, ptr %33, i32 1, i32 13
  %37 = ptrtoint ptr %maxdata48 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 4095, ptr %maxdata48, align 4
  %range_table49 = getelementptr %struct.comedi_subdevice, ptr %33, i32 1, i32 15
  %38 = ptrtoint ptr %range_table49 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @range_bipolar10, ptr %range_table49, align 4
  %insn_write = getelementptr %struct.comedi_subdevice, ptr %33, i32 1, i32 19
  %39 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @dt3k_ao_insn_write, ptr %insn_write, align 4
  %call50 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx39) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then44.if.end55_crit_edge, label %if.then44.cleanup_crit_edge

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then44.if.end55_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.else:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %type54 = getelementptr %struct.comedi_subdevice, ptr %33, i32 1, i32 2
  %40 = ptrtoint ptr %type54 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %type54, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.else, %if.then44.if.end55_crit_edge
  %41 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %subdevices, align 4
  %type58 = getelementptr %struct.comedi_subdevice, ptr %42, i32 2, i32 2
  %43 = ptrtoint ptr %type58 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 5, ptr %type58, align 4
  %subdev_flags59 = getelementptr %struct.comedi_subdevice, ptr %42, i32 2, i32 4
  %44 = ptrtoint ptr %subdev_flags59 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 196608, ptr %subdev_flags59, align 4
  %n_chan60 = getelementptr %struct.comedi_subdevice, ptr %42, i32 2, i32 3
  %45 = ptrtoint ptr %n_chan60 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 8, ptr %n_chan60, align 4
  %maxdata61 = getelementptr %struct.comedi_subdevice, ptr %42, i32 2, i32 13
  %46 = ptrtoint ptr %maxdata61 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %maxdata61, align 4
  %range_table62 = getelementptr %struct.comedi_subdevice, ptr %42, i32 2, i32 15
  %47 = ptrtoint ptr %range_table62 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @range_unipolar5, ptr %range_table62, align 4
  %insn_config = getelementptr %struct.comedi_subdevice, ptr %42, i32 2, i32 21
  %48 = ptrtoint ptr %insn_config to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @dt3k_dio_insn_config, ptr %insn_config, align 4
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %42, i32 2, i32 20
  %49 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @dt3k_dio_insn_bits, ptr %insn_bits, align 4
  %50 = load ptr, ptr %subdevices, align 4
  %type65 = getelementptr %struct.comedi_subdevice, ptr %50, i32 3, i32 2
  %51 = ptrtoint ptr %type65 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 8, ptr %type65, align 4
  %subdev_flags66 = getelementptr %struct.comedi_subdevice, ptr %50, i32 3, i32 4
  %52 = ptrtoint ptr %subdev_flags66 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 65536, ptr %subdev_flags66, align 4
  %n_chan67 = getelementptr %struct.comedi_subdevice, ptr %50, i32 3, i32 3
  %53 = ptrtoint ptr %n_chan67 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 4096, ptr %n_chan67, align 4
  %maxdata68 = getelementptr %struct.comedi_subdevice, ptr %50, i32 3, i32 13
  %54 = ptrtoint ptr %maxdata68 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 255, ptr %maxdata68, align 4
  %range_table69 = getelementptr %struct.comedi_subdevice, ptr %50, i32 3, i32 15
  %55 = ptrtoint ptr %range_table69 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @range_unknown, ptr %range_table69, align 4
  %insn_read70 = getelementptr %struct.comedi_subdevice, ptr %50, i32 3, i32 18
  %56 = ptrtoint ptr %insn_read70 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @dt3k_mem_insn_read, ptr %insn_read70, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.then44.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end55 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end2.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ], [ %call27, %if.end26.cleanup_crit_edge ], [ %call50, %if.then44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_to_pci_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt3k_interrupt(i32 noundef %irq, ptr noundef %d) #2 align 64 {
entry:
  %data.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 21
  %0 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_subdev, align 4
  %attached = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 10
  %2 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %attached, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 17
  %3 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 16368
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #6, !srcloc !54
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  %conv = zext i16 %6 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3:                                         ; preds = %if.end
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 3
  %7 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #6
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %data.i, align 2, !annotation !56
  %10 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 16356
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #6, !srcloc !54
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %conv.i = zext i16 %13 to i32
  %ai_front.i = getelementptr inbounds %struct.dt3k_private, ptr %8, i32 0, i32 1
  %14 = ptrtoint ptr %ai_front.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ai_front.i, align 4
  %sub.i = sub i32 %conv.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  %add.i = add i32 %sub.i, 2003
  %spec.select.i = select i1 %cmp.i, i32 %add.i, i32 %sub.i
  %ai_rear.i = getelementptr inbounds %struct.dt3k_private, ptr %8, i32 0, i32 2
  %16 = ptrtoint ptr %ai_rear.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ai_rear.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp335.i = icmp sgt i32 %spec.select.i, 0
  br i1 %cmp335.i, label %if.then3.for.body.i_crit_edge, label %if.then3.dt3k_ai_empty_fifo.exit_crit_edge

if.then3.dt3k_ai_empty_fifo.exit_crit_edge:       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %dt3k_ai_empty_fifo.exit

if.then3.for.body.i_crit_edge:                    ; preds = %if.then3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then3.for.body.i_crit_edge
  %rear.037.i = phi i32 [ %spec.store.select.i, %for.body.i.for.body.i_crit_edge ], [ %17, %if.then3.for.body.i_crit_edge ]
  %i.036.i = phi i32 [ %inc18.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then3.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio, align 4
  %add.ptr8.i = getelementptr i8, ptr %19, i32 8192
  %add.ptr9.i = getelementptr i8, ptr %add.ptr8.i, i32 %rear.037.i
  %20 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr9.i) #6, !srcloc !54
  %21 = call i16 @llvm.bswap.i16(i16 %20) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %data.i, align 2
  %call13.i = call i32 @comedi_buf_write_samples(ptr noundef %1, ptr noundef nonnull %data.i, i32 noundef 1) #6
  %inc.i = add i32 %rear.037.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2002, i32 %inc.i)
  %cmp14.i = icmp sgt i32 %inc.i, 2002
  %spec.store.select.i = select i1 %cmp14.i, i32 0, i32 %inc.i
  %inc18.i = add nuw nsw i32 %i.036.i, 1
  %exitcond.not.i = icmp eq i32 %inc18.i, %spec.select.i
  br i1 %exitcond.not.i, label %for.body.i.dt3k_ai_empty_fifo.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.dt3k_ai_empty_fifo.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dt3k_ai_empty_fifo.exit

dt3k_ai_empty_fifo.exit:                          ; preds = %for.body.i.dt3k_ai_empty_fifo.exit_crit_edge, %if.then3.dt3k_ai_empty_fifo.exit_crit_edge
  %rear.0.lcssa.i = phi i32 [ %17, %if.then3.dt3k_ai_empty_fifo.exit_crit_edge ], [ %spec.store.select.i, %for.body.i.dt3k_ai_empty_fifo.exit_crit_edge ]
  %23 = ptrtoint ptr %ai_rear.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %rear.0.lcssa.i, ptr %ai_rear.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  call void @arm_heavy_mb() #6
  %conv20.i = trunc i32 %rear.0.lcssa.i to i16
  %24 = call i16 @llvm.bswap.i16(i16 %conv20.i) #6
  %25 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio, align 4
  %add.ptr22.i = getelementptr i8, ptr %26, i32 16360
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr22.i, i16 %24) #6, !srcloc !60
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #6
  br label %if.end4

if.end4:                                          ; preds = %dt3k_ai_empty_fifo.exit, %if.end.if.end4_crit_edge
  %and5 = and i32 %conv, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end4.if.end8_crit_edge, label %if.then7

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %1, i32 0, i32 7
  %27 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %async, align 4
  %events = getelementptr inbounds %struct.comedi_async, ptr %28, i32 0, i32 16
  %29 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %events, align 4
  %or = or i32 %30, 16
  store i32 %or, ptr %events, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4.if.end8_crit_edge
  %31 = load i32, ptr @debug_n_ints, align 4
  %inc = add i32 %31, 1
  store i32 %inc, ptr @debug_n_ints, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %inc)
  %cmp = icmp sgt i32 %inc, 9
  br i1 %cmp, label %if.then10, label %if.end8.if.end14_crit_edge

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %async11 = getelementptr inbounds %struct.comedi_subdevice, ptr %1, i32 0, i32 7
  %32 = ptrtoint ptr %async11 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %async11, align 4
  %events12 = getelementptr inbounds %struct.comedi_async, ptr %33, i32 0, i32 16
  %34 = ptrtoint ptr %events12 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %events12, align 4
  %or13 = or i32 %35, 2
  store i32 %or13, ptr %events12, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end8.if.end14_crit_edge
  %call15 = call i32 @comedi_handle_events(ptr noundef %d, ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end14 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt3k_ai_insn_read(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %and = and i32 %1, 65535
  %shr = lshr i32 %1, 16
  %and2 = and i32 %shr, 255
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %2 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp8.not = icmp eq i32 %3, 0
  br i1 %cmp8.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = tail call fastcc i32 @dt3k_readsingle(ptr noundef %dev, i32 noundef 0, i32 noundef %and, i32 noundef %and2)
  %arrayidx = getelementptr i32, ptr %data, i32 %i.09
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.09, 1
  %5 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %6
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  ret i32 %i.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt3k_ai_cmd(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %0 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %async, align 4
  %chanlist_len = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 17, i32 13
  %2 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp164.not = icmp eq i32 %3, 0
  br i1 %cmp164.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %chanlist = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 17, i32 12
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0165 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chanlist, align 4
  %arrayidx = getelementptr i32, ptr %5, i32 %i.0165
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  %8 = lshr i32 %7, 10
  %shl = and i32 %8, 16320
  %or = or i32 %shl, %7
  %conv = trunc i32 %or to i16
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %10 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 8192
  %add.ptr5 = getelementptr i8, ptr %add.ptr, i32 %i.0165
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5, i16 %9) #6, !srcloc !60
  %inc = add nuw i32 %i.0165, 1
  %12 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chanlist_len, align 4
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %chanlist6 = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 17, i32 12
  %14 = ptrtoint ptr %chanlist6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chanlist6, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  %scan_end_arg = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 17, i32 9
  %18 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %scan_end_arg, align 4
  %conv13 = trunc i32 %19 to i16
  %20 = tail call i16 @llvm.bswap.i16(i16 %conv13)
  %mmio14 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %21 = ptrtoint ptr %mmio14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio14, align 4
  %add.ptr15 = getelementptr i8, ptr %22, i32 16212
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr15, i16 %20) #6, !srcloc !60
  %convert_src = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 17, i32 6
  %23 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %24)
  %cmp16 = icmp eq i32 %24, 16
  br i1 %cmp16, label %if.then, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %for.end
  %convert_arg = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 17, i32 7
  %flags = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 17, i32 1
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 4
  %and.i = and i32 %26, 196608
  br label %for.cond.i

for.cond.i:                                       ; preds = %sw.epilog.i.for.cond.i_crit_edge, %if.then
  %prescale.0.i = phi i32 [ 0, %if.then ], [ %add.i, %sw.epilog.i.for.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %prescale.0.i)
  %exitcond.not.i = icmp eq i32 %prescale.0.i, 16
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %add.i = add nuw nsw i32 %prescale.0.i, 1
  %mul.i = mul nuw nsw i32 %add.i, 50
  %27 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %sw.default.i [
    i32 131072, label %sw.bb5.i
    i32 65536, label %sw.bb3.i
  ]

sw.default.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %convert_arg, align 4
  %div37.i = lshr exact i32 %mul.i, 1
  %add1.i = add i32 %29, %div37.i
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %convert_arg, align 4
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %convert_arg, align 4
  %add6.i = add nsw i32 %mul.i, -1
  %sub.i = add i32 %add6.i, %33
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb5.i, %sw.bb3.i, %sw.default.i
  %add1.pn.i = phi i32 [ %add1.i, %sw.default.i ], [ %31, %sw.bb3.i ], [ %sub.i, %sw.bb5.i ]
  %divider.0.i = udiv i32 %add1.pn.i, %mul.i
  %cmp8.i = icmp ult i32 %divider.0.i, 65536
  br i1 %cmp8.i, label %if.then.i, label %sw.epilog.i.for.cond.i_crit_edge

sw.epilog.i.for.cond.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

if.then.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul9.i = mul i32 %divider.0.i, %mul.i
  %34 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %mul9.i, ptr %convert_arg, align 4
  %shl.i = shl nuw nsw i32 %prescale.0.i, 16
  %or.i = or i32 %divider.0.i, %shl.i
  br label %dt3k_ns_to_timer.exit

for.end.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 52428000, ptr %convert_arg, align 4
  br label %dt3k_ns_to_timer.exit

dt3k_ns_to_timer.exit:                            ; preds = %for.end.i, %if.then.i
  %retval.0.i = phi i32 [ %or.i, %if.then.i ], [ 1048575, %for.end.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %shr21 = lshr i32 %retval.0.i, 16
  %conv22 = trunc i32 %shr21 to i16
  %36 = tail call i16 @llvm.bswap.i16(i16 %conv22)
  %37 = ptrtoint ptr %mmio14 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmio14, align 4
  %add.ptr24 = getelementptr i8, ptr %38, i32 16216
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr24, i16 %36) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  tail call void @arm_heavy_mb() #6
  %conv29 = trunc i32 %retval.0.i to i16
  %39 = tail call i16 @llvm.bswap.i16(i16 %conv29)
  %40 = ptrtoint ptr %mmio14 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmio14, align 4
  %add.ptr31 = getelementptr i8, ptr %41, i32 16220
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr31, i16 %39) #6, !srcloc !60
  br label %if.end

if.end:                                           ; preds = %dt3k_ns_to_timer.exit, %for.end.if.end_crit_edge
  %scan_begin_src = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 17, i32 4
  %42 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %43)
  %cmp32 = icmp eq i32 %43, 16
  br i1 %cmp32, label %if.then34, label %if.end.do.body52_crit_edge

if.end.do.body52_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body52

if.then34:                                        ; preds = %if.end
  %scan_begin_arg = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 17, i32 5
  %flags35 = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 17, i32 1
  %44 = ptrtoint ptr %flags35 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags35, align 4
  %and.i114 = and i32 %45, 196608
  br label %for.cond.i117

for.cond.i117:                                    ; preds = %sw.epilog.i131.for.cond.i117_crit_edge, %if.then34
  %prescale.0.i115 = phi i32 [ 0, %if.then34 ], [ %add.i118, %sw.epilog.i131.for.cond.i117_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %prescale.0.i115)
  %exitcond.not.i116 = icmp eq i32 %prescale.0.i115, 16
  br i1 %exitcond.not.i116, label %for.end.i136, label %for.body.i120

for.body.i120:                                    ; preds = %for.cond.i117
  %add.i118 = add nuw nsw i32 %prescale.0.i115, 1
  %mul.i119 = mul nuw nsw i32 %add.i118, 100
  %46 = zext i32 %and.i114 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %and.i114, label %sw.default.i123 [
    i32 131072, label %sw.bb5.i127
    i32 65536, label %sw.bb3.i124
  ]

sw.default.i123:                                  ; preds = %for.body.i120
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %scan_begin_arg, align 4
  %div37.i121 = lshr exact i32 %mul.i119, 1
  %add1.i122 = add i32 %48, %div37.i121
  br label %sw.epilog.i131

sw.bb3.i124:                                      ; preds = %for.body.i120
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %scan_begin_arg, align 4
  br label %sw.epilog.i131

sw.bb5.i127:                                      ; preds = %for.body.i120
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %scan_begin_arg, align 4
  %add6.i125 = add nsw i32 %mul.i119, -1
  %sub.i126 = add i32 %add6.i125, %52
  br label %sw.epilog.i131

sw.epilog.i131:                                   ; preds = %sw.bb5.i127, %sw.bb3.i124, %sw.default.i123
  %add1.pn.i128 = phi i32 [ %add1.i122, %sw.default.i123 ], [ %50, %sw.bb3.i124 ], [ %sub.i126, %sw.bb5.i127 ]
  %divider.0.i129 = udiv i32 %add1.pn.i128, %mul.i119
  %cmp8.i130 = icmp ult i32 %divider.0.i129, 65536
  br i1 %cmp8.i130, label %if.then.i135, label %sw.epilog.i131.for.cond.i117_crit_edge

sw.epilog.i131.for.cond.i117_crit_edge:           ; preds = %sw.epilog.i131
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i117

if.then.i135:                                     ; preds = %sw.epilog.i131
  call void @__sanitizer_cov_trace_pc() #8
  %mul9.i132 = mul i32 %divider.0.i129, %mul.i119
  %53 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %mul9.i132, ptr %scan_begin_arg, align 4
  %shl.i133 = shl nuw nsw i32 %prescale.0.i115, 16
  %or.i134 = or i32 %divider.0.i129, %shl.i133
  br label %dt3k_ns_to_timer.exit138

for.end.i136:                                     ; preds = %for.cond.i117
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 104856000, ptr %scan_begin_arg, align 4
  br label %dt3k_ns_to_timer.exit138

dt3k_ns_to_timer.exit138:                         ; preds = %for.end.i136, %if.then.i135
  %retval.0.i137 = phi i32 [ %or.i134, %if.then.i135 ], [ 1048575, %for.end.i136 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  tail call void @arm_heavy_mb() #6
  %shr40 = lshr i32 %retval.0.i137, 16
  %conv41 = trunc i32 %shr40 to i16
  %55 = tail call i16 @llvm.bswap.i16(i16 %conv41)
  %56 = ptrtoint ptr %mmio14 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mmio14, align 4
  %add.ptr43 = getelementptr i8, ptr %57, i32 16224
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr43, i16 %55) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %conv48 = trunc i32 %retval.0.i137 to i16
  %58 = tail call i16 @llvm.bswap.i16(i16 %conv48)
  %59 = ptrtoint ptr %mmio14 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mmio14, align 4
  %add.ptr50 = getelementptr i8, ptr %60, i32 16228
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr50, i16 %58) #6, !srcloc !60
  br label %do.body52

do.body52:                                        ; preds = %dt3k_ns_to_timer.exit138, %if.end.do.body52_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %61 = ptrtoint ptr %mmio14 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mmio14, align 4
  %add.ptr56 = getelementptr i8, ptr %62, i32 16232
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr56, i16 2048) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void @arm_heavy_mb() #6
  %63 = and i32 %17, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %63)
  %cmp60 = icmp eq i32 %63, 33554432
  %64 = select i1 %cmp60, i16 256, i16 0
  %65 = ptrtoint ptr %mmio14 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mmio14, align 4
  %add.ptr64 = getelementptr i8, ptr %66, i32 16236
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr64, i16 %64) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %67 = ptrtoint ptr %mmio14 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mmio14, align 4
  %add.ptr69 = getelementptr i8, ptr %68, i32 16240
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr69, i16 -5885) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %69 = ptrtoint ptr %mmio14 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mmio14, align 4
  %add.ptr74 = getelementptr i8, ptr %70, i32 16204
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr74, i16 0) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %71 = ptrtoint ptr %mmio14 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mmio14, align 4
  %add.ptr.i = getelementptr i8, ptr %72, i32 16380
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 256) #6, !srcloc !60
  br label %for.body.i139

for.body.i139:                                    ; preds = %if.end.i.for.body.i139_crit_edge, %do.body52
  %i.032.i = phi i32 [ 0, %do.body52 ], [ %inc.i, %if.end.i.for.body.i139_crit_edge ]
  %73 = ptrtoint ptr %mmio14 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mmio14, align 4
  %add.ptr3.i = getelementptr i8, ptr %74, i32 16380
  %75 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3.i) #6, !srcloc !54
  %76 = shl i16 %75, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %cmp6.not.i = icmp eq i16 %76, 0
  br i1 %cmp6.not.i, label %if.end.i, label %for.end.i141

if.end.i:                                         ; preds = %for.body.i139
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %77(i32 noundef 214748) #6
  %inc.i = add nuw nsw i32 %i.032.i, 1
  %exitcond.not.i140 = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i140, label %if.end.i.do.body11.i_crit_edge, label %if.end.i.for.body.i139_crit_edge

if.end.i.for.body.i139_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i139

if.end.i.do.body11.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11.i

for.end.i141:                                     ; preds = %for.body.i139
  %conv5.i = zext i16 %76 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 21760, i16 %76)
  %cmp8.not.i = icmp eq i16 %76, 21760
  br i1 %cmp8.not.i, label %for.end.i141.dt3k_send_cmd.exit_crit_edge, label %for.end.i141.do.body11.i_crit_edge

for.end.i141.do.body11.i_crit_edge:               ; preds = %for.end.i141
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11.i

for.end.i141.dt3k_send_cmd.exit_crit_edge:        ; preds = %for.end.i141
  call void @__sanitizer_cov_trace_pc() #8
  br label %dt3k_send_cmd.exit

do.body11.i:                                      ; preds = %for.end.i141.do.body11.i_crit_edge, %if.end.i.do.body11.i_crit_edge
  %status.130.i = phi i32 [ %conv5.i, %for.end.i141.do.body11.i_crit_edge ], [ 0, %if.end.i.do.body11.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dt3k_send_cmd.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dt3k_ai_cmd, %dt3k_send_cmd.exit)) #6
          to label %if.then17.i [label %dt3k_send_cmd.exit], !srcloc !73

if.then17.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %78 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %class_dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dt3k_send_cmd.__UNIQUE_ID_ddebug236, ptr noundef %79, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, i32 noundef %status.130.i) #6
  br label %dt3k_send_cmd.exit

dt3k_send_cmd.exit:                               ; preds = %if.then17.i, %do.body11.i, %for.end.i141.dt3k_send_cmd.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void @arm_heavy_mb() #6
  %80 = ptrtoint ptr %mmio14 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mmio14, align 4
  %add.ptr79 = getelementptr i8, ptr %81, i32 16364
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr79, i16 1792) #6, !srcloc !60
  store i32 0, ptr @debug_n_ints, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %82 = ptrtoint ptr %mmio14 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mmio14, align 4
  %add.ptr84 = getelementptr i8, ptr %83, i32 16204
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr84, i16 0) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %84 = ptrtoint ptr %mmio14 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mmio14, align 4
  %add.ptr.i143 = getelementptr i8, ptr %85, i32 16380
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i143, i16 768) #6, !srcloc !60
  br label %for.body.i147

for.body.i147:                                    ; preds = %if.end.i150.for.body.i147_crit_edge, %dt3k_send_cmd.exit
  %i.032.i144 = phi i32 [ 0, %dt3k_send_cmd.exit ], [ %inc.i148, %if.end.i150.for.body.i147_crit_edge ]
  %86 = ptrtoint ptr %mmio14 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mmio14, align 4
  %add.ptr3.i145 = getelementptr i8, ptr %87, i32 16380
  %88 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3.i145) #6, !srcloc !54
  %89 = shl i16 %88, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %89)
  %cmp6.not.i146 = icmp eq i16 %89, 0
  br i1 %cmp6.not.i146, label %if.end.i150, label %for.end.i153

if.end.i150:                                      ; preds = %for.body.i147
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %90(i32 noundef 214748) #6
  %inc.i148 = add nuw nsw i32 %i.032.i144, 1
  %exitcond.not.i149 = icmp eq i32 %inc.i148, 100
  br i1 %exitcond.not.i149, label %if.end.i150.do.body11.i155_crit_edge, label %if.end.i150.for.body.i147_crit_edge

if.end.i150.for.body.i147_crit_edge:              ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i147

if.end.i150.do.body11.i155_crit_edge:             ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11.i155

for.end.i153:                                     ; preds = %for.body.i147
  %conv5.i151 = zext i16 %89 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 21760, i16 %89)
  %cmp8.not.i152 = icmp eq i16 %89, 21760
  br i1 %cmp8.not.i152, label %for.end.i153.dt3k_send_cmd.exit158_crit_edge, label %for.end.i153.do.body11.i155_crit_edge

for.end.i153.do.body11.i155_crit_edge:            ; preds = %for.end.i153
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11.i155

for.end.i153.dt3k_send_cmd.exit158_crit_edge:     ; preds = %for.end.i153
  call void @__sanitizer_cov_trace_pc() #8
  br label %dt3k_send_cmd.exit158

do.body11.i155:                                   ; preds = %for.end.i153.do.body11.i155_crit_edge, %if.end.i150.do.body11.i155_crit_edge
  %status.130.i154 = phi i32 [ %conv5.i151, %for.end.i153.do.body11.i155_crit_edge ], [ 0, %if.end.i150.do.body11.i155_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dt3k_send_cmd.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dt3k_ai_cmd, %dt3k_send_cmd.exit158)) #6
          to label %if.then17.i157 [label %dt3k_send_cmd.exit158], !srcloc !73

if.then17.i157:                                   ; preds = %do.body11.i155
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev.i156 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %91 = ptrtoint ptr %class_dev.i156 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %class_dev.i156, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dt3k_send_cmd.__UNIQUE_ID_ddebug236, ptr noundef %92, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, i32 noundef %status.130.i154) #6
  br label %dt3k_send_cmd.exit158

dt3k_send_cmd.exit158:                            ; preds = %if.then17.i157, %do.body11.i155, %for.end.i153.dt3k_send_cmd.exit158_crit_edge
  ret i32 0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt3k_ai_cmdtest(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef %cmd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %start_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 2
  %2 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start_src, align 4
  %and.i = and i32 %3, 2
  store i32 %and.i, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %3)
  %cmp1.not.i = icmp eq i32 %and.i, %3
  %or.cond.i = and i1 %cmp.i, %cmp1.not.i
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 4
  %4 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %scan_begin_src, align 4
  %and.i123 = and i32 %5, 16
  store i32 %and.i123, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i123)
  %cmp.i124 = icmp ne i32 %and.i123, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i123, i32 %5)
  %cmp1.not.i125 = icmp eq i32 %and.i123, %5
  %or.cond.i126 = and i1 %cmp.i124, %cmp1.not.i125
  %6 = select i1 %or.cond.i, i1 %or.cond.i126, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %7 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %convert_src, align 4
  %and.i128 = and i32 %8, 16
  store i32 %and.i128, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i128)
  %cmp.i129 = icmp ne i32 %and.i128, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i128, i32 %8)
  %cmp1.not.i130 = icmp eq i32 %and.i128, %8
  %or.cond.i131 = and i1 %cmp.i129, %cmp1.not.i130
  %9 = select i1 %6, i1 %or.cond.i131, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %10 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %scan_end_src, align 4
  %and.i133 = and i32 %11, 32
  store i32 %and.i133, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i133)
  %cmp.i134 = icmp ne i32 %and.i133, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i133, i32 %11)
  %cmp1.not.i135 = icmp eq i32 %and.i133, %11
  %or.cond.i136 = and i1 %cmp.i134, %cmp1.not.i135
  %12 = select i1 %9, i1 %or.cond.i136, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %13 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stop_src, align 4
  %and.i138 = and i32 %14, 32
  store i32 %and.i138, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i138)
  %cmp.i139 = icmp ne i32 %and.i138, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i138, i32 %14)
  %cmp1.not.i140 = icmp eq i32 %and.i138, %14
  %or.cond.i141 = and i1 %cmp.i139, %cmp1.not.i140
  %15 = select i1 %12, i1 %or.cond.i141, i1 false
  br i1 %15, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %16 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not.i = icmp eq i32 %17, 0
  br i1 %cmp.not.i, label %if.end.if.then12_crit_edge, label %if.then.i

if.end.if.then12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %start_arg, align 4
  br label %if.then12

if.then12:                                        ; preds = %if.then.i, %if.end.if.then12_crit_edge
  %retval.0.i143 = phi i32 [ -22, %if.then.i ], [ 0, %if.end.if.then12_crit_edge ]
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %ai_speed = getelementptr inbounds %struct.dt3k_boardtype, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %ai_speed to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ai_speed, align 4
  %21 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %20)
  %cmp.i144 = icmp ult i32 %22, %20
  %23 = tail call i32 @llvm.umax.i32(i32 %22, i32 %20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 104856000, i32 %23)
  %cmp.i147 = icmp ugt i32 %23, 104856000
  %24 = or i1 %cmp.i144, %cmp.i147
  br i1 %24, label %25, label %if.then12.if.end18_crit_edge

if.then12.if.end18_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

25:                                               ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %26 = tail call i32 @llvm.umin.i32(i32 %23, i32 104856000)
  %27 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %scan_begin_arg, align 4
  br label %if.end18

if.end18:                                         ; preds = %25, %if.then12.if.end18_crit_edge
  %28 = select i1 %cmp.i147, i1 true, i1 %cmp.i144
  %or17 = select i1 %28, i32 -22, i32 %retval.0.i143
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %29 = ptrtoint ptr %ai_speed to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ai_speed, align 4
  %31 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %convert_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %30)
  %cmp.i150 = icmp ult i32 %32, %30
  %33 = tail call i32 @llvm.umax.i32(i32 %32, i32 %30)
  %retval.0.i152 = select i1 %cmp.i150, i32 -22, i32 0
  %or24 = or i32 %or17, %retval.0.i152
  call void @__sanitizer_cov_trace_const_cmp4(i32 52428000, i32 %33)
  %cmp.i154 = icmp ugt i32 %33, 52428000
  %34 = or i1 %cmp.i150, %cmp.i154
  br i1 %34, label %35, label %if.end18.if.end28_crit_edge

if.end18.if.end28_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

35:                                               ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %36 = tail call i32 @llvm.umin.i32(i32 %33, i32 52428000)
  %37 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %convert_arg, align 4
  br label %if.end28

if.end28:                                         ; preds = %35, %if.end18.if.end28_crit_edge
  %or27 = select i1 %cmp.i154, i32 -22, i32 %or24
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %38 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %chanlist_len, align 4
  %40 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %39)
  %cmp.not.i158 = icmp eq i32 %41, %39
  br i1 %cmp.not.i158, label %if.end28.comedi_check_trigger_arg_is.exit161_crit_edge, label %if.then.i159

if.end28.comedi_check_trigger_arg_is.exit161_crit_edge: ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit161

if.then.i159:                                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %39, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit161

comedi_check_trigger_arg_is.exit161:              ; preds = %if.then.i159, %if.end28.comedi_check_trigger_arg_is.exit161_crit_edge
  %retval.0.i160 = phi i32 [ -22, %if.then.i159 ], [ 0, %if.end28.comedi_check_trigger_arg_is.exit161_crit_edge ]
  %or30 = or i32 %or27, %retval.0.i160
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %43 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %44)
  %cmp.i162 = icmp ugt i32 %44, 16777215
  br i1 %cmp.i162, label %if.then.i163, label %comedi_check_trigger_arg_is.exit161.if.end39_crit_edge

comedi_check_trigger_arg_is.exit161.if.end39_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit161
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then.i163:                                     ; preds = %comedi_check_trigger_arg_is.exit161
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 16777215, ptr %stop_arg, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then.i163, %comedi_check_trigger_arg_is.exit161.if.end39_crit_edge
  %call34.pn = phi i32 [ -22, %if.then.i163 ], [ 0, %comedi_check_trigger_arg_is.exit161.if.end39_crit_edge ]
  %err.2 = or i32 %or30, %call34.pn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %tobool40.not = icmp eq i32 %err.2, 0
  br i1 %tobool40.not, label %if.then45, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then45:                                        ; preds = %if.end39
  %46 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %scan_begin_arg, align 4
  %flags = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 1
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags, align 4
  %and.i170 = and i32 %49, 196608
  %add6.i = add i32 %47, -1
  br label %for.cond.i

for.cond.i:                                       ; preds = %sw.epilog.i.for.cond.i_crit_edge, %if.then45
  %prescale.0.i = phi i32 [ 0, %if.then45 ], [ %add.i, %sw.epilog.i.for.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %prescale.0.i)
  %exitcond.not.i = icmp eq i32 %prescale.0.i, 16
  br i1 %exitcond.not.i, label %for.cond.i.dt3k_ns_to_timer.exit_crit_edge, label %for.body.i

for.cond.i.dt3k_ns_to_timer.exit_crit_edge:       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dt3k_ns_to_timer.exit

for.body.i:                                       ; preds = %for.cond.i
  %add.i = add nuw nsw i32 %prescale.0.i, 1
  %mul.i = mul nuw nsw i32 %add.i, 100
  %50 = zext i32 %and.i170 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %and.i170, label %sw.default.i [
    i32 131072, label %sw.bb5.i
    i32 65536, label %for.body.i.sw.epilog.i_crit_edge
  ]

for.body.i.sw.epilog.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %div37.i = lshr exact i32 %mul.i, 1
  %add1.i = add i32 %div37.i, %47
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = add i32 %add6.i, %mul.i
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb5.i, %sw.default.i, %for.body.i.sw.epilog.i_crit_edge
  %add1.pn.i = phi i32 [ %add1.i, %sw.default.i ], [ %sub.i, %sw.bb5.i ], [ %47, %for.body.i.sw.epilog.i_crit_edge ]
  %divider.0.i = udiv i32 %add1.pn.i, %mul.i
  %cmp8.i = icmp ult i32 %divider.0.i, 65536
  br i1 %cmp8.i, label %if.then.i171, label %sw.epilog.i.for.cond.i_crit_edge

sw.epilog.i.for.cond.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

if.then.i171:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul9.i = mul i32 %divider.0.i, %mul.i
  br label %dt3k_ns_to_timer.exit

dt3k_ns_to_timer.exit:                            ; preds = %if.then.i171, %for.cond.i.dt3k_ns_to_timer.exit_crit_edge
  %arg.0 = phi i32 [ %mul9.i, %if.then.i171 ], [ 104856000, %for.cond.i.dt3k_ns_to_timer.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %arg.0)
  %cmp.not.i173 = icmp eq i32 %47, %arg.0
  br i1 %cmp.not.i173, label %dt3k_ns_to_timer.exit.if.then54_crit_edge, label %if.then.i174

dt3k_ns_to_timer.exit.if.then54_crit_edge:        ; preds = %dt3k_ns_to_timer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then54

if.then.i174:                                     ; preds = %dt3k_ns_to_timer.exit
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %arg.0, ptr %scan_begin_arg, align 4
  br label %if.then54

if.then54:                                        ; preds = %if.then.i174, %dt3k_ns_to_timer.exit.if.then54_crit_edge
  %err.3 = phi i32 [ -22, %if.then.i174 ], [ 0, %dt3k_ns_to_timer.exit.if.then54_crit_edge ]
  %52 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %convert_arg, align 4
  %54 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags, align 4
  %and.i177 = and i32 %55, 196608
  %add6.i188 = add i32 %53, -1
  br label %for.cond.i180

for.cond.i180:                                    ; preds = %sw.epilog.i194.for.cond.i180_crit_edge, %if.then54
  %prescale.0.i178 = phi i32 [ 0, %if.then54 ], [ %add.i181, %sw.epilog.i194.for.cond.i180_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %prescale.0.i178)
  %exitcond.not.i179 = icmp eq i32 %prescale.0.i178, 16
  br i1 %exitcond.not.i179, label %for.cond.i180.dt3k_ns_to_timer.exit201_crit_edge, label %for.body.i183

for.cond.i180.dt3k_ns_to_timer.exit201_crit_edge: ; preds = %for.cond.i180
  call void @__sanitizer_cov_trace_pc() #8
  br label %dt3k_ns_to_timer.exit201

for.body.i183:                                    ; preds = %for.cond.i180
  %add.i181 = add nuw nsw i32 %prescale.0.i178, 1
  %mul.i182 = mul nuw nsw i32 %add.i181, 50
  %56 = zext i32 %and.i177 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %and.i177, label %sw.default.i186 [
    i32 131072, label %sw.bb5.i190
    i32 65536, label %for.body.i183.sw.epilog.i194_crit_edge
  ]

for.body.i183.sw.epilog.i194_crit_edge:           ; preds = %for.body.i183
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i194

sw.default.i186:                                  ; preds = %for.body.i183
  call void @__sanitizer_cov_trace_pc() #8
  %div37.i184 = lshr exact i32 %mul.i182, 1
  %add1.i185 = add i32 %div37.i184, %53
  br label %sw.epilog.i194

sw.bb5.i190:                                      ; preds = %for.body.i183
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i189 = add i32 %add6.i188, %mul.i182
  br label %sw.epilog.i194

sw.epilog.i194:                                   ; preds = %sw.bb5.i190, %sw.default.i186, %for.body.i183.sw.epilog.i194_crit_edge
  %add1.pn.i191 = phi i32 [ %add1.i185, %sw.default.i186 ], [ %sub.i189, %sw.bb5.i190 ], [ %53, %for.body.i183.sw.epilog.i194_crit_edge ]
  %divider.0.i192 = udiv i32 %add1.pn.i191, %mul.i182
  %cmp8.i193 = icmp ult i32 %divider.0.i192, 65536
  br i1 %cmp8.i193, label %if.then.i198, label %sw.epilog.i194.for.cond.i180_crit_edge

sw.epilog.i194.for.cond.i180_crit_edge:           ; preds = %sw.epilog.i194
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i180

if.then.i198:                                     ; preds = %sw.epilog.i194
  call void @__sanitizer_cov_trace_pc() #8
  %mul9.i195 = mul i32 %divider.0.i192, %mul.i182
  br label %dt3k_ns_to_timer.exit201

dt3k_ns_to_timer.exit201:                         ; preds = %if.then.i198, %for.cond.i180.dt3k_ns_to_timer.exit201_crit_edge
  %arg.1 = phi i32 [ %mul9.i195, %if.then.i198 ], [ 52428000, %for.cond.i180.dt3k_ns_to_timer.exit201_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %arg.1)
  %cmp.not.i202 = icmp eq i32 %53, %arg.1
  br i1 %cmp.not.i202, label %dt3k_ns_to_timer.exit201.comedi_check_trigger_arg_is.exit205_crit_edge, label %if.then.i203

dt3k_ns_to_timer.exit201.comedi_check_trigger_arg_is.exit205_crit_edge: ; preds = %dt3k_ns_to_timer.exit201
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit205

if.then.i203:                                     ; preds = %dt3k_ns_to_timer.exit201
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %arg.1, ptr %convert_arg, align 4
  br label %comedi_check_trigger_arg_is.exit205

comedi_check_trigger_arg_is.exit205:              ; preds = %if.then.i203, %dt3k_ns_to_timer.exit201.comedi_check_trigger_arg_is.exit205_crit_edge
  %retval.0.i204 = phi i32 [ -22, %if.then.i203 ], [ 0, %dt3k_ns_to_timer.exit201.comedi_check_trigger_arg_is.exit205_crit_edge ]
  %or60 = or i32 %retval.0.i204, %err.3
  %58 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %convert_arg, align 4
  %60 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %scan_end_arg, align 4
  %mul = mul i32 %61, %59
  %62 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %mul)
  %cmp.i206 = icmp ult i32 %63, %mul
  br i1 %cmp.i206, label %if.then.i207, label %comedi_check_trigger_arg_is.exit205.comedi_check_trigger_arg_min.exit209_crit_edge

comedi_check_trigger_arg_is.exit205.comedi_check_trigger_arg_min.exit209_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit205
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_min.exit209

if.then.i207:                                     ; preds = %comedi_check_trigger_arg_is.exit205
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %mul, ptr %scan_begin_arg, align 4
  br label %comedi_check_trigger_arg_min.exit209

comedi_check_trigger_arg_min.exit209:             ; preds = %if.then.i207, %comedi_check_trigger_arg_is.exit205.comedi_check_trigger_arg_min.exit209_crit_edge
  %retval.0.i208 = phi i32 [ -22, %if.then.i207 ], [ 0, %comedi_check_trigger_arg_is.exit205.comedi_check_trigger_arg_min.exit209_crit_edge ]
  %or68 = or i32 %or60, %retval.0.i208
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or68)
  %tobool71.not = icmp eq i32 %or68, 0
  %. = select i1 %tobool71.not, i32 0, i32 4
  br label %cleanup

cleanup:                                          ; preds = %comedi_check_trigger_arg_min.exit209, %if.end39.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 3, %if.end39.cleanup_crit_edge ], [ %., %comedi_check_trigger_arg_min.exit209 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt3k_ai_cancel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 16204
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 0) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 16380
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 1024) #6, !srcloc !60
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.032.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio, align 4
  %add.ptr3.i = getelementptr i8, ptr %5, i32 16380
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3.i) #6, !srcloc !54
  %7 = shl i16 %6, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp6.not.i = icmp eq i16 %7, 0
  br i1 %cmp6.not.i, label %if.end.i, label %for.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #6
  %inc.i = add nuw nsw i32 %i.032.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %if.end.i.do.body11.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end.i.do.body11.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11.i

for.end.i:                                        ; preds = %for.body.i
  %conv5.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 21760, i16 %7)
  %cmp8.not.i = icmp eq i16 %7, 21760
  br i1 %cmp8.not.i, label %for.end.i.dt3k_send_cmd.exit_crit_edge, label %for.end.i.do.body11.i_crit_edge

for.end.i.do.body11.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11.i

for.end.i.dt3k_send_cmd.exit_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dt3k_send_cmd.exit

do.body11.i:                                      ; preds = %for.end.i.do.body11.i_crit_edge, %if.end.i.do.body11.i_crit_edge
  %status.130.i = phi i32 [ %conv5.i, %for.end.i.do.body11.i_crit_edge ], [ 0, %if.end.i.do.body11.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dt3k_send_cmd.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dt3k_ai_cancel, %dt3k_send_cmd.exit)) #6
          to label %if.then17.i [label %dt3k_send_cmd.exit], !srcloc !73

if.then17.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %9 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %class_dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dt3k_send_cmd.__UNIQUE_ID_ddebug236, ptr noundef %10, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, i32 noundef %status.130.i) #6
  br label %dt3k_send_cmd.exit

dt3k_send_cmd.exit:                               ; preds = %if.then17.i, %do.body11.i, %for.end.i.dt3k_send_cmd.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio, align 4
  %add.ptr4 = getelementptr i8, ptr %12, i32 16364
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4, i16 0) #6, !srcloc !60
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt3k_ao_insn_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %and = and i32 %1, 65535
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  %2 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %readback, align 4
  %arrayidx = getelementptr i32, ptr %3, i32 %and
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %6 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp13.not = icmp eq i32 %7, 0
  br i1 %cmp13.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx1 = getelementptr i32, ptr %data, i32 %i.014
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx1, align 4
  tail call fastcc void @dt3k_writesingle(ptr noundef %dev, i32 noundef 1, i32 noundef %and, i32 noundef %9)
  %inc = add nuw i32 %i.014, 1
  %10 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %val.0.lcssa = phi i32 [ %5, %entry.for.end_crit_edge ], [ %9, %for.body.for.end_crit_edge ]
  %12 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %readback, align 4
  %arrayidx3 = getelementptr i32, ptr %13, i32 %and
  %14 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %val.0.lcssa, ptr %arrayidx3, align 4
  %15 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n, align 4
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt3k_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %and = and i32 %1, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  %. = select i1 %cmp, i32 15, i32 240
  %call = tail call i32 @comedi_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data, i32 noundef %.) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 12
  %2 = ptrtoint ptr %io_bits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %io_bits, align 4
  %and3 = and i32 %3, 1
  %and5 = lshr i32 %3, 3
  %shr = and i32 %and5, 2
  %or = or i32 %shr, %and3
  tail call fastcc void @dt3k_dio_config(ptr noundef %dev, i32 noundef %or)
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %4 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.end2 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt3k_dio_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  tail call fastcc void @dt3k_writesingle(ptr noundef %dev, i32 noundef 3, i32 noundef 0, i32 noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call1 = tail call fastcc i32 @dt3k_readsingle(ptr noundef %dev, i32 noundef 2, i32 noundef 0, i32 noundef 0)
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call1, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %3 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %n, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt3k_mem_insn_read(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %0 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp24.not = icmp eq i32 %1, 0
  br i1 %cmp24.not, label %entry.for.end_crit_edge, label %do.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %conv = trunc i32 %3 to i16
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %class_dev.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  br label %do.body

do.body:                                          ; preds = %dt3k_send_cmd.exit.do.body_crit_edge, %do.body.lr.ph
  %i.025 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %dt3k_send_cmd.exit.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 16204
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 1024) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  %7 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio, align 4
  %add.ptr5 = getelementptr i8, ptr %8, i32 16212
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5, i16 %4) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio, align 4
  %add.ptr10 = getelementptr i8, ptr %10, i32 16216
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr10, i16 256) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 16380
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 9472) #6, !srcloc !60
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %do.body
  %i.032.i = phi i32 [ 0, %do.body ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio, align 4
  %add.ptr3.i = getelementptr i8, ptr %14, i32 16380
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3.i) #6, !srcloc !54
  %16 = shl i16 %15, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp6.not.i = icmp eq i16 %16, 0
  br i1 %cmp6.not.i, label %if.end.i, label %for.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #6
  %inc.i = add nuw nsw i32 %i.032.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %if.end.i.do.body11.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end.i.do.body11.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11.i

for.end.i:                                        ; preds = %for.body.i
  %conv5.i = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 21760, i16 %16)
  %cmp8.not.i = icmp eq i16 %16, 21760
  br i1 %cmp8.not.i, label %for.end.i.dt3k_send_cmd.exit_crit_edge, label %for.end.i.do.body11.i_crit_edge

for.end.i.do.body11.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11.i

for.end.i.dt3k_send_cmd.exit_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dt3k_send_cmd.exit

do.body11.i:                                      ; preds = %for.end.i.do.body11.i_crit_edge, %if.end.i.do.body11.i_crit_edge
  %status.130.i = phi i32 [ %conv5.i, %for.end.i.do.body11.i_crit_edge ], [ 0, %if.end.i.do.body11.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dt3k_send_cmd.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dt3k_mem_insn_read, %dt3k_send_cmd.exit)) #6
          to label %if.then17.i [label %dt3k_send_cmd.exit], !srcloc !73

if.then17.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %class_dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dt3k_send_cmd.__UNIQUE_ID_ddebug236, ptr noundef %19, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, i32 noundef %status.130.i) #6
  br label %dt3k_send_cmd.exit

dt3k_send_cmd.exit:                               ; preds = %if.then17.i, %do.body11.i, %for.end.i.dt3k_send_cmd.exit_crit_edge
  %20 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio, align 4
  %add.ptr12 = getelementptr i8, ptr %21, i32 16220
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr12) #6, !srcloc !54
  %23 = tail call i16 @llvm.bswap.i16(i16 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  %conv14 = zext i16 %23 to i32
  %arrayidx = getelementptr i32, ptr %data, i32 %i.025
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv14, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.025, 1
  %25 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %26
  br i1 %cmp, label %dt3k_send_cmd.exit.do.body_crit_edge, label %dt3k_send_cmd.exit.for.end_crit_edge

dt3k_send_cmd.exit.for.end_crit_edge:             ; preds = %dt3k_send_cmd.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

dt3k_send_cmd.exit.do.body_crit_edge:             ; preds = %dt3k_send_cmd.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.end:                                          ; preds = %dt3k_send_cmd.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %dt3k_send_cmd.exit.for.end_crit_edge ]
  ret i32 %i.0.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_handle_events(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dt3k_readsingle(ptr nocapture noundef readonly %dev, i32 noundef %subsys, i32 noundef %chan, i32 noundef %gain) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %conv = trunc i32 %subsys to i16
  %0 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %1 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 16204
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %0) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  %conv3 = trunc i32 %chan to i16
  %3 = tail call i16 @llvm.bswap.i16(i16 %conv3)
  %4 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 16212
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5, i16 %3) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %conv8 = trunc i32 %gain to i16
  %6 = tail call i16 @llvm.bswap.i16(i16 %conv8)
  %7 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio, align 4
  %add.ptr10 = getelementptr i8, ptr %8, i32 16216
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr10, i16 %6) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 16380
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 1280) #6, !srcloc !60
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.032.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio, align 4
  %add.ptr3.i = getelementptr i8, ptr %12, i32 16380
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3.i) #6, !srcloc !54
  %14 = shl i16 %13, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp6.not.i = icmp eq i16 %14, 0
  br i1 %cmp6.not.i, label %if.end.i, label %for.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #6
  %inc.i = add nuw nsw i32 %i.032.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %if.end.i.do.body11.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end.i.do.body11.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11.i

for.end.i:                                        ; preds = %for.body.i
  %conv5.i = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 21760, i16 %14)
  %cmp8.not.i = icmp eq i16 %14, 21760
  br i1 %cmp8.not.i, label %for.end.i.dt3k_send_cmd.exit_crit_edge, label %for.end.i.do.body11.i_crit_edge

for.end.i.do.body11.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11.i

for.end.i.dt3k_send_cmd.exit_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dt3k_send_cmd.exit

do.body11.i:                                      ; preds = %for.end.i.do.body11.i_crit_edge, %if.end.i.do.body11.i_crit_edge
  %status.130.i = phi i32 [ %conv5.i, %for.end.i.do.body11.i_crit_edge ], [ 0, %if.end.i.do.body11.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dt3k_send_cmd.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dt3k_readsingle, %dt3k_send_cmd.exit)) #6
          to label %if.then17.i [label %dt3k_send_cmd.exit], !srcloc !73

if.then17.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %16 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %class_dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dt3k_send_cmd.__UNIQUE_ID_ddebug236, ptr noundef %17, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, i32 noundef %status.130.i) #6
  br label %dt3k_send_cmd.exit

dt3k_send_cmd.exit:                               ; preds = %if.then17.i, %do.body11.i, %for.end.i.dt3k_send_cmd.exit_crit_edge
  %18 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio, align 4
  %add.ptr12 = getelementptr i8, ptr %19, i32 16220
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr12) #6, !srcloc !54
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  %conv14 = zext i16 %21 to i32
  ret i32 %conv14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dt3k_writesingle(ptr nocapture noundef readonly %dev, i32 noundef %subsys, i32 noundef %chan, i32 noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  %conv = trunc i32 %subsys to i16
  %0 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %1 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 16204
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %0) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %conv3 = trunc i32 %chan to i16
  %3 = tail call i16 @llvm.bswap.i16(i16 %conv3)
  %4 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 16212
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5, i16 %3) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio, align 4
  %add.ptr9 = getelementptr i8, ptr %7, i32 16216
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9, i16 0) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %conv12 = trunc i32 %data to i16
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv12)
  %9 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio, align 4
  %add.ptr14 = getelementptr i8, ptr %10, i32 16220
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr14, i16 %8) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 16380
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 1536) #6, !srcloc !60
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.032.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio, align 4
  %add.ptr3.i = getelementptr i8, ptr %14, i32 16380
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3.i) #6, !srcloc !54
  %16 = shl i16 %15, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp6.not.i = icmp eq i16 %16, 0
  br i1 %cmp6.not.i, label %if.end.i, label %for.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #6
  %inc.i = add nuw nsw i32 %i.032.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %if.end.i.do.body11.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end.i.do.body11.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11.i

for.end.i:                                        ; preds = %for.body.i
  %conv5.i = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 21760, i16 %16)
  %cmp8.not.i = icmp eq i16 %16, 21760
  br i1 %cmp8.not.i, label %for.end.i.dt3k_send_cmd.exit_crit_edge, label %for.end.i.do.body11.i_crit_edge

for.end.i.do.body11.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11.i

for.end.i.dt3k_send_cmd.exit_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dt3k_send_cmd.exit

do.body11.i:                                      ; preds = %for.end.i.do.body11.i_crit_edge, %if.end.i.do.body11.i_crit_edge
  %status.130.i = phi i32 [ %conv5.i, %for.end.i.do.body11.i_crit_edge ], [ 0, %if.end.i.do.body11.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dt3k_send_cmd.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dt3k_writesingle, %dt3k_send_cmd.exit)) #6
          to label %if.then17.i [label %dt3k_send_cmd.exit], !srcloc !73

if.then17.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %18 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %class_dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dt3k_send_cmd.__UNIQUE_ID_ddebug236, ptr noundef %19, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, i32 noundef %status.130.i) #6
  br label %dt3k_send_cmd.exit

dt3k_send_cmd.exit:                               ; preds = %if.then17.i, %do.body11.i, %for.end.i.dt3k_send_cmd.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_insn_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dt3k_dio_config(ptr nocapture noundef readonly %dev, i32 noundef %bits) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  tail call void @arm_heavy_mb() #6
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 16204
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 768) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void @arm_heavy_mb() #6
  %conv = trunc i32 %bits to i16
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %3 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio, align 4
  %add.ptr4 = getelementptr i8, ptr %4, i32 16212
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4, i16 %2) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 16380
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 256) #6, !srcloc !60
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.032.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio, align 4
  %add.ptr3.i = getelementptr i8, ptr %8, i32 16380
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3.i) #6, !srcloc !54
  %10 = shl i16 %9, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp6.not.i = icmp eq i16 %10, 0
  br i1 %cmp6.not.i, label %if.end.i, label %for.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #6
  %inc.i = add nuw nsw i32 %i.032.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %if.end.i.do.body11.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end.i.do.body11.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11.i

for.end.i:                                        ; preds = %for.body.i
  %conv5.i = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 21760, i16 %10)
  %cmp8.not.i = icmp eq i16 %10, 21760
  br i1 %cmp8.not.i, label %for.end.i.dt3k_send_cmd.exit_crit_edge, label %for.end.i.do.body11.i_crit_edge

for.end.i.do.body11.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11.i

for.end.i.dt3k_send_cmd.exit_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dt3k_send_cmd.exit

do.body11.i:                                      ; preds = %for.end.i.do.body11.i_crit_edge, %if.end.i.do.body11.i_crit_edge
  %status.130.i = phi i32 [ %conv5.i, %for.end.i.do.body11.i_crit_edge ], [ 0, %if.end.i.do.body11.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dt3k_send_cmd.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dt3k_dio_config, %dt3k_send_cmd.exit)) #6
          to label %if.then17.i [label %dt3k_send_cmd.exit], !srcloc !73

if.then17.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %12 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %class_dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dt3k_send_cmd.__UNIQUE_ID_ddebug236, ptr noundef %13, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, i32 noundef %status.130.i) #6
  br label %dt3k_send_cmd.exit

dt3k_send_cmd.exit:                               ; preds = %if.then17.i, %do.body11.i, %for.end.i.dt3k_send_cmd.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt3000_pci_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %call = tail call i32 @comedi_pci_auto_config(ptr noundef %dev, ptr noundef nonnull @dt3000_driver, i32 noundef %1) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_auto_unconfig(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_auto_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39, !40, !41, !43}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @__initcall__kmod_dt3000__237_735_dt3000_driver_init6, !1, !"__initcall__kmod_dt3000__237_735_dt3000_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/dt3000.c", i32 735, i32 1}
!2 = !{ptr @__exitcall_dt3000_driver_exit, !1, !"__exitcall_dt3000_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author238, !4, !"__UNIQUE_ID_author238", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/dt3000.c", i32 737, i32 1}
!5 = !{ptr @__UNIQUE_ID_description239, !6, !"__UNIQUE_ID_description239", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/dt3000.c", i32 738, i32 1}
!7 = !{ptr @__UNIQUE_ID_file240, !8, !"__UNIQUE_ID_file240", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/dt3000.c", i32 739, i32 1}
!9 = !{ptr @__UNIQUE_ID_license241, !8, !"__UNIQUE_ID_license241", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/dt3000.c", i32 705, i32 17}
!12 = !{ptr @dt3000_driver, !13, !"dt3000_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/dt3000.c", i32 704, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/dt3000.c", i32 169, i32 12}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/comedi/drivers/dt3000.c", i32 176, i32 12}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/comedi/drivers/dt3000.c", i32 183, i32 12}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/comedi/drivers/dt3000.c", i32 189, i32 12}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/comedi/drivers/dt3000.c", i32 196, i32 12}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/comedi/drivers/dt3000.c", i32 203, i32 12}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/comedi/drivers/dt3000.c", i32 211, i32 12}
!28 = !{ptr @dt3k_boardtypes, !29, !"dt3k_boardtypes", i1 false, i1 false}
!29 = !{!"../drivers/comedi/drivers/dt3000.c", i32 167, i32 36}
!30 = !{ptr @range_dt3000_ai_pgl, !31, !"range_dt3000_ai_pgl", i1 false, i1 false}
!31 = !{!"../drivers/comedi/drivers/dt3000.c", i32 139, i32 35}
!32 = !{ptr @debug_n_ints, !33, !"debug_n_ints", i1 false, i1 false}
!33 = !{!"../drivers/comedi/drivers/dt3000.c", i32 312, i32 12}
!34 = !{ptr @range_dt3000_ai, !35, !"range_dt3000_ai", i1 false, i1 false}
!35 = !{!"../drivers/comedi/drivers/dt3000.c", i32 130, i32 35}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/comedi/drivers/dt3000.c", i32 242, i32 3}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @dt3k_send_cmd.__UNIQUE_ID_ddebug236, !37, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!41 = !{ptr @dt3000_pci_driver, !42, !"dt3000_pci_driver", i1 false, i1 false}
!42 = !{!"../drivers/comedi/drivers/dt3000.c", i32 729, i32 26}
!43 = !{ptr @dt3000_pci_table, !44, !"dt3000_pci_table", i1 false, i1 false}
!44 = !{!"../drivers/comedi/drivers/dt3000.c", i32 717, i32 35}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{i64 4640223}
!55 = !{i64 2154557474}
!56 = !{!"auto-init"}
!57 = !{i64 2154555139}
!58 = !{i64 2154555694}
!59 = !{i64 2154555932}
!60 = !{i64 4640023}
!61 = !{i64 2154558580}
!62 = !{i64 2154559117}
!63 = !{i64 2154559625}
!64 = !{i64 2154560119}
!65 = !{i64 2154560631}
!66 = !{i64 2154561129}
!67 = !{i64 2154561680}
!68 = !{i64 2154562307}
!69 = !{i64 2154562898}
!70 = !{i64 2154563336}
!71 = !{i64 2154547119}
!72 = !{i64 2154547826}
!73 = !{i64 2148970390, i64 2148970395, i64 2148970408, i64 2148970452, i64 2148970486, i64 2148970507}
!74 = !{i64 2154564097}
!75 = !{i64 2154564762}
!76 = !{i64 2154556348}
!77 = !{i64 2154556777}
!78 = !{i64 2154566235}
!79 = !{i64 2154566663}
!80 = !{i64 2154567107}
!81 = !{i64 2154567890}
!82 = !{i64 2154551159}
!83 = !{i64 2154551602}
!84 = !{i64 2154552049}
!85 = !{i64 2154552839}
!86 = !{i64 2154553074}
!87 = !{i64 2154553517}
!88 = !{i64 2154553961}
!89 = !{i64 2154554399}
!90 = !{i64 2154565293}
!91 = !{i64 2154565721}
