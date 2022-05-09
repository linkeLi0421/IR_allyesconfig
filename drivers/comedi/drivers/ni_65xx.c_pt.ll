; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/ni_65xx.c_pt.bc'
source_filename = "../drivers/comedi/drivers/ni_65xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
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
%struct.ni_65xx_board = type { ptr, i32, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.71 = type { ptr }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }

@__param_str_legacy_invert_outputs = internal constant [30 x i8] c"ni_65xx.legacy_invert_outputs\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@ni_65xx_legacy_invert_outputs = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_legacy_invert_outputs = internal constant %struct.kernel_param { ptr @__param_str_legacy_invert_outputs, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @ni_65xx_legacy_invert_outputs } }, section "__param", align 4
@__UNIQUE_ID_legacy_invert_outputstype236 = internal constant [44 x i8] c"ni_65xx.parmtype=legacy_invert_outputs:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_legacy_invert_outputs237 = internal constant [133 x i8] c"ni_65xx.parm=legacy_invert_outputs:invert outputs of PCI/PXI-6513/6514/6515/6516/6517/6518/6519 for compatibility with old user code\00", section ".modinfo", align 1
@__initcall__kmod_ni_65xx__238_818_ni_65xx_driver_init6 = internal global ptr @ni_65xx_driver_init, section ".initcall6.init", align 4
@ni_65xx_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr null, ptr @ni_65xx_detach, ptr @ni_65xx_auto_attach, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ni_65xx_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @ni_65xx_pci_table, ptr @ni_65xx_pci_probe, ptr @comedi_pci_auto_unconfig, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ni_65xx_driver_exit = internal global ptr @ni_65xx_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author239 = internal constant [45 x i8] c"ni_65xx.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [68 x i8] c"ni_65xx.description=Comedi driver for NI PCI-65xx static dio boards\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [44 x i8] c"ni_65xx.file=drivers/comedi/drivers/ni_65xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [20 x i8] c"ni_65xx.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ni_65xx\00", [24 x i8] zeroinitializer }, align 32
@ni_65xx_boards = internal constant { [22 x %struct.ni_65xx_board], [104 x i8] } { [22 x %struct.ni_65xx_board] [%struct.ni_65xx_board { ptr @.str.6, i32 12, i32 0, i32 0, i8 0 }, %struct.ni_65xx_board { ptr @.str.7, i32 12, i32 0, i32 0, i8 0 }, %struct.ni_65xx_board { ptr @.str.8, i32 0, i32 4, i32 0, i8 0 }, %struct.ni_65xx_board { ptr @.str.9, i32 0, i32 8, i32 0, i8 0 }, %struct.ni_65xx_board { ptr @.str.10, i32 0, i32 8, i32 0, i8 0 }, %struct.ni_65xx_board { ptr @.str.11, i32 0, i32 0, i32 8, i8 0 }, %struct.ni_65xx_board { ptr @.str.12, i32 0, i32 0, i32 8, i8 0 }, %struct.ni_65xx_board { ptr @.str.13, i32 0, i32 0, i32 8, i8 -128 }, %struct.ni_65xx_board { ptr @.str.14, i32 0, i32 0, i32 8, i8 -128 }, %struct.ni_65xx_board { ptr @.str.15, i32 0, i32 4, i32 4, i8 -128 }, %struct.ni_65xx_board { ptr @.str.16, i32 0, i32 4, i32 4, i8 -128 }, %struct.ni_65xx_board { ptr @.str.17, i32 0, i32 4, i32 4, i8 -128 }, %struct.ni_65xx_board { ptr @.str.18, i32 0, i32 4, i32 4, i8 -128 }, %struct.ni_65xx_board { ptr @.str.19, i32 0, i32 0, i32 4, i8 -128 }, %struct.ni_65xx_board { ptr @.str.20, i32 0, i32 0, i32 4, i8 -128 }, %struct.ni_65xx_board { ptr @.str.21, i32 0, i32 2, i32 2, i8 -128 }, %struct.ni_65xx_board { ptr @.str.22, i32 0, i32 2, i32 2, i8 -128 }, %struct.ni_65xx_board { ptr @.str.23, i32 0, i32 1, i32 1, i8 0 }, %struct.ni_65xx_board { ptr @.str.24, i32 0, i32 1, i32 1, i8 0 }, %struct.ni_65xx_board { ptr @.str.25, i32 0, i32 1, i32 1, i8 0 }, %struct.ni_65xx_board { ptr @.str.26, i32 0, i32 3, i32 3, i8 0 }, %struct.ni_65xx_board { ptr @.str.27, i32 0, i32 3, i32 3, i8 0 }], [104 x i8] zeroinitializer }, align 32
@ni_65xx_auto_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 668, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"board: %s, ID=0x%02x\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ni_65xx_auto_attach\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/comedi/drivers/ni_65xx.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ni_65xx_auto_attach._entry_ptr = internal global ptr @ni_65xx_auto_attach._entry, section ".printk_index", align 4
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pci-6509\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pxi-6509\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pci-6510\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pci-6511\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pxi-6511\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pci-6512\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pxi-6512\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pci-6513\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pxi-6513\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pci-6514\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pxi-6514\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pci-6515\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pxi-6515\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pci-6516\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pci-6517\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pci-6518\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pci-6519\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pci-6520\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pci-6521\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pxi-6521\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pci-6528\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pxi-6528\00", [23 x i8] zeroinitializer }, align 32
@ni_65xx_pci_table = internal constant { [23 x %struct.pci_device_id], [160 x i8] } { [23 x %struct.pci_device_id] [%struct.pci_device_id { i32 4243, i32 5904, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4243, i32 28805, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4243, i32 28806, i32 -1, i32 -1, i32 0, i32 0, i32 21, i32 0 }, %struct.pci_device_id { i32 4243, i32 28807, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4243, i32 28808, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 4243, i32 28841, i32 -1, i32 -1, i32 0, i32 0, i32 20, i32 0 }, %struct.pci_device_id { i32 4243, i32 28867, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4243, i32 28872, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 4243, i32 28873, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 4243, i32 28876, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4243, i32 28877, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4243, i32 28881, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4243, i32 28882, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 4243, i32 28883, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4243, i32 28964, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4243, i32 28965, i32 -1, i32 -1, i32 0, i32 0, i32 13, i32 0 }, %struct.pci_device_id { i32 4243, i32 28966, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 4243, i32 28967, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 4243, i32 28968, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 4243, i32 29067, i32 -1, i32 -1, i32 0, i32 0, i32 18, i32 0 }, %struct.pci_device_id { i32 4243, i32 29068, i32 -1, i32 -1, i32 0, i32 0, i32 19, i32 0 }, %struct.pci_device_id { i32 4243, i32 29125, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id zeroinitializer], [160 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 24, i64 28]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 21, i64 25]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.30 = private unnamed_addr constant [30 x i8] c"ni_65xx_legacy_invert_outputs\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 262, i32 13 }
@___asan_gen_.33 = private unnamed_addr constant [15 x i8] c"ni_65xx_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 772, i32 29 }
@___asan_gen_.36 = private unnamed_addr constant [19 x i8] c"ni_65xx_pci_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 812, i32 26 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 773, i32 17 }
@___asan_gen_.42 = private unnamed_addr constant [15 x i8] c"ni_65xx_boards\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 150, i32 35 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 667, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 152, i32 12 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 156, i32 12 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 160, i32 12 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 164, i32 12 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 168, i32 12 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 172, i32 12 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 176, i32 12 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 180, i32 12 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 185, i32 12 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 190, i32 12 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 196, i32 12 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 202, i32 12 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 208, i32 12 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 214, i32 12 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 219, i32 12 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 224, i32 12 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 230, i32 12 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 236, i32 12 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 241, i32 12 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 246, i32 12 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 251, i32 12 }
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 256, i32 12 }
@___asan_gen_.129 = private unnamed_addr constant [18 x i8] c"ni_65xx_pci_table\00", align 1
@___asan_gen_.130 = private constant [36 x i8] c"../drivers/comedi/drivers/ni_65xx.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 785, i32 35 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_legacy_invert_outputs237, ptr @__UNIQUE_ID_legacy_invert_outputstype236, ptr @__UNIQUE_ID_license242, ptr @__exitcall_ni_65xx_driver_exit, ptr @__initcall__kmod_ni_65xx__238_818_ni_65xx_driver_init6, ptr @__param_legacy_invert_outputs, ptr @ni_65xx_auto_attach._entry, ptr @ni_65xx_auto_attach._entry_ptr, ptr @ni_65xx_driver_exit, ptr @ni_65xx_legacy_invert_outputs, ptr @ni_65xx_driver, ptr @ni_65xx_pci_driver, ptr @.str, ptr @ni_65xx_boards, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @ni_65xx_pci_table], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_65xx_legacy_invert_outputs to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_65xx_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_65xx_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_65xx_boards to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_65xx_auto_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_65xx_pci_table to i32), i32 736, i32 896, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ni_65xx_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_pci_driver_register(ptr noundef nonnull @ni_65xx_driver, ptr noundef nonnull @ni_65xx_pci_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ni_65xx_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @comedi_pci_driver_unregister(ptr noundef nonnull @ni_65xx_driver, ptr noundef nonnull @ni_65xx_pci_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_driver_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ni_65xx_detach(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #7, !srcloc !90
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  tail call void @comedi_pci_detach(ptr noundef %dev) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ni_65xx_auto_attach(ptr noundef %dev, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_pci_dev(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %context)
  %cmp = icmp ugt i32 %context, 21
  %arrayidx = getelementptr [22 x %struct.ni_65xx_board], ptr @ni_65xx_boards, i32 0, i32 %context
  %tobool.not232 = icmp eq ptr %arrayidx, null
  %tobool.not = or i1 %cmp, %tobool.not232
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
  %call3 = tail call i32 @comedi_pci_enable(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %call.i = tail call ptr @pci_ioremap_bar(ptr noundef %call, i32 noundef 0) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %call, i32 0, i32 47, i32 1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %or.i = or i32 %5, 128
  %6 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #7, !srcloc !92
  tail call void @iounmap(ptr noundef nonnull %call.i) #7
  %call11 = tail call ptr @pci_ioremap_bar(ptr noundef %call, i32 noundef 1) #7
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %7 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call11, ptr %mmio, align 4
  %tobool13.not = icmp eq ptr %call11, null
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %do.body

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 12) #7, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio, align 4
  %add.ptr21 = getelementptr i8, ptr %11, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr21, i8 0) #7, !srcloc !90
  %irq = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 46
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool22.not = icmp eq i32 %13, 0
  br i1 %tobool22.not, label %do.body.do.end35_crit_edge, label %if.then23

do.body.do.end35_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end35

if.then23:                                        ; preds = %do.body
  %14 = ptrtoint ptr %board_name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %board_name, align 4
  %call.i229 = tail call i32 @request_threaded_irq(i32 noundef %13, ptr noundef nonnull @ni_65xx_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %15, ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i229)
  %cmp27 = icmp eq i32 %call.i229, 0
  br i1 %cmp27, label %if.then28, label %if.then23.do.end35_crit_edge

if.then23.do.end35_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end35

if.then28:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 4
  %irq30 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %18 = ptrtoint ptr %irq30 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %irq30, align 4
  br label %do.end35

do.end35:                                         ; preds = %if.then28, %if.then23.do.end35_crit_edge, %do.body.do.end35_crit_edge
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %19 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %class_dev, align 4
  %21 = ptrtoint ptr %board_name to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %board_name, align 4
  %23 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio, align 4
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %24) #7, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  %conv = zext i8 %25 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.1, ptr noundef %22, i32 noundef %conv) #10
  %call41 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %do.end35.cleanup_crit_edge

do.end35.cleanup_crit_edge:                       ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end44:                                         ; preds = %do.end35
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %26 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %subdevices, align 4
  %num_di_ports = getelementptr [22 x %struct.ni_65xx_board], ptr @ni_65xx_boards, i32 0, i32 %context, i32 2
  %28 = lshr i32 25059, %context
  %29 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool46.not.not = icmp eq i32 %29, 0
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %27, i32 0, i32 2
  br i1 %tobool46.not.not, label %if.then47, label %if.else

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 3, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %27, i32 0, i32 4
  %31 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 65536, ptr %subdev_flags, align 4
  %32 = ptrtoint ptr %num_di_ports to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_di_ports, align 4
  %mul = shl i32 %33, 3
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %27, i32 0, i32 3
  %34 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %mul, ptr %n_chan, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %27, i32 0, i32 13
  %35 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %maxdata, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %27, i32 0, i32 15
  %36 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @range_unipolar5, ptr %range_table, align 4
  %insn_bits = getelementptr inbounds %struct.comedi_subdevice, ptr %27, i32 0, i32 20
  %37 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @ni_65xx_dio_insn_bits, ptr %insn_bits, align 4
  %insn_config = getelementptr inbounds %struct.comedi_subdevice, ptr %27, i32 0, i32 21
  %38 = ptrtoint ptr %insn_config to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @ni_65xx_dio_insn_config, ptr %insn_config, align 4
  %private = getelementptr inbounds %struct.comedi_subdevice, ptr %27, i32 0, i32 6
  %39 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %private, align 4
  br label %if.end50

if.else:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %type, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then47
  %41 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %subdevices, align 4
  %num_do_ports = getelementptr [22 x %struct.ni_65xx_board], ptr @ni_65xx_boards, i32 0, i32 %context, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %context)
  %tobool53.not = icmp ult i32 %context, 5
  %type84 = getelementptr %struct.comedi_subdevice, ptr %42, i32 1, i32 2
  br i1 %tobool53.not, label %if.else83, label %if.then54

if.then54:                                        ; preds = %if.end50
  %43 = ptrtoint ptr %type84 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 4, ptr %type84, align 4
  %subdev_flags56 = getelementptr %struct.comedi_subdevice, ptr %42, i32 1, i32 4
  %44 = ptrtoint ptr %subdev_flags56 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 131072, ptr %subdev_flags56, align 4
  %45 = ptrtoint ptr %num_do_ports to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_do_ports, align 4
  %mul58 = shl i32 %46, 3
  %n_chan59 = getelementptr %struct.comedi_subdevice, ptr %42, i32 1, i32 3
  %47 = ptrtoint ptr %n_chan59 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %mul58, ptr %n_chan59, align 4
  %maxdata60 = getelementptr %struct.comedi_subdevice, ptr %42, i32 1, i32 13
  %48 = ptrtoint ptr %maxdata60 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %maxdata60, align 4
  %range_table61 = getelementptr %struct.comedi_subdevice, ptr %42, i32 1, i32 15
  %49 = ptrtoint ptr %range_table61 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @range_unipolar5, ptr %range_table61, align 4
  %insn_bits62 = getelementptr %struct.comedi_subdevice, ptr %42, i32 1, i32 20
  %50 = ptrtoint ptr %insn_bits62 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @ni_65xx_dio_insn_bits, ptr %insn_bits62, align 4
  %51 = ptrtoint ptr %num_di_ports to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_di_ports, align 4
  %53 = inttoptr i32 %52 to ptr
  %private64 = getelementptr %struct.comedi_subdevice, ptr %42, i32 1, i32 6
  %54 = ptrtoint ptr %private64 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %private64, align 4
  %55 = load i8, ptr @ni_65xx_legacy_invert_outputs, align 1, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool65.not = icmp eq i8 %55, 0
  %56 = add nsw i32 %context, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %56)
  %tobool67.not = icmp ult i32 %56, -10
  %or.cond = select i1 %tobool65.not, i1 true, i1 %tobool67.not
  br i1 %or.cond, label %if.then54.do.body73.lr.ph_crit_edge, label %if.then68

if.then54.do.body73.lr.ph_crit_edge:              ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body73.lr.ph

if.then68:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  %io_bits = getelementptr %struct.comedi_subdevice, ptr %42, i32 1, i32 12
  %57 = ptrtoint ptr %io_bits to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 255, ptr %io_bits, align 4
  br label %do.body73.lr.ph

do.body73.lr.ph:                                  ; preds = %if.then68, %if.then54.do.body73.lr.ph_crit_edge
  %58 = ptrtoint ptr %num_do_ports to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_do_ports, align 4
  %io_bits76 = getelementptr %struct.comedi_subdevice, ptr %42, i32 1, i32 12
  %umax = call i32 @llvm.umax.i32(i32 %59, i32 1)
  br label %do.body73

do.body73:                                        ; preds = %do.body73.do.body73_crit_edge, %do.body73.lr.ph
  %i.0234 = phi i32 [ 0, %do.body73.lr.ph ], [ %inc, %do.body73.do.body73_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  tail call void @arm_heavy_mb() #7
  %60 = ptrtoint ptr %io_bits76 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %io_bits76, align 4
  %conv77 = trunc i32 %61 to i8
  %62 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mmio, align 4
  %64 = ptrtoint ptr %num_di_ports to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_di_ports, align 4
  %add = add i32 %65, %i.0234
  %mul80 = shl i32 %add, 4
  %add81 = add i32 %mul80, 64
  %add.ptr82 = getelementptr i8, ptr %63, i32 %add81
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr82, i8 %conv77) #7, !srcloc !90
  %inc = add nuw i32 %i.0234, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %do.body73.if.end85_crit_edge, label %do.body73.do.body73_crit_edge

do.body73.do.body73_crit_edge:                    ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body73

do.body73.if.end85_crit_edge:                     ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

if.else83:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %type84 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %type84, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.else83, %do.body73.if.end85_crit_edge
  %67 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %subdevices, align 4
  %69 = and i32 %context, 1073741822
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %.not = icmp eq i32 %69, 0
  br i1 %.not, label %do.body105.preheader, label %if.else115

do.body105.preheader:                             ; preds = %if.end85
  %num_dio_ports = getelementptr [22 x %struct.ni_65xx_board], ptr @ni_65xx_boards, i32 0, i32 %context, i32 1
  %type90 = getelementptr %struct.comedi_subdevice, ptr %68, i32 2, i32 2
  %70 = ptrtoint ptr %type90 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 5, ptr %type90, align 4
  %subdev_flags91 = getelementptr %struct.comedi_subdevice, ptr %68, i32 2, i32 4
  %71 = ptrtoint ptr %subdev_flags91 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 196608, ptr %subdev_flags91, align 4
  %72 = ptrtoint ptr %num_dio_ports to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %num_dio_ports, align 4
  %mul93 = shl i32 %73, 3
  %n_chan94 = getelementptr %struct.comedi_subdevice, ptr %68, i32 2, i32 3
  %74 = ptrtoint ptr %n_chan94 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %mul93, ptr %n_chan94, align 4
  %maxdata95 = getelementptr %struct.comedi_subdevice, ptr %68, i32 2, i32 13
  %75 = ptrtoint ptr %maxdata95 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1, ptr %maxdata95, align 4
  %range_table96 = getelementptr %struct.comedi_subdevice, ptr %68, i32 2, i32 15
  %76 = ptrtoint ptr %range_table96 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @range_unipolar5, ptr %range_table96, align 4
  %insn_bits97 = getelementptr %struct.comedi_subdevice, ptr %68, i32 2, i32 20
  %77 = ptrtoint ptr %insn_bits97 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @ni_65xx_dio_insn_bits, ptr %insn_bits97, align 4
  %insn_config98 = getelementptr %struct.comedi_subdevice, ptr %68, i32 2, i32 21
  %78 = ptrtoint ptr %insn_config98 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @ni_65xx_dio_insn_config, ptr %insn_config98, align 4
  %private99 = getelementptr %struct.comedi_subdevice, ptr %68, i32 2, i32 6
  %79 = ptrtoint ptr %private99 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %private99, align 4
  %umax238 = call i32 @llvm.umax.i32(i32 %73, i32 1)
  br label %do.body105

do.body105:                                       ; preds = %do.body105.do.body105_crit_edge, %do.body105.preheader
  %i.1236 = phi i32 [ %inc113, %do.body105.do.body105_crit_edge ], [ 0, %do.body105.preheader ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !99
  tail call void @arm_heavy_mb() #7
  %80 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mmio, align 4
  %mul109 = shl i32 %i.1236, 4
  %add110 = add i32 %mul109, 65
  %add.ptr111 = getelementptr i8, ptr %81, i32 %add110
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr111, i8 1) #7, !srcloc !90
  %inc113 = add nuw i32 %i.1236, 1
  %exitcond239.not = icmp eq i32 %inc113, %umax238
  br i1 %exitcond239.not, label %do.body105.if.end117_crit_edge, label %do.body105.do.body105_crit_edge

do.body105.do.body105_crit_edge:                  ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body105

do.body105.if.end117_crit_edge:                   ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117

if.else115:                                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  %type116 = getelementptr %struct.comedi_subdevice, ptr %68, i32 2, i32 2
  %82 = ptrtoint ptr %type116 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %type116, align 4
  br label %if.end117

if.end117:                                        ; preds = %if.else115, %do.body105.if.end117_crit_edge
  %83 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %subdevices, align 4
  %type120 = getelementptr %struct.comedi_subdevice, ptr %84, i32 3, i32 2
  %85 = ptrtoint ptr %type120 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 3, ptr %type120, align 4
  %subdev_flags121 = getelementptr %struct.comedi_subdevice, ptr %84, i32 3, i32 4
  %86 = ptrtoint ptr %subdev_flags121 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 65536, ptr %subdev_flags121, align 4
  %n_chan122 = getelementptr %struct.comedi_subdevice, ptr %84, i32 3, i32 3
  %87 = ptrtoint ptr %n_chan122 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1, ptr %n_chan122, align 4
  %maxdata123 = getelementptr %struct.comedi_subdevice, ptr %84, i32 3, i32 13
  %88 = ptrtoint ptr %maxdata123 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 1, ptr %maxdata123, align 4
  %range_table124 = getelementptr %struct.comedi_subdevice, ptr %84, i32 3, i32 15
  %89 = ptrtoint ptr %range_table124 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @range_unipolar5, ptr %range_table124, align 4
  %insn_bits125 = getelementptr %struct.comedi_subdevice, ptr %84, i32 3, i32 20
  %90 = ptrtoint ptr %insn_bits125 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @ni_65xx_intr_insn_bits, ptr %insn_bits125, align 4
  %irq126 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %91 = ptrtoint ptr %irq126 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %irq126, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool127.not = icmp eq i32 %92, 0
  br i1 %tobool127.not, label %if.end117.if.end131_crit_edge, label %if.then128

if.end117.if.end131_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end131

if.then128:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx119 = getelementptr %struct.comedi_subdevice, ptr %84, i32 3
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %93 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %arrayidx119, ptr %read_subdev, align 4
  %94 = ptrtoint ptr %subdev_flags121 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %subdev_flags121, align 4
  %or = or i32 %95, 32768
  store i32 %or, ptr %subdev_flags121, align 4
  %len_chanlist = getelementptr %struct.comedi_subdevice, ptr %84, i32 3, i32 5
  %96 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 1, ptr %len_chanlist, align 4
  %insn_config130 = getelementptr %struct.comedi_subdevice, ptr %84, i32 3, i32 21
  %97 = ptrtoint ptr %insn_config130 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @ni_65xx_intr_insn_config, ptr %insn_config130, align 4
  %do_cmdtest = getelementptr %struct.comedi_subdevice, ptr %84, i32 3, i32 23
  %98 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @ni_65xx_intr_cmdtest, ptr %do_cmdtest, align 4
  %do_cmd = getelementptr %struct.comedi_subdevice, ptr %84, i32 3, i32 22
  %99 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @ni_65xx_intr_cmd, ptr %do_cmd, align 4
  %cancel = getelementptr %struct.comedi_subdevice, ptr %84, i32 3, i32 25
  %100 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @ni_65xx_intr_cancel, ptr %cancel, align 4
  br label %if.end131

if.end131:                                        ; preds = %if.then128, %if.end117.if.end131_crit_edge
  tail call fastcc void @ni_65xx_disable_input_filters(ptr noundef %dev)
  tail call fastcc void @ni_65xx_disable_edge_detection(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end131, %do.end35.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end131 ], [ -19, %entry.cleanup_crit_edge ], [ %call3, %if.end2.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ], [ %call41, %do.end35.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_to_pci_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ni_65xx_interrupt(i32 noundef %irq, ptr noundef %d) #2 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 21
  %0 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_subdev, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %val, align 2
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 17
  %3 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 2
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  %6 = and i8 %5, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %6)
  %.not = icmp eq i8 %6, 5
  br i1 %.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %7 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio, align 4
  %add.ptr9 = getelementptr i8, ptr %8, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9, i8 12) #7, !srcloc !90
  %call10 = call i32 @comedi_buf_write_samples(ptr noundef %1, ptr noundef nonnull %val, i32 noundef 1) #7
  %call11 = call i32 @comedi_handle_events(ptr noundef %d, ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ni_65xx_dio_insn_bits(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 6
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %3 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chanspec, align 4
  %and = and i32 %4, 65535
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 3
  %5 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n_chan, align 4
  %sub = add i32 %6, -1
  %div = sdiv i32 %sub, 8
  %div1100 = lshr i32 %and, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div1100, i32 %div)
  %cmp.not105 = icmp sgt i32 %div1100, %div
  br i1 %cmp.not105, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx4 = getelementptr i32, ptr %data, i32 1
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %read_bits.0107 = phi i32 [ 0, %for.body.lr.ph ], [ %or48, %for.inc.for.body_crit_edge ]
  %port_offset.0106 = phi i32 [ %div1100, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %add = add i32 %port_offset.0106, %2
  %mul = shl i32 %port_offset.0106, 3
  %sub2 = sub i32 %mul, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %sub2)
  %cmp3 = icmp sgt i32 %sub2, 31
  br i1 %cmp3, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end:                                           ; preds = %for.body
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data, align 4
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub2)
  %cmp5 = icmp sgt i32 %sub2, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %shr = lshr i32 %8, %sub2
  %shr7 = lshr i32 %10, %sub2
  br label %if.end11

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sub8 = sub i32 0, %sub2
  %shl = shl i32 %8, %sub8
  %shl10 = shl i32 %10, %sub8
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then6
  %port_data.0 = phi i32 [ %shr7, %if.then6 ], [ %shl10, %if.else ]
  %port_mask.0 = phi i32 [ %shr, %if.then6 ], [ %shl, %if.else ]
  %and12 = and i32 %port_mask.0, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool.not = icmp eq i32 %and12, 0
  br i1 %tobool.not, label %if.end11.for.inc_crit_edge, label %if.then14

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = shl i32 %add, 4
  %.pre109 = add i32 %.pre, 64
  br label %for.inc

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio, align 4
  %mul15 = shl i32 %add, 4
  %add16 = add i32 %mul15, 64
  %add.ptr = getelementptr i8, ptr %12, i32 %add16
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  %conv = zext i8 %13 to i32
  %14 = ptrtoint ptr %io_bits to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %io_bits, align 4
  %xor = xor i32 %15, %conv
  %neg = xor i32 %port_mask.0, -1
  %and18 = and i32 %xor, %neg
  %and19 = and i32 %port_mask.0, %port_data.0
  %or = or i32 %and18, %and19
  %xor21 = xor i32 %or, %15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %conv22 = trunc i32 %xor21 to i8
  %16 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio, align 4
  %add.ptr26 = getelementptr i8, ptr %17, i32 %add16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr26, i8 %conv22) #7, !srcloc !90
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %if.end11.for.inc_crit_edge
  %add32.pre-phi = phi i32 [ %.pre109, %if.end11.for.inc_crit_edge ], [ %add16, %if.then14 ]
  %18 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio, align 4
  %add.ptr33 = getelementptr i8, ptr %19, i32 %add32.pre-phi
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr33) #7, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  %conv37 = zext i8 %20 to i32
  %21 = ptrtoint ptr %io_bits to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %io_bits, align 4
  %xor39 = xor i32 %22, %conv37
  %shl43 = shl i32 %xor39, %sub2
  %sub45 = sub i32 0, %sub2
  %shr46 = lshr i32 %xor39, %sub45
  %bits.0 = select i1 %cmp5, i32 %shl43, i32 %shr46
  %or48 = or i32 %bits.0, %read_bits.0107
  %inc = add nuw nsw i32 %port_offset.0106, 1
  %exitcond = icmp eq i32 %port_offset.0106, %div
  br i1 %exitcond, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %read_bits.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %read_bits.0107, %for.body.for.end_crit_edge ], [ %or48, %for.inc.for.end_crit_edge ]
  %arrayidx54 = getelementptr i32, ptr %data, i32 1
  %23 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %read_bits.0.lcssa, ptr %arrayidx54, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %24 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %n, align 4
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ni_65xx_dio_insn_config(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 6
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %3 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chanspec, align 4
  %rem = and i32 %4, 7
  %shl = shl nuw nsw i32 1, %rem
  %and = lshr i32 %4, 3
  %div94 = and i32 %and, 8191
  %add = add i32 %div94, %2
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %entry.cleanup_crit_edge [
    i32 24, label %sw.bb
    i32 1, label %sw.bb21
    i32 0, label %sw.bb33
    i32 28, label %sw.bb46
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %arrayidx1 = getelementptr i32, ptr %data, i32 1
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx1, align 4
  %add2 = add i32 %9, 100
  %div3 = udiv i32 %add2, 200
  %10 = tail call i32 @llvm.umin.i32(i32 %div3, i32 1048575)
  %mul = mul nuw nsw i32 %10, 200
  %11 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mul, ptr %arrayidx1, align 4
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %12 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio, align 4
  %mul5 = shl i32 %add, 4
  %add6 = add i32 %mul5, 68
  %add.ptr = getelementptr i8, ptr %13, i32 %add6
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  %conv = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  tail call void @arm_heavy_mb() #7
  %15 = tail call i32 @llvm.bswap.i32(i32 %10)
  %16 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio, align 4
  %add.ptr10 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %15) #7, !srcloc !92
  %or = or i32 %shl, %conv
  br label %do.body13

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %neg = xor i32 %shl, -1
  %and11 = and i32 %conv, %neg
  br label %do.body13

do.body13:                                        ; preds = %if.else, %do.body
  %val.0 = phi i32 [ %or, %do.body ], [ %and11, %if.else ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !107
  tail call void @arm_heavy_mb() #7
  %conv16 = trunc i32 %val.0 to i8
  %18 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio, align 4
  %add.ptr20 = getelementptr i8, ptr %19, i32 %add6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr20, i8 %conv16) #7, !srcloc !90
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 2
  %20 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %21)
  %cmp22.not = icmp eq i32 %21, 5
  br i1 %cmp22.not, label %do.body26, label %sw.bb21.cleanup_crit_edge

sw.bb21.cleanup_crit_edge:                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body26:                                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !108
  tail call void @arm_heavy_mb() #7
  %mmio29 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %22 = ptrtoint ptr %mmio29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio29, align 4
  %mul30 = shl i32 %add, 4
  %add31 = add i32 %mul30, 65
  %add.ptr32 = getelementptr i8, ptr %23, i32 %add31
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr32, i8 0) #7, !srcloc !90
  br label %sw.epilog

sw.bb33:                                          ; preds = %entry
  %type34 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 2
  %24 = ptrtoint ptr %type34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %type34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %25)
  %cmp35.not = icmp eq i32 %25, 5
  br i1 %cmp35.not, label %do.body39, label %sw.bb33.cleanup_crit_edge

sw.bb33.cleanup_crit_edge:                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body39:                                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  tail call void @arm_heavy_mb() #7
  %mmio42 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %26 = ptrtoint ptr %mmio42 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio42, align 4
  %mul43 = shl i32 %add, 4
  %add44 = add i32 %mul43, 65
  %add.ptr45 = getelementptr i8, ptr %27, i32 %add44
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr45, i8 1) #7, !srcloc !90
  br label %sw.epilog

sw.bb46:                                          ; preds = %entry
  %type47 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 2
  %28 = ptrtoint ptr %type47 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %29)
  %cmp48.not = icmp eq i32 %29, 5
  br i1 %cmp48.not, label %if.end51, label %sw.bb46.cleanup_crit_edge

sw.bb46.cleanup_crit_edge:                        ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end51:                                         ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #9
  %mmio54 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %30 = ptrtoint ptr %mmio54 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio54, align 4
  %mul55 = shl i32 %add, 4
  %add56 = add i32 %mul55, 65
  %add.ptr57 = getelementptr i8, ptr %31, i32 %add56
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr57) #7, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %cmp62 = icmp ne i8 %32, 1
  %cond = zext i1 %cmp62 to i32
  %arrayidx64 = getelementptr i32, ptr %data, i32 1
  %33 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %cond, ptr %arrayidx64, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end51, %do.body39, %do.body26, %do.body13
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %34 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb46.cleanup_crit_edge, %sw.bb33.cleanup_crit_edge, %sw.bb21.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %35, %sw.epilog ], [ -22, %sw.bb21.cleanup_crit_edge ], [ -22, %sw.bb33.cleanup_crit_edge ], [ -22, %sw.bb46.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ni_65xx_intr_insn_bits(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %1 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %n, align 4
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ni_65xx_intr_insn_config(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %1, label %entry.return_crit_edge [
    i32 25, label %sw.bb
    i32 21, label %sw.bb3
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb:                                            ; preds = %entry
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %3 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp.not = icmp eq i32 %4, 3
  br i1 %cmp.not, label %if.end, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx1 = getelementptr i32, ptr %data, i32 1
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr i32, ptr %data, i32 2
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx2, align 4
  tail call fastcc void @ni_65xx_update_edge_detection(ptr noundef %dev, i32 noundef 0, i32 noundef %6, i32 noundef %8)
  tail call fastcc void @ni_65xx_update_edge_detection(ptr noundef %dev, i32 noundef 32, i32 noundef 0, i32 noundef 0)
  tail call fastcc void @ni_65xx_update_edge_detection(ptr noundef %dev, i32 noundef 64, i32 noundef 0, i32 noundef 0)
  br label %sw.epilog15

sw.bb3:                                           ; preds = %entry
  %arrayidx4 = getelementptr i32, ptr %data, i32 1
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp5.not = icmp eq i32 %10, 0
  br i1 %cmp5.not, label %if.end7, label %sw.bb3.return_crit_edge

sw.bb3.return_crit_edge:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end7:                                          ; preds = %sw.bb3
  %arrayidx8 = getelementptr i32, ptr %data, i32 2
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx8, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %12, label %if.end7.return_crit_edge [
    i32 0, label %sw.bb9
    i32 1, label %sw.bb10
  ]

if.end7.return_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb9:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ni_65xx_update_edge_detection(ptr noundef %dev, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  tail call fastcc void @ni_65xx_update_edge_detection(ptr noundef %dev, i32 noundef 32, i32 noundef 0, i32 noundef 0) #7
  tail call fastcc void @ni_65xx_update_edge_detection(ptr noundef %dev, i32 noundef 64, i32 noundef 0, i32 noundef 0) #7
  br label %sw.epilog15

sw.bb10:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx11 = getelementptr i32, ptr %data, i32 3
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx11, align 4
  %arrayidx12 = getelementptr i32, ptr %data, i32 4
  %16 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx12, align 4
  %arrayidx13 = getelementptr i32, ptr %data, i32 5
  %18 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx13, align 4
  tail call fastcc void @ni_65xx_update_edge_detection(ptr noundef %dev, i32 noundef %15, i32 noundef %17, i32 noundef %19)
  br label %sw.epilog15

sw.epilog15:                                      ; preds = %sw.bb10, %sw.bb9, %if.end
  %n16 = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %20 = ptrtoint ptr %n16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n16, align 4
  br label %return

return:                                           ; preds = %sw.epilog15, %if.end7.return_crit_edge, %sw.bb3.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %21, %sw.epilog15 ], [ -22, %sw.bb.return_crit_edge ], [ -22, %sw.bb3.return_crit_edge ], [ -22, %if.end7.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ni_65xx_intr_cmdtest(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef %cmd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %start_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 2
  %0 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %start_src, align 4
  %and.i = and i32 %1, 2
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
  %and.i43 = and i32 %3, 256
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
  %and.i58 = and i32 %12, 32
  store i32 %and.i58, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i58)
  %cmp.i59 = icmp ne i32 %and.i58, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i58, i32 %12)
  %cmp1.not.i60 = icmp eq i32 %and.i58, %12
  %or.cond.i61 = and i1 %cmp.i59, %cmp1.not.i60
  %13 = select i1 %10, i1 %or.cond.i61, i1 false
  br i1 %13, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %14 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not.i = icmp eq i32 %15, 0
  br i1 %cmp.not.i, label %if.end.comedi_check_trigger_arg_is.exit_crit_edge, label %if.then.i

if.end.comedi_check_trigger_arg_is.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %start_arg, align 4
  br label %comedi_check_trigger_arg_is.exit

comedi_check_trigger_arg_is.exit:                 ; preds = %if.then.i, %if.end.comedi_check_trigger_arg_is.exit_crit_edge
  %retval.0.i63 = phi i32 [ -22, %if.then.i ], [ 0, %if.end.comedi_check_trigger_arg_is.exit_crit_edge ]
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %17 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not.i64 = icmp eq i32 %18, 0
  br i1 %cmp.not.i64, label %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit67_crit_edge, label %if.then.i65

comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit67_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit67

if.then.i65:                                      ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %scan_begin_arg, align 4
  br label %comedi_check_trigger_arg_is.exit67

comedi_check_trigger_arg_is.exit67:               ; preds = %if.then.i65, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit67_crit_edge
  %retval.0.i66 = phi i32 [ -22, %if.then.i65 ], [ 0, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit67_crit_edge ]
  %or12 = or i32 %retval.0.i66, %retval.0.i63
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %20 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %convert_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not.i68 = icmp eq i32 %21, 0
  br i1 %cmp.not.i68, label %comedi_check_trigger_arg_is.exit67.comedi_check_trigger_arg_is.exit71_crit_edge, label %if.then.i69

comedi_check_trigger_arg_is.exit67.comedi_check_trigger_arg_is.exit71_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit67
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit71

if.then.i69:                                      ; preds = %comedi_check_trigger_arg_is.exit67
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %convert_arg, align 4
  br label %comedi_check_trigger_arg_is.exit71

comedi_check_trigger_arg_is.exit71:               ; preds = %if.then.i69, %comedi_check_trigger_arg_is.exit67.comedi_check_trigger_arg_is.exit71_crit_edge
  %retval.0.i70 = phi i32 [ -22, %if.then.i69 ], [ 0, %comedi_check_trigger_arg_is.exit67.comedi_check_trigger_arg_is.exit71_crit_edge ]
  %or14 = or i32 %or12, %retval.0.i70
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %23 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %chanlist_len, align 4
  %25 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %24)
  %cmp.not.i72 = icmp eq i32 %26, %24
  br i1 %cmp.not.i72, label %comedi_check_trigger_arg_is.exit71.comedi_check_trigger_arg_is.exit75_crit_edge, label %if.then.i73

comedi_check_trigger_arg_is.exit71.comedi_check_trigger_arg_is.exit75_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit71
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit75

if.then.i73:                                      ; preds = %comedi_check_trigger_arg_is.exit71
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %24, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit75

comedi_check_trigger_arg_is.exit75:               ; preds = %if.then.i73, %comedi_check_trigger_arg_is.exit71.comedi_check_trigger_arg_is.exit75_crit_edge
  %retval.0.i74 = phi i32 [ -22, %if.then.i73 ], [ 0, %comedi_check_trigger_arg_is.exit71.comedi_check_trigger_arg_is.exit75_crit_edge ]
  %or16 = or i32 %or14, %retval.0.i74
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %28 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.not.i76 = icmp eq i32 %29, 0
  br i1 %cmp.not.i76, label %comedi_check_trigger_arg_is.exit75.comedi_check_trigger_arg_is.exit79_crit_edge, label %if.then.i77

comedi_check_trigger_arg_is.exit75.comedi_check_trigger_arg_is.exit79_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit75
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit79

if.then.i77:                                      ; preds = %comedi_check_trigger_arg_is.exit75
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %stop_arg, align 4
  br label %comedi_check_trigger_arg_is.exit79

comedi_check_trigger_arg_is.exit79:               ; preds = %if.then.i77, %comedi_check_trigger_arg_is.exit75.comedi_check_trigger_arg_is.exit79_crit_edge
  %retval.0.i78 = phi i32 [ -22, %if.then.i77 ], [ 0, %comedi_check_trigger_arg_is.exit75.comedi_check_trigger_arg_is.exit79_crit_edge ]
  %or18 = or i32 %or16, %retval.0.i78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or18)
  %tobool19.not = icmp eq i32 %or18, 0
  %. = select i1 %tobool19.not, i32 0, i32 3
  br label %cleanup

cleanup:                                          ; preds = %comedi_check_trigger_arg_is.exit79, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ %., %comedi_check_trigger_arg_is.exit79 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ni_65xx_intr_cmd(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  tail call void @arm_heavy_mb() #7
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 12) #7, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  tail call void @arm_heavy_mb() #7
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %add.ptr4 = getelementptr i8, ptr %3, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4, i8 29) #7, !srcloc !90
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ni_65xx_intr_cancel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #7, !srcloc !90
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ni_65xx_disable_input_filters(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr.i, align 4
  %num_dio_ports.i = getelementptr inbounds %struct.ni_65xx_board, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %num_dio_ports.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_dio_ports.i, align 4
  %num_di_ports.i = getelementptr inbounds %struct.ni_65xx_board, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %num_di_ports.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_di_ports.i, align 4
  %add.i = add i32 %5, %3
  %num_do_ports.i = getelementptr inbounds %struct.ni_65xx_board, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %num_do_ports.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_do_ports.i, align 4
  %add1.i = add i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add1.i)
  %cmp10.not = icmp eq i32 %add1.i, 0
  br i1 %cmp10.not, label %entry.do.body1_crit_edge, label %do.body.lr.ph

entry.do.body1_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1

do.body.lr.ph:                                    ; preds = %entry
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %i.011 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %do.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio, align 4
  %mul = shl i32 %i.011, 4
  %add = add i32 %mul, 68
  %add.ptr = getelementptr i8, ptr %9, i32 %add
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #7, !srcloc !90
  %inc = add nuw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, %add1.i
  br i1 %exitcond.not, label %do.body.do.body1_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body.do.body1_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1

do.body1:                                         ; preds = %do.body.do.body1_crit_edge, %entry.do.body1_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  tail call void @arm_heavy_mb() #7
  %mmio4 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %10 = ptrtoint ptr %mmio4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio4, align 4
  %add.ptr5 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 0) #7, !srcloc !92
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ni_65xx_disable_edge_detection(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ni_65xx_update_edge_detection(ptr noundef %dev, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  tail call fastcc void @ni_65xx_update_edge_detection(ptr noundef %dev, i32 noundef 32, i32 noundef 0, i32 noundef 0)
  tail call fastcc void @ni_65xx_update_edge_detection(ptr noundef %dev, i32 noundef 64, i32 noundef 0, i32 noundef 0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_handle_events(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ni_65xx_update_edge_detection(ptr nocapture noundef readonly %dev, i32 noundef %base_chan, i32 noundef %rising, i32 noundef %falling) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr.i, align 4
  %num_dio_ports.i = getelementptr inbounds %struct.ni_65xx_board, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %num_dio_ports.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_dio_ports.i, align 4
  %num_di_ports.i = getelementptr inbounds %struct.ni_65xx_board, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %num_di_ports.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_di_ports.i, align 4
  %add.i = add i32 %5, %3
  %num_do_ports.i = getelementptr inbounds %struct.ni_65xx_board, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %num_do_ports.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_do_ports.i, align 4
  %add1.i = add i32 %add.i, %7
  %mul = shl i32 %add1.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %base_chan)
  %cmp.not = icmp ugt i32 %mul, %base_chan
  br i1 %cmp.not, label %if.end, label %entry.cleanup58_crit_edge

entry.cleanup58_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup58

if.end:                                           ; preds = %entry
  %div89 = lshr i32 %base_chan, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div89, i32 %add1.i)
  %cmp192 = icmp ult i32 %div89, %add1.i
  br i1 %cmp192, label %for.body.lr.ph, label %if.end.cleanup58_crit_edge

if.end.cleanup58_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup58

for.body.lr.ph:                                   ; preds = %if.end
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %port.093 = phi i32 [ %div89, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %mul2 = shl i32 %port.093, 3
  %sub = sub i32 %mul2, %base_chan
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %sub)
  %cmp3 = icmp sgt i32 %sub, 31
  br i1 %cmp3, label %for.body.cleanup58_crit_edge, label %if.end5

for.body.cleanup58_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup58

if.end5:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp6 = icmp sgt i32 %sub, -1
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %shr = lshr i32 -1, %sub
  %shr8 = lshr i32 %rising, %sub
  %shr9 = lshr i32 %falling, %sub
  br label %if.end15

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %sub10 = sub i32 0, %sub
  %shl = shl nsw i32 -1, %sub10
  %shl12 = shl i32 %rising, %sub10
  %shl14 = shl i32 %falling, %sub10
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then7
  %port_falling.0 = phi i32 [ %shr9, %if.then7 ], [ %shl14, %if.else ]
  %port_rising.0 = phi i32 [ %shr8, %if.then7 ], [ %shl12, %if.else ]
  %port_mask.0 = phi i32 [ %shr, %if.then7 ], [ %shl, %if.else ]
  %and = and i32 %port_mask.0, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end15.for.inc_crit_edge, label %if.then16

if.end15.for.inc_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then16:                                        ; preds = %if.end15
  %neg = xor i32 %port_mask.0, -1
  %and17 = and i32 %neg, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.then16.do.body_crit_edge, label %if.then19

if.then16.do.body_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = shl i32 %port.093, 4
  %.pre96 = add i32 %.pre, 66
  %.pre97 = add i32 %.pre, 67
  br label %do.body

if.then19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio, align 4
  %mul20 = shl i32 %port.093, 4
  %add = add i32 %mul20, 66
  %add.ptr = getelementptr i8, ptr %9, i32 %add
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  %conv = zext i8 %10 to i32
  %and24 = and i32 %conv, %neg
  %or = or i32 %and24, %port_rising.0
  %11 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio, align 4
  %add29 = add i32 %mul20, 67
  %add.ptr30 = getelementptr i8, ptr %12, i32 %add29
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr30) #7, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %conv34 = zext i8 %13 to i32
  %and36 = and i32 %conv34, %neg
  %or37 = or i32 %and36, %port_falling.0
  br label %do.body

do.body:                                          ; preds = %if.then19, %if.then16.do.body_crit_edge
  %add52.pre-phi = phi i32 [ %.pre97, %if.then16.do.body_crit_edge ], [ %add29, %if.then19 ]
  %add43.pre-phi = phi i32 [ %.pre96, %if.then16.do.body_crit_edge ], [ %add, %if.then19 ]
  %port_falling.1 = phi i32 [ %port_falling.0, %if.then16.do.body_crit_edge ], [ %or37, %if.then19 ]
  %port_rising.1 = phi i32 [ %port_rising.0, %if.then16.do.body_crit_edge ], [ %or, %if.then19 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %conv40 = trunc i32 %port_rising.1 to i8
  %14 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio, align 4
  %add.ptr44 = getelementptr i8, ptr %15, i32 %add43.pre-phi
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr44, i8 %conv40) #7, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %conv49 = trunc i32 %port_falling.1 to i8
  %16 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio, align 4
  %add.ptr53 = getelementptr i8, ptr %17, i32 %add52.pre-phi
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr53, i8 %conv49) #7, !srcloc !90
  br label %for.inc

for.inc:                                          ; preds = %do.body, %if.end15.for.inc_crit_edge
  %inc = add nuw nsw i32 %port.093, 1
  %cmp1 = icmp ult i32 %inc, %add1.i
  br i1 %cmp1, label %for.inc.for.body_crit_edge, label %for.inc.cleanup58_crit_edge

for.inc.cleanup58_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup58

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup58:                                        ; preds = %for.inc.cleanup58_crit_edge, %for.body.cleanup58_crit_edge, %if.end.cleanup58_crit_edge, %entry.cleanup58_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ni_65xx_pci_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %call = tail call i32 @comedi_pci_auto_config(ptr noundef %dev, ptr noundef nonnull @ni_65xx_driver, i32 noundef %1) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_auto_unconfig(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_auto_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @__param_legacy_invert_outputs, !1, !"__param_legacy_invert_outputs", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/ni_65xx.c", i32 263, i32 1}
!2 = !{ptr @__UNIQUE_ID_legacy_invert_outputstype236, !1, !"__UNIQUE_ID_legacy_invert_outputstype236", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_legacy_invert_outputs237, !4, !"__UNIQUE_ID_legacy_invert_outputs237", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/ni_65xx.c", i32 265, i32 1}
!5 = !{ptr @__initcall__kmod_ni_65xx__238_818_ni_65xx_driver_init6, !6, !"__initcall__kmod_ni_65xx__238_818_ni_65xx_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/ni_65xx.c", i32 818, i32 1}
!7 = !{ptr @__exitcall_ni_65xx_driver_exit, !6, !"__exitcall_ni_65xx_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author239, !9, !"__UNIQUE_ID_author239", i1 false, i1 false}
!9 = !{!"../drivers/comedi/drivers/ni_65xx.c", i32 820, i32 1}
!10 = !{ptr @__UNIQUE_ID_description240, !11, !"__UNIQUE_ID_description240", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/ni_65xx.c", i32 821, i32 1}
!12 = !{ptr @__UNIQUE_ID_file241, !13, !"__UNIQUE_ID_file241", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/ni_65xx.c", i32 822, i32 1}
!14 = !{ptr @__UNIQUE_ID_license242, !13, !"__UNIQUE_ID_license242", i1 false, i1 false}
!15 = !{ptr @ni_65xx_legacy_invert_outputs, !16, !"ni_65xx_legacy_invert_outputs", i1 false, i1 false}
!16 = !{!"../drivers/comedi/drivers/ni_65xx.c", i32 262, i32 13}
!17 = !{ptr @__param_str_legacy_invert_outputs, !1, !"__param_str_legacy_invert_outputs", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/comedi/drivers/ni_65xx.c", i32 773, i32 17}
!20 = !{ptr @ni_65xx_driver, !21, !"ni_65xx_driver", i1 false, i1 false}
!21 = !{!"../drivers/comedi/drivers/ni_65xx.c", i32 772, i32 29}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/comedi/drivers/ni_65xx.c", i32 667, i32 2}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ni_65xx_auto_attach._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @ni_65xx_auto_attach._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/comedi/drivers/ni_65xx.c", i32 152, i32 12}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/comedi/drivers/ni_65xx.c", i32 156, i32 12}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/comedi/drivers/ni_65xx.c", i32 160, i32 12}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/comedi/drivers/ni_65xx.c", i32 164, i32 12}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/comedi/drivers/ni_65xx.c", i32 168, i32 12}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/comedi/drivers/ni_65xx.c", i32 172, i32 12}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/comedi/drivers/ni_65xx.c", i32 176, i32 12}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/comedi/drivers/ni_65xx.c", i32 180, i32 12}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/comedi/drivers/ni_65xx.c", i32 185, i32 12}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/comedi/drivers/ni_65xx.c", i32 190, i32 12}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/comedi/drivers/ni_65xx.c", i32 196, i32 12}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/comedi/drivers/ni_65xx.c", i32 202, i32 12}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/comedi/drivers/ni_65xx.c", i32 208, i32 12}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/comedi/drivers/ni_65xx.c", i32 214, i32 12}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/comedi/drivers/ni_65xx.c", i32 219, i32 12}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/comedi/drivers/ni_65xx.c", i32 224, i32 12}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/comedi/drivers/ni_65xx.c", i32 230, i32 12}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/comedi/drivers/ni_65xx.c", i32 236, i32 12}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/comedi/drivers/ni_65xx.c", i32 241, i32 12}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/comedi/drivers/ni_65xx.c", i32 246, i32 12}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/comedi/drivers/ni_65xx.c", i32 251, i32 12}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/comedi/drivers/ni_65xx.c", i32 256, i32 12}
!74 = !{ptr @ni_65xx_boards, !75, !"ni_65xx_boards", i1 false, i1 false}
!75 = !{!"../drivers/comedi/drivers/ni_65xx.c", i32 150, i32 35}
!76 = !{ptr @ni_65xx_pci_driver, !77, !"ni_65xx_pci_driver", i1 false, i1 false}
!77 = !{!"../drivers/comedi/drivers/ni_65xx.c", i32 812, i32 26}
!78 = !{ptr @ni_65xx_pci_table, !79, !"ni_65xx_pci_table", i1 false, i1 false}
!79 = !{!"../drivers/comedi/drivers/ni_65xx.c", i32 785, i32 35}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{i64 2154560922}
!90 = !{i64 4636563}
!91 = !{i64 2154556090}
!92 = !{i64 4636760}
!93 = !{i64 2154557253}
!94 = !{i64 2154557578}
!95 = !{i64 4636958}
!96 = !{i64 2154559560}
!97 = !{i8 0, i8 2}
!98 = !{i64 2154560022}
!99 = !{i64 2154560573}
!100 = !{i64 2154553293}
!101 = !{i64 2154553893}
!102 = !{i64 2154552373}
!103 = !{i64 2154552658}
!104 = !{i64 2154553058}
!105 = !{i64 2154549918}
!106 = !{i64 2154550141}
!107 = !{i64 2154550614}
!108 = !{i64 2154550976}
!109 = !{i64 2154551442}
!110 = !{i64 2154551868}
!111 = !{i64 2154554490}
!112 = !{i64 2154555256}
!113 = !{i64 2154555641}
!114 = !{i64 2154547551}
!115 = !{i64 2154547849}
!116 = !{i64 2154548423}
!117 = !{i64 2154548747}
!118 = !{i64 2154549046}
!119 = !{i64 2154549436}
