; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/jr3_pci.c_pt.bc'
source_filename = "../drivers/comedi/drivers/jr3_pci.c"
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
%struct.jr3_pci_board = type { ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.jr3_block = type { [16384 x i32], %struct.jr3_sensor, [193536 x i8], [32768 x i32], i32, [131068 x i8] }
%struct.jr3_sensor = type { [16 x %struct.raw_channel], [24 x i32], [8 x i32], %struct.six_axis_array, [2 x i32], %struct.six_axis_array, i32, i32, %struct.six_axis_array, i32, i32, %struct.six_axis_array, i32, i32, %struct.force_array, %struct.six_axis_array, i32, i32, [7 x %struct.force_array], %struct.force_array, %struct.force_array, %struct.force_array, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x %struct.le_struct], [16 x %struct.intern_transform] }
%struct.raw_channel = type { i32, i32, [2 x i32] }
%struct.six_axis_array = type { i32, i32, i32, i32, i32, i32 }
%struct.force_array = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.le_struct = type { i32, i32, i32, [4 x %struct.thresh_struct], i32 }
%struct.thresh_struct = type { i32, i32, i32 }
%struct.intern_transform = type { [8 x %struct.anon.72] }
%struct.anon.72 = type { i32, i32 }
%struct.jr3_pci_subdev_private = type { ptr, i32, i32, i32, i32, [9 x %union.jr3_pci_single_range], [58 x ptr], [58 x i32], i16, i32 }
%union.jr3_pci_single_range = type { %struct.comedi_lrange, [12 x i8] }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.jr3_pci_dev_private = type { %struct.timer_list, ptr }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }
%struct.jr3_pci_transform = type { [8 x %struct.anon.74] }
%struct.anon.74 = type { i16, i16 }

@__initcall__kmod_jr3_pci__241_795_jr3_pci_driver_init6 = internal global ptr @jr3_pci_driver_init, section ".initcall6.init", align 4
@jr3_pci_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr null, ptr @jr3_pci_detach, ptr @jr3_pci_auto_attach, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@jr3_pci_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @jr3_pci_pci_table, ptr @jr3_pci_pci_probe, ptr @comedi_pci_auto_unconfig, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_jr3_pci_driver_exit = internal global ptr @jr3_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author242 = internal constant [45 x i8] c"jr3_pci.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [65 x i8] c"jr3_pci.description=Comedi driver for JR3/PCI force sensor board\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [44 x i8] c"jr3_pci.file=drivers/comedi/drivers/jr3_pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [20 x i8] c"jr3_pci.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware246 = internal constant [35 x i8] c"jr3_pci.firmware=comedi/jr3pci.idm\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"jr3_pci\00", [24 x i8] zeroinitializer }, align 32
@jr3_pci_auto_attach.board = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@jr3_pci_boards = internal constant { [4 x %struct.jr3_pci_board], [32 x i8] } { [4 x %struct.jr3_pci_board] [%struct.jr3_pci_board { ptr @.str.6, i32 1 }, %struct.jr3_pci_board { ptr @.str.7, i32 2 }, %struct.jr3_pci_board { ptr @.str.8, i32 3 }, %struct.jr3_pci_board { ptr @.str.9, i32 4 }], [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"comedi/jr3pci.idm\00", [46 x i8] zeroinitializer }, align 32
@jr3_pci_auto_attach.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -76, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"jr3_pci_auto_attach\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/comedi/drivers/jr3_pci.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Firmware load %d\0A\00", [46 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@jr3_pci_auto_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(&devpriv->timer)\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"jr3_pci_1\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"jr3_pci_2\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"jr3_pci_3\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"jr3_pci_4\00", [22 x i8] zeroinitializer }, align 32
@jr3_pci_open.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.3, ptr @.str.11, i8 0, i8 72, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"jr3_pci_open\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"serial[%d]: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@jr3_write_firmware.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.13, i8 0, i8 92, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"jr3_write_firmware\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Loading#%d %4.4x bytes at %4.4x\0A\00", [63 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jr3_pci_show_copyright.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.3, ptr @.str.15, i8 0, i8 -94, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"jr3_pci_show_copyright\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Firmware copyright: %s\0A\00", [40 x i8] zeroinitializer }, align 32
@jr3_pci_pci_table = internal constant { [6 x %struct.pci_device_id], [32 x i8] } { [6 x %struct.pci_device_id] [%struct.pci_device_id { i32 5986, i32 4369, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5986, i32 12561, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5986, i32 12562, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 5986, i32 12563, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 5986, i32 12564, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 16, i64 56, i64 57]
@__sancov_gen_cov_switch_values.17 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.18 = private unnamed_addr constant [15 x i8] c"jr3_pci_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 766, i32 29 }
@___asan_gen_.21 = private unnamed_addr constant [19 x i8] c"jr3_pci_pci_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 789, i32 26 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 767, i32 17 }
@___asan_gen_.27 = private unnamed_addr constant [6 x i8] c"board\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 658, i32 37 }
@___asan_gen_.30 = private unnamed_addr constant [15 x i8] c"jr3_pci_boards\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 56, i32 35 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 718, i32 8 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 720, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 749, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 58, i32 12 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 62, i32 12 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 66, i32 12 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 70, i32 12 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 287, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 368, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 651, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [18 x i8] c"jr3_pci_pci_table\00", align 1
@___asan_gen_.82 = private constant [36 x i8] c"../drivers/comedi/drivers/jr3_pci.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 779, i32 35 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_firmware246, ptr @__UNIQUE_ID_license245, ptr @__exitcall_jr3_pci_driver_exit, ptr @__initcall__kmod_jr3_pci__241_795_jr3_pci_driver_init6, ptr @jr3_pci_driver_exit, ptr @jr3_pci_driver, ptr @jr3_pci_pci_driver, ptr @.str, ptr @jr3_pci_auto_attach.board, ptr @jr3_pci_boards, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @jr3_pci_auto_attach.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @jr3_pci_pci_table], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jr3_pci_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jr3_pci_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jr3_pci_auto_attach.board to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jr3_pci_boards to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jr3_pci_auto_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jr3_pci_pci_table to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @jr3_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_pci_driver_register(ptr noundef nonnull @jr3_pci_driver, ptr noundef nonnull @jr3_pci_pci_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @jr3_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @comedi_pci_driver_unregister(ptr noundef nonnull @jr3_pci_driver, ptr noundef nonnull @jr3_pci_pci_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_driver_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jr3_pci_detach(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @del_timer_sync(ptr noundef nonnull %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @comedi_pci_detach(ptr noundef %dev) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jr3_pci_auto_attach(ptr noundef %dev, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_pci_dev(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %context)
  %cmp = icmp ult i32 %context, 4
  br i1 %cmp, label %if.then, label %if.endthread-pre-split

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr [4 x %struct.jr3_pci_board], ptr @jr3_pci_boards, i32 0, i32 %context
  store ptr %arrayidx, ptr @jr3_pci_auto_attach.board, align 4
  br label %if.end

if.endthread-pre-split:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %.pr = load ptr, ptr @jr3_pci_auto_attach.board, align 4
  br label %if.end

if.end:                                           ; preds = %if.endthread-pre-split, %if.then
  %0 = phi ptr [ %.pr, %if.endthread-pre-split ], [ %arrayidx, %if.then ]
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %1 = ptrtoint ptr %board_ptr to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %0, ptr %board_ptr, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %0, align 4
  %board_name = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %4 = ptrtoint ptr %board_name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %board_name, align 4
  %call3 = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 52) #5
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end2.cleanup_crit_edge, label %if.end6

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %call7 = tail call i32 @comedi_pci_enable(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %end = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 47, i32 0, i32 1
  %5 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp12 = icmp eq i32 %6, 0
  br i1 %cmp12, label %if.end10.cond.end_crit_edge, label %cond.false

if.end10.cond.end_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %resource = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 47
  %7 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %resource, align 8
  %sub = add i32 %6, 1
  %add = sub i32 %sub, %8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end10.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 0, %if.end10.cond.end_crit_edge ]
  %9 = load ptr, ptr @jr3_pci_auto_attach.board, align 4
  %n_subdevs = getelementptr inbounds %struct.jr3_pci_board, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %n_subdevs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_subdevs, align 4
  %mul = shl i32 %11, 19
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %mul)
  %cmp18 = icmp ult i32 %cond, %mul
  br i1 %cmp18, label %cond.end.cleanup_crit_edge, label %if.end20

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %cond.end
  %call21 = tail call ptr @pci_ioremap_bar(ptr noundef %call, i32 noundef 0) #5
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %12 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call21, ptr %mmio, align 4
  %tobool23.not = icmp eq ptr %call21, null
  br i1 %tobool23.not, label %if.end20.cleanup_crit_edge, label %if.end25

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %13 = load ptr, ptr @jr3_pci_auto_attach.board, align 4
  %n_subdevs27 = getelementptr inbounds %struct.jr3_pci_board, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %n_subdevs27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n_subdevs27, align 4
  %call28 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef %15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end31:                                         ; preds = %if.end25
  %open = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 24
  %16 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @jr3_pci_open, ptr %open, align 4
  %n_subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 15
  %17 = ptrtoint ptr %n_subdevices to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n_subdevices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp32151 = icmp sgt i32 %18, 0
  br i1 %cmp32151, label %for.body.lr.ph, label %if.end31.for.end51_crit_edge

if.end31.for.end51_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end51

for.body.lr.ph:                                   ; preds = %if.end31
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  br label %for.body

for.cond41.preheader:                             ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp43153 = icmp sgt i32 %57, 0
  br i1 %cmp43153, label %for.cond41.preheader.do.body45_crit_edge, label %for.cond41.preheader.for.end51_crit_edge

for.cond41.preheader.for.end51_crit_edge:         ; preds = %for.cond41.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end51

for.cond41.preheader.do.body45_crit_edge:         ; preds = %for.cond41.preheader
  br label %do.body45

for.body:                                         ; preds = %if.end37.for.body_crit_edge, %for.body.lr.ph
  %i.0152 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end37.for.body_crit_edge ]
  %19 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %subdevices, align 4
  %arrayidx33 = getelementptr %struct.comedi_subdevice, ptr %20, i32 %i.0152
  %type = getelementptr %struct.comedi_subdevice, ptr %20, i32 %i.0152, i32 2
  %21 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %type, align 4
  %subdev_flags = getelementptr %struct.comedi_subdevice, ptr %20, i32 %i.0152, i32 4
  %22 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1114112, ptr %subdev_flags, align 4
  %n_chan = getelementptr %struct.comedi_subdevice, ptr %20, i32 %i.0152, i32 3
  %23 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 58, ptr %n_chan, align 4
  %insn_read = getelementptr %struct.comedi_subdevice, ptr %20, i32 %i.0152, i32 18
  %24 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @jr3_pci_ai_insn_read, ptr %insn_read, align 4
  %25 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio, align 4
  %call.i = tail call ptr @comedi_alloc_spriv(ptr noundef %arrayidx33, i32 noundef 636) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.cleanup_crit_edge, label %if.end.i

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %for.body
  %index.i = getelementptr %struct.comedi_subdevice, ptr %20, i32 %i.0152, i32 1
  %27 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %index.i, align 4
  %sensor.i = getelementptr %struct.jr3_block, ptr %26, i32 %28, i32 1
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %sensor.i, ptr %call.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i
  %j.080.i = phi i32 [ 0, %if.end.i ], [ %inc21.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx2.i = getelementptr %struct.jr3_pci_subdev_private, ptr %call.i, i32 0, i32 5, i32 %j.080.i
  %30 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %arrayidx2.i, align 4
  %range5.i = getelementptr inbounds %struct.comedi_lrange, ptr %arrayidx2.i, i32 0, i32 1
  %31 = ptrtoint ptr %range5.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1000000, ptr %range5.i, align 4
  %max.i = getelementptr inbounds %struct.comedi_lrange, ptr %arrayidx2.i, i32 2
  %32 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1000000, ptr %max.i, align 4
  %arrayidx16.i = getelementptr %struct.jr3_pci_subdev_private, ptr %call.i, i32 0, i32 6, i32 %j.080.i
  %33 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %arrayidx2.i, ptr %arrayidx16.i, align 4
  %arrayidx19.i = getelementptr %struct.jr3_pci_subdev_private, ptr %call.i, i32 0, i32 7, i32 %j.080.i
  %34 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 32767, ptr %arrayidx19.i, align 4
  %add.1.i = add nuw nsw i32 %j.080.i, 8
  %arrayidx16.1.i = getelementptr %struct.jr3_pci_subdev_private, ptr %call.i, i32 0, i32 6, i32 %add.1.i
  %35 = ptrtoint ptr %arrayidx16.1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %arrayidx2.i, ptr %arrayidx16.1.i, align 4
  %arrayidx19.1.i = getelementptr %struct.jr3_pci_subdev_private, ptr %call.i, i32 0, i32 7, i32 %add.1.i
  %36 = ptrtoint ptr %arrayidx19.1.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 32767, ptr %arrayidx19.1.i, align 4
  %add.2.i = add nuw nsw i32 %j.080.i, 16
  %arrayidx16.2.i = getelementptr %struct.jr3_pci_subdev_private, ptr %call.i, i32 0, i32 6, i32 %add.2.i
  %37 = ptrtoint ptr %arrayidx16.2.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %arrayidx2.i, ptr %arrayidx16.2.i, align 4
  %arrayidx19.2.i = getelementptr %struct.jr3_pci_subdev_private, ptr %call.i, i32 0, i32 7, i32 %add.2.i
  %38 = ptrtoint ptr %arrayidx19.2.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 32767, ptr %arrayidx19.2.i, align 4
  %add.3.i = add nuw nsw i32 %j.080.i, 24
  %arrayidx16.3.i = getelementptr %struct.jr3_pci_subdev_private, ptr %call.i, i32 0, i32 6, i32 %add.3.i
  %39 = ptrtoint ptr %arrayidx16.3.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %arrayidx2.i, ptr %arrayidx16.3.i, align 4
  %arrayidx19.3.i = getelementptr %struct.jr3_pci_subdev_private, ptr %call.i, i32 0, i32 7, i32 %add.3.i
  %40 = ptrtoint ptr %arrayidx19.3.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 32767, ptr %arrayidx19.3.i, align 4
  %add.4.i = add nuw nsw i32 %j.080.i, 32
  %arrayidx16.4.i = getelementptr %struct.jr3_pci_subdev_private, ptr %call.i, i32 0, i32 6, i32 %add.4.i
  %41 = ptrtoint ptr %arrayidx16.4.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %arrayidx2.i, ptr %arrayidx16.4.i, align 4
  %arrayidx19.4.i = getelementptr %struct.jr3_pci_subdev_private, ptr %call.i, i32 0, i32 7, i32 %add.4.i
  %42 = ptrtoint ptr %arrayidx19.4.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 32767, ptr %arrayidx19.4.i, align 4
  %add.5.i = add nuw nsw i32 %j.080.i, 40
  %arrayidx16.5.i = getelementptr %struct.jr3_pci_subdev_private, ptr %call.i, i32 0, i32 6, i32 %add.5.i
  %43 = ptrtoint ptr %arrayidx16.5.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %arrayidx2.i, ptr %arrayidx16.5.i, align 4
  %arrayidx19.5.i = getelementptr %struct.jr3_pci_subdev_private, ptr %call.i, i32 0, i32 7, i32 %add.5.i
  %44 = ptrtoint ptr %arrayidx19.5.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 32767, ptr %arrayidx19.5.i, align 4
  %add.6.i = add nuw nsw i32 %j.080.i, 48
  %arrayidx16.6.i = getelementptr %struct.jr3_pci_subdev_private, ptr %call.i, i32 0, i32 6, i32 %add.6.i
  %45 = ptrtoint ptr %arrayidx16.6.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %arrayidx2.i, ptr %arrayidx16.6.i, align 4
  %arrayidx19.6.i = getelementptr %struct.jr3_pci_subdev_private, ptr %call.i, i32 0, i32 7, i32 %add.6.i
  %46 = ptrtoint ptr %arrayidx19.6.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 32767, ptr %arrayidx19.6.i, align 4
  %inc21.i = add nuw nsw i32 %j.080.i, 1
  %exitcond.not.i = icmp eq i32 %inc21.i, 8
  br i1 %exitcond.not.i, label %if.end37, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.end37:                                         ; preds = %for.body.i
  %arrayidx24.i = getelementptr %struct.jr3_pci_subdev_private, ptr %call.i, i32 0, i32 5, i32 8
  %47 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %arrayidx24.i, align 4
  %range28.i = getelementptr %struct.jr3_pci_subdev_private, ptr %call.i, i32 0, i32 5, i32 8, i32 1
  %48 = ptrtoint ptr %range28.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %range28.i, align 4
  %max35.i = getelementptr %struct.jr3_pci_subdev_private, ptr %call.i, i32 0, i32 5, i32 8, i32 1, i32 4
  %49 = ptrtoint ptr %max35.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 65535, ptr %max35.i, align 4
  %arrayidx39.i = getelementptr %struct.jr3_pci_subdev_private, ptr %call.i, i32 0, i32 6, i32 56
  %50 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %arrayidx24.i, ptr %arrayidx39.i, align 4
  %arrayidx43.i = getelementptr %struct.jr3_pci_subdev_private, ptr %call.i, i32 0, i32 6, i32 57
  %51 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %arrayidx24.i, ptr %arrayidx43.i, align 4
  %arrayidx45.i = getelementptr %struct.jr3_pci_subdev_private, ptr %call.i, i32 0, i32 7, i32 56
  %52 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 65535, ptr %arrayidx45.i, align 4
  %arrayidx47.i = getelementptr %struct.jr3_pci_subdev_private, ptr %call.i, i32 0, i32 7, i32 57
  %53 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 65535, ptr %arrayidx47.i, align 4
  %range_table_list = getelementptr inbounds %struct.jr3_pci_subdev_private, ptr %call.i, i32 0, i32 6
  %range_table_list38 = getelementptr %struct.comedi_subdevice, ptr %20, i32 %i.0152, i32 16
  %54 = ptrtoint ptr %range_table_list38 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %range_table_list, ptr %range_table_list38, align 4
  %maxdata_list = getelementptr inbounds %struct.jr3_pci_subdev_private, ptr %call.i, i32 0, i32 7
  %maxdata_list40 = getelementptr %struct.comedi_subdevice, ptr %20, i32 %i.0152, i32 14
  %55 = ptrtoint ptr %maxdata_list40 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %maxdata_list, ptr %maxdata_list40, align 4
  %inc = add nuw nsw i32 %i.0152, 1
  %56 = ptrtoint ptr %n_subdevices to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %n_subdevices, align 4
  %cmp32 = icmp slt i32 %inc, %57
  br i1 %cmp32, label %if.end37.for.body_crit_edge, label %for.cond41.preheader

if.end37.for.body_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.body45:                                        ; preds = %do.body45.do.body45_crit_edge, %for.cond41.preheader.do.body45_crit_edge
  %i.1154 = phi i32 [ %inc50, %do.body45.do.body45_crit_edge ], [ 0, %for.cond41.preheader.do.body45_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void @arm_heavy_mb() #5
  %reset = getelementptr %struct.jr3_block, ptr %call21, i32 %i.1154, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reset, i32 0) #5, !srcloc !64
  %inc50 = add nuw nsw i32 %i.1154, 1
  %58 = ptrtoint ptr %n_subdevices to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %n_subdevices, align 4
  %cmp43 = icmp slt i32 %inc50, %59
  br i1 %cmp43, label %do.body45.do.body45_crit_edge, label %do.body45.for.end51_crit_edge

do.body45.for.end51_crit_edge:                    ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end51

do.body45.do.body45_crit_edge:                    ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body45

for.end51:                                        ; preds = %do.body45.for.end51_crit_edge, %for.cond41.preheader.for.end51_crit_edge, %if.end31.for.end51_crit_edge
  %call52 = tail call ptr @comedi_to_pci_dev(ptr noundef %dev) #5
  %dev53 = getelementptr inbounds %struct.pci_dev, ptr %call52, i32 0, i32 44
  %call54 = tail call i32 @comedi_load_firmware(ptr noundef %dev, ptr noundef %dev53, ptr noundef nonnull @.str.1, ptr noundef nonnull @jr3_download_firmware, i32 noundef 0) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jr3_pci_auto_attach.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@jr3_pci_auto_attach, %do.end64)) #5
          to label %if.then61 [label %do.end64], !srcloc !65

if.then61:                                        ; preds = %for.end51
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %60 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jr3_pci_auto_attach.__UNIQUE_ID_ddebug240, ptr noundef %61, ptr noundef nonnull @.str.4, i32 noundef %call54) #5
  br label %do.end64

do.end64:                                         ; preds = %if.then61, %for.end51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp65 = icmp slt i32 %call54, 0
  br i1 %cmp65, label %do.end64.cleanup_crit_edge, label %if.end67

do.end64.cleanup_crit_edge:                       ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end67:                                         ; preds = %do.end64
  %call68 = tail call i32 @msleep_interruptible(i32 noundef 25) #5
  tail call fastcc void @jr3_pci_show_copyright(ptr noundef %dev)
  %62 = ptrtoint ptr %n_subdevices to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %n_subdevices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp71155 = icmp sgt i32 %63, 0
  br i1 %cmp71155, label %for.body72.lr.ph, label %if.end67.for.end79_crit_edge

if.end67.for.end79_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end79

for.body72.lr.ph:                                 ; preds = %if.end67
  %subdevices73 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  br label %for.body72

for.body72:                                       ; preds = %for.body72.for.body72_crit_edge, %for.body72.lr.ph
  %i.2156 = phi i32 [ 0, %for.body72.lr.ph ], [ %inc78, %for.body72.for.body72_crit_edge ]
  %64 = ptrtoint ptr %subdevices73 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %subdevices73, align 4
  %private = getelementptr %struct.comedi_subdevice, ptr %65, i32 %i.2156, i32 6
  %66 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %private, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %68 = load volatile i32, ptr @jiffies, align 128
  %add76 = add i32 %68, 50
  %next_time_min = getelementptr inbounds %struct.jr3_pci_subdev_private, ptr %67, i32 0, i32 1
  %69 = ptrtoint ptr %next_time_min to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %add76, ptr %next_time_min, align 4
  %inc78 = add nuw nsw i32 %i.2156, 1
  %70 = ptrtoint ptr %n_subdevices to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %n_subdevices, align 4
  %cmp71 = icmp slt i32 %inc78, %71
  br i1 %cmp71, label %for.body72.for.body72_crit_edge, label %for.body72.for.end79_crit_edge

for.body72.for.end79_crit_edge:                   ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end79

for.body72.for.body72_crit_edge:                  ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body72

for.end79:                                        ; preds = %for.body72.for.end79_crit_edge, %if.end67.for.end79_crit_edge
  %dev80 = getelementptr inbounds %struct.jr3_pci_dev_private, ptr %call3, i32 0, i32 1
  %72 = ptrtoint ptr %dev80 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %dev, ptr %dev80, align 4
  tail call void @init_timer_key(ptr noundef nonnull %call3, ptr noundef nonnull @jr3_pci_poll_dev, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @jr3_pci_auto_attach.__key) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %73 = load volatile i32, ptr @jiffies, align 128
  %add85 = add i32 %73, 100
  %expires = getelementptr inbounds %struct.timer_list, ptr %call3, i32 0, i32 1
  %74 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %add85, ptr %expires, align 4
  tail call void @add_timer(ptr noundef nonnull %call3) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end79, %do.end64.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end79 ], [ -19, %if.end.cleanup_crit_edge ], [ -12, %if.end2.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ -6, %cond.end.cleanup_crit_edge ], [ -12, %if.end20.cleanup_crit_edge ], [ %call28, %if.end25.cleanup_crit_edge ], [ %call54, %do.end64.cleanup_crit_edge ], [ -12, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jr3_pci_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %n_subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %n_subdevices to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_subdevices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp10 = icmp sgt i32 %1, 0
  br i1 %cmp10, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdevices, align 4
  %private = getelementptr %struct.comedi_subdevice, ptr %3, i32 %i.011, i32 6
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jr3_pci_open.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@jr3_pci_open, %for.inc)) #5
          to label %if.then [label %for.inc], !srcloc !65

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %class_dev, align 4
  %index = getelementptr %struct.comedi_subdevice, ptr %3, i32 %i.011, i32 1
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  %serial_no = getelementptr inbounds %struct.jr3_pci_subdev_private, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %serial_no to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %serial_no, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jr3_pci_open.__UNIQUE_ID_ddebug236, ptr noundef %7, ptr noundef nonnull @.str.11, i32 noundef %9, i32 noundef %11) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body
  %inc = add nuw nsw i32 %i.011, 1
  %12 = ptrtoint ptr %n_subdevices to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n_subdevices, align 4
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jr3_pci_ai_insn_read(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 6
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %and = and i32 %3, 65535
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %errors1 = getelementptr inbounds %struct.jr3_sensor, ptr %5, i32 0, i32 39
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %errors1) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %state = getelementptr inbounds %struct.jr3_pci_subdev_private, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %8)
  %cmp.not = icmp eq i32 %8, 5
  %9 = and i32 %6, 13107200
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  %or.cond = select i1 %cmp.not, i1 %tobool.not, i1 false
  br i1 %or.cond, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %10 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp925.not = icmp eq i32 %11, 0
  br i1 %cmp925.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %and)
  %cmp1.i = icmp ult i32 %and, 56
  %trunc = trunc i32 %3 to i16
  %rem.i = and i32 %3, 7
  %div1.i = lshr i32 %and, 3
  br label %for.body

if.then:                                          ; preds = %entry
  br i1 %cmp.not, label %if.then6, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %state, align 4
  br label %cleanup

for.body:                                         ; preds = %jr3_pci_ai_read_chan.exit.for.body_crit_edge, %for.body.lr.ph
  %i.026 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %jr3_pci_ai_read_chan.exit.for.body_crit_edge ]
  %13 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private, align 4
  %state.i = getelementptr inbounds %struct.jr3_pci_subdev_private, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %16)
  %cmp.not.i = icmp eq i32 %16, 5
  br i1 %cmp.not.i, label %if.end.i, label %for.body.jr3_pci_ai_read_chan.exit_crit_edge

for.body.jr3_pci_ai_read_chan.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %jr3_pci_ai_read_chan.exit

if.end.i:                                         ; preds = %for.body
  br i1 %cmp1.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  %17 = zext i32 %rem.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %rem.i, label %if.then2.unreachabledefault.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb4.i
    i32 2, label %sw.bb10.i
    i32 3, label %sw.bb16.i
    i32 4, label %sw.bb22.i
    i32 5, label %sw.bb28.i
    i32 6, label %sw.bb34.i
    i32 7, label %sw.bb40.i
  ]

sw.bb.i:                                          ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %14, align 4
  %arrayidx.i = getelementptr %struct.jr3_sensor, ptr %19, i32 0, i32 18, i32 %div1.i
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #5, !srcloc !66
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %14, align 4
  %fy.i = getelementptr %struct.jr3_sensor, ptr %23, i32 0, i32 18, i32 %div1.i, i32 1
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %fy.i) #5, !srcloc !66
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  br label %sw.epilog.i

sw.bb10.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %14, align 4
  %fz.i = getelementptr %struct.jr3_sensor, ptr %27, i32 0, i32 18, i32 %div1.i, i32 2
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %fz.i) #5, !srcloc !66
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  br label %sw.epilog.i

sw.bb16.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %14, align 4
  %mx.i = getelementptr %struct.jr3_sensor, ptr %31, i32 0, i32 18, i32 %div1.i, i32 3
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mx.i) #5, !srcloc !66
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  br label %sw.epilog.i

sw.bb22.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %14, align 4
  %my.i = getelementptr %struct.jr3_sensor, ptr %35, i32 0, i32 18, i32 %div1.i, i32 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %my.i) #5, !srcloc !66
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  br label %sw.epilog.i

sw.bb28.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %14, align 4
  %mz.i = getelementptr %struct.jr3_sensor, ptr %39, i32 0, i32 18, i32 %div1.i, i32 5
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mz.i) #5, !srcloc !66
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  br label %sw.epilog.i

sw.bb34.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %14, align 4
  %v1.i = getelementptr %struct.jr3_sensor, ptr %43, i32 0, i32 18, i32 %div1.i, i32 6
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %v1.i) #5, !srcloc !66
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  br label %sw.epilog.i

sw.bb40.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %14, align 4
  %v2.i = getelementptr %struct.jr3_sensor, ptr %47, i32 0, i32 18, i32 %div1.i, i32 7
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %v2.i) #5, !srcloc !66
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  br label %sw.epilog.i

if.then2.unreachabledefault.i:                    ; preds = %if.then2.i
  unreachable

sw.epilog.i:                                      ; preds = %sw.bb40.i, %sw.bb34.i, %sw.bb28.i, %sw.bb22.i, %sw.bb16.i, %sw.bb10.i, %sw.bb4.i, %sw.bb.i
  %val.0.in.in.i = phi i32 [ %49, %sw.bb40.i ], [ %45, %sw.bb34.i ], [ %41, %sw.bb28.i ], [ %37, %sw.bb22.i ], [ %33, %sw.bb16.i ], [ %29, %sw.bb10.i ], [ %25, %sw.bb4.i ], [ %21, %sw.bb.i ]
  %val.0.in.i = shl i32 %val.0.in.in.i, 16
  %val.0.i = ashr exact i32 %val.0.in.i, 16
  %add.i = add nsw i32 %val.0.i, 16384
  br label %jr3_pci_ai_read_chan.exit

if.else.i:                                        ; preds = %if.end.i
  %50 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.16)
  switch i16 %trunc, label %if.else.i.jr3_pci_ai_read_chan.exit_crit_edge [
    i16 56, label %if.then48.i
    i16 57, label %if.then55.i
  ]

if.else.i.jr3_pci_ai_read_chan.exit_crit_edge:    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %jr3_pci_ai_read_chan.exit

if.then48.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %14, align 4
  %model_no.i = getelementptr inbounds %struct.jr3_sensor, ptr %52, i32 0, i32 47
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %model_no.i) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %54 = and i32 %53, -65536
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #5
  br label %jr3_pci_ai_read_chan.exit

if.then55.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %14, align 4
  %serial_no.i = getelementptr inbounds %struct.jr3_sensor, ptr %57, i32 0, i32 46
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %serial_no.i) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %59 = and i32 %58, -65536
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #5
  br label %jr3_pci_ai_read_chan.exit

jr3_pci_ai_read_chan.exit:                        ; preds = %if.then55.i, %if.then48.i, %if.else.i.jr3_pci_ai_read_chan.exit_crit_edge, %sw.epilog.i, %for.body.jr3_pci_ai_read_chan.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.body.jr3_pci_ai_read_chan.exit_crit_edge ], [ %add.i, %sw.epilog.i ], [ %55, %if.then48.i ], [ %60, %if.then55.i ], [ 0, %if.else.i.jr3_pci_ai_read_chan.exit_crit_edge ]
  %arrayidx = getelementptr i32, ptr %data, i32 %i.026
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %retval.0.i, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.026, 1
  %62 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %n, align 4
  %cmp9 = icmp ult i32 %inc, %63
  br i1 %cmp9, label %jr3_pci_ai_read_chan.exit.for.body_crit_edge, label %jr3_pci_ai_read_chan.exit.cleanup_crit_edge

jr3_pci_ai_read_chan.exit.cleanup_crit_edge:      ; preds = %jr3_pci_ai_read_chan.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

jr3_pci_ai_read_chan.exit.for.body_crit_edge:     ; preds = %jr3_pci_ai_read_chan.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup:                                          ; preds = %jr3_pci_ai_read_chan.exit.cleanup_crit_edge, %if.then6, %if.then.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %if.then6 ], [ -11, %if.then.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %63, %jr3_pci_ai_read_chan.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_load_firmware(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jr3_download_firmware(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data, i32 noundef %size, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %size, -1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.backedge, %entry
  %pos.0112.i = phi i32 [ 0, %entry ], [ %pos.0112.i.be, %while.body.i.backedge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.0112.i, i32 %size)
  %cmp31.i.i = icmp ult i32 %pos.0112.i, %size
  br i1 %cmp31.i.i, label %while.body.i.land.rhs.i.i_crit_edge, label %while.body.i.for.end.i.i_crit_edge

while.body.i.for.end.i.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i

while.body.i.land.rhs.i.i_crit_edge:              ; preds = %while.body.i
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %for.inc.i.i.land.rhs.i.i_crit_edge, %while.body.i.land.rhs.i.i_crit_edge
  %pos.1.i = phi i32 [ %inc.i.i, %for.inc.i.i.land.rhs.i.i_crit_edge ], [ %pos.0112.i, %while.body.i.land.rhs.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %data, i32 %pos.1.i
  %1 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %2 to i32
  %arrayidx2.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.i
  %3 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx2.i.i, align 1
  %5 = and i8 %4, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp4.not.i.i = icmp eq i8 %5, 0
  br i1 %cmp4.not.i.i, label %for.inc.i.i, label %land.rhs.i.i.for.end.i.i_crit_edge

land.rhs.i.i.for.end.i.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i

for.inc.i.i:                                      ; preds = %land.rhs.i.i
  %inc.i.i = add i32 %pos.1.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %size
  br i1 %exitcond.not.i.i, label %for.inc.i.i.cleanup_crit_edge, label %for.inc.i.i.land.rhs.i.i_crit_edge

for.inc.i.i.land.rhs.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i.i

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end.i.i:                                      ; preds = %land.rhs.i.i.for.end.i.i_crit_edge, %while.body.i.for.end.i.i_crit_edge
  %pos.2.i = phi i32 [ %pos.0112.i, %while.body.i.for.end.i.i_crit_edge ], [ %pos.1.i, %land.rhs.i.i.for.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.2.i, i32 %size)
  %cmp732.i.i = icmp ult i32 %pos.2.i, %size
  br i1 %cmp732.i.i, label %for.body9.i.preheader.i, label %for.end.i.i.cleanup_crit_edge

for.end.i.i.cleanup_crit_edge:                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body9.i.preheader.i:                          ; preds = %for.end.i.i
  %arrayidx10.i77.i = getelementptr i8, ptr %data, i32 %pos.2.i
  %6 = ptrtoint ptr %arrayidx10.i77.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx10.i77.i, align 1
  %call.i78.i = tail call i32 @hex_to_bin(i8 noundef zeroext %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i78.i)
  %cmp11.i79.i = icmp sgt i32 %call.i78.i, -1
  br i1 %cmp11.i79.i, label %for.body9.i.preheader.i.if.then13.i.i_crit_edge, label %for.body9.i.preheader.i.cleanup_crit_edge

for.body9.i.preheader.i.cleanup_crit_edge:        ; preds = %for.body9.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body9.i.preheader.i.if.then13.i.i_crit_edge:  ; preds = %for.body9.i.preheader.i
  br label %if.then13.i.i

for.body9.i.i:                                    ; preds = %if.then13.i.i
  %inc15.i.i = add i32 %pos.380.i, 1
  %arrayidx10.i.i = getelementptr i8, ptr %data, i32 %inc15.i.i
  %8 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx10.i.i, align 1
  %call.i.i = tail call i32 @hex_to_bin(i8 noundef zeroext %9) #5
  %cmp11.i.i = icmp sgt i32 %call.i.i, -1
  br i1 %cmp11.i.i, label %for.body9.i.i.if.then13.i.i_crit_edge, label %for.body9.i.i.land.lhs.true.i_crit_edge

for.body9.i.i.land.lhs.true.i_crit_edge:          ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

for.body9.i.i.if.then13.i.i_crit_edge:            ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13.i.i

if.then13.i.i:                                    ; preds = %for.body9.i.i.if.then13.i.i_crit_edge, %for.body9.i.preheader.i.if.then13.i.i_crit_edge
  %call.i82.i = phi i32 [ %call.i.i, %for.body9.i.i.if.then13.i.i_crit_edge ], [ %call.i78.i, %for.body9.i.preheader.i.if.then13.i.i_crit_edge ]
  %count.081.i = phi i32 [ %add.i.i, %for.body9.i.i.if.then13.i.i_crit_edge ], [ 0, %for.body9.i.preheader.i.if.then13.i.i_crit_edge ]
  %pos.380.i = phi i32 [ %inc15.i.i, %for.body9.i.i.if.then13.i.i_crit_edge ], [ %pos.2.i, %for.body9.i.preheader.i.if.then13.i.i_crit_edge ]
  %shl.i.i = shl i32 %count.081.i, 4
  %add.i.i = add i32 %shl.i.i, %call.i82.i
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.380.i, i32 %0)
  %exitcond.not.i = icmp eq i32 %pos.380.i, %0
  br i1 %exitcond.not.i, label %if.then13.i.i.land.lhs.true.i_crit_edge, label %for.body9.i.i

if.then13.i.i.land.lhs.true.i_crit_edge:          ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then13.i.i.land.lhs.true.i_crit_edge, %for.body9.i.i.land.lhs.true.i_crit_edge
  %pos.462.i = phi i32 [ %inc15.i.i, %for.body9.i.i.land.lhs.true.i_crit_edge ], [ %size, %if.then13.i.i.land.lhs.true.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add.i.i)
  %cmp.i = icmp eq i32 %add.i.i, 65535
  br i1 %cmp.i, label %for.cond.preheader, label %land.rhs5.critedge.i

for.cond.preheader:                               ; preds = %land.lhs.true.i
  %n_subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 15
  %10 = ptrtoint ptr %n_subdevices to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_subdevices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp21 = icmp sgt i32 %11, 0
  br i1 %cmp21, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

land.rhs5.critedge.i:                             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.462.i, i32 %size)
  %cmp31.i1.i = icmp ult i32 %pos.462.i, %size
  br i1 %cmp31.i1.i, label %land.rhs5.critedge.i.land.rhs.i6.i_crit_edge, label %land.rhs5.critedge.i.for.end.i11.i_crit_edge

land.rhs5.critedge.i.for.end.i11.i_crit_edge:     ; preds = %land.rhs5.critedge.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i11.i

land.rhs5.critedge.i.land.rhs.i6.i_crit_edge:     ; preds = %land.rhs5.critedge.i
  br label %land.rhs.i6.i

land.rhs.i6.i:                                    ; preds = %for.inc.i9.i.land.rhs.i6.i_crit_edge, %land.rhs5.critedge.i.land.rhs.i6.i_crit_edge
  %pos.5.i = phi i32 [ %inc.i7.i, %for.inc.i9.i.land.rhs.i6.i_crit_edge ], [ %pos.462.i, %land.rhs5.critedge.i.land.rhs.i6.i_crit_edge ]
  %arrayidx.i2.i = getelementptr i8, ptr %data, i32 %pos.5.i
  %12 = ptrtoint ptr %arrayidx.i2.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i2.i, align 1
  %conv.i3.i = zext i8 %13 to i32
  %arrayidx2.i4.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i3.i
  %14 = ptrtoint ptr %arrayidx2.i4.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx2.i4.i, align 1
  %16 = and i8 %15, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp4.not.i5.i = icmp eq i8 %16, 0
  br i1 %cmp4.not.i5.i, label %for.inc.i9.i, label %land.rhs.i6.i.for.end.i11.i_crit_edge

land.rhs.i6.i.for.end.i11.i_crit_edge:            ; preds = %land.rhs.i6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i11.i

for.inc.i9.i:                                     ; preds = %land.rhs.i6.i
  %inc.i7.i = add i32 %pos.5.i, 1
  %exitcond.not.i8.i = icmp eq i32 %inc.i7.i, %size
  br i1 %exitcond.not.i8.i, label %for.inc.i9.i.cleanup_crit_edge, label %for.inc.i9.i.land.rhs.i6.i_crit_edge

for.inc.i9.i.land.rhs.i6.i_crit_edge:             ; preds = %for.inc.i9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i6.i

for.inc.i9.i.cleanup_crit_edge:                   ; preds = %for.inc.i9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end.i11.i:                                    ; preds = %land.rhs.i6.i.for.end.i11.i_crit_edge, %land.rhs5.critedge.i.for.end.i11.i_crit_edge
  %pos.6.i = phi i32 [ %pos.462.i, %land.rhs5.critedge.i.for.end.i11.i_crit_edge ], [ %pos.5.i, %land.rhs.i6.i.for.end.i11.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.6.i, i32 %size)
  %cmp732.i10.i = icmp ult i32 %pos.6.i, %size
  br i1 %cmp732.i10.i, label %for.body9.i16.preheader.i, label %for.end.i11.i.cleanup_crit_edge

for.end.i11.i.cleanup_crit_edge:                  ; preds = %for.end.i11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body9.i16.preheader.i:                        ; preds = %for.end.i11.i
  %arrayidx10.i1385.i = getelementptr i8, ptr %data, i32 %pos.6.i
  %17 = ptrtoint ptr %arrayidx10.i1385.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx10.i1385.i, align 1
  %call.i1486.i = tail call i32 @hex_to_bin(i8 noundef zeroext %18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1486.i)
  %cmp11.i1587.i = icmp sgt i32 %call.i1486.i, -1
  br i1 %cmp11.i1587.i, label %for.body9.i16.preheader.i.if.then13.i21.i_crit_edge, label %for.body9.i16.preheader.i.cleanup_crit_edge

for.body9.i16.preheader.i.cleanup_crit_edge:      ; preds = %for.body9.i16.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body9.i16.preheader.i.if.then13.i21.i_crit_edge: ; preds = %for.body9.i16.preheader.i
  br label %if.then13.i21.i

for.body9.i16.i:                                  ; preds = %if.then13.i21.i
  %inc15.i19.i = add i32 %pos.788.i, 1
  %arrayidx10.i13.i = getelementptr i8, ptr %data, i32 %inc15.i19.i
  %19 = ptrtoint ptr %arrayidx10.i13.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx10.i13.i, align 1
  %call.i14.i = tail call i32 @hex_to_bin(i8 noundef zeroext %20) #5
  %cmp11.i15.i = icmp sgt i32 %call.i14.i, -1
  br i1 %cmp11.i15.i, label %for.body9.i16.i.if.then13.i21.i_crit_edge, label %for.body9.i16.i.land.end8.i_crit_edge

for.body9.i16.i.land.end8.i_crit_edge:            ; preds = %for.body9.i16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end8.i

for.body9.i16.i.if.then13.i21.i_crit_edge:        ; preds = %for.body9.i16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13.i21.i

if.then13.i21.i:                                  ; preds = %for.body9.i16.i.if.then13.i21.i_crit_edge, %for.body9.i16.preheader.i.if.then13.i21.i_crit_edge
  %pos.788.i = phi i32 [ %inc15.i19.i, %for.body9.i16.i.if.then13.i21.i_crit_edge ], [ %pos.6.i, %for.body9.i16.preheader.i.if.then13.i21.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.788.i, i32 %0)
  %exitcond115.not.i = icmp eq i32 %pos.788.i, %0
  br i1 %exitcond115.not.i, label %if.then13.i21.i.land.end8.i_crit_edge, label %for.body9.i16.i

if.then13.i21.i.land.end8.i_crit_edge:            ; preds = %if.then13.i21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end8.i

land.end8.i:                                      ; preds = %if.then13.i21.i.land.end8.i_crit_edge, %for.body9.i16.i.land.end8.i_crit_edge
  %pos.9.i = phi i32 [ %inc15.i19.i, %for.body9.i16.i.land.end8.i_crit_edge ], [ %size, %if.then13.i21.i.land.end8.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i)
  %cmp13.not106.i = icmp eq i32 %add.i.i, 0
  br i1 %cmp13.not106.i, label %land.end8.i.while.body.i.backedge_crit_edge, label %land.end8.i.while.body16.i_crit_edge

land.end8.i.while.body16.i_crit_edge:             ; preds = %land.end8.i
  br label %while.body16.i

land.end8.i.while.body.i.backedge_crit_edge:      ; preds = %land.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.backedge

while.body.i.backedge:                            ; preds = %read_idm_word.exit46.i.while.body.i.backedge_crit_edge, %land.end8.i.while.body.i.backedge_crit_edge
  %pos.0112.i.be = phi i32 [ %pos.9.i, %land.end8.i.while.body.i.backedge_crit_edge ], [ %pos.14.i, %read_idm_word.exit46.i.while.body.i.backedge_crit_edge ]
  br label %while.body.i

while.body16.i:                                   ; preds = %read_idm_word.exit46.i.while.body16.i_crit_edge, %land.end8.i.while.body16.i_crit_edge
  %count.2109.i = phi i32 [ %dec.i, %read_idm_word.exit46.i.while.body16.i_crit_edge ], [ %add.i.i, %land.end8.i.while.body16.i_crit_edge ]
  %pos.10108.i = phi i32 [ %pos.14.i, %read_idm_word.exit46.i.while.body16.i_crit_edge ], [ %pos.9.i, %land.end8.i.while.body16.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.10108.i, i32 %size)
  %cmp31.i24.i = icmp ult i32 %pos.10108.i, %size
  br i1 %cmp31.i24.i, label %while.body16.i.land.rhs.i29.i_crit_edge, label %while.body16.i.for.end.i34.i_crit_edge

while.body16.i.for.end.i34.i_crit_edge:           ; preds = %while.body16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i34.i

while.body16.i.land.rhs.i29.i_crit_edge:          ; preds = %while.body16.i
  br label %land.rhs.i29.i

land.rhs.i29.i:                                   ; preds = %for.inc.i32.i.land.rhs.i29.i_crit_edge, %while.body16.i.land.rhs.i29.i_crit_edge
  %pos.11.i = phi i32 [ %inc.i30.i, %for.inc.i32.i.land.rhs.i29.i_crit_edge ], [ %pos.10108.i, %while.body16.i.land.rhs.i29.i_crit_edge ]
  %arrayidx.i25.i = getelementptr i8, ptr %data, i32 %pos.11.i
  %21 = ptrtoint ptr %arrayidx.i25.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i25.i, align 1
  %conv.i26.i = zext i8 %22 to i32
  %arrayidx2.i27.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i26.i
  %23 = ptrtoint ptr %arrayidx2.i27.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx2.i27.i, align 1
  %25 = and i8 %24, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp4.not.i28.i = icmp eq i8 %25, 0
  br i1 %cmp4.not.i28.i, label %for.inc.i32.i, label %land.rhs.i29.i.for.end.i34.i_crit_edge

land.rhs.i29.i.for.end.i34.i_crit_edge:           ; preds = %land.rhs.i29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i34.i

for.inc.i32.i:                                    ; preds = %land.rhs.i29.i
  %inc.i30.i = add i32 %pos.11.i, 1
  %exitcond.not.i31.i = icmp eq i32 %inc.i30.i, %size
  br i1 %exitcond.not.i31.i, label %for.inc.i32.i.cleanup_crit_edge, label %for.inc.i32.i.land.rhs.i29.i_crit_edge

for.inc.i32.i.land.rhs.i29.i_crit_edge:           ; preds = %for.inc.i32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i29.i

for.inc.i32.i.cleanup_crit_edge:                  ; preds = %for.inc.i32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end.i34.i:                                    ; preds = %land.rhs.i29.i.for.end.i34.i_crit_edge, %while.body16.i.for.end.i34.i_crit_edge
  %pos.12.i = phi i32 [ %pos.10108.i, %while.body16.i.for.end.i34.i_crit_edge ], [ %pos.11.i, %land.rhs.i29.i.for.end.i34.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.12.i, i32 %size)
  %cmp732.i33.i = icmp ult i32 %pos.12.i, %size
  br i1 %cmp732.i33.i, label %for.body9.i39.preheader.i, label %for.end.i34.i.cleanup_crit_edge

for.end.i34.i.cleanup_crit_edge:                  ; preds = %for.end.i34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body9.i39.preheader.i:                        ; preds = %for.end.i34.i
  %arrayidx10.i3695.i = getelementptr i8, ptr %data, i32 %pos.12.i
  %26 = ptrtoint ptr %arrayidx10.i3695.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx10.i3695.i, align 1
  %call.i3796.i = tail call i32 @hex_to_bin(i8 noundef zeroext %27) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i3796.i)
  %cmp11.i3897.i = icmp sgt i32 %call.i3796.i, -1
  br i1 %cmp11.i3897.i, label %for.body9.i39.preheader.i.if.then13.i44.i_crit_edge, label %for.body9.i39.preheader.i.cleanup_crit_edge

for.body9.i39.preheader.i.cleanup_crit_edge:      ; preds = %for.body9.i39.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body9.i39.preheader.i.if.then13.i44.i_crit_edge: ; preds = %for.body9.i39.preheader.i
  br label %if.then13.i44.i

for.body9.i39.i:                                  ; preds = %if.then13.i44.i
  %inc15.i42.i = add i32 %pos.1398.i, 1
  %arrayidx10.i36.i = getelementptr i8, ptr %data, i32 %inc15.i42.i
  %28 = ptrtoint ptr %arrayidx10.i36.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx10.i36.i, align 1
  %call.i37.i = tail call i32 @hex_to_bin(i8 noundef zeroext %29) #5
  %cmp11.i38.i = icmp sgt i32 %call.i37.i, -1
  br i1 %cmp11.i38.i, label %for.body9.i39.i.if.then13.i44.i_crit_edge, label %for.body9.i39.i.read_idm_word.exit46.i_crit_edge

for.body9.i39.i.read_idm_word.exit46.i_crit_edge: ; preds = %for.body9.i39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %read_idm_word.exit46.i

for.body9.i39.i.if.then13.i44.i_crit_edge:        ; preds = %for.body9.i39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13.i44.i

if.then13.i44.i:                                  ; preds = %for.body9.i39.i.if.then13.i44.i_crit_edge, %for.body9.i39.preheader.i.if.then13.i44.i_crit_edge
  %pos.1398.i = phi i32 [ %inc15.i42.i, %for.body9.i39.i.if.then13.i44.i_crit_edge ], [ %pos.12.i, %for.body9.i39.preheader.i.if.then13.i44.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.1398.i, i32 %0)
  %exitcond116.not.i = icmp eq i32 %pos.1398.i, %0
  br i1 %exitcond116.not.i, label %if.then13.i44.i.read_idm_word.exit46.i_crit_edge, label %for.body9.i39.i

if.then13.i44.i.read_idm_word.exit46.i_crit_edge: ; preds = %if.then13.i44.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %read_idm_word.exit46.i

read_idm_word.exit46.i:                           ; preds = %if.then13.i44.i.read_idm_word.exit46.i_crit_edge, %for.body9.i39.i.read_idm_word.exit46.i_crit_edge
  %pos.14.i = phi i32 [ %inc15.i42.i, %for.body9.i39.i.read_idm_word.exit46.i_crit_edge ], [ %size, %if.then13.i44.i.read_idm_word.exit46.i_crit_edge ]
  %dec.i = add i32 %count.2109.i, -1
  %cmp13.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp13.not.i, label %read_idm_word.exit46.i.while.body.i.backedge_crit_edge, label %read_idm_word.exit46.i.while.body16.i_crit_edge

read_idm_word.exit46.i.while.body16.i_crit_edge:  ; preds = %read_idm_word.exit46.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body16.i

read_idm_word.exit46.i.while.body.i.backedge_crit_edge: ; preds = %read_idm_word.exit46.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.backedge

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %subdev.022 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  tail call fastcc void @jr3_write_firmware(ptr noundef %dev, i32 noundef %subdev.022, ptr noundef %data, i32 noundef %size)
  %inc = add nuw nsw i32 %subdev.022, 1
  %30 = ptrtoint ptr %n_subdevices to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %n_subdevices, align 4
  %cmp = icmp slt i32 %inc, %31
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.body9.i39.preheader.i.cleanup_crit_edge, %for.end.i34.i.cleanup_crit_edge, %for.inc.i32.i.cleanup_crit_edge, %for.body9.i16.preheader.i.cleanup_crit_edge, %for.end.i11.i.cleanup_crit_edge, %for.inc.i9.i.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %for.body9.i.preheader.i.cleanup_crit_edge, %for.end.i.i.cleanup_crit_edge, %for.inc.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ], [ -61, %for.inc.i32.i.cleanup_crit_edge ], [ -61, %for.end.i34.i.cleanup_crit_edge ], [ -61, %for.body9.i39.preheader.i.cleanup_crit_edge ], [ -61, %for.inc.i9.i.cleanup_crit_edge ], [ -61, %for.inc.i.i.cleanup_crit_edge ], [ -61, %for.body9.i.preheader.i.cleanup_crit_edge ], [ -61, %for.body9.i16.preheader.i.cleanup_crit_edge ], [ -61, %for.end.i11.i.cleanup_crit_edge ], [ -61, %for.end.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @jr3_pci_show_copyright(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  %copy = alloca [25 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %copy) #5
  %2 = getelementptr inbounds [25 x i8], ptr %copy, i32 0, i32 24
  %3 = call ptr @memset(ptr %copy, i32 255, i32 24)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.015 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx1 = getelementptr %struct.jr3_block, ptr %1, i32 0, i32 1, i32 1, i32 %i.015
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx1) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %sum.shift = lshr i32 %4, 16
  %5 = trunc i32 %sum.shift to i8
  %arrayidx3 = getelementptr [25 x i8], ptr %copy, i32 0, i32 %i.015
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %arrayidx3, align 1
  %inc = add nuw nsw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, 24
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %2, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jr3_pci_show_copyright.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@jr3_pci_show_copyright, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !65

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %8 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %class_dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jr3_pci_show_copyright.__UNIQUE_ID_ddebug238, ptr noundef %9, ptr noundef nonnull @.str.15, ptr noundef nonnull %copy) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %for.end
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %copy) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jr3_pci_poll_dev(ptr noundef %t) #2 align 64 {
entry:
  %transf.i = alloca %struct.jr3_pci_transform, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.jr3_pci_dev_private, ptr %t, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %spinlock = getelementptr inbounds %struct.comedi_device, ptr %1, i32 0, i32 11
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %n_subdevices = getelementptr inbounds %struct.comedi_device, ptr %1, i32 0, i32 15
  %3 = ptrtoint ptr %n_subdevices to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %n_subdevices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp749 = icmp sgt i32 %4, 0
  br i1 %cmp749, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %1, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.051 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %delay.050 = phi i32 [ 1000, %for.body.lr.ph ], [ %delay.2, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %subdevices, align 4
  %private = getelementptr %struct.comedi_subdevice, ptr %6, i32 %i.051, i32 6
  %7 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private, align 4
  %next_time_min = getelementptr inbounds %struct.jr3_pci_subdev_private, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %next_time_min to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %next_time_min, align 4
  %sub = sub i32 %2, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp9 = icmp sgt i32 %sub, -1
  br i1 %cmp9, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %for.body
  %11 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private, align 4, !noalias !69
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4, !noalias !69
  %errors2.i = getelementptr inbounds %struct.jr3_sensor, ptr %14, i32 0, i32 39
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %errors2.i) #5, !noalias !69, !srcloc !66
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !69, !srcloc !67
  %conv.i.i = trunc i32 %16 to i16
  %errors3.i = getelementptr inbounds %struct.jr3_pci_subdev_private, ptr %12, i32 0, i32 8
  %17 = ptrtoint ptr %errors3.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %errors3.i, align 4, !noalias !69
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %conv.i.i)
  %cmp.not.i = icmp eq i16 %18, %conv.i.i
  br i1 %cmp.not.i, label %if.then.if.end.i46_crit_edge, label %if.then.i45

if.then.if.end.i46_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i46

if.then.i45:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %errors3.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv.i.i, ptr %errors3.i, align 4, !noalias !69
  br label %if.end.i46

if.end.i46:                                       ; preds = %if.then.i45, %if.then.if.end.i46_crit_edge
  %and.i = and i32 %16, 51200
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i46.if.end9.i_crit_edge, label %if.then8.i

if.end.i46.if.end9.i_crit_edge:                   ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then8.i:                                       ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #7
  %state.i = getelementptr inbounds %struct.jr3_pci_subdev_private, ptr %12, i32 0, i32 2
  %20 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %state.i, align 4, !noalias !69
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then8.i, %if.end.i46.if.end9.i_crit_edge
  %state10.i = getelementptr inbounds %struct.jr3_pci_subdev_private, ptr %12, i32 0, i32 2
  %21 = ptrtoint ptr %state10.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state10.i, align 4, !noalias !69
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %22, label %if.end9.i.jr3_pci_poll_subdevice.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb27.i
    i32 2, label %sw.bb49.i
    i32 3, label %sw.bb59.i
    i32 4, label %sw.bb200.i
    i32 5, label %sw.bb219.i
  ]

if.end9.i.jr3_pci_poll_subdevice.exit_crit_edge:  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %jr3_pci_poll_subdevice.exit

sw.bb.i:                                          ; preds = %if.end9.i
  %model_no11.i = getelementptr inbounds %struct.jr3_sensor, ptr %14, i32 0, i32 47
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %model_no11.i) #5, !noalias !69, !srcloc !66
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !69, !srcloc !67
  %conv.i295.i = trunc i32 %25 to i16
  %serial_no13.i = getelementptr inbounds %struct.jr3_sensor, ptr %14, i32 0, i32 46
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %serial_no13.i) #5, !noalias !69, !srcloc !66
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !69, !srcloc !67
  %conv.i296.i = trunc i32 %27 to i16
  %and15.i = and i32 %16, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp ne i32 %and15.i, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i295.i)
  %cmp18.i = icmp eq i16 %conv.i295.i, 0
  %or.cond.i = select i1 %tobool16.not.i, i1 true, i1 %cmp18.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i296.i)
  %cmp22.i = icmp eq i16 %conv.i296.i, 0
  %or.cond294.i = select i1 %or.cond.i, i1 true, i1 %cmp22.i
  br i1 %or.cond294.i, label %sw.bb.i.jr3_pci_poll_subdevice.exit_crit_edge, label %if.else.i47

sw.bb.i.jr3_pci_poll_subdevice.exit_crit_edge:    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %jr3_pci_poll_subdevice.exit

if.else.i47:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  %retries.i = getelementptr inbounds %struct.jr3_pci_subdev_private, ptr %12, i32 0, i32 9
  %28 = ptrtoint ptr %retries.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %retries.i, align 4, !noalias !69
  %29 = ptrtoint ptr %state10.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %state10.i, align 4, !noalias !69
  br label %jr3_pci_poll_subdevice.exit

sw.bb27.i:                                        ; preds = %if.end9.i
  %retries28.i = getelementptr inbounds %struct.jr3_pci_subdev_private, ptr %12, i32 0, i32 9
  %30 = ptrtoint ptr %retries28.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %retries28.i, align 4, !noalias !69
  %inc.i = add i32 %31, 1
  store i32 %inc.i, ptr %retries28.i, align 4, !noalias !69
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc.i)
  %cmp30.i = icmp slt i32 %inc.i, 10
  br i1 %cmp30.i, label %sw.bb27.i.jr3_pci_poll_subdevice.exit_crit_edge, label %if.else33.i

sw.bb27.i.jr3_pci_poll_subdevice.exit_crit_edge:  ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %jr3_pci_poll_subdevice.exit

if.else33.i:                                      ; preds = %sw.bb27.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %transf.i) #5, !noalias !69
  %model_no34.i = getelementptr inbounds %struct.jr3_sensor, ptr %14, i32 0, i32 47
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %model_no34.i) #5, !noalias !69, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !69, !srcloc !67
  %33 = and i32 %32, -65536
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #5
  %model_no37.i = getelementptr inbounds %struct.jr3_pci_subdev_private, ptr %12, i32 0, i32 4
  %35 = ptrtoint ptr %model_no37.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %model_no37.i, align 4, !noalias !69
  %serial_no38.i = getelementptr inbounds %struct.jr3_sensor, ptr %14, i32 0, i32 46
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %serial_no38.i) #5, !noalias !69, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !69, !srcloc !67
  %37 = and i32 %36, -65536
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #5
  %serial_no41.i = getelementptr inbounds %struct.jr3_pci_subdev_private, ptr %12, i32 0, i32 3
  %39 = ptrtoint ptr %serial_no41.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %serial_no41.i, align 4, !noalias !69
  %40 = call ptr @memset(ptr %transf.i, i32 0, i32 32)
  %transforms.i.i = getelementptr inbounds %struct.jr3_sensor, ptr %14, i32 0, i32 55
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.else33.i
  %i.02.i.i = phi i32 [ 0, %if.else33.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx3.i.i = getelementptr [8 x %struct.anon.72], ptr %transforms.i.i, i32 0, i32 %i.02.i.i
  %arrayidx5.i.i = getelementptr [8 x %struct.anon.74], ptr %transf.i, i32 0, i32 %i.02.i.i
  %41 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx5.i.i, align 2, !noalias !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !69, !srcloc !72
  tail call void @arm_heavy_mb() #5, !noalias !69
  %conv.i.i.i = zext i16 %42 to i32
  %43 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx3.i.i, i32 %43) #5, !noalias !69, !srcloc !64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4, !noalias !69
  tail call void %44(i32 noundef 214748) #5, !noalias !69
  %link_amount.i.i = getelementptr [8 x %struct.anon.72], ptr %transforms.i.i, i32 0, i32 %i.02.i.i, i32 1
  %link_amount14.i.i = getelementptr [8 x %struct.anon.74], ptr %transf.i, i32 0, i32 %i.02.i.i, i32 1
  %45 = ptrtoint ptr %link_amount14.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %link_amount14.i.i, align 2, !noalias !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !69, !srcloc !73
  tail call void @arm_heavy_mb() #5, !noalias !69
  %conv.i1.i.i = sext i16 %46 to i32
  %47 = tail call i32 @llvm.bswap.i32(i32 %conv.i1.i.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %link_amount.i.i, i32 %47) #5, !noalias !69, !srcloc !64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4, !noalias !69
  tail call void %48(i32 noundef 214748) #5, !noalias !69
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %cmp19.i.i = icmp eq i16 %42, 0
  %inc.i.i = add nuw nsw i32 %i.02.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc.i.i)
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 8
  %or.cond.i.i = select i1 %cmp19.i.i, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond.i.i, label %set_transforms.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

set_transforms.exit.i:                            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %command_word0.i.i = getelementptr inbounds %struct.jr3_sensor, ptr %14, i32 0, i32 29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !69, !srcloc !73
  tail call void @arm_heavy_mb() #5, !noalias !69
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %command_word0.i.i, i32 327680) #5, !noalias !69, !srcloc !64
  %49 = ptrtoint ptr %state10.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 2, ptr %state10.i, align 4, !noalias !69
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %transf.i) #5, !noalias !69
  br label %jr3_pci_poll_subdevice.exit

sw.bb49.i:                                        ; preds = %if.end9.i
  %command_word0.i299.i = getelementptr inbounds %struct.jr3_sensor, ptr %14, i32 0, i32 29
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %command_word0.i299.i) #5, !noalias !69, !srcloc !66
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !69, !srcloc !68
  %conv.i.i300.i = trunc i32 %51 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i.i300.i)
  %cmp.i.not.i = icmp eq i16 %conv.i.i300.i, 0
  br i1 %cmp.i.not.i, label %if.else54.i, label %sw.bb49.i.jr3_pci_poll_subdevice.exit_crit_edge

sw.bb49.i.jr3_pci_poll_subdevice.exit_crit_edge:  ; preds = %sw.bb49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %jr3_pci_poll_subdevice.exit

if.else54.i:                                      ; preds = %sw.bb49.i
  call void @__sanitizer_cov_trace_pc() #7
  %max_full_scale.i.i = getelementptr inbounds %struct.jr3_sensor, ptr %14, i32 0, i32 11
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %max_full_scale.i.i) #5, !noalias !74, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !74, !srcloc !68
  %fy.i.i = getelementptr inbounds %struct.jr3_sensor, ptr %14, i32 0, i32 11, i32 1
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %fy.i.i) #5, !noalias !74, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !74, !srcloc !68
  %fz.i.i = getelementptr inbounds %struct.jr3_sensor, ptr %14, i32 0, i32 11, i32 2
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %fz.i.i) #5, !noalias !74, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !74, !srcloc !68
  %mx.i.i = getelementptr inbounds %struct.jr3_sensor, ptr %14, i32 0, i32 11, i32 3
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mx.i.i) #5, !noalias !74, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !74, !srcloc !68
  %my.i.i = getelementptr inbounds %struct.jr3_sensor, ptr %14, i32 0, i32 11, i32 4
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %my.i.i) #5, !noalias !74, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !74, !srcloc !68
  %57 = and i32 %56, -65536
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #5
  %tmp55.sroa.8.8.insert.shift.i = shl nuw i32 %58, 16
  %mz.i.i = getelementptr inbounds %struct.jr3_sensor, ptr %14, i32 0, i32 11, i32 5
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mz.i.i) #5, !noalias !74, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !74, !srcloc !68
  %60 = and i32 %59, -65536
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #5
  %62 = and i32 %53, -65536
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #5
  %64 = and i32 %52, -65536
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #5
  %tmp55.sroa.0.sroa.0.0.insert.shift.i = shl nuw i32 %65, 16
  %66 = and i32 %55, -65536
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #5
  %68 = and i32 %54, -65536
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #5
  %tmp55.sroa.5.sroa.0.0.insert.shift.i = shl nuw i32 %69, 16
  %full_scale1.i.i = getelementptr inbounds %struct.jr3_sensor, ptr %14, i32 0, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !69, !srcloc !73
  tail call void @arm_heavy_mb() #5, !noalias !69
  %conv.i.i302.i = ashr exact i32 %tmp55.sroa.0.sroa.0.0.insert.shift.i, 16
  %70 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i302.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %full_scale1.i.i, i32 %70) #5, !noalias !69, !srcloc !64
  %fy.i303.i = getelementptr inbounds %struct.jr3_sensor, ptr %14, i32 0, i32 14, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !69, !srcloc !73
  tail call void @arm_heavy_mb() #5, !noalias !69
  %sext.i.i = shl nuw i32 %63, 16
  %conv.i19.i.i = ashr exact i32 %sext.i.i, 16
  %71 = tail call i32 @llvm.bswap.i32(i32 %conv.i19.i.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %fy.i303.i, i32 %71) #5, !noalias !69, !srcloc !64
  %fz.i304.i = getelementptr inbounds %struct.jr3_sensor, ptr %14, i32 0, i32 14, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !69, !srcloc !73
  tail call void @arm_heavy_mb() #5, !noalias !69
  %conv.i20.i.i = ashr exact i32 %tmp55.sroa.5.sroa.0.0.insert.shift.i, 16
  %72 = tail call i32 @llvm.bswap.i32(i32 %conv.i20.i.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %fz.i304.i, i32 %72) #5, !noalias !69, !srcloc !64
  %mx.i305.i = getelementptr inbounds %struct.jr3_sensor, ptr %14, i32 0, i32 14, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !69, !srcloc !73
  tail call void @arm_heavy_mb() #5, !noalias !69
  %sext25.i.i = shl nuw i32 %67, 16
  %conv.i21.i.i = ashr exact i32 %sext25.i.i, 16
  %73 = tail call i32 @llvm.bswap.i32(i32 %conv.i21.i.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mx.i305.i, i32 %73) #5, !noalias !69, !srcloc !64
  %my.i306.i = getelementptr inbounds %struct.jr3_sensor, ptr %14, i32 0, i32 14, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !69, !srcloc !73
  tail call void @arm_heavy_mb() #5, !noalias !69
  %conv.i22.i307.i = ashr exact i32 %tmp55.sroa.8.8.insert.shift.i, 16
  %74 = tail call i32 @llvm.bswap.i32(i32 %conv.i22.i307.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %my.i306.i, i32 %74) #5, !noalias !69, !srcloc !64
  %mz.i308.i = getelementptr inbounds %struct.jr3_sensor, ptr %14, i32 0, i32 14, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !69, !srcloc !73
  tail call void @arm_heavy_mb() #5, !noalias !69
  %sext27.i.i = shl nuw i32 %61, 16
  %conv.i23.i309.i = ashr exact i32 %sext27.i.i, 16
  %75 = tail call i32 @llvm.bswap.i32(i32 %conv.i23.i309.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mz.i308.i, i32 %75) #5, !noalias !69, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !69, !srcloc !73
  tail call void @arm_heavy_mb() #5, !noalias !69
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %command_word0.i299.i, i32 655360) #5, !noalias !69, !srcloc !64
  %76 = ptrtoint ptr %state10.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 3, ptr %state10.i, align 4, !noalias !69
  br label %jr3_pci_poll_subdevice.exit

sw.bb59.i:                                        ; preds = %if.end9.i
  %command_word0.i311.i = getelementptr inbounds %struct.jr3_sensor, ptr %14, i32 0, i32 29
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %command_word0.i311.i) #5, !noalias !69, !srcloc !66
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !69, !srcloc !68
  %conv.i.i312.i = trunc i32 %78 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i.i312.i)
  %cmp.i313.not.i = icmp eq i16 %conv.i.i312.i, 0
  br i1 %cmp.i313.not.i, label %if.else64.i, label %sw.bb59.i.jr3_pci_poll_subdevice.exit_crit_edge

sw.bb59.i.jr3_pci_poll_subdevice.exit_crit_edge:  ; preds = %sw.bb59.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %jr3_pci_poll_subdevice.exit

if.else64.i:                                      ; preds = %sw.bb59.i
  call void @__sanitizer_cov_trace_pc() #7
  %full_scale.i = getelementptr inbounds %struct.jr3_sensor, ptr %14, i32 0, i32 14
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %full_scale.i) #5, !noalias !69, !srcloc !66
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !69, !srcloc !68
  %sext.i = shl i32 %80, 16
  %conv66.i = ashr exact i32 %sext.i, 16
  %mul.i = mul nsw i32 %conv66.i, -1000
  %range68.i = getelementptr inbounds %struct.jr3_pci_subdev_private, ptr %12, i32 0, i32 5, i32 0, i32 1
  %81 = ptrtoint ptr %range68.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %mul.i, ptr %range68.i, align 4, !noalias !69
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %full_scale.i) #5, !noalias !69, !srcloc !66
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !69, !srcloc !68
  %sext337.i = shl i32 %83, 16
  %conv72.i = ashr exact i32 %sext337.i, 16
  %mul73.i = mul nsw i32 %conv72.i, 1000
  %max.i = getelementptr inbounds %struct.jr3_pci_subdev_private, ptr %12, i32 0, i32 5, i32 0, i32 1, i32 4
  %84 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %mul73.i, ptr %max.i, align 4, !noalias !69
  %fy.i = getelementptr inbounds %struct.jr3_sensor, ptr %14, i32 0, i32 14, i32 1
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %fy.i) #5, !noalias !69, !srcloc !66
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !69, !srcloc !68
  %sext338.i = shl i32 %86, 16
  %conv78.i = ashr exact i32 %sext338.i, 16
  %mul80.i = mul nsw i32 %conv78.i, -1000
  %range82.i = getelementptr %struct.jr3_pci_subdev_private, ptr %12, i32 0, i32 5, i32 1, i32 1
  %87 = ptrtoint ptr %range82.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %mul80.i, ptr %range82.i, align 4, !noalias !69
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %fy.i) #5, !noalias !69, !srcloc !66
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !69, !srcloc !68
  %sext339.i = shl i32 %89, 16
  %conv87.i = ashr exact i32 %sext339.i, 16
  %mul88.i = mul nsw i32 %conv87.i, 1000
  %max92.i = getelementptr %struct.jr3_pci_subdev_private, ptr %12, i32 0, i32 5, i32 1, i32 1, i32 4
  %90 = ptrtoint ptr %max92.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %mul88.i, ptr %max92.i, align 4, !noalias !69
  %fz.i = getelementptr inbounds %struct.jr3_sensor, ptr %14, i32 0, i32 14, i32 2
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %fz.i) #5, !noalias !69, !srcloc !66
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !69, !srcloc !68
  %sext340.i = shl i32 %92, 16
  %conv94.i = ashr exact i32 %sext340.i, 16
  %mul96.i = mul nsw i32 %conv94.i, -1000
  %range98.i = getelementptr %struct.jr3_pci_subdev_private, ptr %12, i32 0, i32 5, i32 2, i32 1
  %93 = ptrtoint ptr %range98.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %mul96.i, ptr %range98.i, align 4, !noalias !69
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %fz.i) #5, !noalias !69, !srcloc !66
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !69, !srcloc !68
  %sext341.i = shl i32 %95, 16
  %conv103.i = ashr exact i32 %sext341.i, 16
  %mul104.i = mul nsw i32 %conv103.i, 1000
  %max108.i = getelementptr %struct.jr3_pci_subdev_private, ptr %12, i32 0, i32 5, i32 2, i32 1, i32 4
  %96 = ptrtoint ptr %max108.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %mul104.i, ptr %max108.i, align 4, !noalias !69
  %mx.i = getelementptr inbounds %struct.jr3_sensor, ptr %14, i32 0, i32 14, i32 3
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mx.i) #5, !noalias !69, !srcloc !66
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !69, !srcloc !68
  %sext342.i = shl i32 %98, 16
  %conv110.i = ashr exact i32 %sext342.i, 16
  %mul112.i = mul nsw i32 %conv110.i, -100
  %range114.i = getelementptr %struct.jr3_pci_subdev_private, ptr %12, i32 0, i32 5, i32 3, i32 1
  %99 = ptrtoint ptr %range114.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %mul112.i, ptr %range114.i, align 4, !noalias !69
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mx.i) #5, !noalias !69, !srcloc !66
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !69, !srcloc !68
  %sext343.i = shl i32 %101, 16
  %conv119.i = ashr exact i32 %sext343.i, 16
  %mul120.i = mul nsw i32 %conv119.i, 100
  %max124.i = getelementptr %struct.jr3_pci_subdev_private, ptr %12, i32 0, i32 5, i32 3, i32 1, i32 4
  %102 = ptrtoint ptr %max124.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %mul120.i, ptr %max124.i, align 4, !noalias !69
  %my.i = getelementptr inbounds %struct.jr3_sensor, ptr %14, i32 0, i32 14, i32 4
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %my.i) #5, !noalias !69, !srcloc !66
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !69, !srcloc !68
  %sext344.i = shl i32 %104, 16
  %conv126.i = ashr exact i32 %sext344.i, 16
  %mul128.i = mul nsw i32 %conv126.i, -100
  %range130.i = getelementptr %struct.jr3_pci_subdev_private, ptr %12, i32 0, i32 5, i32 4, i32 1
  %105 = ptrtoint ptr %range130.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %mul128.i, ptr %range130.i, align 4, !noalias !69
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %my.i) #5, !noalias !69, !srcloc !66
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !69, !srcloc !68
  %sext345.i = shl i32 %107, 16
  %conv135.i = ashr exact i32 %sext345.i, 16
  %mul136.i = mul nsw i32 %conv135.i, 100
  %max140.i = getelementptr %struct.jr3_pci_subdev_private, ptr %12, i32 0, i32 5, i32 4, i32 1, i32 4
  %108 = ptrtoint ptr %max140.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %mul136.i, ptr %max140.i, align 4, !noalias !69
  %mz.i = getelementptr inbounds %struct.jr3_sensor, ptr %14, i32 0, i32 14, i32 5
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mz.i) #5, !noalias !69, !srcloc !66
  %110 = tail call i32 @llvm.bswap.i32(i32 %109) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !69, !srcloc !68
  %sext346.i = shl i32 %110, 16
  %conv142.i = ashr exact i32 %sext346.i, 16
  %mul144.i = mul nsw i32 %conv142.i, -100
  %range146.i = getelementptr %struct.jr3_pci_subdev_private, ptr %12, i32 0, i32 5, i32 5, i32 1
  %111 = ptrtoint ptr %range146.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %mul144.i, ptr %range146.i, align 4, !noalias !69
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mz.i) #5, !noalias !69, !srcloc !66
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !69, !srcloc !68
  %sext347.i = shl i32 %113, 16
  %conv151.i = ashr exact i32 %sext347.i, 16
  %mul152.i = mul nsw i32 %conv151.i, 100
  %max156.i = getelementptr %struct.jr3_pci_subdev_private, ptr %12, i32 0, i32 5, i32 5, i32 1, i32 4
  %114 = ptrtoint ptr %max156.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %mul152.i, ptr %max156.i, align 4, !noalias !69
  %v1.i = getelementptr inbounds %struct.jr3_sensor, ptr %14, i32 0, i32 14, i32 6
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %v1.i) #5, !noalias !69, !srcloc !66
  %116 = tail call i32 @llvm.bswap.i32(i32 %115) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !69, !srcloc !68
  %sext348.i = shl i32 %116, 16
  %conv158.i = ashr exact i32 %sext348.i, 16
  %mul160.i = mul nsw i32 %conv158.i, -100
  %range162.i = getelementptr %struct.jr3_pci_subdev_private, ptr %12, i32 0, i32 5, i32 6, i32 1
  %117 = ptrtoint ptr %range162.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %mul160.i, ptr %range162.i, align 4, !noalias !69
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %v1.i) #5, !noalias !69, !srcloc !66
  %119 = tail call i32 @llvm.bswap.i32(i32 %118) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !69, !srcloc !68
  %sext349.i = shl i32 %119, 16
  %conv167.i = ashr exact i32 %sext349.i, 16
  %mul168.i = mul nsw i32 %conv167.i, 100
  %max172.i = getelementptr %struct.jr3_pci_subdev_private, ptr %12, i32 0, i32 5, i32 6, i32 1, i32 4
  %120 = ptrtoint ptr %max172.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %mul168.i, ptr %max172.i, align 4, !noalias !69
  %v2.i = getelementptr inbounds %struct.jr3_sensor, ptr %14, i32 0, i32 14, i32 7
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %v2.i) #5, !noalias !69, !srcloc !66
  %122 = tail call i32 @llvm.bswap.i32(i32 %121) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !69, !srcloc !68
  %sext350.i = shl i32 %122, 16
  %conv174.i = ashr exact i32 %sext350.i, 16
  %mul176.i = mul nsw i32 %conv174.i, -100
  %range178.i = getelementptr %struct.jr3_pci_subdev_private, ptr %12, i32 0, i32 5, i32 7, i32 1
  %123 = ptrtoint ptr %range178.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %mul176.i, ptr %range178.i, align 4, !noalias !69
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %v2.i) #5, !noalias !69, !srcloc !66
  %125 = tail call i32 @llvm.bswap.i32(i32 %124) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !69, !srcloc !68
  %sext351.i = shl i32 %125, 16
  %conv183.i = ashr exact i32 %sext351.i, 16
  %mul184.i = mul nsw i32 %conv183.i, 100
  %max188.i = getelementptr %struct.jr3_pci_subdev_private, ptr %12, i32 0, i32 5, i32 7, i32 1, i32 4
  %126 = ptrtoint ptr %max188.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %mul184.i, ptr %max188.i, align 4, !noalias !69
  %range190.i = getelementptr %struct.jr3_pci_subdev_private, ptr %12, i32 0, i32 5, i32 8, i32 1
  %127 = ptrtoint ptr %range190.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %range190.i, align 4, !noalias !69
  %max196.i = getelementptr %struct.jr3_pci_subdev_private, ptr %12, i32 0, i32 5, i32 8, i32 1, i32 4
  %128 = ptrtoint ptr %max196.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 65535, ptr %max196.i, align 4, !noalias !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !69, !srcloc !73
  tail call void @arm_heavy_mb() #5, !noalias !69
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %command_word0.i311.i, i32 393216) #5, !noalias !69, !srcloc !64
  %129 = ptrtoint ptr %state10.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 4, ptr %state10.i, align 4, !noalias !69
  br label %jr3_pci_poll_subdevice.exit

sw.bb200.i:                                       ; preds = %if.end9.i
  %command_word0.i332.i = getelementptr inbounds %struct.jr3_sensor, ptr %14, i32 0, i32 29
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %command_word0.i332.i) #5, !noalias !69, !srcloc !66
  %131 = tail call i32 @llvm.bswap.i32(i32 %130) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !69, !srcloc !68
  %conv.i.i333.i = trunc i32 %131 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i.i333.i)
  %cmp.i334.not.i = icmp eq i16 %conv.i.i333.i, 0
  br i1 %cmp.i334.not.i, label %if.else205.i, label %sw.bb200.i.jr3_pci_poll_subdevice.exit_crit_edge

sw.bb200.i.jr3_pci_poll_subdevice.exit_crit_edge: ; preds = %sw.bb200.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %jr3_pci_poll_subdevice.exit

if.else205.i:                                     ; preds = %sw.bb200.i
  call void @__sanitizer_cov_trace_pc() #7
  %offsets.i = getelementptr inbounds %struct.jr3_sensor, ptr %14, i32 0, i32 15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !69, !srcloc !73
  tail call void @arm_heavy_mb() #5, !noalias !69
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %offsets.i, i32 0) #5, !noalias !69, !srcloc !64
  %fy208.i = getelementptr inbounds %struct.jr3_sensor, ptr %14, i32 0, i32 15, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !69, !srcloc !73
  tail call void @arm_heavy_mb() #5, !noalias !69
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %fy208.i, i32 0) #5, !noalias !69, !srcloc !64
  %fz210.i = getelementptr inbounds %struct.jr3_sensor, ptr %14, i32 0, i32 15, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !69, !srcloc !73
  tail call void @arm_heavy_mb() #5, !noalias !69
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %fz210.i, i32 0) #5, !noalias !69, !srcloc !64
  %mx212.i = getelementptr inbounds %struct.jr3_sensor, ptr %14, i32 0, i32 15, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !69, !srcloc !73
  tail call void @arm_heavy_mb() #5, !noalias !69
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mx212.i, i32 0) #5, !noalias !69, !srcloc !64
  %my214.i = getelementptr inbounds %struct.jr3_sensor, ptr %14, i32 0, i32 15, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !69, !srcloc !73
  tail call void @arm_heavy_mb() #5, !noalias !69
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %my214.i, i32 0) #5, !noalias !69, !srcloc !64
  %mz216.i = getelementptr inbounds %struct.jr3_sensor, ptr %14, i32 0, i32 15, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !69, !srcloc !73
  tail call void @arm_heavy_mb() #5, !noalias !69
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mz216.i, i32 0) #5, !noalias !69, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !noalias !69, !srcloc !73
  tail call void @arm_heavy_mb() #5, !noalias !69
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %command_word0.i332.i, i32 458752) #5, !noalias !69, !srcloc !64
  %132 = ptrtoint ptr %state10.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 5, ptr %state10.i, align 4, !noalias !69
  br label %jr3_pci_poll_subdevice.exit

sw.bb219.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %jr3_pci_poll_subdevice.exit

jr3_pci_poll_subdevice.exit:                      ; preds = %sw.bb219.i, %if.else205.i, %sw.bb200.i.jr3_pci_poll_subdevice.exit_crit_edge, %if.else64.i, %sw.bb59.i.jr3_pci_poll_subdevice.exit_crit_edge, %if.else54.i, %sw.bb49.i.jr3_pci_poll_subdevice.exit_crit_edge, %set_transforms.exit.i, %sw.bb27.i.jr3_pci_poll_subdevice.exit_crit_edge, %if.else.i47, %sw.bb.i.jr3_pci_poll_subdevice.exit_crit_edge, %if.end9.i.jr3_pci_poll_subdevice.exit_crit_edge
  %tmp11.sroa.11.0 = phi i32 [ 2000, %if.end9.i.jr3_pci_poll_subdevice.exit_crit_edge ], [ 20000, %sw.bb219.i ], [ 2000, %if.else205.i ], [ 100, %if.else64.i ], [ 100, %if.else54.i ], [ 2000, %sw.bb27.i.jr3_pci_poll_subdevice.exit_crit_edge ], [ 100, %set_transforms.exit.i ], [ 2000, %sw.bb.i.jr3_pci_poll_subdevice.exit_crit_edge ], [ 2000, %if.else.i47 ], [ 100, %sw.bb49.i.jr3_pci_poll_subdevice.exit_crit_edge ], [ 100, %sw.bb59.i.jr3_pci_poll_subdevice.exit_crit_edge ], [ 100, %sw.bb200.i.jr3_pci_poll_subdevice.exit_crit_edge ]
  %tmp11.sroa.0.0 = phi i32 [ 1000, %if.end9.i.jr3_pci_poll_subdevice.exit_crit_edge ], [ 10000, %sw.bb219.i ], [ 1000, %if.else205.i ], [ 40, %if.else64.i ], [ 20, %if.else54.i ], [ 1000, %sw.bb27.i.jr3_pci_poll_subdevice.exit_crit_edge ], [ 20, %set_transforms.exit.i ], [ 1000, %sw.bb.i.jr3_pci_poll_subdevice.exit_crit_edge ], [ 1000, %if.else.i47 ], [ 20, %sw.bb49.i.jr3_pci_poll_subdevice.exit_crit_edge ], [ 20, %sw.bb59.i.jr3_pci_poll_subdevice.exit_crit_edge ], [ 20, %sw.bb200.i.jr3_pci_poll_subdevice.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %133 = load volatile i32, ptr @jiffies, align 128
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %tmp11.sroa.0.0) #5
  %add = add i32 %call2.i, %133
  %134 = ptrtoint ptr %next_time_min to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %add, ptr %next_time_min, align 4
  %135 = tail call i32 @llvm.smin.i32(i32 %tmp11.sroa.11.0, i32 %delay.050)
  br label %for.inc

for.inc:                                          ; preds = %jr3_pci_poll_subdevice.exit, %for.body.for.inc_crit_edge
  %delay.2 = phi i32 [ %135, %jr3_pci_poll_subdevice.exit ], [ %delay.050, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.051, 1
  %136 = ptrtoint ptr %n_subdevices to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %n_subdevices, align 4
  %cmp7 = icmp slt i32 %inc, %137
  br i1 %cmp7, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %delay.0.lcssa = phi i32 [ 1000, %entry.for.end_crit_edge ], [ %delay.2, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %138 = load volatile i32, ptr @jiffies, align 128
  %call2.i41 = tail call i32 @__msecs_to_jiffies(i32 noundef %delay.0.lcssa) #5
  %add22 = add i32 %call2.i41, %138
  %expires = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %139 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %add22, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %t) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_spriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @jr3_write_firmware(ptr nocapture noundef readonly %dev, i32 noundef %subdev, ptr nocapture noundef readonly %data, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %arrayidx = getelementptr %struct.jr3_block, ptr %1, i32 %subdev
  %2 = add i32 %size, -1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %entry
  %pos.0319 = phi i32 [ 0, %entry ], [ %pos.10.lcssa, %cleanup.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.0319, i32 %size)
  %cmp31.i = icmp ult i32 %pos.0319, %size
  br i1 %cmp31.i, label %while.body.land.rhs.i_crit_edge, label %while.body.for.end.i_crit_edge

while.body.for.end.i_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

while.body.land.rhs.i_crit_edge:                  ; preds = %while.body
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %while.body.land.rhs.i_crit_edge
  %pos.1 = phi i32 [ %inc.i, %for.inc.i.land.rhs.i_crit_edge ], [ %pos.0319, %while.body.land.rhs.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %data, i32 %pos.1
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %4 to i32
  %arrayidx2.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %5 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx2.i, align 1
  %7 = and i8 %6, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp4.not.i = icmp eq i8 %7, 0
  br i1 %cmp4.not.i, label %for.inc.i, label %land.rhs.i.for.end.i_crit_edge

land.rhs.i.for.end.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.inc.i:                                        ; preds = %land.rhs.i
  %inc.i = add i32 %pos.1, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %size
  br i1 %exitcond.not.i, label %for.inc.i.land.end8_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

for.inc.i.land.end8_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end8

for.end.i:                                        ; preds = %land.rhs.i.for.end.i_crit_edge, %while.body.for.end.i_crit_edge
  %pos.2 = phi i32 [ %pos.0319, %while.body.for.end.i_crit_edge ], [ %pos.1, %land.rhs.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.2, i32 %size)
  %cmp732.i = icmp ult i32 %pos.2, %size
  br i1 %cmp732.i, label %for.body9.i.preheader, label %for.end.i.land.end8_crit_edge

for.end.i.land.end8_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end8

for.body9.i.preheader:                            ; preds = %for.end.i
  %arrayidx10.i261 = getelementptr i8, ptr %data, i32 %pos.2
  %8 = ptrtoint ptr %arrayidx10.i261 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx10.i261, align 1
  %call.i262 = tail call i32 @hex_to_bin(i8 noundef zeroext %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i262)
  %cmp11.i263 = icmp sgt i32 %call.i262, -1
  br i1 %cmp11.i263, label %for.body9.i.preheader.if.then13.i_crit_edge, label %for.body9.i.preheader.land.end8_crit_edge

for.body9.i.preheader.land.end8_crit_edge:        ; preds = %for.body9.i.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end8

for.body9.i.preheader.if.then13.i_crit_edge:      ; preds = %for.body9.i.preheader
  br label %if.then13.i

for.body9.i:                                      ; preds = %if.then13.i
  %inc15.i = add i32 %pos.3264, 1
  %arrayidx10.i = getelementptr i8, ptr %data, i32 %inc15.i
  %10 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx10.i, align 1
  %call.i = tail call i32 @hex_to_bin(i8 noundef zeroext %11) #5
  %cmp11.i = icmp sgt i32 %call.i, -1
  br i1 %cmp11.i, label %for.body9.i.if.then13.i_crit_edge, label %read_idm_word.exit

for.body9.i.if.then13.i_crit_edge:                ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13.i

if.then13.i:                                      ; preds = %for.body9.i.if.then13.i_crit_edge, %for.body9.i.preheader.if.then13.i_crit_edge
  %call.i266 = phi i32 [ %call.i, %for.body9.i.if.then13.i_crit_edge ], [ %call.i262, %for.body9.i.preheader.if.then13.i_crit_edge ]
  %count.0265 = phi i32 [ %add.i, %for.body9.i.if.then13.i_crit_edge ], [ 0, %for.body9.i.preheader.if.then13.i_crit_edge ]
  %pos.3264 = phi i32 [ %inc15.i, %for.body9.i.if.then13.i_crit_edge ], [ %pos.2, %for.body9.i.preheader.if.then13.i_crit_edge ]
  %shl.i = shl i32 %count.0265, 4
  %add.i = add i32 %call.i266, %shl.i
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.3264, i32 %2)
  %exitcond.not = icmp eq i32 %pos.3264, %2
  br i1 %exitcond.not, label %if.then13.i.land.lhs.true_crit_edge, label %for.body9.i

if.then13.i.land.lhs.true_crit_edge:              ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

read_idm_word.exit:                               ; preds = %for.body9.i
  br i1 %cmp11.i263, label %read_idm_word.exit.land.lhs.true_crit_edge, label %read_idm_word.exit.land.end8_crit_edge

read_idm_word.exit.land.end8_crit_edge:           ; preds = %read_idm_word.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end8

read_idm_word.exit.land.lhs.true_crit_edge:       ; preds = %read_idm_word.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %read_idm_word.exit.land.lhs.true_crit_edge, %if.then13.i.land.lhs.true_crit_edge
  %pos.4205 = phi i32 [ %inc15.i, %read_idm_word.exit.land.lhs.true_crit_edge ], [ %size, %if.then13.i.land.lhs.true_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add.i)
  %cmp = icmp eq i32 %add.i, 65535
  br i1 %cmp, label %land.lhs.true.cleanup55_crit_edge, label %land.rhs5.critedge

land.lhs.true.cleanup55_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup55

land.rhs5.critedge:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.4205, i32 %size)
  %cmp31.i82 = icmp ult i32 %pos.4205, %size
  br i1 %cmp31.i82, label %land.rhs5.critedge.land.rhs.i87_crit_edge, label %land.rhs5.critedge.for.end.i92_crit_edge

land.rhs5.critedge.for.end.i92_crit_edge:         ; preds = %land.rhs5.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i92

land.rhs5.critedge.land.rhs.i87_crit_edge:        ; preds = %land.rhs5.critedge
  br label %land.rhs.i87

land.rhs.i87:                                     ; preds = %for.inc.i90.land.rhs.i87_crit_edge, %land.rhs5.critedge.land.rhs.i87_crit_edge
  %pos.5 = phi i32 [ %inc.i88, %for.inc.i90.land.rhs.i87_crit_edge ], [ %pos.4205, %land.rhs5.critedge.land.rhs.i87_crit_edge ]
  %arrayidx.i83 = getelementptr i8, ptr %data, i32 %pos.5
  %12 = ptrtoint ptr %arrayidx.i83 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i83, align 1
  %conv.i84 = zext i8 %13 to i32
  %arrayidx2.i85 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i84
  %14 = ptrtoint ptr %arrayidx2.i85 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx2.i85, align 1
  %16 = and i8 %15, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp4.not.i86 = icmp eq i8 %16, 0
  br i1 %cmp4.not.i86, label %for.inc.i90, label %land.rhs.i87.for.end.i92_crit_edge

land.rhs.i87.for.end.i92_crit_edge:               ; preds = %land.rhs.i87
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i92

for.inc.i90:                                      ; preds = %land.rhs.i87
  %inc.i88 = add i32 %pos.5, 1
  %exitcond.not.i89 = icmp eq i32 %inc.i88, %size
  br i1 %exitcond.not.i89, label %for.inc.i90.land.end8_crit_edge, label %for.inc.i90.land.rhs.i87_crit_edge

for.inc.i90.land.rhs.i87_crit_edge:               ; preds = %for.inc.i90
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i87

for.inc.i90.land.end8_crit_edge:                  ; preds = %for.inc.i90
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end8

for.end.i92:                                      ; preds = %land.rhs.i87.for.end.i92_crit_edge, %land.rhs5.critedge.for.end.i92_crit_edge
  %pos.6 = phi i32 [ %pos.4205, %land.rhs5.critedge.for.end.i92_crit_edge ], [ %pos.5, %land.rhs.i87.for.end.i92_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.6, i32 %size)
  %cmp732.i91 = icmp ult i32 %pos.6, %size
  br i1 %cmp732.i91, label %for.body9.i97.preheader, label %for.end.i92.land.end8_crit_edge

for.end.i92.land.end8_crit_edge:                  ; preds = %for.end.i92
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end8

for.body9.i97.preheader:                          ; preds = %for.end.i92
  %arrayidx10.i94269 = getelementptr i8, ptr %data, i32 %pos.6
  %17 = ptrtoint ptr %arrayidx10.i94269 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx10.i94269, align 1
  %call.i95270 = tail call i32 @hex_to_bin(i8 noundef zeroext %18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i95270)
  %cmp11.i96271 = icmp sgt i32 %call.i95270, -1
  br i1 %cmp11.i96271, label %for.body9.i97.preheader.if.then13.i102_crit_edge, label %for.body9.i97.preheader.land.end8_crit_edge

for.body9.i97.preheader.land.end8_crit_edge:      ; preds = %for.body9.i97.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end8

for.body9.i97.preheader.if.then13.i102_crit_edge: ; preds = %for.body9.i97.preheader
  br label %if.then13.i102

for.body9.i97:                                    ; preds = %if.then13.i102
  %inc15.i100 = add i32 %pos.7272, 1
  %arrayidx10.i94 = getelementptr i8, ptr %data, i32 %inc15.i100
  %19 = ptrtoint ptr %arrayidx10.i94 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx10.i94, align 1
  %call.i95 = tail call i32 @hex_to_bin(i8 noundef zeroext %20) #5
  %cmp11.i96 = icmp sgt i32 %call.i95, -1
  br i1 %cmp11.i96, label %for.body9.i97.if.then13.i102_crit_edge, label %for.body9.i97.land.end8_crit_edge

for.body9.i97.land.end8_crit_edge:                ; preds = %for.body9.i97
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end8

for.body9.i97.if.then13.i102_crit_edge:           ; preds = %for.body9.i97
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13.i102

if.then13.i102:                                   ; preds = %for.body9.i97.if.then13.i102_crit_edge, %for.body9.i97.preheader.if.then13.i102_crit_edge
  %call.i95274 = phi i32 [ %call.i95, %for.body9.i97.if.then13.i102_crit_edge ], [ %call.i95270, %for.body9.i97.preheader.if.then13.i102_crit_edge ]
  %addr.0273 = phi i32 [ %add.i99, %for.body9.i97.if.then13.i102_crit_edge ], [ 0, %for.body9.i97.preheader.if.then13.i102_crit_edge ]
  %pos.7272 = phi i32 [ %inc15.i100, %for.body9.i97.if.then13.i102_crit_edge ], [ %pos.6, %for.body9.i97.preheader.if.then13.i102_crit_edge ]
  %shl.i98 = shl i32 %addr.0273, 4
  %add.i99 = add i32 %call.i95274, %shl.i98
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.7272, i32 %2)
  %exitcond326.not = icmp eq i32 %pos.7272, %2
  br i1 %exitcond326.not, label %if.then13.i102.land.end8_crit_edge, label %for.body9.i97

if.then13.i102.land.end8_crit_edge:               ; preds = %if.then13.i102
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end8

land.end8:                                        ; preds = %if.then13.i102.land.end8_crit_edge, %for.body9.i97.land.end8_crit_edge, %for.body9.i97.preheader.land.end8_crit_edge, %for.end.i92.land.end8_crit_edge, %for.inc.i90.land.end8_crit_edge, %read_idm_word.exit.land.end8_crit_edge, %for.body9.i.preheader.land.end8_crit_edge, %for.end.i.land.end8_crit_edge, %for.inc.i.land.end8_crit_edge
  %count.1207 = phi i32 [ %add.i, %read_idm_word.exit.land.end8_crit_edge ], [ 0, %for.end.i.land.end8_crit_edge ], [ %add.i, %for.body9.i97.preheader.land.end8_crit_edge ], [ %add.i, %for.end.i92.land.end8_crit_edge ], [ 0, %for.body9.i.preheader.land.end8_crit_edge ], [ %add.i, %if.then13.i102.land.end8_crit_edge ], [ %add.i, %for.body9.i97.land.end8_crit_edge ], [ %add.i, %for.inc.i90.land.end8_crit_edge ], [ 0, %for.inc.i.land.end8_crit_edge ]
  %pos.9 = phi i32 [ %inc15.i, %read_idm_word.exit.land.end8_crit_edge ], [ %pos.2, %for.end.i.land.end8_crit_edge ], [ %pos.6, %for.body9.i97.preheader.land.end8_crit_edge ], [ %pos.6, %for.end.i92.land.end8_crit_edge ], [ %pos.2, %for.body9.i.preheader.land.end8_crit_edge ], [ %inc15.i100, %for.body9.i97.land.end8_crit_edge ], [ %size, %if.then13.i102.land.end8_crit_edge ], [ %size, %for.inc.i90.land.end8_crit_edge ], [ %size, %for.inc.i.land.end8_crit_edge ]
  %addr.2 = phi i32 [ 0, %read_idm_word.exit.land.end8_crit_edge ], [ 0, %for.end.i.land.end8_crit_edge ], [ 0, %for.body9.i97.preheader.land.end8_crit_edge ], [ 0, %for.end.i92.land.end8_crit_edge ], [ 0, %for.body9.i.preheader.land.end8_crit_edge ], [ %add.i99, %if.then13.i102.land.end8_crit_edge ], [ %add.i99, %for.body9.i97.land.end8_crit_edge ], [ 0, %for.inc.i90.land.end8_crit_edge ], [ 0, %for.inc.i.land.end8_crit_edge ]
  %21 = phi i1 [ false, %read_idm_word.exit.land.end8_crit_edge ], [ false, %for.end.i.land.end8_crit_edge ], [ false, %for.body9.i97.preheader.land.end8_crit_edge ], [ false, %for.end.i92.land.end8_crit_edge ], [ false, %for.body9.i.preheader.land.end8_crit_edge ], [ true, %if.then13.i102.land.end8_crit_edge ], [ true, %for.body9.i97.land.end8_crit_edge ], [ false, %for.inc.i90.land.end8_crit_edge ], [ false, %for.inc.i.land.end8_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jr3_write_firmware.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@jr3_write_firmware, %do.end)) #5
          to label %if.then15 [label %do.end], !srcloc !65

if.then15:                                        ; preds = %land.end8
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jr3_write_firmware.__UNIQUE_ID_ddebug237, ptr noundef %23, ptr noundef nonnull @.str.13, i32 noundef %subdev, i32 noundef %count.1207, i32 noundef %addr.2) #5
  br label %do.end

do.end:                                           ; preds = %if.then15, %land.end8
  %more.1.in.not309 = xor i1 %21, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1207)
  %cmp20.not310 = icmp eq i32 %count.1207, 0
  %or.cond311 = select i1 %more.1.in.not309, i1 true, i1 %cmp20.not310
  br i1 %or.cond311, label %do.end.cleanup_crit_edge, label %do.end.while.body23_crit_edge

do.end.while.body23_crit_edge:                    ; preds = %do.end
  br label %while.body23

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body23:                                     ; preds = %if.end52.while.body23_crit_edge, %do.end.while.body23_crit_edge
  %addr.3316 = phi i32 [ %inc, %if.end52.while.body23_crit_edge ], [ %addr.2, %do.end.while.body23_crit_edge ]
  %count.2313 = phi i32 [ %count.3, %if.end52.while.body23_crit_edge ], [ %count.1207, %do.end.while.body23_crit_edge ]
  %pos.10312 = phi i32 [ %pos.24, %if.end52.while.body23_crit_edge ], [ %pos.9, %do.end.while.body23_crit_edge ]
  %and = and i32 %addr.3316, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %while.body23
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.10312, i32 %size)
  %cmp31.i105 = icmp ult i32 %pos.10312, %size
  br i1 %cmp31.i105, label %if.then25.land.rhs.i110_crit_edge, label %if.then25.for.end.i115_crit_edge

if.then25.for.end.i115_crit_edge:                 ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i115

if.then25.land.rhs.i110_crit_edge:                ; preds = %if.then25
  br label %land.rhs.i110

land.rhs.i110:                                    ; preds = %for.inc.i113.land.rhs.i110_crit_edge, %if.then25.land.rhs.i110_crit_edge
  %pos.11 = phi i32 [ %inc.i111, %for.inc.i113.land.rhs.i110_crit_edge ], [ %pos.10312, %if.then25.land.rhs.i110_crit_edge ]
  %arrayidx.i106 = getelementptr i8, ptr %data, i32 %pos.11
  %24 = ptrtoint ptr %arrayidx.i106 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i106, align 1
  %conv.i107 = zext i8 %25 to i32
  %arrayidx2.i108 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i107
  %26 = ptrtoint ptr %arrayidx2.i108 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx2.i108, align 1
  %28 = and i8 %27, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp4.not.i109 = icmp eq i8 %28, 0
  br i1 %cmp4.not.i109, label %for.inc.i113, label %land.rhs.i110.for.end.i115_crit_edge

land.rhs.i110.for.end.i115_crit_edge:             ; preds = %land.rhs.i110
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i115

for.inc.i113:                                     ; preds = %land.rhs.i110
  %inc.i111 = add i32 %pos.11, 1
  %exitcond.not.i112 = icmp eq i32 %inc.i111, %size
  br i1 %exitcond.not.i112, label %for.inc.i113.read_idm_word.exit127_crit_edge, label %for.inc.i113.land.rhs.i110_crit_edge

for.inc.i113.land.rhs.i110_crit_edge:             ; preds = %for.inc.i113
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i110

for.inc.i113.read_idm_word.exit127_crit_edge:     ; preds = %for.inc.i113
  call void @__sanitizer_cov_trace_pc() #7
  br label %read_idm_word.exit127

for.end.i115:                                     ; preds = %land.rhs.i110.for.end.i115_crit_edge, %if.then25.for.end.i115_crit_edge
  %pos.12 = phi i32 [ %pos.10312, %if.then25.for.end.i115_crit_edge ], [ %pos.11, %land.rhs.i110.for.end.i115_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.12, i32 %size)
  %cmp732.i114 = icmp ult i32 %pos.12, %size
  br i1 %cmp732.i114, label %for.body9.i120.preheader, label %for.end.i115.read_idm_word.exit127_crit_edge

for.end.i115.read_idm_word.exit127_crit_edge:     ; preds = %for.end.i115
  call void @__sanitizer_cov_trace_pc() #7
  br label %read_idm_word.exit127

for.body9.i120.preheader:                         ; preds = %for.end.i115
  %arrayidx10.i117281 = getelementptr i8, ptr %data, i32 %pos.12
  %29 = ptrtoint ptr %arrayidx10.i117281 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx10.i117281, align 1
  %call.i118282 = tail call i32 @hex_to_bin(i8 noundef zeroext %30) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i118282)
  %cmp11.i119283 = icmp sgt i32 %call.i118282, -1
  br i1 %cmp11.i119283, label %for.body9.i120.preheader.if.then13.i125_crit_edge, label %for.body9.i120.preheader.read_idm_word.exit127_crit_edge

for.body9.i120.preheader.read_idm_word.exit127_crit_edge: ; preds = %for.body9.i120.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %read_idm_word.exit127

for.body9.i120.preheader.if.then13.i125_crit_edge: ; preds = %for.body9.i120.preheader
  br label %if.then13.i125

for.body9.i120:                                   ; preds = %if.then13.i125
  %inc15.i123 = add i32 %pos.13284, 1
  %arrayidx10.i117 = getelementptr i8, ptr %data, i32 %inc15.i123
  %31 = ptrtoint ptr %arrayidx10.i117 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx10.i117, align 1
  %call.i118 = tail call i32 @hex_to_bin(i8 noundef zeroext %32) #5
  %cmp11.i119 = icmp sgt i32 %call.i118, -1
  br i1 %cmp11.i119, label %for.body9.i120.if.then13.i125_crit_edge, label %for.body9.i120.read_idm_word.exit127_crit_edge

for.body9.i120.read_idm_word.exit127_crit_edge:   ; preds = %for.body9.i120
  call void @__sanitizer_cov_trace_pc() #7
  br label %read_idm_word.exit127

for.body9.i120.if.then13.i125_crit_edge:          ; preds = %for.body9.i120
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13.i125

if.then13.i125:                                   ; preds = %for.body9.i120.if.then13.i125_crit_edge, %for.body9.i120.preheader.if.then13.i125_crit_edge
  %pos.13284 = phi i32 [ %inc15.i123, %for.body9.i120.if.then13.i125_crit_edge ], [ %pos.12, %for.body9.i120.preheader.if.then13.i125_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.13284, i32 %2)
  %exitcond327.not = icmp eq i32 %pos.13284, %2
  br i1 %exitcond327.not, label %if.then13.i125.read_idm_word.exit127_crit_edge, label %for.body9.i120

if.then13.i125.read_idm_word.exit127_crit_edge:   ; preds = %if.then13.i125
  call void @__sanitizer_cov_trace_pc() #7
  br label %read_idm_word.exit127

read_idm_word.exit127:                            ; preds = %if.then13.i125.read_idm_word.exit127_crit_edge, %for.body9.i120.read_idm_word.exit127_crit_edge, %for.body9.i120.preheader.read_idm_word.exit127_crit_edge, %for.end.i115.read_idm_word.exit127_crit_edge, %for.inc.i113.read_idm_word.exit127_crit_edge
  %pos.14 = phi i32 [ %pos.12, %for.end.i115.read_idm_word.exit127_crit_edge ], [ %pos.12, %for.body9.i120.preheader.read_idm_word.exit127_crit_edge ], [ %size, %if.then13.i125.read_idm_word.exit127_crit_edge ], [ %inc15.i123, %for.body9.i120.read_idm_word.exit127_crit_edge ], [ %size, %for.inc.i113.read_idm_word.exit127_crit_edge ]
  %tobool29 = phi i1 [ false, %for.end.i115.read_idm_word.exit127_crit_edge ], [ false, %for.body9.i120.preheader.read_idm_word.exit127_crit_edge ], [ true, %for.body9.i120.read_idm_word.exit127_crit_edge ], [ true, %if.then13.i125.read_idm_word.exit127_crit_edge ], [ false, %for.inc.i113.read_idm_word.exit127_crit_edge ]
  %dec = add i32 %count.2313, -1
  br label %if.end52

if.else:                                          ; preds = %while.body23
  %arrayidx33 = getelementptr [16384 x i32], ptr %arrayidx, i32 0, i32 %addr.3316
  %arrayidx35 = getelementptr %struct.jr3_block, ptr %1, i32 %subdev, i32 3, i32 %addr.3316
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.10312, i32 %size)
  %cmp31.i128 = icmp ult i32 %pos.10312, %size
  br i1 %cmp31.i128, label %if.else.land.rhs.i133_crit_edge, label %if.else.for.end.i138_crit_edge

if.else.for.end.i138_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i138

if.else.land.rhs.i133_crit_edge:                  ; preds = %if.else
  br label %land.rhs.i133

land.rhs.i133:                                    ; preds = %for.inc.i136.land.rhs.i133_crit_edge, %if.else.land.rhs.i133_crit_edge
  %pos.15 = phi i32 [ %inc.i134, %for.inc.i136.land.rhs.i133_crit_edge ], [ %pos.10312, %if.else.land.rhs.i133_crit_edge ]
  %arrayidx.i129 = getelementptr i8, ptr %data, i32 %pos.15
  %33 = ptrtoint ptr %arrayidx.i129 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i129, align 1
  %conv.i130 = zext i8 %34 to i32
  %arrayidx2.i131 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i130
  %35 = ptrtoint ptr %arrayidx2.i131 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx2.i131, align 1
  %37 = and i8 %36, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp4.not.i132 = icmp eq i8 %37, 0
  br i1 %cmp4.not.i132, label %for.inc.i136, label %land.rhs.i133.for.end.i138_crit_edge

land.rhs.i133.for.end.i138_crit_edge:             ; preds = %land.rhs.i133
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i138

for.inc.i136:                                     ; preds = %land.rhs.i133
  %inc.i134 = add i32 %pos.15, 1
  %exitcond.not.i135 = icmp eq i32 %inc.i134, %size
  br i1 %exitcond.not.i135, label %for.inc.i136.cleanup55_crit_edge, label %for.inc.i136.land.rhs.i133_crit_edge

for.inc.i136.land.rhs.i133_crit_edge:             ; preds = %for.inc.i136
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i133

for.inc.i136.cleanup55_crit_edge:                 ; preds = %for.inc.i136
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup55

for.end.i138:                                     ; preds = %land.rhs.i133.for.end.i138_crit_edge, %if.else.for.end.i138_crit_edge
  %pos.16 = phi i32 [ %pos.10312, %if.else.for.end.i138_crit_edge ], [ %pos.15, %land.rhs.i133.for.end.i138_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.16, i32 %size)
  %cmp732.i137 = icmp ult i32 %pos.16, %size
  br i1 %cmp732.i137, label %for.body9.i143.preheader, label %for.end.i138.cleanup55_crit_edge

for.end.i138.cleanup55_crit_edge:                 ; preds = %for.end.i138
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup55

for.body9.i143.preheader:                         ; preds = %for.end.i138
  %arrayidx10.i140291 = getelementptr i8, ptr %data, i32 %pos.16
  %38 = ptrtoint ptr %arrayidx10.i140291 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx10.i140291, align 1
  %call.i141292 = tail call i32 @hex_to_bin(i8 noundef zeroext %39) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i141292)
  %cmp11.i142293 = icmp sgt i32 %call.i141292, -1
  br i1 %cmp11.i142293, label %for.body9.i143.preheader.if.then13.i148_crit_edge, label %for.body9.i143.preheader.cleanup55_crit_edge

for.body9.i143.preheader.cleanup55_crit_edge:     ; preds = %for.body9.i143.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup55

for.body9.i143.preheader.if.then13.i148_crit_edge: ; preds = %for.body9.i143.preheader
  br label %if.then13.i148

for.body9.i143:                                   ; preds = %if.then13.i148
  %inc15.i146 = add i32 %pos.17294, 1
  %shl.i144 = shl i32 %data132.0295, 4
  %add.i145 = add i32 %call.i141296, %shl.i144
  %arrayidx10.i140 = getelementptr i8, ptr %data, i32 %inc15.i146
  %40 = ptrtoint ptr %arrayidx10.i140 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx10.i140, align 1
  %call.i141 = tail call i32 @hex_to_bin(i8 noundef zeroext %41) #5
  %cmp11.i142 = icmp sgt i32 %call.i141, -1
  br i1 %cmp11.i142, label %for.body9.i143.if.then13.i148_crit_edge, label %read_idm_word.exit150

for.body9.i143.if.then13.i148_crit_edge:          ; preds = %for.body9.i143
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13.i148

if.then13.i148:                                   ; preds = %for.body9.i143.if.then13.i148_crit_edge, %for.body9.i143.preheader.if.then13.i148_crit_edge
  %call.i141296 = phi i32 [ %call.i141, %for.body9.i143.if.then13.i148_crit_edge ], [ %call.i141292, %for.body9.i143.preheader.if.then13.i148_crit_edge ]
  %data132.0295 = phi i32 [ %add.i145, %for.body9.i143.if.then13.i148_crit_edge ], [ 0, %for.body9.i143.preheader.if.then13.i148_crit_edge ]
  %pos.17294 = phi i32 [ %inc15.i146, %for.body9.i143.if.then13.i148_crit_edge ], [ %pos.16, %for.body9.i143.preheader.if.then13.i148_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.17294, i32 %2)
  %exitcond328.not = icmp eq i32 %pos.17294, %2
  br i1 %exitcond328.not, label %if.then13.i148.cleanup55_crit_edge, label %for.body9.i143

if.then13.i148.cleanup55_crit_edge:               ; preds = %if.then13.i148
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup55

read_idm_word.exit150:                            ; preds = %for.body9.i143
  br i1 %cmp11.i142293, label %land.rhs43, label %read_idm_word.exit150.cleanup55_crit_edge

read_idm_word.exit150.cleanup55_crit_edge:        ; preds = %read_idm_word.exit150
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup55

land.rhs43:                                       ; preds = %read_idm_word.exit150
  call void @__sanitizer_cov_trace_cmp4(i32 %inc15.i146, i32 %size)
  %cmp31.i151 = icmp ult i32 %inc15.i146, %size
  br i1 %cmp31.i151, label %land.rhs43.land.rhs.i156_crit_edge, label %land.rhs43.for.end.i161_crit_edge

land.rhs43.for.end.i161_crit_edge:                ; preds = %land.rhs43
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i161

land.rhs43.land.rhs.i156_crit_edge:               ; preds = %land.rhs43
  br label %land.rhs.i156

land.rhs.i156:                                    ; preds = %for.inc.i159.land.rhs.i156_crit_edge, %land.rhs43.land.rhs.i156_crit_edge
  %pos.19 = phi i32 [ %inc.i157, %for.inc.i159.land.rhs.i156_crit_edge ], [ %inc15.i146, %land.rhs43.land.rhs.i156_crit_edge ]
  %arrayidx.i152 = getelementptr i8, ptr %data, i32 %pos.19
  %42 = ptrtoint ptr %arrayidx.i152 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i152, align 1
  %conv.i153 = zext i8 %43 to i32
  %arrayidx2.i154 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i153
  %44 = ptrtoint ptr %arrayidx2.i154 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx2.i154, align 1
  %46 = and i8 %45, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp4.not.i155 = icmp eq i8 %46, 0
  br i1 %cmp4.not.i155, label %for.inc.i159, label %land.rhs.i156.for.end.i161_crit_edge

land.rhs.i156.for.end.i161_crit_edge:             ; preds = %land.rhs.i156
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i161

for.inc.i159:                                     ; preds = %land.rhs.i156
  %inc.i157 = add i32 %pos.19, 1
  %exitcond.not.i158 = icmp eq i32 %inc.i157, %size
  br i1 %exitcond.not.i158, label %for.inc.i159.cleanup55_crit_edge, label %for.inc.i159.land.rhs.i156_crit_edge

for.inc.i159.land.rhs.i156_crit_edge:             ; preds = %for.inc.i159
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i156

for.inc.i159.cleanup55_crit_edge:                 ; preds = %for.inc.i159
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup55

for.end.i161:                                     ; preds = %land.rhs.i156.for.end.i161_crit_edge, %land.rhs43.for.end.i161_crit_edge
  %pos.20 = phi i32 [ %inc15.i146, %land.rhs43.for.end.i161_crit_edge ], [ %pos.19, %land.rhs.i156.for.end.i161_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.20, i32 %size)
  %cmp732.i160 = icmp ult i32 %pos.20, %size
  br i1 %cmp732.i160, label %for.body9.i166.preheader, label %for.end.i161.cleanup55_crit_edge

for.end.i161.cleanup55_crit_edge:                 ; preds = %for.end.i161
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup55

for.body9.i166.preheader:                         ; preds = %for.end.i161
  %arrayidx10.i163300 = getelementptr i8, ptr %data, i32 %pos.20
  %47 = ptrtoint ptr %arrayidx10.i163300 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx10.i163300, align 1
  %call.i164301 = tail call i32 @hex_to_bin(i8 noundef zeroext %48) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i164301)
  %cmp11.i165302 = icmp sgt i32 %call.i164301, -1
  br i1 %cmp11.i165302, label %for.body9.i166.preheader.if.then13.i171_crit_edge, label %for.body9.i166.preheader.cleanup55_crit_edge

for.body9.i166.preheader.cleanup55_crit_edge:     ; preds = %for.body9.i166.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup55

for.body9.i166.preheader.if.then13.i171_crit_edge: ; preds = %for.body9.i166.preheader
  br label %if.then13.i171

for.body9.i166:                                   ; preds = %if.then13.i171
  %inc15.i169 = add i32 %pos.21303, 1
  %arrayidx10.i163 = getelementptr i8, ptr %data, i32 %inc15.i169
  %49 = ptrtoint ptr %arrayidx10.i163 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx10.i163, align 1
  %call.i164 = tail call i32 @hex_to_bin(i8 noundef zeroext %50) #5
  %cmp11.i165 = icmp sgt i32 %call.i164, -1
  br i1 %cmp11.i165, label %for.body9.i166.if.then13.i171_crit_edge, label %land.end46

for.body9.i166.if.then13.i171_crit_edge:          ; preds = %for.body9.i166
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13.i171

if.then13.i171:                                   ; preds = %for.body9.i166.if.then13.i171_crit_edge, %for.body9.i166.preheader.if.then13.i171_crit_edge
  %call.i164305 = phi i32 [ %call.i164, %for.body9.i166.if.then13.i171_crit_edge ], [ %call.i164301, %for.body9.i166.preheader.if.then13.i171_crit_edge ]
  %data2.0304 = phi i32 [ %add.i168, %for.body9.i166.if.then13.i171_crit_edge ], [ 0, %for.body9.i166.preheader.if.then13.i171_crit_edge ]
  %pos.21303 = phi i32 [ %inc15.i169, %for.body9.i166.if.then13.i171_crit_edge ], [ %pos.20, %for.body9.i166.preheader.if.then13.i171_crit_edge ]
  %shl.i167 = shl i32 %data2.0304, 4
  %add.i168 = add i32 %call.i164305, %shl.i167
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.21303, i32 %2)
  %exitcond329.not = icmp eq i32 %pos.21303, %2
  br i1 %exitcond329.not, label %if.then13.i171.if.then49_crit_edge, label %for.body9.i166

if.then13.i171.if.then49_crit_edge:               ; preds = %if.then13.i171
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then49

land.end46:                                       ; preds = %for.body9.i166
  br i1 %cmp11.i165302, label %land.end46.if.then49_crit_edge, label %land.end46.cleanup55_crit_edge

land.end46.cleanup55_crit_edge:                   ; preds = %land.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup55

land.end46.if.then49_crit_edge:                   ; preds = %land.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then49

if.then49:                                        ; preds = %land.end46.if.then49_crit_edge, %if.then13.i171.if.then49_crit_edge
  %pos.22238 = phi i32 [ %inc15.i169, %land.end46.if.then49_crit_edge ], [ %size, %if.then13.i171.if.then49_crit_edge ]
  %sub241 = add i32 %count.2313, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %conv.i174 = and i32 %add.i145, 65535
  %51 = tail call i32 @llvm.bswap.i32(i32 %conv.i174) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx33, i32 %51) #5, !srcloc !64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %conv.i175 = and i32 %add.i168, 65535
  %53 = tail call i32 @llvm.bswap.i32(i32 %conv.i175) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx35, i32 %53) #5, !srcloc !64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748) #5
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %read_idm_word.exit127
  %pos.24 = phi i32 [ %pos.14, %read_idm_word.exit127 ], [ %pos.22238, %if.then49 ]
  %count.3 = phi i32 [ %dec, %read_idm_word.exit127 ], [ %sub241, %if.then49 ]
  %more.2.in = phi i1 [ %tobool29, %read_idm_word.exit127 ], [ true, %if.then49 ]
  %inc = add i32 %addr.3316, 1
  %more.1.in.not = xor i1 %more.2.in, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.3)
  %cmp20.not = icmp eq i32 %count.3, 0
  %or.cond = select i1 %more.1.in.not, i1 true, i1 %cmp20.not
  br i1 %or.cond, label %if.end52.cleanup_crit_edge, label %if.end52.while.body23_crit_edge

if.end52.while.body23_crit_edge:                  ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body23

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end52.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %pos.10.lcssa = phi i32 [ %pos.9, %do.end.cleanup_crit_edge ], [ %pos.24, %if.end52.cleanup_crit_edge ]
  %more.1.in.lcssa = phi i1 [ %21, %do.end.cleanup_crit_edge ], [ %more.2.in, %if.end52.cleanup_crit_edge ]
  br i1 %more.1.in.lcssa, label %cleanup.while.body_crit_edge, label %cleanup.cleanup55_crit_edge

cleanup.cleanup55_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup55

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

cleanup55:                                        ; preds = %cleanup.cleanup55_crit_edge, %land.end46.cleanup55_crit_edge, %for.body9.i166.preheader.cleanup55_crit_edge, %for.end.i161.cleanup55_crit_edge, %for.inc.i159.cleanup55_crit_edge, %read_idm_word.exit150.cleanup55_crit_edge, %if.then13.i148.cleanup55_crit_edge, %for.body9.i143.preheader.cleanup55_crit_edge, %for.end.i138.cleanup55_crit_edge, %for.inc.i136.cleanup55_crit_edge, %land.lhs.true.cleanup55_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_to_bin(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jr3_pci_pci_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %call = tail call i32 @comedi_pci_auto_config(ptr noundef %dev, ptr noundef nonnull @jr3_pci_driver, i32 noundef %1) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_auto_unconfig(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_auto_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !27, !28, !30, !32, !34, !36, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__initcall__kmod_jr3_pci__241_795_jr3_pci_driver_init6, !1, !"__initcall__kmod_jr3_pci__241_795_jr3_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/jr3_pci.c", i32 795, i32 1}
!2 = !{ptr @__exitcall_jr3_pci_driver_exit, !1, !"__exitcall_jr3_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author242, !4, !"__UNIQUE_ID_author242", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/jr3_pci.c", i32 797, i32 1}
!5 = !{ptr @__UNIQUE_ID_description243, !6, !"__UNIQUE_ID_description243", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/jr3_pci.c", i32 798, i32 1}
!7 = !{ptr @__UNIQUE_ID_file244, !8, !"__UNIQUE_ID_file244", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/jr3_pci.c", i32 799, i32 1}
!9 = !{ptr @__UNIQUE_ID_license245, !8, !"__UNIQUE_ID_license245", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_firmware246, !11, !"__UNIQUE_ID_firmware246", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/jr3_pci.c", i32 800, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/jr3_pci.c", i32 767, i32 17}
!14 = !{ptr @jr3_pci_driver, !15, !"jr3_pci_driver", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/jr3_pci.c", i32 766, i32 29}
!16 = !{ptr @jr3_pci_auto_attach.board, !17, !"board", i1 false, i1 false}
!17 = !{!"../drivers/comedi/drivers/jr3_pci.c", i32 658, i32 37}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/comedi/drivers/jr3_pci.c", i32 718, i32 8}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/comedi/drivers/jr3_pci.c", i32 720, i32 2}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @jr3_pci_auto_attach.__UNIQUE_ID_ddebug240, !21, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!25 = !{ptr @jr3_pci_auto_attach.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/comedi/drivers/jr3_pci.c", i32 749, i32 2}
!27 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/comedi/drivers/jr3_pci.c", i32 58, i32 12}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/comedi/drivers/jr3_pci.c", i32 62, i32 12}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/comedi/drivers/jr3_pci.c", i32 66, i32 12}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/comedi/drivers/jr3_pci.c", i32 70, i32 12}
!36 = !{ptr @jr3_pci_boards, !37, !"jr3_pci_boards", i1 false, i1 false}
!37 = !{!"../drivers/comedi/drivers/jr3_pci.c", i32 56, i32 35}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/comedi/drivers/jr3_pci.c", i32 287, i32 3}
!40 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @jr3_pci_open.__UNIQUE_ID_ddebug236, !39, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/comedi/drivers/jr3_pci.c", i32 368, i32 3}
!44 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @jr3_write_firmware.__UNIQUE_ID_ddebug237, !43, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/comedi/drivers/jr3_pci.c", i32 651, i32 2}
!48 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @jr3_pci_show_copyright.__UNIQUE_ID_ddebug238, !47, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!50 = !{ptr @jr3_pci_pci_driver, !51, !"jr3_pci_pci_driver", i1 false, i1 false}
!51 = !{!"../drivers/comedi/drivers/jr3_pci.c", i32 789, i32 26}
!52 = !{ptr @jr3_pci_pci_table, !53, !"jr3_pci_pci_table", i1 false, i1 false}
!53 = !{!"../drivers/comedi/drivers/jr3_pci.c", i32 779, i32 35}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{i64 2154594103}
!64 = !{i64 5402490}
!65 = !{i64 2148709485, i64 2148709490, i64 2148709503, i64 2148709547, i64 2148709581, i64 2148709602}
!66 = !{i64 5402908}
!67 = !{i64 2154577471}
!68 = !{i64 2154578588}
!69 = !{!70}
!70 = distinct !{!70, !71, !"jr3_pci_poll_subdevice: %agg.result"}
!71 = distinct !{!71, !"jr3_pci_poll_subdevice"}
!72 = !{i64 2154577838}
!73 = !{i64 2154578955}
!74 = !{!75, !70}
!75 = distinct !{!75, !76, !"get_max_full_scales: %agg.result"}
!76 = distinct !{!76, !"get_max_full_scales"}
