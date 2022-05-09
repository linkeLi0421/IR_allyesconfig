; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/addi_apci_1500.c_pt.bc'
source_filename = "../drivers/comedi/drivers/addi_apci_1500.c"
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
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
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
%struct.apci1500_private = type { i32, i32, i32, [2 x i32], [2 x i32], [2 x i32] }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.comedi_async = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.comedi_cmd, %struct.wait_queue_head, i32, ptr }

@__initcall__kmod_addi_apci_1500__242_883_apci1500_driver_init6 = internal global ptr @apci1500_driver_init, section ".initcall6.init", align 4
@apci1500_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr null, ptr @apci1500_detach, ptr @apci1500_auto_attach, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@apci1500_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @apci1500_pci_table, ptr @apci1500_pci_probe, ptr @comedi_pci_auto_unconfig, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_apci1500_driver_exit = internal global ptr @apci1500_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author243 = internal constant [52 x i8] c"addi_apci_1500.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description244 = internal constant [85 x i8] c"addi_apci_1500.description=ADDI-DATA APCI-1500, 16 channel DI / 16 channel DO boards\00", section ".modinfo", align 1
@__UNIQUE_ID_file245 = internal constant [58 x i8] c"addi_apci_1500.file=drivers/comedi/drivers/addi_apci_1500\00", section ".modinfo", align 1
@__UNIQUE_ID_license246 = internal constant [27 x i8] c"addi_apci_1500.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"addi_apci_1500\00", [17 x i8] zeroinitializer }, align 32
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@range_unknown = external dso_local constant %struct.comedi_lrange, align 4
@apci1500_di_cfg_trig.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 116, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"apci1500_di_cfg_trig\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/comedi/drivers/addi_apci_1500.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"invalid digital trigger number (0=AND, 1=OR)\0A\00", [50 x i8] zeroinitializer }, align 32
@apci1500_di_cfg_trig.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 121, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"invalid digital trigger channel\0A\00", [63 x i8] zeroinitializer }, align 32
@apci1500_di_cfg_trig.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 -123, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"invalid AND trigger configuration\0A\00", [61 x i8] zeroinitializer }, align 32
@apci1500_di_inttrig_start.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 81, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"apci1500_di_inttrig_start\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Port A configured for %s mode pattern detection\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AND\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"OR\00", [29 x i8] zeroinitializer }, align 32
@apci1500_di_inttrig_start.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.10, i8 0, i8 85, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Port B configured for %s mode pattern detection\0A\00", [47 x i8] zeroinitializer }, align 32
@apci1500_di_inttrig_start.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.11, i8 0, i8 87, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"digital trigger %d is not configured\0A\00", [58 x i8] zeroinitializer }, align 32
@apci1500_pci_table = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4328, i32 33020, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@switch.table.apci1500_timer_insn_config = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"!!\11!\80!\82!\04!T", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 31, i64 32, i64 33, i64 2001, i64 2002, i64 2003, i64 2004, i64 4097]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.14 = private unnamed_addr constant [16 x i8] c"apci1500_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 858, i32 29 }
@___asan_gen_.17 = private unnamed_addr constant [20 x i8] c"apci1500_pci_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 877, i32 26 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 859, i32 17 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 465, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 484, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 532, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 322, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 341, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 350, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [19 x i8] c"apci1500_pci_table\00", align 1
@___asan_gen_.57 = private constant [43 x i8] c"../drivers/comedi/drivers/addi_apci_1500.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 871, i32 35 }
@___asan_gen_.59 = private unnamed_addr constant [40 x i8] c"switch.table.apci1500_timer_insn_config\00", align 1
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_description244, ptr @__UNIQUE_ID_file245, ptr @__UNIQUE_ID_license246, ptr @__exitcall_apci1500_driver_exit, ptr @__initcall__kmod_addi_apci_1500__242_883_apci1500_driver_init6, ptr @apci1500_driver_exit, ptr @apci1500_driver, ptr @apci1500_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @apci1500_pci_table, ptr @switch.table.apci1500_timer_insn_config], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apci1500_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apci1500_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apci1500_pci_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.apci1500_timer_insn_config to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @apci1500_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_pci_driver_register(ptr noundef nonnull @apci1500_driver, ptr noundef nonnull @apci1500_pci_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @apci1500_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @comedi_pci_driver_unregister(ptr noundef nonnull @apci1500_driver, ptr noundef nonnull @apci1500_pci_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_driver_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @apci1500_detach(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %add = add i32 %5, 56
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %6 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %6, i32 0) #7, !srcloc !51
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  tail call void @comedi_pci_detach(ptr noundef %dev) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci1500_auto_attach(ptr noundef %dev, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_pci_dev(ptr noundef %dev) #7
  %call1 = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 36) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @comedi_pci_enable(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %resource = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 47
  %arrayidx = getelementptr %struct.pci_dev, ptr %call, i32 0, i32 47, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %iobase, align 4
  %3 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %resource, align 8
  %5 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %call1, align 4
  %arrayidx10 = getelementptr %struct.pci_dev, ptr %call, i32 0, i32 47, i32 2
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx10, align 8
  %addon = getelementptr inbounds %struct.apci1500_private, ptr %call1, i32 0, i32 1
  %8 = ptrtoint ptr %addon to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %addon, align 4
  %spinlock.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  %9 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase, align 4
  %add.i = add i32 %10, 3
  %and.i = and i32 %add.i, 1048575
  %add5.i = or i32 %and.i, -18874368
  %11 = inttoptr i32 %add5.i to ptr
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iobase, align 4
  %add13.i = add i32 %14, 3
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %15 = inttoptr i32 %add15.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 0) #7, !srcloc !55
  %16 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iobase, align 4
  %add19.i = add i32 %17, 3
  %and20.i = and i32 %add19.i, 1048575
  %add21.i = or i32 %and20.i, -18874368
  %18 = inttoptr i32 %add21.i to ptr
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %18) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iobase, align 4
  %add29.i = add i32 %21, 3
  %and30.i = and i32 %add29.i, 1048575
  %add31.i = or i32 %and30.i, -18874368
  %22 = inttoptr i32 %add31.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 0) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  %23 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iobase, align 4
  %add37.i = add i32 %24, 3
  %and38.i = and i32 %add37.i, 1048575
  %add39.i = or i32 %and38.i, -18874368
  %25 = inttoptr i32 %add39.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 1) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  %26 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %iobase, align 4
  %add45.i = add i32 %27, 3
  %and46.i = and i32 %add45.i, 1048575
  %add47.i = or i32 %and46.i, -18874368
  %28 = inttoptr i32 %add47.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 0) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i) #7
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %29 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %iobase, align 4
  %add.i.i = add i32 %30, 3
  %and.i.i = and i32 %add.i.i, 1048575
  %add9.i.i = or i32 %and.i.i, -18874368
  %31 = inttoptr i32 %add9.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 1) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %32 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %iobase, align 4
  %add16.i.i = add i32 %33, 3
  %and17.i.i = and i32 %add16.i.i, 1048575
  %add18.i.i = or i32 %and17.i.i, -18874368
  %34 = inttoptr i32 %add18.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 0) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i.i) #7
  %call2.i78.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %35 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %iobase, align 4
  %add.i80.i = add i32 %36, 3
  %and.i81.i = and i32 %add.i80.i, 1048575
  %add9.i82.i = or i32 %and.i81.i, -18874368
  %37 = inttoptr i32 %add9.i82.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 32) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %38 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %iobase, align 4
  %add16.i83.i = add i32 %39, 3
  %and17.i84.i = and i32 %add16.i83.i, 1048575
  %add18.i85.i = or i32 %and17.i84.i, -18874368
  %40 = inttoptr i32 %add18.i85.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 16) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i78.i) #7
  %call2.i87.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %41 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %iobase, align 4
  %add.i89.i = add i32 %42, 3
  %and.i90.i = and i32 %add.i89.i, 1048575
  %add9.i91.i = or i32 %and.i90.i, -18874368
  %43 = inttoptr i32 %add9.i91.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 42) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %44 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %iobase, align 4
  %add16.i92.i = add i32 %45, 3
  %and17.i93.i = and i32 %add16.i92.i, 1048575
  %add18.i94.i = or i32 %and17.i93.i, -18874368
  %46 = inttoptr i32 %add18.i94.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %46, i8 -1) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i87.i) #7
  %call2.i96.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %47 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %iobase, align 4
  %add.i98.i = add i32 %48, 3
  %and.i99.i = and i32 %add.i98.i, 1048575
  %add9.i100.i = or i32 %and.i99.i, -18874368
  %49 = inttoptr i32 %add9.i100.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %49, i8 35) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %50 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %iobase, align 4
  %add16.i101.i = add i32 %51, 3
  %and17.i102.i = and i32 %add16.i101.i, 1048575
  %add18.i103.i = or i32 %and17.i102.i, -18874368
  %52 = inttoptr i32 %add18.i103.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 -1) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i96.i) #7
  %call2.i105.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %53 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %iobase, align 4
  %add.i107.i = add i32 %54, 3
  %and.i108.i = and i32 %add.i107.i, 1048575
  %add9.i109.i = or i32 %and.i108.i, -18874368
  %55 = inttoptr i32 %add9.i109.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %55, i8 40) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %56 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %iobase, align 4
  %add16.i110.i = add i32 %57, 3
  %and17.i111.i = and i32 %add16.i110.i, 1048575
  %add18.i112.i = or i32 %and17.i111.i, -18874368
  %58 = inttoptr i32 %add18.i112.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %58, i8 16) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i105.i) #7
  %call2.i114.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %59 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %iobase, align 4
  %add.i116.i = add i32 %60, 3
  %and.i117.i = and i32 %add.i116.i, 1048575
  %add9.i118.i = or i32 %and.i117.i, -18874368
  %61 = inttoptr i32 %add9.i118.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %61, i8 42) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %62 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %iobase, align 4
  %add16.i119.i = add i32 %63, 3
  %and17.i120.i = and i32 %add16.i119.i, 1048575
  %add18.i121.i = or i32 %and17.i120.i, -18874368
  %64 = inttoptr i32 %add18.i121.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %64, i8 127) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i114.i) #7
  %call2.i123.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %65 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %iobase, align 4
  %add.i125.i = add i32 %66, 3
  %and.i126.i = and i32 %add.i125.i, 1048575
  %add9.i127.i = or i32 %and.i126.i, -18874368
  %67 = inttoptr i32 %add9.i127.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %67, i8 43) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %68 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %iobase, align 4
  %add16.i128.i = add i32 %69, 3
  %and17.i129.i = and i32 %add16.i128.i, 1048575
  %add18.i130.i = or i32 %and17.i129.i, -18874368
  %70 = inttoptr i32 %add18.i130.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %70, i8 -1) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i123.i) #7
  %call2.i132.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %71 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %iobase, align 4
  %add.i134.i = add i32 %72, 3
  %and.i135.i = and i32 %add.i134.i, 1048575
  %add9.i136.i = or i32 %and.i135.i, -18874368
  %73 = inttoptr i32 %add9.i136.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %73, i8 5) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %74 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %iobase, align 4
  %add16.i137.i = add i32 %75, 3
  %and17.i138.i = and i32 %add16.i137.i, 1048575
  %add18.i139.i = or i32 %and17.i138.i, -18874368
  %76 = inttoptr i32 %add18.i139.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %76, i8 9) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i132.i) #7
  %call2.i141.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %77 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %iobase, align 4
  %add.i143.i = add i32 %78, 3
  %and.i144.i = and i32 %add.i143.i, 1048575
  %add9.i145.i = or i32 %and.i144.i, -18874368
  %79 = inttoptr i32 %add9.i145.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %79, i8 6) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %80 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %iobase, align 4
  %add16.i146.i = add i32 %81, 3
  %and17.i147.i = and i32 %add16.i146.i, 1048575
  %add18.i148.i = or i32 %and17.i147.i, -18874368
  %82 = inttoptr i32 %add18.i148.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %82, i8 14) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i141.i) #7
  %call2.i150.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %83 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %iobase, align 4
  %add.i152.i = add i32 %84, 3
  %and.i153.i = and i32 %add.i152.i, 1048575
  %add9.i154.i = or i32 %and.i153.i, -18874368
  %85 = inttoptr i32 %add9.i154.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %85, i8 8) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %86 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %iobase, align 4
  %add16.i155.i = add i32 %87, 3
  %and17.i156.i = and i32 %add16.i155.i, 1048575
  %add18.i157.i = or i32 %and17.i156.i, -18874368
  %88 = inttoptr i32 %add18.i157.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %88, i8 32) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i150.i) #7
  %call2.i159.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %89 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %iobase, align 4
  %add.i161.i = add i32 %90, 3
  %and.i162.i = and i32 %add.i161.i, 1048575
  %add9.i163.i = or i32 %and.i162.i, -18874368
  %91 = inttoptr i32 %add9.i163.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %91, i8 8) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %92 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %iobase, align 4
  %add16.i164.i = add i32 %93, 3
  %and17.i165.i = and i32 %add16.i164.i, 1048575
  %add18.i166.i = or i32 %and17.i165.i, -18874368
  %94 = inttoptr i32 %add18.i166.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %94, i8 -32) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i159.i) #7
  %call2.i168.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %95 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %iobase, align 4
  %add.i170.i = add i32 %96, 3
  %and.i171.i = and i32 %add.i170.i, 1048575
  %add9.i172.i = or i32 %and.i171.i, -18874368
  %97 = inttoptr i32 %add9.i172.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %97, i8 9) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %98 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %iobase, align 4
  %add16.i173.i = add i32 %99, 3
  %and17.i174.i = and i32 %add16.i173.i, 1048575
  %add18.i175.i = or i32 %and17.i174.i, -18874368
  %100 = inttoptr i32 %add18.i175.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %100, i8 32) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i168.i) #7
  %call2.i177.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %101 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %iobase, align 4
  %add.i179.i = add i32 %102, 3
  %and.i180.i = and i32 %add.i179.i, 1048575
  %add9.i181.i = or i32 %and.i180.i, -18874368
  %103 = inttoptr i32 %add9.i181.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %103, i8 9) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %104 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %iobase, align 4
  %add16.i182.i = add i32 %105, 3
  %and17.i183.i = and i32 %add16.i182.i, 1048575
  %add18.i184.i = or i32 %and17.i183.i, -18874368
  %106 = inttoptr i32 %add18.i184.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %106, i8 -32) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i177.i) #7
  %call2.i186.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %107 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %iobase, align 4
  %add.i188.i = add i32 %108, 3
  %and.i189.i = and i32 %add.i188.i, 1048575
  %add9.i190.i = or i32 %and.i189.i, -18874368
  %109 = inttoptr i32 %add9.i190.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %109, i8 10) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %110 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %iobase, align 4
  %add16.i191.i = add i32 %111, 3
  %and17.i192.i = and i32 %add16.i191.i, 1048575
  %add18.i193.i = or i32 %and17.i192.i, -18874368
  %112 = inttoptr i32 %add18.i193.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %112, i8 32) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i186.i) #7
  %call2.i195.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %113 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %iobase, align 4
  %add.i197.i = add i32 %114, 3
  %and.i198.i = and i32 %add.i197.i, 1048575
  %add9.i199.i = or i32 %and.i198.i, -18874368
  %115 = inttoptr i32 %add9.i199.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %115, i8 10) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %116 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %iobase, align 4
  %add16.i200.i = add i32 %117, 3
  %and17.i201.i = and i32 %add16.i200.i, 1048575
  %add18.i202.i = or i32 %and17.i201.i, -18874368
  %118 = inttoptr i32 %add18.i202.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %118, i8 -32) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i195.i) #7
  %call2.i204.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %119 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %iobase, align 4
  %add.i206.i = add i32 %120, 3
  %and.i207.i = and i32 %add.i206.i, 1048575
  %add9.i208.i = or i32 %and.i207.i, -18874368
  %121 = inttoptr i32 %add9.i208.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %121, i8 11) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %122 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %iobase, align 4
  %add16.i209.i = add i32 %123, 3
  %and17.i210.i = and i32 %add16.i209.i, 1048575
  %add18.i211.i = or i32 %and17.i210.i, -18874368
  %124 = inttoptr i32 %add18.i211.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %124, i8 32) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i204.i) #7
  %call2.i213.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %125 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %iobase, align 4
  %add.i215.i = add i32 %126, 3
  %and.i216.i = and i32 %add.i215.i, 1048575
  %add9.i217.i = or i32 %and.i216.i, -18874368
  %127 = inttoptr i32 %add9.i217.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %127, i8 11) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %128 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %iobase, align 4
  %add16.i218.i = add i32 %129, 3
  %and17.i219.i = and i32 %add16.i218.i, 1048575
  %add18.i220.i = or i32 %and17.i219.i, -18874368
  %130 = inttoptr i32 %add18.i220.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %130, i8 -32) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i213.i) #7
  %call2.i222.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %131 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %iobase, align 4
  %add.i224.i = add i32 %132, 3
  %and.i225.i = and i32 %add.i224.i, 1048575
  %add9.i226.i = or i32 %and.i225.i, -18874368
  %133 = inttoptr i32 %add9.i226.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %133, i8 12) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %134 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %iobase, align 4
  %add16.i227.i = add i32 %135, 3
  %and17.i228.i = and i32 %add16.i227.i, 1048575
  %add18.i229.i = or i32 %and17.i228.i, -18874368
  %136 = inttoptr i32 %add18.i229.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %136, i8 32) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i222.i) #7
  %call2.i231.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %137 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %iobase, align 4
  %add.i233.i = add i32 %138, 3
  %and.i234.i = and i32 %add.i233.i, 1048575
  %add9.i235.i = or i32 %and.i234.i, -18874368
  %139 = inttoptr i32 %add9.i235.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %139, i8 12) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %140 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %iobase, align 4
  %add16.i236.i = add i32 %141, 3
  %and17.i237.i = and i32 %add16.i236.i, 1048575
  %add18.i238.i = or i32 %and17.i237.i, -18874368
  %142 = inttoptr i32 %add18.i238.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %142, i8 -32) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i231.i) #7
  %call2.i240.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %143 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %iobase, align 4
  %add.i242.i = add i32 %144, 3
  %and.i243.i = and i32 %add.i242.i, 1048575
  %add9.i244.i = or i32 %and.i243.i, -18874368
  %145 = inttoptr i32 %add9.i244.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %145, i8 0) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %146 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %iobase, align 4
  %add16.i245.i = add i32 %147, 3
  %and17.i246.i = and i32 %add16.i245.i, 1048575
  %add18.i247.i = or i32 %and17.i246.i, -18874368
  %148 = inttoptr i32 %add18.i247.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %148, i8 0) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i240.i) #7
  %irq = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 46
  %149 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %cmp.not = icmp eq i32 %150, 0
  br i1 %cmp.not, label %if.end5.if.end20_crit_edge, label %if.then12

if.end5.if.end20_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then12:                                        ; preds = %if.end5
  %board_name = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %151 = ptrtoint ptr %board_name to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %board_name, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %150, ptr noundef nonnull @apci1500_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %152, ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp15 = icmp eq i32 %call.i, 0
  br i1 %cmp15, label %if.then16, label %if.then12.if.end20_crit_edge

if.then12.if.end20_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then16:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %153 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %irq, align 4
  %irq18 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %155 = ptrtoint ptr %irq18 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %irq18, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.then12.if.end20_crit_edge, %if.end5.if.end20_crit_edge
  %call21 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %156 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %157, i32 0, i32 2
  %158 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 3, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %157, i32 0, i32 4
  %159 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 65536, ptr %subdev_flags, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %157, i32 0, i32 3
  %160 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 16, ptr %n_chan, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %157, i32 0, i32 13
  %161 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 1, ptr %maxdata, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %157, i32 0, i32 15
  %162 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr @range_unipolar5, ptr %range_table, align 4
  %insn_bits = getelementptr inbounds %struct.comedi_subdevice, ptr %157, i32 0, i32 20
  %163 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr @apci1500_di_insn_bits, ptr %insn_bits, align 4
  %irq26 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %164 = ptrtoint ptr %irq26 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %irq26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool27.not = icmp eq i32 %165, 0
  br i1 %tobool27.not, label %if.end24.if.end30_crit_edge, label %if.then28

if.end24.if.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %166 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %157, ptr %read_subdev, align 4
  %167 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %subdev_flags, align 4
  %or = or i32 %168, 32768
  store i32 %or, ptr %subdev_flags, align 4
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, ptr %157, i32 0, i32 5
  %169 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 1, ptr %len_chanlist, align 4
  %insn_config = getelementptr inbounds %struct.comedi_subdevice, ptr %157, i32 0, i32 21
  %170 = ptrtoint ptr %insn_config to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr @apci1500_di_insn_config, ptr %insn_config, align 4
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, ptr %157, i32 0, i32 23
  %171 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr @apci1500_di_cmdtest, ptr %do_cmdtest, align 4
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, ptr %157, i32 0, i32 22
  %172 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr @apci1500_di_cmd, ptr %do_cmd, align 4
  %cancel = getelementptr inbounds %struct.comedi_subdevice, ptr %157, i32 0, i32 25
  %173 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr @apci1500_di_cancel, ptr %cancel, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end24.if.end30_crit_edge
  %174 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %subdevices, align 4
  %type33 = getelementptr %struct.comedi_subdevice, ptr %175, i32 1, i32 2
  %176 = ptrtoint ptr %type33 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 4, ptr %type33, align 4
  %subdev_flags34 = getelementptr %struct.comedi_subdevice, ptr %175, i32 1, i32 4
  %177 = ptrtoint ptr %subdev_flags34 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 131072, ptr %subdev_flags34, align 4
  %n_chan35 = getelementptr %struct.comedi_subdevice, ptr %175, i32 1, i32 3
  %178 = ptrtoint ptr %n_chan35 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 16, ptr %n_chan35, align 4
  %maxdata36 = getelementptr %struct.comedi_subdevice, ptr %175, i32 1, i32 13
  %179 = ptrtoint ptr %maxdata36 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 1, ptr %maxdata36, align 4
  %range_table37 = getelementptr %struct.comedi_subdevice, ptr %175, i32 1, i32 15
  %180 = ptrtoint ptr %range_table37 to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr @range_unipolar5, ptr %range_table37, align 4
  %insn_bits38 = getelementptr %struct.comedi_subdevice, ptr %175, i32 1, i32 20
  %181 = ptrtoint ptr %insn_bits38 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr @apci1500_do_insn_bits, ptr %insn_bits38, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  tail call void @arm_heavy_mb() #7
  %182 = ptrtoint ptr %addon to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %addon, align 4
  %add = add i32 %183, 2
  %and = and i32 %add, 1048575
  %add40 = or i32 %and, -18874368
  %184 = inttoptr i32 %add40 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %184, i16 0) #7, !srcloc !63
  %185 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %subdevices, align 4
  %type44 = getelementptr %struct.comedi_subdevice, ptr %186, i32 2, i32 2
  %187 = ptrtoint ptr %type44 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 7, ptr %type44, align 4
  %subdev_flags45 = getelementptr %struct.comedi_subdevice, ptr %186, i32 2, i32 4
  %188 = ptrtoint ptr %subdev_flags45 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 196608, ptr %subdev_flags45, align 4
  %n_chan46 = getelementptr %struct.comedi_subdevice, ptr %186, i32 2, i32 3
  %189 = ptrtoint ptr %n_chan46 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 3, ptr %n_chan46, align 4
  %maxdata47 = getelementptr %struct.comedi_subdevice, ptr %186, i32 2, i32 13
  %190 = ptrtoint ptr %maxdata47 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 65535, ptr %maxdata47, align 4
  %range_table48 = getelementptr %struct.comedi_subdevice, ptr %186, i32 2, i32 15
  %191 = ptrtoint ptr %range_table48 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr @range_unknown, ptr %range_table48, align 4
  %insn_config49 = getelementptr %struct.comedi_subdevice, ptr %186, i32 2, i32 21
  %192 = ptrtoint ptr %insn_config49 to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr @apci1500_timer_insn_config, ptr %insn_config49, align 4
  %insn_write = getelementptr %struct.comedi_subdevice, ptr %186, i32 2, i32 19
  %193 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr @apci1500_timer_insn_write, ptr %insn_write, align 4
  %insn_read = getelementptr %struct.comedi_subdevice, ptr %186, i32 2, i32 18
  %194 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr @apci1500_timer_insn_read, ptr %insn_read, align 4
  %195 = ptrtoint ptr %irq26 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %irq26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %tobool51.not = icmp eq i32 %196, 0
  br i1 %tobool51.not, label %if.end30.cleanup_crit_edge, label %do.body53

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body53:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %197 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %call1, align 4
  %add57 = add i32 %198, 56
  %and58 = and i32 %add57, 1048575
  %add59 = or i32 %and58, -18874368
  %199 = inttoptr i32 %add59 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %199, i32 3145728) #7, !srcloc !51
  %200 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %call1, align 4
  %add62 = add i32 %201, 16
  %and63 = and i32 %add62, 1048575
  %add64 = or i32 %and63, -18874368
  %202 = inttoptr i32 %add64 to ptr
  %203 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %202) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  %204 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %call1, align 4
  %add69 = add i32 %205, 56
  %and70 = and i32 %add69, 1048575
  %add71 = or i32 %and70, -18874368
  %206 = inttoptr i32 %add71 to ptr
  %207 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %206) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !68
  tail call void @arm_heavy_mb() #7
  %208 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %call1, align 4
  %add79 = add i32 %209, 56
  %and80 = and i32 %add79, 1048575
  %add81 = or i32 %and80, -18874368
  %210 = inttoptr i32 %add81 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %210, i32 3146240) #7, !srcloc !51
  br label %cleanup

cleanup:                                          ; preds = %do.body53, %if.end30.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call21, %if.end20.cleanup_crit_edge ], [ 0, %do.body53 ], [ 0, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_to_pci_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci1500_interrupt(i32 noundef %irq, ptr noundef %d) #2 align 64 {
entry:
  %status = alloca i16, align 2
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
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status) #7
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %status, align 2
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  %add = add i32 %6, 56
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %7 = inttoptr i32 %add1 to ptr
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %7) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  %9 = and i32 %8, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call fastcc zeroext i1 @apci1500_ack_irq(ptr noundef %d, i32 noundef 8)
  br i1 %call4, label %if.then5, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %status, align 2
  %12 = or i16 %11, 1
  store i16 %12, ptr %status, align 2
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %call8 = tail call fastcc zeroext i1 @apci1500_ack_irq(ptr noundef %d, i32 noundef 9)
  br i1 %call8, label %if.then9, label %if.end7.if.end39_crit_edge

if.end7.if.end39_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then9:                                         ; preds = %if.end7
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 18
  %13 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iobase, align 4
  %add11 = add i32 %14, 1
  %and12 = and i32 %add11, 1048575
  %add13 = or i32 %and12, -18874368
  %15 = inttoptr i32 %add13 to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  %17 = and i8 %16, -64
  %and18 = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool19.not = icmp eq i8 %17, 0
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.then9
  %and21 = and i32 %and18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.then20.if.end27_crit_edge, label %if.then23

if.then20.if.end27_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then23:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %status, align 2
  %20 = or i16 %19, 64
  store i16 %20, ptr %status, align 2
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.then20.if.end27_crit_edge
  %and28 = and i32 %and18, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end27.if.end39_crit_edge, label %if.then30

if.end27.if.end39_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %status, align 2
  %23 = or i16 %22, 128
  store i16 %23, ptr %status, align 2
  br label %if.end39

if.else:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %status, align 2
  %26 = or i16 %25, 2
  store i16 %26, ptr %status, align 2
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then30, %if.end27.if.end39_crit_edge, %if.end7.if.end39_crit_edge
  %call40 = call i32 @comedi_buf_write_samples(ptr noundef %3, ptr noundef nonnull %status, i32 noundef 1) #7
  %call41 = call i32 @comedi_handle_events(ptr noundef %d, ptr noundef %3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end39 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci1500_di_insn_bits(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %addon = getelementptr inbounds %struct.apci1500_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %addon to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addon, align 4
  %and = and i32 %3, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %4) #7, !srcloc !71
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  %conv = zext i16 %6 to i32
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %8 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n, align 4
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci1500_di_insn_config(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %1)
  %cond = icmp eq i32 %1, 21
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call fastcc i32 @apci1500_di_cfg_trig(ptr noundef %dev, ptr noundef %insn, ptr noundef %data)
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %sw.bb ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @apci1500_di_cmdtest(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef %cmd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %start_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 2
  %0 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %start_src, align 4
  %and.i = and i32 %1, 128
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
  %and.i43 = and i32 %3, 64
  store i32 %and.i43, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i43)
  %cmp.i44 = icmp ne i32 %and.i43, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i43, i32 %3)
  %cmp1.not.i45 = icmp eq i32 %and.i43, %3
  %or.cond.i46 = and i1 %cmp.i44, %cmp1.not.i45
  %4 = select i1 %or.cond.i, i1 %or.cond.i46, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %5 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %convert_src, align 4
  %and.i48 = and i32 %6, 4
  store i32 %and.i48, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i48)
  %cmp.i49 = icmp ne i32 %and.i48, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i48, i32 %6)
  %cmp1.not.i50 = icmp eq i32 %and.i48, %6
  %or.cond.i51 = and i1 %cmp.i49, %cmp1.not.i50
  %7 = select i1 %4, i1 %or.cond.i51, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %8 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_end_src, align 4
  %and.i53 = and i32 %9, 32
  store i32 %and.i53, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i53)
  %cmp.i54 = icmp ne i32 %and.i53, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i53, i32 %9)
  %cmp1.not.i55 = icmp eq i32 %and.i53, %9
  %or.cond.i56 = and i1 %cmp.i54, %cmp1.not.i55
  %10 = select i1 %7, i1 %or.cond.i56, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %11 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stop_src, align 4
  %and.i58 = and i32 %12, 1
  store i32 %and.i58, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %13 = icmp eq i32 %12, 1
  %14 = select i1 %10, i1 %13, i1 false
  br i1 %14, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %15 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %cmp.i63 = icmp ugt i32 %16, 3
  br i1 %cmp.i63, label %if.then.i, label %if.end.comedi_check_trigger_arg_max.exit_crit_edge

if.end.comedi_check_trigger_arg_max.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_max.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %start_arg, align 4
  br label %comedi_check_trigger_arg_max.exit

comedi_check_trigger_arg_max.exit:                ; preds = %if.then.i, %if.end.comedi_check_trigger_arg_max.exit_crit_edge
  %retval.0.i64 = phi i32 [ -22, %if.then.i ], [ 0, %if.end.comedi_check_trigger_arg_max.exit_crit_edge ]
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %18 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not.i = icmp eq i32 %19, 0
  br i1 %cmp.not.i, label %comedi_check_trigger_arg_max.exit.comedi_check_trigger_arg_is.exit_crit_edge, label %if.then.i65

comedi_check_trigger_arg_max.exit.comedi_check_trigger_arg_is.exit_crit_edge: ; preds = %comedi_check_trigger_arg_max.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit

if.then.i65:                                      ; preds = %comedi_check_trigger_arg_max.exit
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %scan_begin_arg, align 4
  br label %comedi_check_trigger_arg_is.exit

comedi_check_trigger_arg_is.exit:                 ; preds = %if.then.i65, %comedi_check_trigger_arg_max.exit.comedi_check_trigger_arg_is.exit_crit_edge
  %retval.0.i66 = phi i32 [ -22, %if.then.i65 ], [ 0, %comedi_check_trigger_arg_max.exit.comedi_check_trigger_arg_is.exit_crit_edge ]
  %or12 = or i32 %retval.0.i66, %retval.0.i64
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %21 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %convert_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.not.i67 = icmp eq i32 %22, 0
  br i1 %cmp.not.i67, label %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit70_crit_edge, label %if.then.i68

comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit70_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit70

if.then.i68:                                      ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %convert_arg, align 4
  br label %comedi_check_trigger_arg_is.exit70

comedi_check_trigger_arg_is.exit70:               ; preds = %if.then.i68, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit70_crit_edge
  %retval.0.i69 = phi i32 [ -22, %if.then.i68 ], [ 0, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit70_crit_edge ]
  %or14 = or i32 %or12, %retval.0.i69
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %24 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %chanlist_len, align 4
  %26 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %25)
  %cmp.not.i71 = icmp eq i32 %27, %25
  br i1 %cmp.not.i71, label %comedi_check_trigger_arg_is.exit70.comedi_check_trigger_arg_is.exit74_crit_edge, label %if.then.i72

comedi_check_trigger_arg_is.exit70.comedi_check_trigger_arg_is.exit74_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit70
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit74

if.then.i72:                                      ; preds = %comedi_check_trigger_arg_is.exit70
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %25, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit74

comedi_check_trigger_arg_is.exit74:               ; preds = %if.then.i72, %comedi_check_trigger_arg_is.exit70.comedi_check_trigger_arg_is.exit74_crit_edge
  %retval.0.i73 = phi i32 [ -22, %if.then.i72 ], [ 0, %comedi_check_trigger_arg_is.exit70.comedi_check_trigger_arg_is.exit74_crit_edge ]
  %or16 = or i32 %or14, %retval.0.i73
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %29 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.not.i75 = icmp eq i32 %30, 0
  br i1 %cmp.not.i75, label %comedi_check_trigger_arg_is.exit74.comedi_check_trigger_arg_is.exit78_crit_edge, label %if.then.i76

comedi_check_trigger_arg_is.exit74.comedi_check_trigger_arg_is.exit78_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit74
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit78

if.then.i76:                                      ; preds = %comedi_check_trigger_arg_is.exit74
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %stop_arg, align 4
  br label %comedi_check_trigger_arg_is.exit78

comedi_check_trigger_arg_is.exit78:               ; preds = %if.then.i76, %comedi_check_trigger_arg_is.exit74.comedi_check_trigger_arg_is.exit78_crit_edge
  %retval.0.i77 = phi i32 [ -22, %if.then.i76 ], [ 0, %comedi_check_trigger_arg_is.exit74.comedi_check_trigger_arg_is.exit78_crit_edge ]
  %or18 = or i32 %or16, %retval.0.i77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or18)
  %tobool19.not = icmp eq i32 %or18, 0
  %. = select i1 %tobool19.not, i32 0, i32 3
  br label %cleanup

cleanup:                                          ; preds = %comedi_check_trigger_arg_is.exit78, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ %., %comedi_check_trigger_arg_is.exit78 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @apci1500_di_cmd(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %s) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %0 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %async, align 4
  %inttrig = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %inttrig to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @apci1500_di_inttrig_start, ptr %inttrig, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci1500_di_cancel(ptr noundef %dev, ptr nocapture noundef readnone %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %spinlock.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %1, 3
  %and.i = and i32 %add.i, 1048575
  %add9.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 0) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %3 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iobase.i, align 4
  %add16.i = add i32 %4, 3
  %and17.i = and i32 %add16.i, 1048575
  %add18.i = or i32 %and17.i, -18874368
  %5 = inttoptr i32 %add18.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 0) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i) #7
  tail call fastcc void @apci1500_port_enable(ptr noundef %dev, i1 noundef zeroext false)
  %call = tail call fastcc zeroext i1 @apci1500_ack_irq(ptr noundef %dev, i32 noundef 8)
  %call1 = tail call fastcc zeroext i1 @apci1500_ack_irq(ptr noundef %dev, i32 noundef 9)
  %call2.i9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase.i, align 4
  %add.i11 = add i32 %7, 3
  %and.i12 = and i32 %add.i11, 1048575
  %add9.i13 = or i32 %and.i12, -18874368
  %8 = inttoptr i32 %add9.i13 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 8) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase.i, align 4
  %add16.i14 = add i32 %10, 3
  %and17.i15 = and i32 %add16.i14, 1048575
  %add18.i16 = or i32 %and17.i15, -18874368
  %11 = inttoptr i32 %add18.i16 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 -32) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i9) #7
  %call2.i18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iobase.i, align 4
  %add.i20 = add i32 %13, 3
  %and.i21 = and i32 %add.i20, 1048575
  %add9.i22 = or i32 %and.i21, -18874368
  %14 = inttoptr i32 %add9.i22 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 9) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %15 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iobase.i, align 4
  %add16.i23 = add i32 %16, 3
  %and17.i24 = and i32 %add16.i23, 1048575
  %add18.i25 = or i32 %and17.i24, -18874368
  %17 = inttoptr i32 %add18.i25 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 -32) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i18) #7
  tail call fastcc void @apci1500_port_enable(ptr noundef %dev, i1 noundef zeroext true)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci1500_do_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
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
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !73
  tail call void @arm_heavy_mb() #7
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %conv = trunc i32 %3 to i16
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %addon = getelementptr inbounds %struct.apci1500_private, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %addon to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addon, align 4
  %add = add i32 %6, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %7 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %7, i16 %4) #7, !srcloc !63
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %state3 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %8 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state3, align 4
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %11 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n, align 4
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci1500_timer_insn_config(ptr noundef %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %and = and i32 %3, 65535
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 31, label %sw.bb
    i32 32, label %sw.bb8
    i32 33, label %sw.bb9
    i32 4097, label %sw.bb29
    i32 2003, label %sw.bb38
    i32 2004, label %sw.bb53
    i32 2001, label %sw.bb66
    i32 2002, label %sw.bb86
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx1 = getelementptr i32, ptr %data, i32 1
  %7 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx1, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  %9 = ptrtoint ptr %maxdata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %maxdata, align 4
  %and2 = and i32 %10, %8
  %spinlock.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %and.tr = trunc i32 %3 to i8
  %11 = shl i8 %and.tr, 1
  %conv8.i = add i8 %11, 23
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %12 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %13, 3
  %and.i = and i32 %add.i, 1048575
  %add9.i = or i32 %and.i, -18874368
  %14 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %conv8.i) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %conv14.i = trunc i32 %and2 to i8
  %15 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iobase.i, align 4
  %add16.i = add i32 %16, 3
  %and17.i = and i32 %add16.i, 1048575
  %add18.i = or i32 %and17.i, -18874368
  %17 = inttoptr i32 %add18.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %conv14.i) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i) #7
  %shr = lshr i32 %and2, 8
  %call2.i151 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %conv8.i152 = add i8 %11, 22
  %18 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iobase.i, align 4
  %add.i154 = add i32 %19, 3
  %and.i155 = and i32 %add.i154, 1048575
  %add9.i156 = or i32 %and.i155, -18874368
  %20 = inttoptr i32 %add9.i156 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %conv8.i152) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %conv14.i157 = trunc i32 %shr to i8
  %21 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iobase.i, align 4
  %add16.i158 = add i32 %22, 3
  %and17.i159 = and i32 %add16.i158, 1048575
  %add18.i160 = or i32 %and17.i159, -18874368
  %23 = inttoptr i32 %add18.i160 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %conv14.i157) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i151) #7
  tail call fastcc void @apci1500_timer_enable(ptr noundef %dev, i32 noundef %and, i1 noundef zeroext true)
  %call2.i162 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %24 = trunc i32 %3 to i8
  %conv8.i163 = add i8 %24, 10
  %25 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iobase.i, align 4
  %add.i165 = add i32 %26, 3
  %and.i166 = and i32 %add.i165, 1048575
  %add9.i167 = or i32 %and.i166, -18874368
  %27 = inttoptr i32 %add9.i167 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %conv8.i163) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %28 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iobase.i, align 4
  %add16.i168 = add i32 %29, 3
  %and17.i169 = and i32 %add16.i168, 1048575
  %add18.i170 = or i32 %and17.i169, -18874368
  %30 = inttoptr i32 %add18.i170 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 4) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i162) #7
  br label %sw.epilog92

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @apci1500_timer_enable(ptr noundef %dev, i32 noundef %and, i1 noundef zeroext false)
  br label %sw.epilog92

sw.bb9:                                           ; preds = %entry
  %arrayidx10 = getelementptr i32, ptr %data, i32 1
  %31 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %arrayidx10, align 4
  %add11 = add nuw nsw i32 %and, 10
  %spinlock.i171 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call2.i172 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i171) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  %conv8.i173 = trunc i32 %add11 to i8
  %iobase.i174 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %32 = ptrtoint ptr %iobase.i174 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %iobase.i174, align 4
  %add.i175 = add i32 %33, 3
  %and.i176 = and i32 %add.i175, 1048575
  %add9.i177 = or i32 %and.i176, -18874368
  %34 = inttoptr i32 %add9.i177 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 %conv8.i173) #7, !srcloc !55
  %35 = ptrtoint ptr %iobase.i174 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %iobase.i174, align 4
  %add12.i = add i32 %36, 3
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %37 = inttoptr i32 %add14.i to ptr
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %37) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  %conv18.i = zext i8 %38 to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i171, i32 noundef %call2.i172) #7
  %and12 = and i32 %conv18.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool.not = icmp eq i32 %and12, 0
  br i1 %tobool.not, label %sw.bb9.if.end_crit_edge, label %if.then

sw.bb9.if.end_crit_edge:                          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx10, align 4
  %or = or i32 %40, 2
  store i32 %or, ptr %arrayidx10, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb9.if.end_crit_edge
  %and14 = and i32 %conv18.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end.if.end19_crit_edge, label %if.then16

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx10, align 4
  %or18 = or i32 %42, 1
  store i32 %or18, ptr %arrayidx10, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end.if.end19_crit_edge
  %and20 = and i32 %conv18.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.if.end27_crit_edge, label %if.then22

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx10, align 4
  %or24 = or i32 %44, 4
  store i32 %or24, ptr %arrayidx10, align 4
  %call26 = tail call fastcc zeroext i1 @apci1500_ack_irq(ptr noundef %dev, i32 noundef %add11)
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.end19.if.end27_crit_edge
  %arrayidx28 = getelementptr i32, ptr %data, i32 2
  %45 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 7, ptr %arrayidx28, align 4
  br label %sw.epilog92

sw.bb29:                                          ; preds = %entry
  %arrayidx30 = getelementptr i32, ptr %data, i32 1
  %46 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %47)
  %48 = icmp ult i32 %47, 11
  br i1 %48, label %switch.hole_check, label %sw.bb29.cleanup_crit_edge

sw.bb29.cleanup_crit_edge:                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.hole_check:                                ; preds = %sw.bb29
  %switch.maskindex = trunc i32 %47 to i16
  %switch.shifted = lshr i16 1365, %switch.maskindex
  %49 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %switch.lobit.not = icmp eq i16 %49, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [11 x i8], ptr @switch.table.apci1500_timer_insn_config, i32 0, i32 %47
  %50 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %50)
  %switch.load = load i8, ptr %switch.gep, align 1
  tail call fastcc void @apci1500_timer_enable(ptr noundef %dev, i32 noundef %and, i1 noundef zeroext false)
  %spinlock.i178 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call2.i179 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i178) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %51 = trunc i32 %3 to i8
  %conv8.i180 = add i8 %51, 28
  %iobase.i181 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %52 = ptrtoint ptr %iobase.i181 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %iobase.i181, align 4
  %add.i182 = add i32 %53, 3
  %and.i183 = and i32 %add.i182, 1048575
  %add9.i184 = or i32 %and.i183, -18874368
  %54 = inttoptr i32 %add9.i184 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 %conv8.i180) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %55 = ptrtoint ptr %iobase.i181 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %iobase.i181, align 4
  %add16.i186 = add i32 %56, 3
  %and17.i187 = and i32 %add16.i186, 1048575
  %add18.i188 = or i32 %and17.i187, -18874368
  %57 = inttoptr i32 %add18.i188 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %57, i8 %switch.load) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i178, i32 noundef %call2.i179) #7
  br label %sw.epilog92

sw.bb38:                                          ; preds = %entry
  %arrayidx39 = getelementptr i32, ptr %data, i32 1
  %58 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %cmp = icmp ugt i32 %59, 2
  br i1 %cmp, label %sw.bb38.cleanup_crit_edge, label %if.end41

sw.bb38.cleanup_crit_edge:                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end41:                                         ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #9
  %clk_src = getelementptr inbounds %struct.apci1500_private, ptr %1, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %cmp44 = icmp eq i32 %59, 2
  %spec.select = select i1 %cmp44, i32 3, i32 %59
  %60 = ptrtoint ptr %clk_src to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %spec.select, ptr %clk_src, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %61 = ptrtoint ptr %clk_src to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %clk_src, align 4
  %conv = trunc i32 %62 to i16
  %63 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %addon = getelementptr inbounds %struct.apci1500_private, ptr %1, i32 0, i32 1
  %64 = ptrtoint ptr %addon to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %addon, align 4
  %and50 = and i32 %65, 1048575
  %add51 = or i32 %and50, -18874368
  %66 = inttoptr i32 %add51 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %66, i16 %63) #7, !srcloc !63
  br label %sw.epilog92

sw.bb53:                                          ; preds = %entry
  %clk_src54 = getelementptr inbounds %struct.apci1500_private, ptr %1, i32 0, i32 2
  %67 = ptrtoint ptr %clk_src54 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %clk_src54, align 4
  %69 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %68, label %sw.bb53.cleanup_crit_edge [
    i32 0, label %sw.bb55
    i32 1, label %sw.bb58
    i32 3, label %sw.bb61
  ]

sw.bb53.cleanup_crit_edge:                        ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb55:                                          ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx56 = getelementptr i32, ptr %data, i32 1
  %70 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %arrayidx56, align 4
  %arrayidx57 = getelementptr i32, ptr %data, i32 2
  %71 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 17879, ptr %arrayidx57, align 4
  br label %sw.epilog92

sw.bb58:                                          ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx59 = getelementptr i32, ptr %data, i32 1
  %72 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1, ptr %arrayidx59, align 4
  %arrayidx60 = getelementptr i32, ptr %data, i32 2
  %73 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 573066, ptr %arrayidx60, align 4
  br label %sw.epilog92

sw.bb61:                                          ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx62 = getelementptr i32, ptr %data, i32 1
  %74 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 2, ptr %arrayidx62, align 4
  %arrayidx63 = getelementptr i32, ptr %data, i32 2
  %75 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1164822, ptr %arrayidx63, align 4
  br label %sw.epilog92

sw.bb66:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp67 = icmp eq i32 %and, 0
  br i1 %cmp67, label %sw.bb66.cleanup_crit_edge, label %if.end70

sw.bb66.cleanup_crit_edge:                        ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end70:                                         ; preds = %sw.bb66
  %spinlock.i189 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call2.i190 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i189) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  %76 = trunc i32 %3 to i8
  %conv8.i191 = add i8 %76, 28
  %iobase.i192 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %77 = ptrtoint ptr %iobase.i192 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %iobase.i192, align 4
  %add.i193 = add i32 %78, 3
  %and.i194 = and i32 %add.i193, 1048575
  %add9.i195 = or i32 %and.i194, -18874368
  %79 = inttoptr i32 %add9.i195 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %79, i8 %conv8.i191) #7, !srcloc !55
  %80 = ptrtoint ptr %iobase.i192 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %iobase.i192, align 4
  %add12.i196 = add i32 %81, 3
  %and13.i197 = and i32 %add12.i196, 1048575
  %add14.i198 = or i32 %and13.i197, -18874368
  %82 = inttoptr i32 %add14.i198 to ptr
  %83 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %82) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i189, i32 noundef %call2.i190) #7
  %arrayidx74 = getelementptr i32, ptr %data, i32 1
  %84 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %85)
  %cmp75 = icmp eq i32 %85, 1
  br i1 %cmp75, label %if.end70.if.end84_crit_edge, label %if.else

if.end70.if.end84_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.else:                                          ; preds = %if.end70
  %86 = and i8 %83, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp80.not = icmp eq i32 %85, 0
  br i1 %cmp80.not, label %if.else.if.end84_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else.if.end84_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.end84:                                         ; preds = %if.else.if.end84_crit_edge, %if.end70.if.end84_crit_edge
  %val.1 = phi i8 [ %86, %if.else.if.end84_crit_edge ], [ 8, %if.end70.if.end84_crit_edge ]
  %call2.i201 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i189) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %87 = ptrtoint ptr %iobase.i192 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %iobase.i192, align 4
  %add.i204 = add i32 %88, 3
  %and.i205 = and i32 %add.i204, 1048575
  %add9.i206 = or i32 %and.i205, -18874368
  %89 = inttoptr i32 %add9.i206 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %89, i8 %conv8.i191) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %90 = ptrtoint ptr %iobase.i192 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %iobase.i192, align 4
  %add16.i208 = add i32 %91, 3
  %and17.i209 = and i32 %add16.i208, 1048575
  %add18.i210 = or i32 %and17.i209, -18874368
  %92 = inttoptr i32 %add18.i210 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %92, i8 %val.1) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i189, i32 noundef %call2.i201) #7
  br label %sw.epilog92

sw.bb86:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp87 = icmp eq i32 %and, 0
  br i1 %cmp87, label %sw.bb86.cleanup_crit_edge, label %sw.bb86.sw.epilog92_crit_edge

sw.bb86.sw.epilog92_crit_edge:                    ; preds = %sw.bb86
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog92

sw.bb86.cleanup_crit_edge:                        ; preds = %sw.bb86
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog92:                                      ; preds = %sw.bb86.sw.epilog92_crit_edge, %if.end84, %sw.bb61, %sw.bb58, %sw.bb55, %if.end41, %switch.lookup, %if.end27, %sw.bb8, %sw.bb
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %93 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog92, %sw.bb86.cleanup_crit_edge, %if.else.cleanup_crit_edge, %sw.bb66.cleanup_crit_edge, %sw.bb53.cleanup_crit_edge, %sw.bb38.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %sw.bb29.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %94, %sw.epilog92 ], [ -22, %sw.bb29.cleanup_crit_edge ], [ -22, %sw.bb38.cleanup_crit_edge ], [ -22, %sw.bb53.cleanup_crit_edge ], [ -22, %sw.bb66.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ -22, %sw.bb86.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci1500_timer_insn_write(ptr noundef %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %spinlock.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  %2 = trunc i32 %1 to i8
  %conv8.i = add i8 %2, 10
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %3 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %4, 3
  %and.i = and i32 %add.i, 1048575
  %add9.i = or i32 %and.i, -18874368
  %5 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %conv8.i) #7, !srcloc !55
  %6 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase.i, align 4
  %add12.i = add i32 %7, 3
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %8 = inttoptr i32 %add14.i to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i) #7
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %10 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %12 = and i8 %9, 4
  %13 = or i8 %12, 2
  %call2.i11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iobase.i, align 4
  %add.i14 = add i32 %15, 3
  %and.i15 = and i32 %add.i14, 1048575
  %add9.i16 = or i32 %and.i15, -18874368
  %16 = inttoptr i32 %add9.i16 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %conv8.i) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iobase.i, align 4
  %add16.i = add i32 %18, 3
  %and17.i = and i32 %add16.i, 1048575
  %add18.i = or i32 %and17.i, -18874368
  %19 = inttoptr i32 %add18.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %13) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i11) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %20 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n, align 4
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci1500_timer_insn_read(ptr noundef %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %spinlock.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  %2 = trunc i32 %1 to i8
  %conv8.i = add i8 %2, 10
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %3 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %4, 3
  %and.i = and i32 %add.i, 1048575
  %add9.i = or i32 %and.i, -18874368
  %5 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %conv8.i) #7, !srcloc !55
  %6 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase.i, align 4
  %add12.i = add i32 %7, 3
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %8 = inttoptr i32 %add14.i to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i) #7
  %10 = and i8 %9, 4
  %11 = or i8 %10, 8
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %12 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp52.not = icmp eq i32 %13, 0
  br i1 %cmp52.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %.tr = trunc i32 %1 to i8
  %14 = shl i8 %.tr, 1
  %conv8.i32 = add i8 %14, 16
  %conv8.i43 = add i8 %14, 17
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.053 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %call2.i24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %15 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iobase.i, align 4
  %add.i27 = add i32 %16, 3
  %and.i28 = and i32 %add.i27, 1048575
  %add9.i29 = or i32 %and.i28, -18874368
  %17 = inttoptr i32 %add9.i29 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %conv8.i) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iobase.i, align 4
  %add16.i = add i32 %19, 3
  %and17.i = and i32 %add16.i, 1048575
  %add18.i = or i32 %and17.i, -18874368
  %20 = inttoptr i32 %add18.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %11) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i24) #7
  %call2.i31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  %21 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iobase.i, align 4
  %add.i34 = add i32 %22, 3
  %and.i35 = and i32 %add.i34, 1048575
  %add9.i36 = or i32 %and.i35, -18874368
  %23 = inttoptr i32 %add9.i36 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %conv8.i32) #7, !srcloc !55
  %24 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %iobase.i, align 4
  %add12.i37 = add i32 %25, 3
  %and13.i38 = and i32 %add12.i37, 1048575
  %add14.i39 = or i32 %and13.i38, -18874368
  %26 = inttoptr i32 %add14.i39 to ptr
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %26) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  %conv18.i40 = zext i8 %27 to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i31) #7
  %shl = shl nuw nsw i32 %conv18.i40, 8
  %call2.i42 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  %28 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iobase.i, align 4
  %add.i45 = add i32 %29, 3
  %and.i46 = and i32 %add.i45, 1048575
  %add9.i47 = or i32 %and.i46, -18874368
  %30 = inttoptr i32 %add9.i47 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 %conv8.i43) #7, !srcloc !55
  %31 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %iobase.i, align 4
  %add12.i48 = add i32 %32, 3
  %and13.i49 = and i32 %add12.i48, 1048575
  %add14.i50 = or i32 %and13.i49, -18874368
  %33 = inttoptr i32 %add14.i50 to ptr
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %33) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  %conv18.i51 = zext i8 %34 to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i42) #7
  %or8 = or i32 %shl, %conv18.i51
  %arrayidx = getelementptr i32, ptr %data, i32 %i.053
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or8, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.053, 1
  %36 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %37
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %37, %for.body.for.end_crit_edge ]
  ret i32 %.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @apci1500_ack_irq(ptr noundef %dev, i32 noundef %reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %spinlock.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  %conv8.i = trunc i32 %reg to i8
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %1, 3
  %and.i = and i32 %add.i, 1048575
  %add9.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %conv8.i) #7, !srcloc !55
  %3 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iobase.i, align 4
  %add12.i = add i32 %4, 3
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %5 = inttoptr i32 %add14.i to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i) #7
  %7 = and i8 %6, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %7)
  %cmp = icmp eq i8 %7, 96
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and1 = and i8 %6, 15
  %or = or i8 %and1, 32
  %call2.i8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iobase.i, align 4
  %add.i11 = add i32 %9, 3
  %and.i12 = and i32 %add.i11, 1048575
  %add9.i13 = or i32 %and.i12, -18874368
  %10 = inttoptr i32 %add9.i13 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %conv8.i) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase.i, align 4
  %add16.i = add i32 %12, 3
  %and17.i = and i32 %add16.i, 1048575
  %add18.i = or i32 %and17.i, -18874368
  %13 = inttoptr i32 %add18.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %or) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i8) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_handle_events(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @apci1500_di_cfg_trig(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr i32, ptr %data, i32 3
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp ugt i32 %3, 1
  br i1 %cmp, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @apci1500_di_cfg_trig.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@apci1500_di_cfg_trig, %cleanup109)) #7
          to label %if.then5 [label %cleanup109], !srcloc !77

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %6 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @apci1500_di_cfg_trig.__UNIQUE_ID_ddebug239, ptr noundef %7, ptr noundef nonnull @.str.3) #7
  br label %cleanup109

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %5)
  %cmp7 = icmp ult i32 %5, 17
  %arrayidx9 = getelementptr i32, ptr %data, i32 4
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx9, align 4
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl i32 %9, %5
  %arrayidx10 = getelementptr i32, ptr %data, i32 5
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx10, align 4
  %shl11 = shl i32 %11, %5
  %notmask = shl nsw i32 -1, %5
  %sub = xor i32 %notmask, -1
  %or = or i32 %11, %9
  %sub15 = sub nuw nsw i32 16, %5
  %shr = lshr i32 %or, %sub15
  br label %if.end19

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx17 = getelementptr i32, ptr %data, i32 5
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx17, align 4
  %or18 = or i32 %13, %9
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then8
  %old_mask.0 = phi i32 [ %sub, %if.then8 ], [ 65535, %if.else ]
  %invalid_chan.0 = phi i32 [ %shr, %if.then8 ], [ %or18, %if.else ]
  %lo_mask.0 = phi i32 [ %shl11, %if.then8 ], [ 0, %if.else ]
  %hi_mask.0 = phi i32 [ %shl, %if.then8 ], [ 0, %if.else ]
  %or20 = or i32 %hi_mask.0, %lo_mask.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %invalid_chan.0)
  %tobool21.not = icmp eq i32 %invalid_chan.0, 0
  br i1 %tobool21.not, label %if.end42, label %do.body23

do.body23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @apci1500_di_cfg_trig.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@apci1500_di_cfg_trig, %cleanup109)) #7
          to label %if.then37 [label %cleanup109], !srcloc !77

if.then37:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev38 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %14 = ptrtoint ptr %class_dev38 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %class_dev38, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @apci1500_di_cfg_trig.__UNIQUE_ID_ddebug240, ptr noundef %15, ptr noundef nonnull @.str.4) #7
  br label %cleanup109

if.end42:                                         ; preds = %if.end19
  %arrayidx44 = getelementptr %struct.apci1500_private, ptr %1, i32 0, i32 3, i32 %3
  %16 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx44, align 4
  %and = and i32 %17, %old_mask.0
  %arrayidx46 = getelementptr %struct.apci1500_private, ptr %1, i32 0, i32 4, i32 %3
  %18 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx46, align 4
  %and47 = and i32 %19, %old_mask.0
  %arrayidx49 = getelementptr %struct.apci1500_private, ptr %1, i32 0, i32 5, i32 %3
  %20 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx49, align 4
  %and50 = and i32 %21, %old_mask.0
  %arrayidx51 = getelementptr i32, ptr %data, i32 2
  %22 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx51, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %23, label %if.end42.cleanup109_crit_edge [
    i32 0, label %if.end42.sw.epilog_crit_edge
    i32 1, label %sw.bb52
    i32 2, label %sw.bb57
  ]

if.end42.sw.epilog_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end42.cleanup109_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup109

sw.bb52:                                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %or53 = or i32 %and, %or20
  %or54 = or i32 %and47, %or20
  %or55 = or i32 %and50, %hi_mask.0
  %neg = xor i32 %lo_mask.0, -1
  %and56 = and i32 %or55, %neg
  br label %sw.epilog

sw.bb57:                                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %or58 = or i32 %and, %or20
  %neg59 = xor i32 %or20, -1
  %and60 = and i32 %and47, %neg59
  %or61 = or i32 %and50, %hi_mask.0
  %neg62 = xor i32 %lo_mask.0, -1
  %and63 = and i32 %or61, %neg62
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb57, %sw.bb52, %if.end42.sw.epilog_crit_edge
  %pm.0 = phi i32 [ %or58, %sw.bb57 ], [ %or53, %sw.bb52 ], [ %23, %if.end42.sw.epilog_crit_edge ]
  %pt.0 = phi i32 [ %and60, %sw.bb57 ], [ %or54, %sw.bb52 ], [ %23, %if.end42.sw.epilog_crit_edge ]
  %pp.0 = phi i32 [ %and63, %sw.bb57 ], [ %and56, %sw.bb52 ], [ %23, %if.end42.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp64 = icmp eq i32 %3, 0
  br i1 %cmp64, label %if.then65, label %sw.epilog.if.end102_crit_edge

sw.epilog.if.end102_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102

if.then65:                                        ; preds = %sw.epilog
  %and66 = and i32 %pt.0, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.then65.if.end71_crit_edge, label %if.then68

if.then65.if.end71_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.then68:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  %25 = tail call i32 @llvm.ctpop.i32(i32 %and66) #7, !range !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp.not.i = icmp ult i32 %25, 2
  %..i = select i1 %cmp.not.i, i32 0, i32 -22
  br label %if.end71

if.end71:                                         ; preds = %if.then68, %if.then65.if.end71_crit_edge
  %ret.0 = phi i32 [ %..i, %if.then68 ], [ 0, %if.then65.if.end71_crit_edge ]
  %shr72 = lshr i32 %pt.0, 8
  %and73 = and i32 %shr72, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  %26 = tail call i32 @llvm.ctpop.i32(i32 %and73) #7, !range !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp.not.i8 = icmp ult i32 %26, 2
  %or.cond = or i1 %tobool74.not, %cmp.not.i8
  br i1 %or.cond, label %if.end78, label %if.end71.do.body81_crit_edge

if.end71.do.body81_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body81

if.end78:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool79.not = icmp eq i32 %ret.0, 0
  br i1 %tobool79.not, label %if.end78.if.end102_crit_edge, label %if.end78.do.body81_crit_edge

if.end78.do.body81_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body81

if.end78.if.end102_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102

do.body81:                                        ; preds = %if.end78.do.body81_crit_edge, %if.end71.do.body81_crit_edge
  %ret.115 = phi i32 [ %ret.0, %if.end78.do.body81_crit_edge ], [ -22, %if.end71.do.body81_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @apci1500_di_cfg_trig.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@apci1500_di_cfg_trig, %cleanup109)) #7
          to label %if.then95 [label %cleanup109], !srcloc !77

if.then95:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev96 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %27 = ptrtoint ptr %class_dev96 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %class_dev96, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @apci1500_di_cfg_trig.__UNIQUE_ID_ddebug241, ptr noundef %28, ptr noundef nonnull @.str.5) #7
  br label %cleanup109

if.end102:                                        ; preds = %if.end78.if.end102_crit_edge, %sw.epilog.if.end102_crit_edge
  %29 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %pm.0, ptr %arrayidx44, align 4
  %30 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %pt.0, ptr %arrayidx46, align 4
  %31 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %pp.0, ptr %arrayidx49, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %32 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %n, align 4
  br label %cleanup109

cleanup109:                                       ; preds = %if.end102, %if.then95, %do.body81, %if.end42.cleanup109_crit_edge, %if.then37, %do.body23, %if.then5, %do.body
  %retval.1 = phi i32 [ %33, %if.end102 ], [ -22, %if.then5 ], [ -22, %if.then37 ], [ -22, %if.end42.cleanup109_crit_edge ], [ %ret.115, %if.then95 ], [ -22, %do.body ], [ -22, %do.body23 ], [ %ret.115, %do.body81 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci1500_di_inttrig_start(ptr noundef %dev, ptr nocapture noundef readonly %s, i32 noundef %trig_num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %0 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %async, align 4
  %and = and i32 %trig_num, 1
  %shr = lshr i32 %trig_num, 1
  %and2 = and i32 %shr, 1
  %start_arg = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 17, i32 3
  %2 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %trig_num)
  %cmp.not = icmp eq i32 %3, %trig_num
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private, align 4
  tail call fastcc void @apci1500_port_enable(ptr noundef %dev, i1 noundef zeroext false)
  %arrayidx = getelementptr %struct.apci1500_private, ptr %5, i32 0, i32 3, i32 %and
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %spinlock.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %8 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %9, 3
  %and.i = and i32 %add.i, 1048575
  %add9.i = or i32 %and.i, -18874368
  %10 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 39) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %conv14.i = trunc i32 %7 to i8
  %11 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase.i, align 4
  %add16.i = add i32 %12, 3
  %and17.i = and i32 %add16.i, 1048575
  %add18.i = or i32 %and17.i, -18874368
  %13 = inttoptr i32 %add18.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %conv14.i) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i) #7
  %arrayidx4 = getelementptr %struct.apci1500_private, ptr %5, i32 0, i32 4, i32 %and
  %14 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx4, align 4
  %call2.i150 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iobase.i, align 4
  %add.i152 = add i32 %17, 3
  %and.i153 = and i32 %add.i152, 1048575
  %add9.i154 = or i32 %and.i153, -18874368
  %18 = inttoptr i32 %add9.i154 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 38) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %conv14.i155 = trunc i32 %15 to i8
  %19 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iobase.i, align 4
  %add16.i156 = add i32 %20, 3
  %and17.i157 = and i32 %add16.i156, 1048575
  %add18.i158 = or i32 %and17.i157, -18874368
  %21 = inttoptr i32 %add18.i158 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 %conv14.i155) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i150) #7
  %arrayidx6 = getelementptr %struct.apci1500_private, ptr %5, i32 0, i32 5, i32 %and
  %22 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx6, align 4
  %call2.i160 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %24 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %iobase.i, align 4
  %add.i162 = add i32 %25, 3
  %and.i163 = and i32 %add.i162, 1048575
  %add9.i164 = or i32 %and.i163, -18874368
  %26 = inttoptr i32 %add9.i164 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 37) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %conv14.i165 = trunc i32 %23 to i8
  %27 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %iobase.i, align 4
  %add16.i166 = add i32 %28, 3
  %and17.i167 = and i32 %add16.i166, 1048575
  %add18.i168 = or i32 %and17.i167, -18874368
  %29 = inttoptr i32 %add18.i168 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 %conv14.i165) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i160) #7
  %arrayidx9 = getelementptr %struct.apci1500_private, ptr %5, i32 0, i32 3, i32 %and2
  %30 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx9, align 4
  %shr10 = lshr i32 %31, 8
  %call2.i170 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %32 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %iobase.i, align 4
  %add.i172 = add i32 %33, 3
  %and.i173 = and i32 %add.i172, 1048575
  %add9.i174 = or i32 %and.i173, -18874368
  %34 = inttoptr i32 %add9.i174 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 47) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %conv14.i175 = trunc i32 %shr10 to i8
  %35 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %iobase.i, align 4
  %add16.i176 = add i32 %36, 3
  %and17.i177 = and i32 %add16.i176, 1048575
  %add18.i178 = or i32 %and17.i177, -18874368
  %37 = inttoptr i32 %add18.i178 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 %conv14.i175) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i170) #7
  %arrayidx13 = getelementptr %struct.apci1500_private, ptr %5, i32 0, i32 4, i32 %and2
  %38 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx13, align 4
  %shr14 = lshr i32 %39, 8
  %call2.i180 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %40 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %iobase.i, align 4
  %add.i182 = add i32 %41, 3
  %and.i183 = and i32 %add.i182, 1048575
  %add9.i184 = or i32 %and.i183, -18874368
  %42 = inttoptr i32 %add9.i184 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 46) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %conv14.i185 = trunc i32 %shr14 to i8
  %43 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %iobase.i, align 4
  %add16.i186 = add i32 %44, 3
  %and17.i187 = and i32 %add16.i186, 1048575
  %add18.i188 = or i32 %and17.i187, -18874368
  %45 = inttoptr i32 %add18.i188 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %45, i8 %conv14.i185) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i180) #7
  %arrayidx17 = getelementptr %struct.apci1500_private, ptr %5, i32 0, i32 5, i32 %and2
  %46 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx17, align 4
  %shr18 = lshr i32 %47, 8
  %call2.i190 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %48 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %iobase.i, align 4
  %add.i192 = add i32 %49, 3
  %and.i193 = and i32 %add.i192, 1048575
  %add9.i194 = or i32 %and.i193, -18874368
  %50 = inttoptr i32 %add9.i194 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 45) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %conv14.i195 = trunc i32 %shr18 to i8
  %51 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %iobase.i, align 4
  %add16.i196 = add i32 %52, 3
  %and17.i197 = and i32 %add16.i196, 1048575
  %add18.i198 = or i32 %and17.i197, -18874368
  %53 = inttoptr i32 %add18.i198 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %53, i8 %conv14.i195) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i190) #7
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx, align 4
  %and22 = and i32 %55, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool.not = icmp eq i32 %and22, 0
  br i1 %tobool.not, label %if.end.if.end36_crit_edge, label %if.then23

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  %call2.i200 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  %56 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %iobase.i, align 4
  %add.i202 = add i32 %57, 3
  %and.i203 = and i32 %add.i202, 1048575
  %add9.i204 = or i32 %and.i203, -18874368
  %58 = inttoptr i32 %add9.i204 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %58, i8 32) #7, !srcloc !55
  %59 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %iobase.i, align 4
  %add12.i = add i32 %60, 3
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %61 = inttoptr i32 %add14.i to ptr
  %62 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %61) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i200) #7
  %63 = and i8 %62, -15
  %or = select i1 %tobool24.not, i8 12, i8 10
  %or26 = or i8 %63, %or
  %call2.i206 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %64 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %iobase.i, align 4
  %add.i208 = add i32 %65, 3
  %and.i209 = and i32 %add.i208, 1048575
  %add9.i210 = or i32 %and.i209, -18874368
  %66 = inttoptr i32 %add9.i210 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 32) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %67 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %iobase.i, align 4
  %add16.i212 = add i32 %68, 3
  %and17.i213 = and i32 %add16.i212, 1048575
  %add18.i214 = or i32 %and17.i213, -18874368
  %69 = inttoptr i32 %add18.i214 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %69, i8 %or26) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i206) #7
  %call2.i216 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %70 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %iobase.i, align 4
  %add.i218 = add i32 %71, 3
  %and.i219 = and i32 %add.i218, 1048575
  %add9.i220 = or i32 %and.i219, -18874368
  %72 = inttoptr i32 %add9.i220 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %72, i8 8) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %73 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %iobase.i, align 4
  %add16.i221 = add i32 %74, 3
  %and17.i222 = and i32 %add16.i221, 1048575
  %add18.i223 = or i32 %and17.i222, -18874368
  %75 = inttoptr i32 %add18.i223 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %75, i8 -64) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i216) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @apci1500_di_inttrig_start.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@apci1500_di_inttrig_start, %if.end36)) #7
          to label %if.then32 [label %if.end36], !srcloc !77

if.then32:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %76 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %class_dev, align 4
  %cond34 = select i1 %tobool24.not, ptr @.str.9, ptr @.str.8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @apci1500_di_inttrig_start.__UNIQUE_ID_ddebug236, ptr noundef %77, ptr noundef nonnull @.str.7, ptr noundef nonnull %cond34) #7
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.then23, %if.end.if.end36_crit_edge
  %78 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx9, align 4
  %and39 = and i32 %79, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end69, label %if.then41

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool42.not = icmp eq i32 %and2, 0
  %call2.i225 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  %80 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %iobase.i, align 4
  %add.i227 = add i32 %81, 3
  %and.i228 = and i32 %add.i227, 1048575
  %add9.i229 = or i32 %and.i228, -18874368
  %82 = inttoptr i32 %add9.i229 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %82, i8 40) #7, !srcloc !55
  %83 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %iobase.i, align 4
  %add12.i230 = add i32 %84, 3
  %and13.i231 = and i32 %add12.i230, 1048575
  %add14.i232 = or i32 %and13.i231, -18874368
  %85 = inttoptr i32 %add14.i232 to ptr
  %86 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %85) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i225) #7
  %87 = and i8 %86, -15
  %or46 = select i1 %tobool42.not, i8 12, i8 10
  %or47 = or i8 %87, %or46
  %call2.i235 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %88 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %iobase.i, align 4
  %add.i237 = add i32 %89, 3
  %and.i238 = and i32 %add.i237, 1048575
  %add9.i239 = or i32 %and.i238, -18874368
  %90 = inttoptr i32 %add9.i239 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %90, i8 40) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %91 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %iobase.i, align 4
  %add16.i241 = add i32 %92, 3
  %and17.i242 = and i32 %add16.i241, 1048575
  %add18.i243 = or i32 %and17.i242, -18874368
  %93 = inttoptr i32 %add18.i243 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %93, i8 %or47) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i235) #7
  %call2.i245 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %94 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %iobase.i, align 4
  %add.i247 = add i32 %95, 3
  %and.i248 = and i32 %add.i247, 1048575
  %add9.i249 = or i32 %and.i248, -18874368
  %96 = inttoptr i32 %add9.i249 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %96, i8 9) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %97 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %iobase.i, align 4
  %add16.i250 = add i32 %98, 3
  %and17.i251 = and i32 %add16.i250, 1048575
  %add18.i252 = or i32 %and17.i251, -18874368
  %99 = inttoptr i32 %add18.i252 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %99, i8 -64) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i245) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @apci1500_di_inttrig_start.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@apci1500_di_inttrig_start, %if.end91.sink.split)) #7
          to label %if.then62 [label %if.end91.sink.split], !srcloc !77

if.then62:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev63 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %100 = ptrtoint ptr %class_dev63 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %class_dev63, align 4
  %cond65 = select i1 %tobool42.not, ptr @.str.9, ptr @.str.8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @apci1500_di_inttrig_start.__UNIQUE_ID_ddebug237, ptr noundef %101, ptr noundef nonnull @.str.10, ptr noundef nonnull %cond65) #7
  br label %if.end91.sink.split

if.end69:                                         ; preds = %if.end36
  tail call fastcc void @apci1500_port_enable(ptr noundef %dev, i1 noundef zeroext true)
  br i1 %tobool.not, label %do.body72, label %if.end69.if.end91_crit_edge

if.end69.if.end91_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91

do.body72:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @apci1500_di_inttrig_start.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@apci1500_di_inttrig_start, %cleanup)) #7
          to label %if.then86 [label %cleanup], !srcloc !77

if.then86:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev87 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %102 = ptrtoint ptr %class_dev87 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %class_dev87, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @apci1500_di_inttrig_start.__UNIQUE_ID_ddebug238, ptr noundef %103, ptr noundef nonnull @.str.11, i32 noundef %trig_num) #7
  br label %cleanup

if.end91.sink.split:                              ; preds = %if.then62, %if.then41
  tail call fastcc void @apci1500_port_enable(ptr noundef %dev, i1 noundef zeroext true)
  br label %if.end91

if.end91:                                         ; preds = %if.end91.sink.split, %if.end69.if.end91_crit_edge
  %call2.i254 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %104 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %iobase.i, align 4
  %add.i256 = add i32 %105, 3
  %and.i257 = and i32 %add.i256, 1048575
  %add9.i258 = or i32 %and.i257, -18874368
  %106 = inttoptr i32 %add9.i258 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %106, i8 0) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %107 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %iobase.i, align 4
  %add16.i259 = add i32 %108, 3
  %and17.i260 = and i32 %add16.i259, 1048575
  %add18.i261 = or i32 %and17.i260, -18874368
  %109 = inttoptr i32 %add18.i261 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %109, i8 -64) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i254) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end91, %if.then86, %do.body72, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end91 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then86 ], [ -22, %do.body72 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @apci1500_port_enable(ptr noundef %dev, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %spinlock.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %1, 3
  %and.i = and i32 %add.i, 1048575
  %add9.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 1) #7, !srcloc !55
  %3 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iobase.i, align 4
  %add12.i = add i32 %4, 3
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %5 = inttoptr i32 %add14.i to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i) #7
  %and = and i8 %6, 123
  %masksel = select i1 %enable, i8 -124, i8 0
  %cfg.0 = or i8 %and, %masksel
  %call2.i5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %7 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase.i, align 4
  %add.i7 = add i32 %8, 3
  %and.i8 = and i32 %add.i7, 1048575
  %add9.i9 = or i32 %and.i8, -18874368
  %9 = inttoptr i32 %add9.i9 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 1) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iobase.i, align 4
  %add16.i = add i32 %11, 3
  %and17.i = and i32 %add16.i, 1048575
  %add18.i = or i32 %and17.i, -18874368
  %12 = inttoptr i32 %add18.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %cfg.0) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i5) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @apci1500_timer_enable(ptr noundef %dev, i32 noundef %chan, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %chan)
  %switch.selectcmp = icmp eq i32 %chan, 1
  %switch.select = select i1 %switch.selectcmp, i32 32, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chan)
  %switch.selectcmp15 = icmp eq i32 %chan, 0
  %switch.select16 = select i1 %switch.selectcmp15, i32 64, i32 %switch.select
  %spinlock.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %1, 3
  %and.i = and i32 %add.i, 1048575
  %add9.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 1) #7, !srcloc !55
  %3 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iobase.i, align 4
  %add12.i = add i32 %4, 3
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %5 = inttoptr i32 %add14.i to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  %conv18.i = zext i8 %6 to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i) #7
  br i1 %enable, label %if.then5, label %if.else6

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %switch.select16, %conv18.i
  br label %if.end7

if.else6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %neg = xor i32 %switch.select16, -1
  %and = and i32 %conv18.i, %neg
  %call2.i18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %7 = trunc i32 %chan to i8
  %conv8.i = add i8 %7, 10
  %8 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iobase.i, align 4
  %add.i20 = add i32 %9, 3
  %and.i21 = and i32 %add.i20, 1048575
  %add9.i22 = or i32 %and.i21, -18874368
  %10 = inttoptr i32 %add9.i22 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %conv8.i) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase.i, align 4
  %add16.i = add i32 %12, 3
  %and17.i = and i32 %add16.i, 1048575
  %add18.i = or i32 %and17.i, -18874368
  %13 = inttoptr i32 %add18.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 0) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i18) #7
  br label %if.end7

if.end7:                                          ; preds = %if.else6, %if.then5
  %cfg.0 = phi i32 [ %or, %if.then5 ], [ %and, %if.else6 ]
  %call2.i24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iobase.i, align 4
  %add.i26 = add i32 %15, 3
  %and.i27 = and i32 %add.i26, 1048575
  %add9.i28 = or i32 %and.i27, -18874368
  %16 = inttoptr i32 %add9.i28 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 1) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %conv14.i = trunc i32 %cfg.0 to i8
  %17 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iobase.i, align 4
  %add16.i29 = add i32 %18, 3
  %and17.i30 = and i32 %add16.i29, 1048575
  %add18.i31 = or i32 %and17.i30, -18874368
  %19 = inttoptr i32 %add18.i31 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %conv14.i) #7, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i24) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci1500_pci_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %call = tail call i32 @comedi_pci_auto_config(ptr noundef %dev, ptr noundef nonnull @apci1500_driver, i32 noundef %1) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_auto_unconfig(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_auto_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #6

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !21, !22, !24, !25, !27, !28, !29, !30, !31, !33, !34, !36, !37, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__initcall__kmod_addi_apci_1500__242_883_apci1500_driver_init6, !1, !"__initcall__kmod_addi_apci_1500__242_883_apci1500_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/addi_apci_1500.c", i32 883, i32 1}
!2 = !{ptr @__exitcall_apci1500_driver_exit, !1, !"__exitcall_apci1500_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author243, !4, !"__UNIQUE_ID_author243", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/addi_apci_1500.c", i32 885, i32 1}
!5 = !{ptr @__UNIQUE_ID_description244, !6, !"__UNIQUE_ID_description244", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/addi_apci_1500.c", i32 886, i32 1}
!7 = !{ptr @__UNIQUE_ID_file245, !8, !"__UNIQUE_ID_file245", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/addi_apci_1500.c", i32 887, i32 1}
!9 = !{ptr @__UNIQUE_ID_license246, !8, !"__UNIQUE_ID_license246", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/addi_apci_1500.c", i32 859, i32 17}
!12 = !{ptr @apci1500_driver, !13, !"apci1500_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/addi_apci_1500.c", i32 858, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/addi_apci_1500.c", i32 465, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @apci1500_di_cfg_trig.__UNIQUE_ID_ddebug239, !15, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/comedi/drivers/addi_apci_1500.c", i32 484, i32 3}
!21 = !{ptr @apci1500_di_cfg_trig.__UNIQUE_ID_ddebug240, !20, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/comedi/drivers/addi_apci_1500.c", i32 532, i32 4}
!24 = !{ptr @apci1500_di_cfg_trig.__UNIQUE_ID_ddebug241, !23, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/comedi/drivers/addi_apci_1500.c", i32 322, i32 3}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @apci1500_di_inttrig_start.__UNIQUE_ID_ddebug236, !26, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!29 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/comedi/drivers/addi_apci_1500.c", i32 341, i32 3}
!33 = !{ptr @apci1500_di_inttrig_start.__UNIQUE_ID_ddebug237, !32, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/comedi/drivers/addi_apci_1500.c", i32 350, i32 3}
!36 = !{ptr @apci1500_di_inttrig_start.__UNIQUE_ID_ddebug238, !35, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!37 = !{ptr @apci1500_pci_driver, !38, !"apci1500_pci_driver", i1 false, i1 false}
!38 = !{!"../drivers/comedi/drivers/addi_apci_1500.c", i32 877, i32 26}
!39 = !{ptr @apci1500_pci_table, !40, !"apci1500_pci_table", i1 false, i1 false}
!40 = !{!"../drivers/comedi/drivers/addi_apci_1500.c", i32 871, i32 35}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{i64 2154589769}
!51 = !{i64 4637701}
!52 = !{i64 4637899}
!53 = !{i64 2154561895}
!54 = !{i64 2154562117}
!55 = !{i64 4637504}
!56 = !{i64 2154562546}
!57 = !{i64 2154562768}
!58 = !{i64 2154563117}
!59 = !{i64 2154563466}
!60 = !{i64 2154560755}
!61 = !{i64 2154561106}
!62 = !{i64 2154586774}
!63 = !{i64 4637081}
!64 = !{i64 2154587302}
!65 = !{i64 4638119}
!66 = !{i64 2154588245}
!67 = !{i64 2154588940}
!68 = !{i64 2154589239}
!69 = !{i64 2154566182}
!70 = !{i64 2154566503}
!71 = !{i64 4637281}
!72 = !{i64 2154583171}
!73 = !{i64 2154583439}
!74 = !{i64 2154559742}
!75 = !{i64 2154560171}
!76 = !{i64 2154585342}
!77 = !{i64 2148975196, i64 2148975201, i64 2148975214, i64 2148975258, i64 2148975292, i64 2148975313}
!78 = !{i32 0, i32 33}
!79 = !{i32 0, i32 9}
