; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/cb_pcidas64.c_pt.bc'
source_filename = "../drivers/comedi/drivers/cb_pcidas64.c"
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
%struct.pcidas64_board = type { ptr, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hw_fifo_info = type { i32, i32, i32, i16 }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.pcidas64_private = type { i32, i32, ptr, ptr, i32, i32, [128 x ptr], [128 x i32], ptr, i32, i32, [16 x ptr], [16 x i32], ptr, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i32, i16, i32, %struct.ext_clock_info, [8192 x i16] }
%struct.ext_clock_info = type { i32, i32 }
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
%struct.plx_dma_desc = type { i32, i32, i32, i32 }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.comedi_async = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.comedi_cmd, %struct.wait_queue_head, i32, ptr }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }

@__initcall__kmod_cb_pcidas64__244_4114_cb_pcidas64_driver_init6 = internal global ptr @cb_pcidas64_driver_init, section ".initcall6.init", align 4
@cb_pcidas64_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr null, ptr @detach, ptr @auto_attach, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cb_pcidas64_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @cb_pcidas64_pci_table, ptr @cb_pcidas64_pci_probe, ptr @comedi_pci_auto_unconfig, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_cb_pcidas64_driver_exit = internal global ptr @cb_pcidas64_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author245 = internal constant [49 x i8] c"cb_pcidas64.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description246 = internal constant [48 x i8] c"cb_pcidas64.description=Comedi low-level driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file247 = internal constant [52 x i8] c"cb_pcidas64.file=drivers/comedi/drivers/cb_pcidas64\00", section ".modinfo", align 1
@__UNIQUE_ID_license248 = internal constant [24 x i8] c"cb_pcidas64.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cb_pcidas64\00", [20 x i8] zeroinitializer }, align 32
@pcidas64_boards = internal constant { [21 x %struct.pcidas64_board], [296 x i8] } { [21 x %struct.pcidas64_board] [%struct.pcidas64_board { ptr @.str.9, i32 64, i32 16, i32 5000, ptr @ai_ranges_64xx, ptr @ai_range_code_64xx, i32 2, i32 16, i32 10000, ptr @ao_ranges_64xx, ptr @ao_range_code_64xx, ptr @ai_fifo_64xx, i32 1, i8 -128 }, %struct.pcidas64_board { ptr @.str.10, i32 64, i32 12, i32 5000, ptr @ai_ranges_64xx, ptr @ai_range_code_64xx, i32 2, i32 12, i32 10000, ptr @ao_ranges_64xx, ptr @ao_range_code_64xx, ptr @ai_fifo_64xx, i32 1, i8 -128 }, %struct.pcidas64_board { ptr @.str.11, i32 64, i32 16, i32 1000, ptr @ai_ranges_64_mx, ptr @ai_range_code_64_mx, i32 2, i32 16, i32 10000, ptr @ao_ranges_64xx, ptr @ao_range_code_64xx, ptr @ai_fifo_64xx, i32 1, i8 -128 }, %struct.pcidas64_board { ptr @.str.12, i32 64, i32 16, i32 500, ptr @ai_ranges_64_mx, ptr @ai_range_code_64_mx, i32 2, i32 16, i32 10000, ptr @ao_ranges_64xx, ptr @ao_range_code_64xx, ptr @ai_fifo_64xx, i32 1, i8 -128 }, %struct.pcidas64_board { ptr @.str.13, i32 64, i32 16, i32 333, ptr @ai_ranges_64_mx, ptr @ai_range_code_64_mx, i32 2, i32 16, i32 10000, ptr @ao_ranges_64xx, ptr @ao_range_code_64xx, ptr @ai_fifo_64xx, i32 1, i8 -128 }, %struct.pcidas64_board { ptr @.str.14, i32 16, i32 16, i32 5000, ptr @ai_ranges_60xx, ptr @ai_range_code_60xx, i32 0, i32 16, i32 0, ptr @range_bipolar10, ptr @ao_range_code_60xx, ptr @ai_fifo_60xx, i32 0, i8 0 }, %struct.pcidas64_board { ptr @.str.15, i32 16, i32 16, i32 5000, ptr @ai_ranges_60xx, ptr @ai_range_code_60xx, i32 2, i32 16, i32 100000, ptr @range_bipolar10, ptr @ao_range_code_60xx, ptr @ai_fifo_60xx, i32 0, i8 0 }, %struct.pcidas64_board { ptr @.str.16, i32 16, i32 12, i32 5000, ptr @ai_ranges_60xx, ptr @ai_range_code_60xx, i32 0, i32 0, i32 100000, ptr @range_bipolar10, ptr @ao_range_code_60xx, ptr @ai_fifo_60xx, i32 0, i8 -128 }, %struct.pcidas64_board { ptr @.str.17, i32 16, i32 12, i32 5000, ptr @ai_ranges_60xx, ptr @ai_range_code_60xx, i32 2, i32 12, i32 100000, ptr @range_bipolar10, ptr @ao_range_code_60xx, ptr @ai_fifo_60xx, i32 0, i8 -128 }, %struct.pcidas64_board { ptr @.str.18, i32 16, i32 16, i32 10000, ptr @ai_ranges_6030, ptr @ai_range_code_6030, i32 2, i32 16, i32 10000, ptr @ao_ranges_6030, ptr @ao_range_code_6030, ptr @ai_fifo_60xx, i32 0, i8 0 }, %struct.pcidas64_board { ptr @.str.19, i32 64, i32 16, i32 10000, ptr @ai_ranges_6030, ptr @ai_range_code_6030, i32 2, i32 16, i32 10000, ptr @ao_ranges_6030, ptr @ao_range_code_6030, ptr @ai_fifo_60xx, i32 0, i8 0 }, %struct.pcidas64_board { ptr @.str.20, i32 16, i32 16, i32 10000, ptr @ai_ranges_6030, ptr @ai_range_code_6030, i32 0, i32 0, i32 0, ptr null, ptr null, ptr @ai_fifo_60xx, i32 0, i8 0 }, %struct.pcidas64_board { ptr @.str.21, i32 64, i32 16, i32 10000, ptr @ai_ranges_6030, ptr @ai_range_code_6030, i32 0, i32 0, i32 0, ptr null, ptr null, ptr @ai_fifo_60xx, i32 0, i8 0 }, %struct.pcidas64_board { ptr @.str.22, i32 16, i32 16, i32 5000, ptr @ai_ranges_60xx, ptr @ai_range_code_60xx, i32 0, i32 0, i32 0, ptr null, ptr null, ptr @ai_fifo_60xx, i32 0, i8 0 }, %struct.pcidas64_board { ptr @.str.23, i32 16, i32 16, i32 5000, ptr @ai_ranges_60xx, ptr @ai_range_code_60xx, i32 2, i32 12, i32 100000, ptr @range_bipolar10, ptr @ao_range_code_60xx, ptr @ai_fifo_60xx, i32 0, i8 0 }, %struct.pcidas64_board { ptr @.str.24, i32 16, i32 16, i32 5000, ptr @ai_ranges_60xx, ptr @ai_range_code_60xx, i32 2, i32 16, i32 100000, ptr @range_bipolar10, ptr @ao_range_code_60xx, ptr @ai_fifo_60xx, i32 0, i8 0 }, %struct.pcidas64_board { ptr @.str.25, i32 16, i32 12, i32 2000, ptr @ai_ranges_6052, ptr @ai_range_code_6052, i32 2, i32 12, i32 1000, ptr @ao_ranges_6030, ptr @ao_range_code_6030, ptr @ai_fifo_60xx, i32 0, i8 0 }, %struct.pcidas64_board { ptr @.str.26, i32 16, i32 16, i32 3333, ptr @ai_ranges_6052, ptr @ai_range_code_6052, i32 2, i32 16, i32 3333, ptr @ao_ranges_6030, ptr @ao_range_code_6030, ptr @ai_fifo_60xx, i32 0, i8 0 }, %struct.pcidas64_board { ptr @.str.27, i32 16, i32 12, i32 800, ptr @ai_ranges_6052, ptr @ai_range_code_6052, i32 2, i32 12, i32 1000, ptr @ao_ranges_6030, ptr @ao_range_code_6030, ptr @ai_fifo_60xx, i32 0, i8 0 }, %struct.pcidas64_board { ptr @.str.28, i32 64, i32 12, i32 800, ptr @ai_ranges_6052, ptr @ai_range_code_6052, i32 2, i32 12, i32 1000, ptr @ao_ranges_6030, ptr @ao_range_code_6030, ptr @ai_fifo_60xx, i32 0, i8 0 }, %struct.pcidas64_board { ptr @.str.29, i32 4, i32 12, i32 50, ptr @ai_ranges_4020, ptr null, i32 2, i32 12, i32 0, ptr @ao_ranges_4020, ptr @ao_range_code_4020, ptr @ai_fifo_4020, i32 2, i8 -128 }], [296 x i8] zeroinitializer }, align 32
@auto_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 4002, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to remap io memory\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"auto_attach\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/comedi/drivers/cb_pcidas64.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@auto_attach._entry_ptr = internal global ptr @auto_attach._entry, section ".printk_index", align 4
@auto_attach.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.6, i8 3, i8 -18, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"stc hardware revision %i\0A\00", [38 x i8] zeroinitializer }, align 32
@auto_attach.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 3, i8 -16, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unable to allocate irq %u\0A\00", [37 x i8] zeroinitializer }, align 32
@auto_attach.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 3, i8 -15, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"irq %u\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pci-das6402/16\00", [17 x i8] zeroinitializer }, align 32
@ai_range_code_64xx = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\01\02\03\08\09\0A\0B", [24 x i8] zeroinitializer }, align 32
@ao_range_code_64xx = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@ai_fifo_64xx = internal constant { %struct.hw_fifo_info, [16 x i8] } { %struct.hw_fifo_info { i32 4, i32 2048, i32 1, i16 63 }, [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pci-das6402/12\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pci-das64/m1/16\00", [16 x i8] zeroinitializer }, align 32
@ai_range_code_64_mx = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\00\01\02\03\09\0A\0B", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pci-das64/m2/16\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pci-das64/m3/16\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pci-das6013\00", [20 x i8] zeroinitializer }, align 32
@ai_range_code_60xx = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\01\04\07", [28 x i8] zeroinitializer }, align 32
@range_bipolar10 = external dso_local constant %struct.comedi_lrange, align 4
@ao_range_code_60xx = internal constant { [1 x i32], [28 x i8] } zeroinitializer, align 32
@ai_fifo_60xx = internal constant { %struct.hw_fifo_info, [16 x i8] } { %struct.hw_fifo_info { i32 4, i32 2048, i32 1, i16 127 }, [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pci-das6014\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pci-das6023\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pci-das6025\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pci-das6030\00", [20 x i8] zeroinitializer }, align 32
@ai_range_code_6030 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\00\01\02\03\04\05\06\09\0A\0B\0C\0D\0E\0F", [18 x i8] zeroinitializer }, align 32
@ao_range_code_6030 = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 2], [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pci-das6031\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pci-das6032\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pci-das6033\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pci-das6034\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pci-das6035\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pci-das6036\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pci-das6040\00", [20 x i8] zeroinitializer }, align 32
@ai_range_code_6052 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\00\01\02\03\04\05\06\07\09\0A\0B\0C\0D\0E\0F", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pci-das6052\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pci-das6070\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pci-das6071\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pci-das4020/12\00", [17 x i8] zeroinitializer }, align 32
@ao_range_code_4020 = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 1, i32 0], [24 x i8] zeroinitializer }, align 32
@ai_fifo_4020 = internal constant { %struct.hw_fifo_info, [16 x i8] } { %struct.hw_fifo_info { i32 2, i32 32768, i32 2, i16 127 }, [16 x i8] zeroinitializer }, align 32
@ai_ranges_64xx = internal constant { { i32, [8 x %struct.comedi_krange] }, [60 x i8] } { { i32, [8 x %struct.comedi_krange] } { i32 8, [8 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 2500000, i32 0 }, %struct.comedi_krange { i32 0, i32 1250000, i32 0 }] }, [60 x i8] zeroinitializer }, align 32
@ao_ranges_64xx = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@ai_ranges_64_mx = internal constant { { i32, [7 x %struct.comedi_krange] }, [40 x i8] } { { i32, [7 x %struct.comedi_krange] } { i32 7, [7 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }, %struct.comedi_krange { i32 -625000, i32 625000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 2500000, i32 0 }, %struct.comedi_krange { i32 0, i32 1250000, i32 0 }] }, [40 x i8] zeroinitializer }, align 32
@ai_ranges_60xx = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -500000, i32 500000, i32 0 }, %struct.comedi_krange { i32 -50000, i32 50000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@ai_ranges_6030 = internal constant { { i32, [14 x %struct.comedi_krange] }, [52 x i8] } { { i32, [14 x %struct.comedi_krange] } { i32 14, [14 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2000000, i32 2000000, i32 0 }, %struct.comedi_krange { i32 -1000000, i32 1000000, i32 0 }, %struct.comedi_krange { i32 -500000, i32 500000, i32 0 }, %struct.comedi_krange { i32 -200000, i32 200000, i32 0 }, %struct.comedi_krange { i32 -100000, i32 100000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 2000000, i32 0 }, %struct.comedi_krange { i32 0, i32 1000000, i32 0 }, %struct.comedi_krange { i32 0, i32 500000, i32 0 }, %struct.comedi_krange { i32 0, i32 200000, i32 0 }, %struct.comedi_krange { i32 0, i32 100000, i32 0 }] }, [52 x i8] zeroinitializer }, align 32
@ao_ranges_6030 = internal constant { { i32, [2 x %struct.comedi_krange] }, [36 x i8] } { { i32, [2 x %struct.comedi_krange] } { i32 2, [2 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }] }, [36 x i8] zeroinitializer }, align 32
@ai_ranges_6052 = internal constant { { i32, [15 x %struct.comedi_krange] }, [40 x i8] } { { i32, [15 x %struct.comedi_krange] } { i32 15, [15 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1000000, i32 1000000, i32 0 }, %struct.comedi_krange { i32 -500000, i32 500000, i32 0 }, %struct.comedi_krange { i32 -250000, i32 250000, i32 0 }, %struct.comedi_krange { i32 -100000, i32 100000, i32 0 }, %struct.comedi_krange { i32 -50000, i32 50000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 2000000, i32 0 }, %struct.comedi_krange { i32 0, i32 1000000, i32 0 }, %struct.comedi_krange { i32 0, i32 500000, i32 0 }, %struct.comedi_krange { i32 0, i32 200000, i32 0 }, %struct.comedi_krange { i32 0, i32 100000, i32 0 }] }, [40 x i8] zeroinitializer }, align 32
@ai_ranges_4020 = internal constant { { i32, [2 x %struct.comedi_krange] }, [36 x i8] } { { i32, [2 x %struct.comedi_krange] } { i32 2, [2 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -1000000, i32 1000000, i32 0 }] }, [36 x i8] zeroinitializer }, align 32
@ao_ranges_4020 = internal constant { { i32, [2 x %struct.comedi_krange] }, [36 x i8] } { { i32, [2 x %struct.comedi_krange] } { i32 2, [2 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }] }, [36 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@handle_ai_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 2822, ptr @.str.41, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fifo overrun\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"handle_ai_interrupt\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@handle_ai_interrupt._entry_ptr = internal global ptr @handle_ai_interrupt._entry, section ".printk_index", align 4
@pio_drain_ai_fifo_16._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.3, i32 2710, ptr @.str.41, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cb_pcidas64: bug! num_samples < 0\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pio_drain_ai_fifo_16\00", [43 x i8] zeroinitializer }, align 32
@pio_drain_ai_fifo_16._entry_ptr = internal global ptr @pio_drain_ai_fifo_16._entry, section ".printk_index", align 4
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@ai_config_calibration_source.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.3, ptr @.str.45, i8 1, i8 -41, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ai_config_calibration_source\00", [35 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"invalid calibration source: %i\0A\00", [32 x i8] zeroinitializer }, align 32
@warn_external_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 1593, ptr @.str.41, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"AO command and AI external channel queue cannot be used simultaneously\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"warn_external_queue\00", [44 x i8] zeroinitializer }, align 32
@warn_external_queue._entry_ptr = internal global ptr @warn_external_queue._entry, section ".printk_index", align 4
@warn_external_queue._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.3, i32 1595, ptr @.str.41, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"Use internal AI channel queue (channels must be consecutive and use same range/aref)\0A\00", [42 x i8] zeroinitializer }, align 32
@warn_external_queue._entry_ptr.50 = internal global ptr @warn_external_queue._entry.48, section ".printk_index", align 4
@ai_convert_counter_4020._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.3, i32 2306, ptr @.str.41, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bug! failed to set ai pacing!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ai_convert_counter_4020\00", [40 x i8] zeroinitializer }, align 32
@ai_convert_counter_4020._entry_ptr = internal global ptr @ai_convert_counter_4020._entry, section ".printk_index", align 4
@cb_pcidas64_ai_check_chanlist.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.3, ptr @.str.54, i8 2, i8 5, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cb_pcidas64_ai_check_chanlist\00", [34 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"all elements in chanlist must use the same analog reference\0A\00", [35 x i8] zeroinitializer }, align 32
@cb_pcidas64_ai_check_chanlist.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.3, ptr @.str.55, i8 2, i8 8, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"chanlist must use consecutive channels\0A\00", [56 x i8] zeroinitializer }, align 32
@cb_pcidas64_ai_check_chanlist.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.3, ptr @.str.56, i8 2, i8 10, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"chanlist cannot be 3 channels long, use 1, 2, or 4 channels\0A\00", [35 x i8] zeroinitializer }, align 32
@i2c_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.3, i32 1709, ptr @.str.41, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed: no acknowledge\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2c_write\00", [22 x i8] zeroinitializer }, align 32
@i2c_write._entry_ptr = internal global ptr @i2c_write._entry, section ".printk_index", align 4
@i2c_write._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.3, i32 1717, ptr @.str.41, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@i2c_write._entry_ptr.60 = internal global ptr @i2c_write._entry.59, section ".printk_index", align 4
@set_dac_range_bits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 1199, ptr @.str.41, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bug! bad channel?\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"set_dac_range_bits\00", [45 x i8] zeroinitializer }, align 32
@set_dac_range_bits._entry_ptr = internal global ptr @set_dac_range_bits._entry, section ".printk_index", align 4
@set_dac_range_bits._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.3, i32 1201, ptr @.str.41, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bug! bad range code?\0A\00", [42 x i8] zeroinitializer }, align 32
@set_dac_range_bits._entry_ptr.65 = internal global ptr @set_dac_range_bits._entry.63, section ".printk_index", align 4
@cb_pcidas64_ao_check_chanlist.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.3, ptr @.str.55, i8 3, i8 63, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cb_pcidas64_ao_check_chanlist\00", [34 x i8] zeroinitializer }, align 32
@set_dac_select_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.3, i32 3179, ptr @.str.41, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"bug! last ao channel < first ao channel\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"set_dac_select_reg\00", [45 x i8] zeroinitializer }, align 32
@set_dac_select_reg._entry_ptr = internal global ptr @set_dac_select_reg._entry, section ".printk_index", align 4
@set_dac_interval_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.3, i32 3202, ptr @.str.41, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bug! ao divisor too big\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"set_dac_interval_regs\00", [42 x i8] zeroinitializer }, align 32
@set_dac_interval_regs._entry_ptr = internal global ptr @set_dac_interval_regs._entry, section ".printk_index", align 4
@caldac_8800_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.3, i32 3523, ptr @.str.41, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"illegal caldac channel\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"caldac_8800_write\00", [46 x i8] zeroinitializer }, align 32
@caldac_8800_write._entry_ptr = internal global ptr @caldac_8800_write._entry, section ".printk_index", align 4
@caldac_i2c_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.3, i32 3595, ptr @.str.41, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid caldac channel\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"caldac_i2c_write\00", [47 x i8] zeroinitializer }, align 32
@caldac_i2c_write._entry_ptr = internal global ptr @caldac_i2c_write._entry, section ".printk_index", align 4
@cb_pcidas64_pci_table = internal constant { [22 x %struct.pci_device_id], [160 x i8] } { [22 x %struct.pci_device_id] [%struct.pci_device_id { i32 4871, i32 29, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4871, i32 30, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4871, i32 53, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4871, i32 54, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4871, i32 55, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4871, i32 82, i32 -1, i32 -1, i32 0, i32 0, i32 20, i32 0 }, %struct.pci_device_id { i32 4871, i32 93, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 4871, i32 94, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4871, i32 95, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 4871, i32 96, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4871, i32 97, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4871, i32 98, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 4871, i32 99, i32 -1, i32 -1, i32 0, i32 0, i32 13, i32 0 }, %struct.pci_device_id { i32 4871, i32 100, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 4871, i32 101, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 4871, i32 102, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 4871, i32 103, i32 -1, i32 -1, i32 0, i32 0, i32 18, i32 0 }, %struct.pci_device_id { i32 4871, i32 104, i32 -1, i32 -1, i32 0, i32 0, i32 19, i32 0 }, %struct.pci_device_id { i32 4871, i32 111, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 4871, i32 120, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4871, i32 121, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id zeroinitializer], [160 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.75 = internal global [5 x i64] [i64 3, i64 32, i64 20, i64 22, i64 23]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 256]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 16]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 64]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 32]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.85 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 16]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@___asan_gen_.89 = private unnamed_addr constant [19 x i8] c"cb_pcidas64_driver\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 4068, i32 29 }
@___asan_gen_.92 = private unnamed_addr constant [23 x i8] c"cb_pcidas64_pci_driver\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 4108, i32 26 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 4069, i32 17 }
@___asan_gen_.98 = private unnamed_addr constant [16 x i8] c"pcidas64_boards\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 672, i32 36 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 4002, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 4026, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 4034, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 4039, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 674, i32 12 }
@___asan_gen_.131 = private unnamed_addr constant [19 x i8] c"ai_range_code_64xx\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 431, i32 17 }
@___asan_gen_.134 = private unnamed_addr constant [19 x i8] c"ao_range_code_64xx\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 537, i32 18 }
@___asan_gen_.137 = private unnamed_addr constant [13 x i8] c"ai_fifo_64xx\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 641, i32 34 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 690, i32 12 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 706, i32 12 }
@___asan_gen_.146 = private unnamed_addr constant [20 x i8] c"ai_range_code_64_mx\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 449, i32 17 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 722, i32 11 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 738, i32 12 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 754, i32 12 }
@___asan_gen_.158 = private unnamed_addr constant [19 x i8] c"ai_range_code_60xx\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 464, i32 17 }
@___asan_gen_.161 = private unnamed_addr constant [19 x i8] c"ao_range_code_60xx\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 544, i32 18 }
@___asan_gen_.164 = private unnamed_addr constant [13 x i8] c"ai_fifo_60xx\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 648, i32 34 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 769, i32 12 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 785, i32 12 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 800, i32 12 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 816, i32 12 }
@___asan_gen_.179 = private unnamed_addr constant [19 x i8] c"ai_range_code_6030\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 488, i32 17 }
@___asan_gen_.182 = private unnamed_addr constant [19 x i8] c"ao_range_code_6030\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 555, i32 18 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 832, i32 12 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 848, i32 12 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 860, i32 12 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 872, i32 12 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 885, i32 12 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 901, i32 12 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 917, i32 12 }
@___asan_gen_.206 = private unnamed_addr constant [19 x i8] c"ai_range_code_6052\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 514, i32 17 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 933, i32 12 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 949, i32 12 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 965, i32 12 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 981, i32 12 }
@___asan_gen_.221 = private unnamed_addr constant [19 x i8] c"ao_range_code_4020\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 567, i32 18 }
@___asan_gen_.224 = private unnamed_addr constant [13 x i8] c"ai_fifo_4020\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 634, i32 34 }
@___asan_gen_.227 = private unnamed_addr constant [15 x i8] c"ai_ranges_64xx\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 418, i32 35 }
@___asan_gen_.230 = private unnamed_addr constant [15 x i8] c"ao_ranges_64xx\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 528, i32 35 }
@___asan_gen_.233 = private unnamed_addr constant [16 x i8] c"ai_ranges_64_mx\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 437, i32 35 }
@___asan_gen_.236 = private unnamed_addr constant [15 x i8] c"ai_ranges_60xx\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 455, i32 35 }
@___asan_gen_.239 = private unnamed_addr constant [15 x i8] c"ai_ranges_6030\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 469, i32 35 }
@___asan_gen_.242 = private unnamed_addr constant [15 x i8] c"ao_ranges_6030\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 548, i32 35 }
@___asan_gen_.245 = private unnamed_addr constant [15 x i8] c"ai_ranges_6052\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 494, i32 35 }
@___asan_gen_.248 = private unnamed_addr constant [15 x i8] c"ai_ranges_4020\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 520, i32 35 }
@___asan_gen_.251 = private unnamed_addr constant [15 x i8] c"ao_ranges_4020\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 560, i32 35 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 2822, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 2709, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 1886, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 1592, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 1594, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 2306, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 2069, i32 4 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 2082, i32 5 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 2088, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 1709, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 1717, i32 4 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 1199, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 1201, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 3324, i32 4 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 3178, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 3202, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 3523, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.380 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 3595, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant [22 x i8] c"cb_pcidas64_pci_table\00", align 1
@___asan_gen_.384 = private constant [40 x i8] c"../drivers/comedi/drivers/cb_pcidas64.c\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 4082, i32 35 }
@llvm.compiler.used = appending global [120 x ptr] [ptr @__UNIQUE_ID_author245, ptr @__UNIQUE_ID_description246, ptr @__UNIQUE_ID_file247, ptr @__UNIQUE_ID_license248, ptr @__exitcall_cb_pcidas64_driver_exit, ptr @__initcall__kmod_cb_pcidas64__244_4114_cb_pcidas64_driver_init6, ptr @ai_convert_counter_4020._entry, ptr @ai_convert_counter_4020._entry_ptr, ptr @auto_attach._entry, ptr @auto_attach._entry_ptr, ptr @caldac_8800_write._entry, ptr @caldac_8800_write._entry_ptr, ptr @caldac_i2c_write._entry, ptr @caldac_i2c_write._entry_ptr, ptr @cb_pcidas64_driver_exit, ptr @handle_ai_interrupt._entry, ptr @handle_ai_interrupt._entry_ptr, ptr @i2c_write._entry, ptr @i2c_write._entry.59, ptr @i2c_write._entry_ptr, ptr @i2c_write._entry_ptr.60, ptr @pio_drain_ai_fifo_16._entry, ptr @pio_drain_ai_fifo_16._entry_ptr, ptr @set_dac_interval_regs._entry, ptr @set_dac_interval_regs._entry_ptr, ptr @set_dac_range_bits._entry, ptr @set_dac_range_bits._entry.63, ptr @set_dac_range_bits._entry_ptr, ptr @set_dac_range_bits._entry_ptr.65, ptr @set_dac_select_reg._entry, ptr @set_dac_select_reg._entry_ptr, ptr @warn_external_queue._entry, ptr @warn_external_queue._entry.48, ptr @warn_external_queue._entry_ptr, ptr @warn_external_queue._entry_ptr.50, ptr @cb_pcidas64_driver, ptr @cb_pcidas64_pci_driver, ptr @.str, ptr @pcidas64_boards, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @ai_range_code_64xx, ptr @ao_range_code_64xx, ptr @ai_fifo_64xx, ptr @.str.10, ptr @.str.11, ptr @ai_range_code_64_mx, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @ai_range_code_60xx, ptr @ao_range_code_60xx, ptr @ai_fifo_60xx, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @ai_range_code_6030, ptr @ao_range_code_6030, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @ai_range_code_6052, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @ao_range_code_4020, ptr @ai_fifo_4020, ptr @ai_ranges_64xx, ptr @ao_ranges_64xx, ptr @ai_ranges_64_mx, ptr @ai_ranges_60xx, ptr @ai_ranges_6030, ptr @ao_ranges_6030, ptr @ai_ranges_6052, ptr @ai_ranges_4020, ptr @ao_ranges_4020, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @cb_pcidas64_pci_table], section "llvm.metadata"
@0 = internal global [99 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb_pcidas64_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb_pcidas64_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcidas64_boards to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auto_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ai_range_code_64xx to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ao_range_code_64xx to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ai_fifo_64xx to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ai_range_code_64_mx to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ai_range_code_60xx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ao_range_code_60xx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ai_fifo_60xx to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ai_range_code_6030 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ao_range_code_6030 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ai_range_code_6052 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ao_range_code_4020 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ai_fifo_4020 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ai_ranges_64xx to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ao_ranges_64xx to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ai_ranges_64_mx to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ai_ranges_60xx to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ai_ranges_6030 to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ao_ranges_6030 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ai_ranges_6052 to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ai_ranges_4020 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ao_ranges_4020 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_ai_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pio_drain_ai_fifo_16._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @warn_external_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @warn_external_queue._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ai_convert_counter_4020._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_write._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_dac_range_bits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_dac_range_bits._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_dac_select_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_dac_interval_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caldac_8800_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caldac_i2c_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb_pcidas64_pci_table to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cb_pcidas64_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_pci_driver_register(ptr noundef nonnull @cb_pcidas64_driver, ptr noundef nonnull @cb_pcidas64_pci_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cb_pcidas64_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @comedi_pci_driver_unregister(ptr noundef nonnull @cb_pcidas64_driver, ptr noundef nonnull @cb_pcidas64_pci_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_driver_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @detach(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %irq = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call ptr @free_irq(i32 noundef %3, ptr noundef %dev) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end.if.end16_crit_edge, label %if.then3

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then3:                                         ; preds = %if.end
  %plx9080_iobase = getelementptr inbounds %struct.pcidas64_private, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %plx9080_iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plx9080_iobase, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.then3.if.end7_crit_edge, label %if.then5

if.then3.if.end7_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private, align 4
  %plx_intcsr_bits.i = getelementptr inbounds %struct.pcidas64_private, ptr %7, i32 0, i32 23
  %8 = ptrtoint ptr %plx_intcsr_bits.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %plx_intcsr_bits.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !241
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %plx_intcsr_bits.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %plx_intcsr_bits.i, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  %plx9080_iobase.i = getelementptr inbounds %struct.pcidas64_private, ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %plx9080_iobase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %plx9080_iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #7, !srcloc !242
  %14 = ptrtoint ptr %plx9080_iobase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %plx9080_iobase, align 4
  tail call void @iounmap(ptr noundef %15) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then3.if.end7_crit_edge
  %main_iobase = getelementptr inbounds %struct.pcidas64_private, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %main_iobase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %main_iobase, align 4
  %tobool8.not = icmp eq ptr %17, null
  br i1 %tobool8.not, label %if.end7.if.end11_crit_edge, label %if.then9

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iounmap(ptr noundef nonnull %17) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7.if.end11_crit_edge
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %18 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio, align 4
  %tobool12.not = icmp eq ptr %19, null
  br i1 %tobool12.not, label %if.end11.if.end16_crit_edge, label %if.then13

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iounmap(ptr noundef nonnull %19) #7
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end11.if.end16_crit_edge, %if.end.if.end16_crit_edge
  tail call void @comedi_pci_disable(ptr noundef %dev) #7
  %board_ptr.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %20 = ptrtoint ptr %board_ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %board_ptr.i, align 4
  %call.i = tail call ptr @comedi_to_pci_dev(ptr noundef %dev) #7
  %22 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %private, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end16.cb_pcidas64_free_dma.exit_crit_edge, label %for.cond.preheader.i

if.end16.cb_pcidas64_free_dma.exit_crit_edge:     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cb_pcidas64_free_dma.exit

for.cond.preheader.i:                             ; preds = %if.end16
  %layout.i.i = getelementptr inbounds %struct.pcidas64_board, ptr %21, i32 0, i32 12
  %dev4.i = getelementptr inbounds %struct.pci_dev, ptr %call.i, i32 0, i32 44
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.072.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.pcidas64_private, ptr %23, i32 0, i32 6, i32 %i.072.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %tobool2.not.i = icmp eq ptr %25, null
  br i1 %tobool2.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then3.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then3.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx7.i = getelementptr %struct.pcidas64_private, ptr %23, i32 0, i32 7, i32 %i.072.i
  %26 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx7.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev4.i, i32 noundef 4096, ptr noundef nonnull %25, i32 noundef %27, i32 noundef 0) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then3.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.072.i, 1
  %28 = ptrtoint ptr %layout.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %layout.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp.i.i = icmp eq i32 %29, 2
  %..i.i = select i1 %cmp.i.i, i32 128, i32 16
  %cmp.i = icmp ult i32 %inc.i, %..i.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.body11.i_crit_edge

for.inc.i.for.body11.i_crit_edge:                 ; preds = %for.inc.i
  br label %for.body11.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body11.i:                                     ; preds = %for.inc20.i.for.body11.i_crit_edge, %for.inc.i.for.body11.i_crit_edge
  %i.174.i = phi i32 [ %inc21.i, %for.inc20.i.for.body11.i_crit_edge ], [ 0, %for.inc.i.for.body11.i_crit_edge ]
  %arrayidx12.i = getelementptr %struct.pcidas64_private, ptr %23, i32 0, i32 11, i32 %i.174.i
  %30 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx12.i, align 4
  %tobool13.not.i = icmp eq ptr %31, null
  br i1 %tobool13.not.i, label %for.body11.i.for.inc20.i_crit_edge, label %if.then14.i

for.body11.i.for.inc20.i_crit_edge:               ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc20.i

if.then14.i:                                      ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx18.i = getelementptr %struct.pcidas64_private, ptr %23, i32 0, i32 12, i32 %i.174.i
  %32 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx18.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev4.i, i32 noundef 4096, ptr noundef nonnull %31, i32 noundef %33, i32 noundef 0) #7
  br label %for.inc20.i

for.inc20.i:                                      ; preds = %if.then14.i, %for.body11.i.for.inc20.i_crit_edge
  %inc21.i = add nuw nsw i32 %i.174.i, 1
  %exitcond.not.i = icmp eq i32 %inc21.i, 16
  br i1 %exitcond.not.i, label %for.end22.i, label %for.inc20.i.for.body11.i_crit_edge

for.inc20.i.for.body11.i_crit_edge:               ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body11.i

for.end22.i:                                      ; preds = %for.inc20.i
  %ai_dma_desc.i = getelementptr inbounds %struct.pcidas64_private, ptr %23, i32 0, i32 8
  %34 = ptrtoint ptr %ai_dma_desc.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ai_dma_desc.i, align 4
  %tobool23.not.i = icmp eq ptr %35, null
  br i1 %tobool23.not.i, label %for.end22.i.if.end28.i_crit_edge, label %if.then24.i

for.end22.i.if.end28.i_crit_edge:                 ; preds = %for.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i

if.then24.i:                                      ; preds = %for.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %layout.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %layout.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp.i68.i = icmp eq i32 %37, 2
  %..i69.i = select i1 %cmp.i68.i, i32 2048, i32 256
  %ai_dma_desc_bus_addr.i = getelementptr inbounds %struct.pcidas64_private, ptr %23, i32 0, i32 9
  %38 = ptrtoint ptr %ai_dma_desc_bus_addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ai_dma_desc_bus_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev4.i, i32 noundef %..i69.i, ptr noundef nonnull %35, i32 noundef %39, i32 noundef 0) #7
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then24.i, %for.end22.i.if.end28.i_crit_edge
  %ao_dma_desc.i = getelementptr inbounds %struct.pcidas64_private, ptr %23, i32 0, i32 13
  %40 = ptrtoint ptr %ao_dma_desc.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ao_dma_desc.i, align 4
  %tobool29.not.i = icmp eq ptr %41, null
  br i1 %tobool29.not.i, label %if.end28.i.cb_pcidas64_free_dma.exit_crit_edge, label %if.then30.i

if.end28.i.cb_pcidas64_free_dma.exit_crit_edge:   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cb_pcidas64_free_dma.exit

if.then30.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  %ao_dma_desc_bus_addr.i = getelementptr inbounds %struct.pcidas64_private, ptr %23, i32 0, i32 14
  %42 = ptrtoint ptr %ao_dma_desc_bus_addr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ao_dma_desc_bus_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev4.i, i32 noundef 256, ptr noundef nonnull %41, i32 noundef %43, i32 noundef 0) #7
  br label %cb_pcidas64_free_dma.exit

cb_pcidas64_free_dma.exit:                        ; preds = %if.then30.i, %if.end28.i.cb_pcidas64_free_dma.exit_crit_edge, %if.end16.cb_pcidas64_free_dma.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @auto_attach(ptr noundef %dev, i32 noundef %context) #2 align 64 {
entry:
  %data.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_pci_dev(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %context)
  %cmp = icmp ugt i32 %context, 20
  %arrayidx = getelementptr [21 x %struct.pcidas64_board], ptr @pcidas64_boards, i32 0, i32 %context
  %tobool.not247 = icmp eq ptr %arrayidx, null
  %tobool.not = or i1 %cmp, %tobool.not247
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %entry
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %arrayidx, ptr %board_ptr, align 4
  %call4 = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 17636) #7
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %call8 = tail call i32 @comedi_pci_enable(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  tail call void @pci_set_master(ptr noundef %call) #7
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %board_name = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %3 = ptrtoint ptr %board_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %board_name, align 4
  %arrayidx12 = getelementptr %struct.pci_dev, ptr %call, i32 0, i32 47, i32 2
  %4 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx12, align 8
  %6 = ptrtoint ptr %call4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %call4, align 4
  %arrayidx14 = getelementptr %struct.pci_dev, ptr %call, i32 0, i32 47, i32 3
  %7 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx14, align 8
  %dio_counter_phys_iobase = getelementptr inbounds %struct.pcidas64_private, ptr %call4, i32 0, i32 1
  %9 = ptrtoint ptr %dio_counter_phys_iobase to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %dio_counter_phys_iobase, align 4
  %call16 = tail call ptr @pci_ioremap_bar(ptr noundef %call, i32 noundef 0) #7
  %plx9080_iobase = getelementptr inbounds %struct.pcidas64_private, ptr %call4, i32 0, i32 2
  %10 = ptrtoint ptr %plx9080_iobase to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call16, ptr %plx9080_iobase, align 4
  %call17 = tail call ptr @pci_ioremap_bar(ptr noundef %call, i32 noundef 2) #7
  %main_iobase = getelementptr inbounds %struct.pcidas64_private, ptr %call4, i32 0, i32 3
  %11 = ptrtoint ptr %main_iobase to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call17, ptr %main_iobase, align 4
  %call18 = tail call ptr @pci_ioremap_bar(ptr noundef %call, i32 noundef 3) #7
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %12 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call18, ptr %mmio, align 4
  %13 = ptrtoint ptr %plx9080_iobase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %plx9080_iobase, align 4
  %tobool20.not = icmp eq ptr %14, null
  br i1 %tobool20.not, label %if.end11.do.end_crit_edge, label %lor.lhs.false

if.end11.do.end_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end11
  %15 = ptrtoint ptr %main_iobase to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %main_iobase, align 4
  %tobool22.not = icmp eq ptr %16, null
  %tobool25.not = icmp eq ptr %call18, null
  %or.cond = select i1 %tobool22.not, i1 true, i1 %tobool25.not
  br i1 %or.cond, label %lor.lhs.false.do.end_crit_edge, label %if.end27

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end11.do.end_crit_edge
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %17 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end27:                                         ; preds = %lor.lhs.false
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %14) #7, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !244
  %20 = and i32 %19, -251658241
  %21 = ptrtoint ptr %plx9080_iobase to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %plx9080_iobase, align 4
  %add.ptr34 = getelementptr i8, ptr %22, i32 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #7, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  %24 = and i32 %23, %20
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %26 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %call4, align 4
  %28 = xor i32 %20, -1
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %and41 = and i32 %27, %29
  %or = or i32 %and41, %25
  %local0_iobase = getelementptr inbounds %struct.pcidas64_private, ptr %call4, i32 0, i32 4
  %30 = ptrtoint ptr %local0_iobase to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or, ptr %local0_iobase, align 4
  %31 = ptrtoint ptr %plx9080_iobase to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %plx9080_iobase, align 4
  %add.ptr45 = getelementptr i8, ptr %32, i32 240
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45) #7, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !246
  %34 = and i32 %33, -251658241
  %35 = ptrtoint ptr %plx9080_iobase to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %plx9080_iobase, align 4
  %add.ptr53 = getelementptr i8, ptr %36, i32 244
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53) #7, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !247
  %38 = and i32 %37, %34
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %40 = ptrtoint ptr %dio_counter_phys_iobase to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dio_counter_phys_iobase, align 4
  %42 = xor i32 %34, -1
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  %and61 = and i32 %41, %43
  %or62 = or i32 %and61, %39
  %local1_iobase = getelementptr inbounds %struct.pcidas64_private, ptr %call4, i32 0, i32 5
  %44 = ptrtoint ptr %local1_iobase to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or62, ptr %local1_iobase, align 4
  %45 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %board_ptr, align 4
  %call.i = tail call ptr @comedi_to_pci_dev(ptr noundef %dev) #7
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %47 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %private.i, align 4
  %layout.i.i = getelementptr inbounds %struct.pcidas64_board, ptr %46, i32 0, i32 12
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %call.i, i32 0, i32 44
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.0212.i, 1
  %49 = ptrtoint ptr %layout.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %layout.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp.i.i = icmp eq i32 %50, 2
  %..i.i = select i1 %cmp.i.i, i32 128, i32 16
  %cmp.i = icmp ult i32 %inc.i, %..i.i
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond7.preheader.i

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.cond7.preheader.i:                            ; preds = %for.cond.i
  %ao_nchan.i.i = getelementptr inbounds %struct.pcidas64_board, ptr %46, i32 0, i32 6
  br label %for.body9.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end27
  %i.0212.i = phi i32 [ 0, %if.end27 ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.pcidas64_private, ptr %48, i32 0, i32 7, i32 %i.0212.i
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev2.i, i32 noundef 4096, ptr noundef %arrayidx.i, i32 noundef 3264, i32 noundef 0) #7
  %arrayidx4.i = getelementptr %struct.pcidas64_private, ptr %48, i32 0, i32 6, i32 %i.0212.i
  %51 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i.i, ptr %arrayidx4.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %for.body.i.cleanup_crit_edge, label %for.cond.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body9.i:                                      ; preds = %for.inc23.i.for.body9.i_crit_edge, %for.cond7.preheader.i
  %i.1213.i = phi i32 [ 0, %for.cond7.preheader.i ], [ %inc24.i, %for.inc23.i.for.body9.i_crit_edge ]
  %52 = ptrtoint ptr %ao_nchan.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ao_nchan.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i.i = icmp eq i32 %53, 0
  br i1 %tobool.not.i.i, label %for.body9.i.for.inc23.i_crit_edge, label %ao_cmd_is_supported.exit.i

for.body9.i.for.inc23.i_crit_edge:                ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc23.i

ao_cmd_is_supported.exit.i:                       ; preds = %for.body9.i
  %54 = ptrtoint ptr %layout.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %layout.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %cmp.i176.not.i = icmp eq i32 %55, 2
  br i1 %cmp.i176.not.i, label %ao_cmd_is_supported.exit.i.for.inc23.i_crit_edge, label %if.then12.i

ao_cmd_is_supported.exit.i.for.inc23.i_crit_edge: ; preds = %ao_cmd_is_supported.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc23.i

if.then12.i:                                      ; preds = %ao_cmd_is_supported.exit.i
  %arrayidx14.i = getelementptr %struct.pcidas64_private, ptr %48, i32 0, i32 12, i32 %i.1213.i
  %call.i177.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev2.i, i32 noundef 4096, ptr noundef %arrayidx14.i, i32 noundef 3264, i32 noundef 0) #7
  %arrayidx16.i = getelementptr %struct.pcidas64_private, ptr %48, i32 0, i32 11, i32 %i.1213.i
  %56 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call.i177.i, ptr %arrayidx16.i, align 4
  %tobool19.not.i = icmp eq ptr %call.i177.i, null
  br i1 %tobool19.not.i, label %if.then12.i.cleanup_crit_edge, label %if.then12.i.for.inc23.i_crit_edge

if.then12.i.for.inc23.i_crit_edge:                ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc23.i

if.then12.i.cleanup_crit_edge:                    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc23.i:                                      ; preds = %if.then12.i.for.inc23.i_crit_edge, %ao_cmd_is_supported.exit.i.for.inc23.i_crit_edge, %for.body9.i.for.inc23.i_crit_edge
  %inc24.i = add nuw nsw i32 %i.1213.i, 1
  %exitcond.not.i = icmp eq i32 %inc24.i, 16
  br i1 %exitcond.not.i, label %for.end25.i, label %for.inc23.i.for.body9.i_crit_edge

for.inc23.i.for.body9.i_crit_edge:                ; preds = %for.inc23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body9.i

for.end25.i:                                      ; preds = %for.inc23.i
  %57 = ptrtoint ptr %layout.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %layout.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %58)
  %cmp.i179.i = icmp eq i32 %58, 2
  %..i180.i = select i1 %cmp.i179.i, i32 2048, i32 256
  %ai_dma_desc_bus_addr.i = getelementptr inbounds %struct.pcidas64_private, ptr %48, i32 0, i32 9
  %call.i181.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev2.i, i32 noundef %..i180.i, ptr noundef %ai_dma_desc_bus_addr.i, i32 noundef 3264, i32 noundef 0) #7
  %ai_dma_desc.i = getelementptr inbounds %struct.pcidas64_private, ptr %48, i32 0, i32 8
  %59 = ptrtoint ptr %ai_dma_desc.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i181.i, ptr %ai_dma_desc.i, align 4
  %tobool30.not.i = icmp eq ptr %call.i181.i, null
  br i1 %tobool30.not.i, label %for.end25.i.cleanup_crit_edge, label %if.end32.i

for.end25.i.cleanup_crit_edge:                    ; preds = %for.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end32.i:                                       ; preds = %for.end25.i
  %60 = ptrtoint ptr %ao_nchan.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ao_nchan.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i183.i = icmp eq i32 %61, 0
  br i1 %tobool.not.i183.i, label %if.end32.i.if.end42.i_crit_edge, label %ao_cmd_is_supported.exit188.i

if.end32.i.if.end42.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i

ao_cmd_is_supported.exit188.i:                    ; preds = %if.end32.i
  %62 = ptrtoint ptr %layout.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %layout.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %63)
  %cmp.i185.not.i = icmp eq i32 %63, 2
  br i1 %cmp.i185.not.i, label %ao_cmd_is_supported.exit188.i.if.end42.i_crit_edge, label %if.then35.i

ao_cmd_is_supported.exit188.i.if.end42.i_crit_edge: ; preds = %ao_cmd_is_supported.exit188.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i

if.then35.i:                                      ; preds = %ao_cmd_is_supported.exit188.i
  %ao_dma_desc_bus_addr.i = getelementptr inbounds %struct.pcidas64_private, ptr %48, i32 0, i32 14
  %call.i189.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev2.i, i32 noundef 256, ptr noundef %ao_dma_desc_bus_addr.i, i32 noundef 3264, i32 noundef 0) #7
  %ao_dma_desc.i = getelementptr inbounds %struct.pcidas64_private, ptr %48, i32 0, i32 13
  %64 = ptrtoint ptr %ao_dma_desc.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call.i189.i, ptr %ao_dma_desc.i, align 4
  %tobool39.not.i = icmp eq ptr %call.i189.i, null
  br i1 %tobool39.not.i, label %if.then35.i.cleanup_crit_edge, label %if.then35.i.if.end42.i_crit_edge

if.then35.i.if.end42.i_crit_edge:                 ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i

if.then35.i.cleanup_crit_edge:                    ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end42.i:                                       ; preds = %if.then35.i.if.end42.i_crit_edge, %ao_cmd_is_supported.exit188.i.if.end42.i_crit_edge, %if.end32.i.if.end42.i_crit_edge
  %local0_iobase.i = getelementptr inbounds %struct.pcidas64_private, ptr %48, i32 0, i32 4
  %local1_iobase.i = getelementptr inbounds %struct.pcidas64_private, ptr %48, i32 0, i32 5
  br label %for.body46.i

for.body46.i:                                     ; preds = %for.body46.i.for.body46.i_crit_edge, %if.end42.i
  %i.2217.i = phi i32 [ 0, %if.end42.i ], [ %add63.i, %for.body46.i.for.body46.i_crit_edge ]
  %arrayidx48.i = getelementptr %struct.pcidas64_private, ptr %48, i32 0, i32 7, i32 %i.2217.i
  %65 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx48.i, align 4
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #7
  %68 = ptrtoint ptr %ai_dma_desc.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ai_dma_desc.i, align 4
  %arrayidx50.i = getelementptr %struct.plx_dma_desc, ptr %69, i32 %i.2217.i
  %70 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %67, ptr %arrayidx50.i, align 4
  %71 = ptrtoint ptr %layout.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %layout.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %72)
  %cmp51.i = icmp eq i32 %72, 2
  %local1_iobase.local0_iobase.i = select i1 %cmp51.i, ptr %local1_iobase.i, ptr %local0_iobase.i
  %73 = ptrtoint ptr %local1_iobase.local0_iobase.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %local1_iobase.local0_iobase.i, align 4
  %add55.i = add i32 %74, 512
  %75 = tail call i32 @llvm.bswap.i32(i32 %add55.i) #7
  %76 = ptrtoint ptr %ai_dma_desc.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ai_dma_desc.i, align 4
  %local_start_addr58.i = getelementptr %struct.plx_dma_desc, ptr %77, i32 %i.2217.i, i32 1
  %78 = ptrtoint ptr %local_start_addr58.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %75, ptr %local_start_addr58.i, align 4
  %79 = load ptr, ptr %ai_dma_desc.i, align 4
  %transfer_size.i = getelementptr %struct.plx_dma_desc, ptr %79, i32 %i.2217.i, i32 2
  %80 = ptrtoint ptr %transfer_size.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %transfer_size.i, align 4
  %81 = ptrtoint ptr %ai_dma_desc_bus_addr.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %ai_dma_desc_bus_addr.i, align 4
  %add63.i = add nuw nsw i32 %i.2217.i, 1
  %83 = ptrtoint ptr %layout.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %layout.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %84)
  %cmp.i194.i = icmp eq i32 %84, 2
  %85 = select i1 %cmp.i194.i, i32 127, i32 15
  %rem.i = and i32 %85, %add63.i
  %mul65.i = shl nuw nsw i32 %rem.i, 4
  %add66.i = add i32 %mul65.i, %82
  %or68.i = or i32 %add66.i, 13
  %86 = tail call i32 @llvm.bswap.i32(i32 %or68.i) #7
  %87 = ptrtoint ptr %ai_dma_desc.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ai_dma_desc.i, align 4
  %next.i = getelementptr %struct.plx_dma_desc, ptr %88, i32 %i.2217.i, i32 3
  %89 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %86, ptr %next.i, align 4
  %90 = ptrtoint ptr %layout.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %layout.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %91)
  %cmp.i191.i = icmp eq i32 %91, 2
  %..i192.i = select i1 %cmp.i191.i, i32 128, i32 16
  %cmp45.i = icmp ult i32 %add63.i, %..i192.i
  br i1 %cmp45.i, label %for.body46.i.for.body46.i_crit_edge, label %for.end73.i

for.body46.i.for.body46.i_crit_edge:              ; preds = %for.body46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body46.i

for.end73.i:                                      ; preds = %for.body46.i
  %92 = ptrtoint ptr %ao_nchan.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %ao_nchan.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool.not.i197.i = icmp eq i32 %93, 0
  %or.cond.i = select i1 %tobool.not.i197.i, i1 true, i1 %cmp.i191.i
  br i1 %or.cond.i, label %for.end73.i.if.end66_crit_edge, label %for.cond77.preheader.i

for.end73.i.if.end66_crit_edge:                   ; preds = %for.end73.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

for.cond77.preheader.i:                           ; preds = %for.end73.i
  %ao_dma_desc82.i = getelementptr inbounds %struct.pcidas64_private, ptr %48, i32 0, i32 13
  %ao_dma_desc_bus_addr93.i = getelementptr inbounds %struct.pcidas64_private, ptr %48, i32 0, i32 14
  br label %for.body79.i

for.body79.i:                                     ; preds = %for.body79.i.for.body79.i_crit_edge, %for.cond77.preheader.i
  %i.3219.i = phi i32 [ 0, %for.cond77.preheader.i ], [ %add94.i, %for.body79.i.for.body79.i_crit_edge ]
  %arrayidx81.i = getelementptr %struct.pcidas64_private, ptr %48, i32 0, i32 12, i32 %i.3219.i
  %94 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx81.i, align 4
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #7
  %97 = ptrtoint ptr %ao_dma_desc82.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ao_dma_desc82.i, align 4
  %arrayidx83.i = getelementptr %struct.plx_dma_desc, ptr %98, i32 %i.3219.i
  %99 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %96, ptr %arrayidx83.i, align 4
  %100 = ptrtoint ptr %local0_iobase.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %local0_iobase.i, align 4
  %add86.i = add i32 %101, 768
  %102 = tail call i32 @llvm.bswap.i32(i32 %add86.i) #7
  %103 = ptrtoint ptr %ao_dma_desc82.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ao_dma_desc82.i, align 4
  %local_start_addr89.i = getelementptr %struct.plx_dma_desc, ptr %104, i32 %i.3219.i, i32 1
  %105 = ptrtoint ptr %local_start_addr89.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %102, ptr %local_start_addr89.i, align 4
  %106 = load ptr, ptr %ao_dma_desc82.i, align 4
  %transfer_size92.i = getelementptr %struct.plx_dma_desc, ptr %106, i32 %i.3219.i, i32 2
  %107 = ptrtoint ptr %transfer_size92.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %transfer_size92.i, align 4
  %108 = ptrtoint ptr %ao_dma_desc_bus_addr93.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %ao_dma_desc_bus_addr93.i, align 4
  %add94.i = add nuw nsw i32 %i.3219.i, 1
  %rem95.i = shl i32 %add94.i, 4
  %mul96.i = and i32 %rem95.i, 240
  %add97.i = add i32 %109, %mul96.i
  %or99.i = or i32 %add97.i, 5
  %110 = tail call i32 @llvm.bswap.i32(i32 %or99.i) #7
  %111 = ptrtoint ptr %ao_dma_desc82.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ao_dma_desc82.i, align 4
  %next102.i = getelementptr %struct.plx_dma_desc, ptr %112, i32 %i.3219.i, i32 3
  %113 = ptrtoint ptr %next102.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %110, ptr %next102.i, align 4
  %exitcond222.not.i = icmp eq i32 %add94.i, 16
  br i1 %exitcond222.not.i, label %for.body79.i.if.end66_crit_edge, label %for.body79.i.for.body79.i_crit_edge

for.body79.i.for.body79.i_crit_edge:              ; preds = %for.body79.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body79.i

for.body79.i.if.end66_crit_edge:                  ; preds = %for.body79.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.end66:                                         ; preds = %for.body79.i.if.end66_crit_edge, %for.end73.i.if.end66_crit_edge
  %114 = ptrtoint ptr %main_iobase to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %main_iobase, align 4
  %116 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %115) #7, !srcloc !248
  %117 = tail call i16 @llvm.bswap.i16(i16 %116)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !249
  %118 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %board_ptr, align 4
  %layout.i = getelementptr inbounds %struct.pcidas64_board, ptr %119, i32 0, i32 12
  %120 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %layout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %121)
  %cmp.i208 = icmp eq i32 %121, 2
  %retval.0.in.v.i = select i1 %cmp.i208, i16 13, i16 12
  %retval.0.in.i = lshr i16 %117, %retval.0.in.v.i
  %retval.0.i209 = zext i16 %retval.0.in.i to i32
  %hw_revision = getelementptr inbounds %struct.pcidas64_private, ptr %call4, i32 0, i32 16
  %122 = ptrtoint ptr %hw_revision to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %retval.0.i209, ptr %hw_revision, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @auto_attach.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@auto_attach, %do.end87)) #7
          to label %if.then82 [label %do.end87], !srcloc !250

if.then82:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev83 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %123 = ptrtoint ptr %class_dev83 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %class_dev83, align 4
  %125 = ptrtoint ptr %hw_revision to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %hw_revision, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @auto_attach.__UNIQUE_ID_ddebug241, ptr noundef %124, ptr noundef nonnull @.str.6, i32 noundef %126) #7
  br label %do.end87

do.end87:                                         ; preds = %if.then82, %if.end66
  %127 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %board_ptr, align 4
  %129 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %private.i, align 4
  %plx9080_iobase.i = getelementptr inbounds %struct.pcidas64_private, ptr %130, i32 0, i32 2
  %131 = ptrtoint ptr %plx9080_iobase.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %plx9080_iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %132, i32 108
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !243
  %134 = tail call i32 @llvm.bswap.i32(i32 %133) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !251
  %plx_control_bits.i = getelementptr inbounds %struct.pcidas64_private, ptr %130, i32 0, i32 22
  %135 = ptrtoint ptr %plx_control_bits.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %plx_control_bits.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !252
  tail call void @arm_heavy_mb() #7
  %136 = ptrtoint ptr %plx9080_iobase.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %plx9080_iobase.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %137, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 -1073741824) #7, !srcloc !242
  %138 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %private.i, align 4
  %plx_intcsr_bits.i.i = getelementptr inbounds %struct.pcidas64_private, ptr %139, i32 0, i32 23
  %140 = ptrtoint ptr %plx_intcsr_bits.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %plx_intcsr_bits.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !241
  tail call void @arm_heavy_mb() #7
  %141 = ptrtoint ptr %plx_intcsr_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %plx_intcsr_bits.i.i, align 4
  %143 = tail call i32 @llvm.bswap.i32(i32 %142) #7
  %plx9080_iobase.i.i = getelementptr inbounds %struct.pcidas64_private, ptr %139, i32 0, i32 2
  %144 = ptrtoint ptr %plx9080_iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %plx9080_iobase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %145, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %143) #7, !srcloc !242
  tail call fastcc void @abort_dma(ptr noundef %dev, i32 noundef 0) #7
  tail call fastcc void @abort_dma(ptr noundef %dev, i32 noundef 1) #7
  %layout.i212 = getelementptr inbounds %struct.pcidas64_board, ptr %128, i32 0, i32 12
  %146 = ptrtoint ptr %layout.i212 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %layout.i212, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %147)
  %cmp.i213 = icmp eq i32 %147, 2
  %..i = select i1 %cmp.i213, i32 139202, i32 139201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !253
  tail call void @arm_heavy_mb() #7
  %148 = tail call i32 @llvm.bswap.i32(i32 %..i) #7
  %add.ptr17.i = getelementptr i8, ptr %132, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %148) #7, !srcloc !242
  %ao_nchan.i.i214 = getelementptr inbounds %struct.pcidas64_board, ptr %128, i32 0, i32 6
  %149 = ptrtoint ptr %ao_nchan.i.i214 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %ao_nchan.i.i214, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool.not.i.i215 = icmp eq i32 %150, 0
  br i1 %tobool.not.i.i215, label %do.end87.init_plx9080.exit_crit_edge, label %ao_cmd_is_supported.exit.i216

do.end87.init_plx9080.exit_crit_edge:             ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %init_plx9080.exit

ao_cmd_is_supported.exit.i216:                    ; preds = %do.end87
  %151 = ptrtoint ptr %layout.i212 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %layout.i212, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %152)
  %cmp.i.not.i = icmp eq i32 %152, 2
  br i1 %cmp.i.not.i, label %ao_cmd_is_supported.exit.i216.init_plx9080.exit_crit_edge, label %do.body20.i

ao_cmd_is_supported.exit.i216.init_plx9080.exit_crit_edge: ; preds = %ao_cmd_is_supported.exit.i216
  call void @__sanitizer_cov_trace_pc() #9
  br label %init_plx9080.exit

do.body20.i:                                      ; preds = %ao_cmd_is_supported.exit.i216
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !254
  tail call void @arm_heavy_mb() #7
  %add.ptr23.i = getelementptr i8, ptr %132, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 %148) #7, !srcloc !242
  br label %init_plx9080.exit

init_plx9080.exit:                                ; preds = %do.body20.i, %ao_cmd_is_supported.exit.i216.init_plx9080.exit_crit_edge, %do.end87.init_plx9080.exit_crit_edge
  %plx_intcsr_bits.i = getelementptr inbounds %struct.pcidas64_private, ptr %130, i32 0, i32 23
  %153 = ptrtoint ptr %plx_intcsr_bits.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %plx_intcsr_bits.i, align 4
  %or25.i = or i32 %154, 855299
  store i32 %or25.i, ptr %plx_intcsr_bits.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !255
  tail call void @arm_heavy_mb() #7
  %155 = ptrtoint ptr %plx_intcsr_bits.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %plx_intcsr_bits.i, align 4
  %157 = tail call i32 @llvm.bswap.i32(i32 %156) #7
  %158 = ptrtoint ptr %plx9080_iobase.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %plx9080_iobase.i, align 4
  %add.ptr31.i = getelementptr i8, ptr %159, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i, i32 %157) #7, !srcloc !242
  %160 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %board_ptr, align 4
  %162 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %private.i, align 4
  %spinlock.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  %adc_control1_bits.i = getelementptr inbounds %struct.pcidas64_private, ptr %163, i32 0, i32 18
  %164 = ptrtoint ptr %adc_control1_bits.i to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %adc_control1_bits.i, align 4
  %166 = or i16 %165, 1
  store i16 %166, ptr %adc_control1_bits.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !256
  tail call void @arm_heavy_mb() #7
  %167 = ptrtoint ptr %adc_control1_bits.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %adc_control1_bits.i, align 4
  %169 = tail call i16 @llvm.bswap.i16(i16 %168) #7
  %main_iobase.i = getelementptr inbounds %struct.pcidas64_private, ptr %163, i32 0, i32 3
  %170 = ptrtoint ptr %main_iobase.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %main_iobase.i, align 4
  %add.ptr.i219 = getelementptr i8, ptr %171, i32 18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i219, i16 %169) #7, !srcloc !257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !258
  tail call void @arm_heavy_mb() #7
  %172 = ptrtoint ptr %main_iobase.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %main_iobase.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %173, i32 24
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr15.i, i16 -256) #7, !srcloc !257
  %layout.i220 = getelementptr inbounds %struct.pcidas64_board, ptr %161, i32 0, i32 12
  %174 = ptrtoint ptr %layout.i220 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %layout.i220, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %175)
  %cmp16.i = icmp eq i32 %175, 2
  %spec.select.i = select i1 %cmp16.i, i16 -31743, i16 -31744
  %hw_config_bits.i = getelementptr inbounds %struct.pcidas64_private, ptr %163, i32 0, i32 20
  %176 = ptrtoint ptr %hw_config_bits.i to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %hw_config_bits.i, align 4
  %or23.i = or i16 %spec.select.i, %177
  store i16 %or23.i, ptr %hw_config_bits.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !259
  tail call void @arm_heavy_mb() #7
  %178 = ptrtoint ptr %hw_config_bits.i to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %hw_config_bits.i, align 4
  %180 = tail call i16 @llvm.bswap.i16(i16 %179) #7
  %181 = ptrtoint ptr %main_iobase.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %main_iobase.i, align 4
  %add.ptr30.i = getelementptr i8, ptr %182, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr30.i, i16 %180) #7, !srcloc !257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  %183 = ptrtoint ptr %main_iobase.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %main_iobase.i, align 4
  %add.ptr35.i = getelementptr i8, ptr %184, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr35.i, i16 0) #7, !srcloc !257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !261
  tail call void @arm_heavy_mb() #7
  %185 = ptrtoint ptr %main_iobase.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %main_iobase.i, align 4
  %add.ptr40.i = getelementptr i8, ptr %186, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr40.i, i16 0) #7, !srcloc !257
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i) #7
  %fifo_size_bits.i = getelementptr inbounds %struct.pcidas64_private, ptr %163, i32 0, i32 19
  %187 = ptrtoint ptr %fifo_size_bits.i to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %fifo_size_bits.i, align 2
  %189 = or i16 %188, -2048
  store i16 %189, ptr %fifo_size_bits.i, align 2
  %ai_fifo.i = getelementptr inbounds %struct.pcidas64_board, ptr %161, i32 0, i32 11
  %190 = ptrtoint ptr %ai_fifo.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %ai_fifo.i, align 4
  %max_segment_length.i = getelementptr inbounds %struct.hw_fifo_info, ptr %191, i32 0, i32 1
  %192 = ptrtoint ptr %max_segment_length.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %max_segment_length.i, align 4
  %194 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %board_ptr, align 4
  %196 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %private.i, align 4
  %ai_fifo.i.i = getelementptr inbounds %struct.pcidas64_board, ptr %195, i32 0, i32 11
  %198 = ptrtoint ptr %ai_fifo.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %ai_fifo.i.i, align 4
  %200 = tail call i32 @llvm.umax.i32(i32 %193, i32 256) #7
  %max_segment_length.i.i = getelementptr inbounds %struct.hw_fifo_info, ptr %199, i32 0, i32 1
  %201 = ptrtoint ptr %max_segment_length.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %max_segment_length.i.i, align 4
  %203 = tail call i32 @llvm.umin.i32(i32 %200, i32 %202) #7
  %add.i.i = add i32 %203, 128
  %div30.i.i = lshr i32 %add.i.i, 8
  %fifo_size_reg_mask.i.i = getelementptr inbounds %struct.hw_fifo_info, ptr %199, i32 0, i32 3
  %204 = ptrtoint ptr %fifo_size_reg_mask.i.i to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %fifo_size_reg_mask.i.i, align 4
  %206 = trunc i32 %div30.i.i to i16
  %207 = sub i16 0, %206
  %conv5.i.i = and i16 %205, %207
  %neg8.i.i = xor i16 %205, -1
  %fifo_size_bits.i.i = getelementptr inbounds %struct.pcidas64_private, ptr %197, i32 0, i32 19
  %208 = ptrtoint ptr %fifo_size_bits.i.i to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %fifo_size_bits.i.i, align 2
  %and10.i.i = and i16 %209, %neg8.i.i
  %or31.i.i = or i16 %conv5.i.i, %and10.i.i
  store i16 %or31.i.i, ptr %fifo_size_bits.i.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !262
  tail call void @arm_heavy_mb() #7
  %210 = ptrtoint ptr %fifo_size_bits.i.i to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %fifo_size_bits.i.i, align 2
  %212 = tail call i16 @llvm.bswap.i16(i16 %211) #7
  %main_iobase.i.i = getelementptr inbounds %struct.pcidas64_private, ptr %197, i32 0, i32 3
  %213 = ptrtoint ptr %main_iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %main_iobase.i.i, align 4
  %add.ptr.i.i221 = getelementptr i8, ptr %214, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i221, i16 %212) #7, !srcloc !257
  %mul.i.i = and i32 %add.i.i, -256
  %ai_fifo_segment_length.i.i = getelementptr inbounds %struct.pcidas64_private, ptr %197, i32 0, i32 28
  %215 = ptrtoint ptr %ai_fifo_segment_length.i.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %mul.i.i, ptr %ai_fifo_segment_length.i.i, align 4
  %dac_control1_bits.i = getelementptr inbounds %struct.pcidas64_private, ptr %163, i32 0, i32 21
  %216 = ptrtoint ptr %dac_control1_bits.i to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 128, ptr %dac_control1_bits.i, align 2
  %intr_enable_bits.i = getelementptr inbounds %struct.pcidas64_private, ptr %163, i32 0, i32 17
  %217 = ptrtoint ptr %intr_enable_bits.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 16512, ptr %intr_enable_bits.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  %218 = ptrtoint ptr %intr_enable_bits.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %intr_enable_bits.i, align 4
  %conv50.i = trunc i32 %219 to i16
  %220 = tail call i16 @llvm.bswap.i16(i16 %conv50.i) #7
  %221 = ptrtoint ptr %main_iobase.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %main_iobase.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %222, i16 %220) #7, !srcloc !257
  tail call fastcc void @disable_ai_pacing(ptr noundef %dev) #7
  %irq = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 46
  %223 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %irq, align 4
  %call.i222 = tail call i32 @request_threaded_irq(i32 noundef %224, ptr noundef nonnull @handle_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i222)
  %tobool89.not = icmp eq i32 %call.i222, 0
  br i1 %tobool89.not, label %if.end111, label %do.body91

do.body91:                                        ; preds = %init_plx9080.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @auto_attach.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@auto_attach, %cleanup)) #7
          to label %if.then105 [label %cleanup], !srcloc !250

if.then105:                                       ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev106 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %225 = ptrtoint ptr %class_dev106 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %class_dev106, align 4
  %227 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @auto_attach.__UNIQUE_ID_ddebug242, ptr noundef %226, ptr noundef nonnull @.str.7, i32 noundef %228) #7
  br label %cleanup

if.end111:                                        ; preds = %init_plx9080.exit
  %229 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %irq, align 4
  %irq113 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %231 = ptrtoint ptr %irq113 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %230, ptr %irq113, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @auto_attach.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@auto_attach, %do.end133)) #7
          to label %if.then128 [label %do.end133], !srcloc !250

if.then128:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev129 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %232 = ptrtoint ptr %class_dev129 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %class_dev129, align 4
  %234 = ptrtoint ptr %irq113 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %irq113, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @auto_attach.__UNIQUE_ID_ddebug243, ptr noundef %233, ptr noundef nonnull @.str.8, i32 noundef %235) #7
  br label %do.end133

do.end133:                                        ; preds = %if.then128, %if.end111
  %236 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %board_ptr, align 4
  %238 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %private.i, align 4
  %call.i225 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i225)
  %tobool.not.i226 = icmp eq i32 %call.i225, 0
  br i1 %tobool.not.i226, label %if.end.i, label %do.end133.setup_subdevices.exit_crit_edge

do.end133.setup_subdevices.exit_crit_edge:        ; preds = %do.end133
  call void @__sanitizer_cov_trace_pc() #9
  br label %setup_subdevices.exit

if.end.i:                                         ; preds = %do.end133
  %subdevices.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %240 = ptrtoint ptr %subdevices.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %subdevices.i, align 4
  %read_subdev.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %242 = ptrtoint ptr %read_subdev.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr %241, ptr %read_subdev.i, align 4
  %type.i = getelementptr inbounds %struct.comedi_subdevice, ptr %241, i32 0, i32 2
  %243 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 1, ptr %type.i, align 4
  %subdev_flags.i = getelementptr inbounds %struct.comedi_subdevice, ptr %241, i32 0, i32 4
  %244 = ptrtoint ptr %subdev_flags.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 17924096, ptr %subdev_flags.i, align 4
  %layout.i227 = getelementptr inbounds %struct.pcidas64_board, ptr %237, i32 0, i32 12
  %245 = ptrtoint ptr %layout.i227 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %layout.i227, align 4
  %247 = zext i32 %246 to i64
  call void @__sanitizer_cov_trace_switch(i64 %247, ptr @__sancov_gen_cov_switch_values)
  switch i32 %246, label %if.end.i.if.end9.i_crit_edge [
    i32 0, label %if.end.i.if.end9.sink.split.i_crit_edge
    i32 1, label %if.then5.i
  ]

if.end.i.if.end9.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.sink.split.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.sink.split.i

if.end9.sink.split.i:                             ; preds = %if.then5.i, %if.end.i.if.end9.sink.split.i_crit_edge
  %.sink354.i = phi i32 [ 22118400, %if.then5.i ], [ 24215552, %if.end.i.if.end9.sink.split.i_crit_edge ]
  %248 = ptrtoint ptr %subdev_flags.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 %.sink354.i, ptr %subdev_flags.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end9.sink.split.i, %if.end.i.if.end9.i_crit_edge
  %ai_se_chans.i = getelementptr inbounds %struct.pcidas64_board, ptr %237, i32 0, i32 1
  %249 = ptrtoint ptr %ai_se_chans.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %ai_se_chans.i, align 4
  %n_chan.i = getelementptr inbounds %struct.comedi_subdevice, ptr %241, i32 0, i32 3
  %251 = ptrtoint ptr %n_chan.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %250, ptr %n_chan.i, align 4
  %len_chanlist.i = getelementptr inbounds %struct.comedi_subdevice, ptr %241, i32 0, i32 5
  %252 = ptrtoint ptr %len_chanlist.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 8192, ptr %len_chanlist.i, align 4
  %ai_bits.i = getelementptr inbounds %struct.pcidas64_board, ptr %237, i32 0, i32 2
  %253 = ptrtoint ptr %ai_bits.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %ai_bits.i, align 4
  %notmask.i = shl nsw i32 -1, %254
  %sub.i = xor i32 %notmask.i, -1
  %maxdata.i = getelementptr inbounds %struct.comedi_subdevice, ptr %241, i32 0, i32 13
  %255 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %sub.i, ptr %maxdata.i, align 4
  %ai_range_table.i = getelementptr inbounds %struct.pcidas64_board, ptr %237, i32 0, i32 4
  %256 = ptrtoint ptr %ai_range_table.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %ai_range_table.i, align 4
  %range_table.i = getelementptr inbounds %struct.comedi_subdevice, ptr %241, i32 0, i32 15
  %258 = ptrtoint ptr %range_table.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr %257, ptr %range_table.i, align 4
  %insn_read.i = getelementptr inbounds %struct.comedi_subdevice, ptr %241, i32 0, i32 18
  %259 = ptrtoint ptr %insn_read.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr @ai_rinsn, ptr %insn_read.i, align 4
  %insn_config.i = getelementptr inbounds %struct.comedi_subdevice, ptr %241, i32 0, i32 21
  %260 = ptrtoint ptr %insn_config.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr @ai_config_insn, ptr %insn_config.i, align 4
  %do_cmd.i = getelementptr inbounds %struct.comedi_subdevice, ptr %241, i32 0, i32 22
  %261 = ptrtoint ptr %do_cmd.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr @ai_cmd, ptr %do_cmd.i, align 4
  %do_cmdtest.i = getelementptr inbounds %struct.comedi_subdevice, ptr %241, i32 0, i32 23
  %262 = ptrtoint ptr %do_cmdtest.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr @ai_cmdtest, ptr %do_cmdtest.i, align 4
  %cancel.i = getelementptr inbounds %struct.comedi_subdevice, ptr %241, i32 0, i32 25
  %263 = ptrtoint ptr %cancel.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr @ai_cancel, ptr %cancel.i, align 4
  %264 = ptrtoint ptr %layout.i227 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %layout.i227, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %265)
  %cmp11.i = icmp eq i32 %265, 2
  br i1 %cmp11.i, label %if.then12.i228, label %if.end9.i.if.end22.i_crit_edge

if.end9.i.if.end22.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

if.then12.i228:                                   ; preds = %if.end9.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #7
  %i2c_cal_range_bits.i = getelementptr inbounds %struct.pcidas64_private, ptr %239, i32 0, i32 25
  %266 = ptrtoint ptr %i2c_cal_range_bits.i to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 64, ptr %i2c_cal_range_bits.i, align 4
  %267 = ptrtoint ptr %n_chan.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %n_chan.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %268)
  %cmp15344.i = icmp sgt i32 %268, 0
  br i1 %cmp15344.i, label %if.then12.i228.for.body.i230_crit_edge, label %if.then12.i228.for.end.i_crit_edge

if.then12.i228.for.end.i_crit_edge:               ; preds = %if.then12.i228
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.then12.i228.for.body.i230_crit_edge:           ; preds = %if.then12.i228
  br label %for.body.i230

for.body.i230:                                    ; preds = %for.body.i230.for.body.i230_crit_edge, %if.then12.i228.for.body.i230_crit_edge
  %i.0345.i = phi i32 [ %inc.i229, %for.body.i230.for.body.i230_crit_edge ], [ 0, %if.then12.i228.for.body.i230_crit_edge ]
  %and.i.i = and i32 %i.0345.i, 3
  %shl.i.i = shl nuw nsw i32 1, %and.i.i
  %conv.i.i = trunc i32 %shl.i.i to i8
  %269 = ptrtoint ptr %i2c_cal_range_bits.i to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %i2c_cal_range_bits.i, align 4
  %or19342.i = or i8 %270, %conv.i.i
  store i8 %or19342.i, ptr %i2c_cal_range_bits.i, align 4
  %inc.i229 = add nuw nsw i32 %i.0345.i, 1
  %271 = ptrtoint ptr %n_chan.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %n_chan.i, align 4
  %cmp15.i = icmp slt i32 %inc.i229, %272
  br i1 %cmp15.i, label %for.body.i230.for.body.i230_crit_edge, label %for.body.i230.for.end.i_crit_edge

for.body.i230.for.end.i_crit_edge:                ; preds = %for.body.i230
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i230.for.body.i230_crit_edge:            ; preds = %for.body.i230
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i230

for.end.i:                                        ; preds = %for.body.i230.for.end.i_crit_edge, %if.then12.i228.for.end.i_crit_edge
  %273 = ptrtoint ptr %i2c_cal_range_bits.i to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %i2c_cal_range_bits.i, align 4
  %275 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %275)
  store i8 %274, ptr %data.i, align 1
  call fastcc void @i2c_write(ptr noundef %dev, i32 noundef 32, ptr noundef nonnull %data.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #7
  br label %if.end22.i

if.end22.i:                                       ; preds = %for.end.i, %if.end9.i.if.end22.i_crit_edge
  %276 = ptrtoint ptr %subdevices.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %subdevices.i, align 4
  %arrayidx24.i = getelementptr %struct.comedi_subdevice, ptr %277, i32 1
  %ao_nchan.i = getelementptr inbounds %struct.pcidas64_board, ptr %237, i32 0, i32 6
  %278 = ptrtoint ptr %ao_nchan.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %ao_nchan.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %279)
  %tobool25.not.i = icmp eq i32 %279, 0
  %type49.i = getelementptr %struct.comedi_subdevice, ptr %277, i32 1, i32 2
  br i1 %tobool25.not.i, label %if.else48.i, label %if.then26.i

if.then26.i:                                      ; preds = %if.end22.i
  %280 = ptrtoint ptr %type49.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 2, ptr %type49.i, align 4
  %subdev_flags28.i = getelementptr %struct.comedi_subdevice, ptr %277, i32 1, i32 4
  %281 = ptrtoint ptr %subdev_flags28.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 1261568, ptr %subdev_flags28.i, align 4
  %282 = ptrtoint ptr %ao_nchan.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %ao_nchan.i, align 4
  %n_chan30.i = getelementptr %struct.comedi_subdevice, ptr %277, i32 1, i32 3
  %284 = ptrtoint ptr %n_chan30.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 %283, ptr %n_chan30.i, align 4
  %ao_bits.i = getelementptr inbounds %struct.pcidas64_board, ptr %237, i32 0, i32 7
  %285 = ptrtoint ptr %ao_bits.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %ao_bits.i, align 4
  %notmask341.i = shl nsw i32 -1, %286
  %sub32.i = xor i32 %notmask341.i, -1
  %maxdata33.i = getelementptr %struct.comedi_subdevice, ptr %277, i32 1, i32 13
  %287 = ptrtoint ptr %maxdata33.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 %sub32.i, ptr %maxdata33.i, align 4
  %ao_range_table.i = getelementptr inbounds %struct.pcidas64_board, ptr %237, i32 0, i32 9
  %288 = ptrtoint ptr %ao_range_table.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %ao_range_table.i, align 4
  %range_table34.i = getelementptr %struct.comedi_subdevice, ptr %277, i32 1, i32 15
  %290 = ptrtoint ptr %range_table34.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store ptr %289, ptr %range_table34.i, align 4
  %insn_write.i = getelementptr %struct.comedi_subdevice, ptr %277, i32 1, i32 19
  %291 = ptrtoint ptr %insn_write.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store ptr @ao_winsn, ptr %insn_write.i, align 4
  %call35.i = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx24.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end38.i, label %if.then26.i.setup_subdevices.exit_crit_edge

if.then26.i.setup_subdevices.exit_crit_edge:      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %setup_subdevices.exit

if.end38.i:                                       ; preds = %if.then26.i
  %292 = ptrtoint ptr %ao_nchan.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %ao_nchan.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %293)
  %tobool.not.i.i231 = icmp eq i32 %293, 0
  br i1 %tobool.not.i.i231, label %if.end38.i.if.end50.i_crit_edge, label %ao_cmd_is_supported.exit.i233

if.end38.i.if.end50.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.i

ao_cmd_is_supported.exit.i233:                    ; preds = %if.end38.i
  %294 = ptrtoint ptr %layout.i227 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %layout.i227, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %295)
  %cmp.i.not.i232 = icmp eq i32 %295, 2
  br i1 %cmp.i.not.i232, label %if.end50.thread.i, label %if.then41.i

if.end50.thread.i:                                ; preds = %ao_cmd_is_supported.exit.i233
  call void @__sanitizer_cov_trace_pc() #9
  %296 = ptrtoint ptr %subdevices.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %subdevices.i, align 4
  br label %if.end64.i

if.then41.i:                                      ; preds = %ao_cmd_is_supported.exit.i233
  call void @__sanitizer_cov_trace_pc() #9
  %write_subdev.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 22
  %298 = ptrtoint ptr %write_subdev.i to i32
  call void @__asan_store4_noabort(i32 %298)
  store ptr %arrayidx24.i, ptr %write_subdev.i, align 4
  %do_cmdtest42.i = getelementptr %struct.comedi_subdevice, ptr %277, i32 1, i32 23
  %299 = ptrtoint ptr %do_cmdtest42.i to i32
  call void @__asan_store4_noabort(i32 %299)
  store ptr @ao_cmdtest, ptr %do_cmdtest42.i, align 4
  %do_cmd43.i = getelementptr %struct.comedi_subdevice, ptr %277, i32 1, i32 22
  %300 = ptrtoint ptr %do_cmd43.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store ptr @ao_cmd, ptr %do_cmd43.i, align 4
  %301 = ptrtoint ptr %ao_nchan.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %ao_nchan.i, align 4
  %len_chanlist45.i = getelementptr %struct.comedi_subdevice, ptr %277, i32 1, i32 5
  %303 = ptrtoint ptr %len_chanlist45.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 %302, ptr %len_chanlist45.i, align 4
  %cancel46.i = getelementptr %struct.comedi_subdevice, ptr %277, i32 1, i32 25
  %304 = ptrtoint ptr %cancel46.i to i32
  call void @__asan_store4_noabort(i32 %304)
  store ptr @ao_cancel, ptr %cancel46.i, align 4
  br label %if.end50.i

if.else48.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %305 = ptrtoint ptr %type49.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 0, ptr %type49.i, align 4
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.else48.i, %if.then41.i, %if.end38.i.if.end50.i_crit_edge
  %306 = ptrtoint ptr %layout.i227 to i32
  call void @__asan_load4_noabort(i32 %306)
  %.pr.i = load i32, ptr %layout.i227, align 4
  %307 = ptrtoint ptr %subdevices.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %subdevices.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr.i)
  %cmp54.i = icmp eq i32 %.pr.i, 1
  br i1 %cmp54.i, label %if.then56.i, label %if.end50.i.if.end64.i_crit_edge

if.end50.i.if.end64.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64.i

if.then56.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  %subdev_flags58.i = getelementptr %struct.comedi_subdevice, ptr %308, i32 2, i32 4
  %309 = ptrtoint ptr %subdev_flags58.i to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 65536, ptr %subdev_flags58.i, align 4
  %n_chan59.i = getelementptr %struct.comedi_subdevice, ptr %308, i32 2, i32 3
  %310 = ptrtoint ptr %n_chan59.i to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 4, ptr %n_chan59.i, align 4
  %maxdata60.i = getelementptr %struct.comedi_subdevice, ptr %308, i32 2, i32 13
  %311 = ptrtoint ptr %maxdata60.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 1, ptr %maxdata60.i, align 4
  %range_table61.i = getelementptr %struct.comedi_subdevice, ptr %308, i32 2, i32 15
  %312 = ptrtoint ptr %range_table61.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store ptr @range_unipolar5, ptr %range_table61.i, align 4
  %insn_bits.i = getelementptr %struct.comedi_subdevice, ptr %308, i32 2, i32 20
  %313 = ptrtoint ptr %insn_bits.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store ptr @di_rbits, ptr %insn_bits.i, align 4
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.then56.i, %if.end50.i.if.end64.i_crit_edge, %if.end50.thread.i
  %314 = phi ptr [ %308, %if.then56.i ], [ %297, %if.end50.thread.i ], [ %308, %if.end50.i.if.end64.i_crit_edge ]
  %.sink.i = phi i32 [ 3, %if.then56.i ], [ 0, %if.end50.thread.i ], [ 0, %if.end50.i.if.end64.i_crit_edge ]
  %315 = getelementptr %struct.comedi_subdevice, ptr %314, i32 2, i32 2
  %316 = ptrtoint ptr %315 to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 %.sink.i, ptr %315, align 4
  %317 = ptrtoint ptr %layout.i227 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %layout.i227, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %318)
  %cmp66.i = icmp eq i32 %318, 1
  br i1 %cmp66.i, label %if.then68.i, label %if.else77.i

if.then68.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #9
  %319 = ptrtoint ptr %subdevices.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %subdevices.i, align 4
  %type71.i = getelementptr %struct.comedi_subdevice, ptr %320, i32 3, i32 2
  %321 = ptrtoint ptr %type71.i to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 4, ptr %type71.i, align 4
  %subdev_flags72.i = getelementptr %struct.comedi_subdevice, ptr %320, i32 3, i32 4
  %322 = ptrtoint ptr %subdev_flags72.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 131072, ptr %subdev_flags72.i, align 4
  %n_chan73.i = getelementptr %struct.comedi_subdevice, ptr %320, i32 3, i32 3
  %323 = ptrtoint ptr %n_chan73.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 4, ptr %n_chan73.i, align 4
  %maxdata74.i = getelementptr %struct.comedi_subdevice, ptr %320, i32 3, i32 13
  %324 = ptrtoint ptr %maxdata74.i to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 1, ptr %maxdata74.i, align 4
  %range_table75.i = getelementptr %struct.comedi_subdevice, ptr %320, i32 3, i32 15
  %325 = ptrtoint ptr %range_table75.i to i32
  call void @__asan_store4_noabort(i32 %325)
  store ptr @range_unipolar5, ptr %range_table75.i, align 4
  %insn_bits76.i = getelementptr %struct.comedi_subdevice, ptr %320, i32 3, i32 20
  %326 = ptrtoint ptr %insn_bits76.i to i32
  call void @__asan_store4_noabort(i32 %326)
  store ptr @do_wbits, ptr %insn_bits76.i, align 4
  br label %if.end79.i

if.else77.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #9
  %327 = ptrtoint ptr %315 to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 0, ptr %315, align 4
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.else77.i, %if.then68.i
  %328 = ptrtoint ptr %subdevices.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %subdevices.i, align 4
  %arrayidx81.i234 = getelementptr %struct.comedi_subdevice, ptr %329, i32 4
  %has_8255.i = getelementptr inbounds %struct.pcidas64_board, ptr %237, i32 0, i32 13
  %330 = ptrtoint ptr %has_8255.i to i32
  call void @__asan_load1_noabort(i32 %330)
  %bf.load.i = load i8, ptr %has_8255.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool82.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool82.not.i, label %if.else95.i, label %if.then83.i

if.then83.i:                                      ; preds = %if.end79.i
  %331 = ptrtoint ptr %layout.i227 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %layout.i227, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %332)
  %cmp85.i = icmp eq i32 %332, 2
  br i1 %cmp85.i, label %if.then87.i, label %if.else89.i

if.then87.i:                                      ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #9
  %call88.i = tail call i32 @subdev_8255_init(ptr noundef %dev, ptr noundef %arrayidx81.i234, ptr noundef nonnull @dio_callback_4020, i32 noundef 72) #7
  br label %if.end91.i

if.else89.i:                                      ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #9
  %call90.i = tail call i32 @subdev_8255_mm_init(ptr noundef %dev, ptr noundef %arrayidx81.i234, ptr noundef null, i32 noundef 0) #7
  br label %if.end91.i

if.end91.i:                                       ; preds = %if.else89.i, %if.then87.i
  %ret.0.i = phi i32 [ %call88.i, %if.then87.i ], [ %call90.i, %if.else89.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool92.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool92.not.i, label %if.end91.i.if.end97.i_crit_edge, label %if.end91.i.setup_subdevices.exit_crit_edge

if.end91.i.setup_subdevices.exit_crit_edge:       ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %setup_subdevices.exit

if.end91.i.if.end97.i_crit_edge:                  ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97.i

if.else95.i:                                      ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #9
  %type96.i = getelementptr %struct.comedi_subdevice, ptr %329, i32 4, i32 2
  %333 = ptrtoint ptr %type96.i to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 0, ptr %type96.i, align 4
  br label %if.end97.i

if.end97.i:                                       ; preds = %if.else95.i, %if.end91.i.if.end97.i_crit_edge
  %334 = ptrtoint ptr %subdevices.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %subdevices.i, align 4
  %336 = ptrtoint ptr %layout.i227 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %layout.i227, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %337)
  %cmp101.i = icmp eq i32 %337, 0
  br i1 %cmp101.i, label %if.then103.i, label %if.end97.i.if.end113.i_crit_edge

if.end97.i.if.end113.i_crit_edge:                 ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end113.i

if.then103.i:                                     ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #9
  %subdev_flags105.i = getelementptr %struct.comedi_subdevice, ptr %335, i32 5, i32 4
  %338 = ptrtoint ptr %subdev_flags105.i to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 196608, ptr %subdev_flags105.i, align 4
  %n_chan106.i = getelementptr %struct.comedi_subdevice, ptr %335, i32 5, i32 3
  %339 = ptrtoint ptr %n_chan106.i to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 8, ptr %n_chan106.i, align 4
  %maxdata107.i = getelementptr %struct.comedi_subdevice, ptr %335, i32 5, i32 13
  %340 = ptrtoint ptr %maxdata107.i to i32
  call void @__asan_store4_noabort(i32 %340)
  store i32 1, ptr %maxdata107.i, align 4
  %range_table108.i = getelementptr %struct.comedi_subdevice, ptr %335, i32 5, i32 15
  %341 = ptrtoint ptr %range_table108.i to i32
  call void @__asan_store4_noabort(i32 %341)
  store ptr @range_unipolar5, ptr %range_table108.i, align 4
  %insn_config109.i = getelementptr %struct.comedi_subdevice, ptr %335, i32 5, i32 21
  %342 = ptrtoint ptr %insn_config109.i to i32
  call void @__asan_store4_noabort(i32 %342)
  store ptr @dio_60xx_config_insn, ptr %insn_config109.i, align 4
  %insn_bits110.i = getelementptr %struct.comedi_subdevice, ptr %335, i32 5, i32 20
  %343 = ptrtoint ptr %insn_bits110.i to i32
  call void @__asan_store4_noabort(i32 %343)
  store ptr @dio_60xx_wbits, ptr %insn_bits110.i, align 4
  br label %if.end113.i

if.end113.i:                                      ; preds = %if.then103.i, %if.end97.i.if.end113.i_crit_edge
  %.sink350.i = phi i32 [ 5, %if.then103.i ], [ 0, %if.end97.i.if.end113.i_crit_edge ]
  %344 = getelementptr %struct.comedi_subdevice, ptr %335, i32 5, i32 2
  %345 = ptrtoint ptr %344 to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 %.sink350.i, ptr %344, align 4
  %346 = ptrtoint ptr %subdevices.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %subdevices.i, align 4
  %arrayidx115.i = getelementptr %struct.comedi_subdevice, ptr %347, i32 6
  %type116.i = getelementptr %struct.comedi_subdevice, ptr %347, i32 6, i32 2
  %348 = ptrtoint ptr %type116.i to i32
  call void @__asan_store4_noabort(i32 %348)
  store i32 9, ptr %type116.i, align 4
  %subdev_flags117.i = getelementptr %struct.comedi_subdevice, ptr %347, i32 6, i32 4
  %349 = ptrtoint ptr %subdev_flags117.i to i32
  call void @__asan_store4_noabort(i32 %349)
  store i32 458752, ptr %subdev_flags117.i, align 4
  %n_chan118.i = getelementptr %struct.comedi_subdevice, ptr %347, i32 6, i32 3
  %350 = ptrtoint ptr %n_chan118.i to i32
  call void @__asan_store4_noabort(i32 %350)
  store i32 8, ptr %n_chan118.i, align 4
  %351 = ptrtoint ptr %layout.i227 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %layout.i227, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %352)
  %cmp120.i = icmp eq i32 %352, 2
  %spec.select.i235 = select i1 %cmp120.i, i32 4095, i32 255
  %353 = getelementptr %struct.comedi_subdevice, ptr %347, i32 6, i32 13
  %354 = ptrtoint ptr %353 to i32
  call void @__asan_store4_noabort(i32 %354)
  store i32 %spec.select.i235, ptr %353, align 4
  %insn_write127.i = getelementptr %struct.comedi_subdevice, ptr %347, i32 6, i32 19
  %355 = ptrtoint ptr %insn_write127.i to i32
  call void @__asan_store4_noabort(i32 %355)
  store ptr @cb_pcidas64_calib_insn_write, ptr %insn_write127.i, align 4
  %call128.i = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx115.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128.i)
  %tobool129.not.i = icmp eq i32 %call128.i, 0
  br i1 %tobool129.not.i, label %for.cond132.preheader.i, label %if.end113.i.setup_subdevices.exit_crit_edge

if.end113.i.setup_subdevices.exit_crit_edge:      ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %setup_subdevices.exit

for.cond132.preheader.i:                          ; preds = %if.end113.i
  %356 = ptrtoint ptr %n_chan118.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %n_chan118.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %357)
  %cmp134346.i = icmp sgt i32 %357, 0
  br i1 %cmp134346.i, label %for.body136.lr.ph.i, label %for.cond132.preheader.i.for.end143.i_crit_edge

for.cond132.preheader.i.for.end143.i_crit_edge:   ; preds = %for.cond132.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end143.i

for.body136.lr.ph.i:                              ; preds = %for.cond132.preheader.i
  %readback.i = getelementptr %struct.comedi_subdevice, ptr %347, i32 6, i32 32
  br label %for.body136.i

for.body136.i:                                    ; preds = %for.body136.i.for.body136.i_crit_edge, %for.body136.lr.ph.i
  %i.1347.i = phi i32 [ 0, %for.body136.lr.ph.i ], [ %inc142.i, %for.body136.i.for.body136.i_crit_edge ]
  %358 = ptrtoint ptr %353 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %353, align 4
  %div339.i = lshr i32 %359, 1
  tail call fastcc void @caldac_write(ptr noundef %dev, i32 noundef %i.1347.i, i32 noundef %div339.i) #7
  %360 = ptrtoint ptr %353 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %353, align 4
  %div139340.i = lshr i32 %361, 1
  %362 = ptrtoint ptr %readback.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %readback.i, align 4
  %arrayidx140.i = getelementptr i32, ptr %363, i32 %i.1347.i
  %364 = ptrtoint ptr %arrayidx140.i to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 %div139340.i, ptr %arrayidx140.i, align 4
  %inc142.i = add nuw nsw i32 %i.1347.i, 1
  %365 = ptrtoint ptr %n_chan118.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %n_chan118.i, align 4
  %cmp134.i = icmp slt i32 %inc142.i, %366
  br i1 %cmp134.i, label %for.body136.i.for.body136.i_crit_edge, label %for.body136.i.for.end143.i_crit_edge

for.body136.i.for.end143.i_crit_edge:             ; preds = %for.body136.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end143.i

for.body136.i.for.body136.i_crit_edge:            ; preds = %for.body136.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body136.i

for.end143.i:                                     ; preds = %for.body136.i.for.end143.i_crit_edge, %for.cond132.preheader.i.for.end143.i_crit_edge
  %367 = ptrtoint ptr %subdevices.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %subdevices.i, align 4
  %369 = ptrtoint ptr %layout.i227 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %layout.i227, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %370)
  %cmp147.i = icmp eq i32 %370, 1
  br i1 %cmp147.i, label %if.then149.i, label %if.else173.i

if.then149.i:                                     ; preds = %for.end143.i
  %arrayidx145.i = getelementptr %struct.comedi_subdevice, ptr %368, i32 7
  %type150.i = getelementptr %struct.comedi_subdevice, ptr %368, i32 7, i32 2
  %371 = ptrtoint ptr %type150.i to i32
  call void @__asan_store4_noabort(i32 %371)
  store i32 9, ptr %type150.i, align 4
  %subdev_flags151.i = getelementptr %struct.comedi_subdevice, ptr %368, i32 7, i32 4
  %372 = ptrtoint ptr %subdev_flags151.i to i32
  call void @__asan_store4_noabort(i32 %372)
  store i32 458752, ptr %subdev_flags151.i, align 4
  %n_chan152.i = getelementptr %struct.comedi_subdevice, ptr %368, i32 7, i32 3
  %373 = ptrtoint ptr %n_chan152.i to i32
  call void @__asan_store4_noabort(i32 %373)
  store i32 2, ptr %n_chan152.i, align 4
  %maxdata153.i = getelementptr %struct.comedi_subdevice, ptr %368, i32 7, i32 13
  %374 = ptrtoint ptr %maxdata153.i to i32
  call void @__asan_store4_noabort(i32 %374)
  store i32 255, ptr %maxdata153.i, align 4
  %insn_write154.i = getelementptr %struct.comedi_subdevice, ptr %368, i32 7, i32 19
  %375 = ptrtoint ptr %insn_write154.i to i32
  call void @__asan_store4_noabort(i32 %375)
  store ptr @cb_pcidas64_ad8402_insn_write, ptr %insn_write154.i, align 4
  %call155.i = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx145.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155.i)
  %tobool156.not.i = icmp eq i32 %call155.i, 0
  br i1 %tobool156.not.i, label %for.cond159.preheader.i, label %if.then149.i.setup_subdevices.exit_crit_edge

if.then149.i.setup_subdevices.exit_crit_edge:     ; preds = %if.then149.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %setup_subdevices.exit

for.cond159.preheader.i:                          ; preds = %if.then149.i
  %376 = ptrtoint ptr %n_chan152.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %n_chan152.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %377)
  %cmp161348.i = icmp sgt i32 %377, 0
  br i1 %cmp161348.i, label %for.body163.lr.ph.i, label %for.cond159.preheader.i.if.end175.i_crit_edge

for.cond159.preheader.i.if.end175.i_crit_edge:    ; preds = %for.cond159.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end175.i

for.body163.lr.ph.i:                              ; preds = %for.cond159.preheader.i
  %readback168.i = getelementptr %struct.comedi_subdevice, ptr %368, i32 7, i32 32
  br label %for.body163.i

for.body163.i:                                    ; preds = %for.body163.i.for.body163.i_crit_edge, %for.body163.lr.ph.i
  %i.2349.i = phi i32 [ 0, %for.body163.lr.ph.i ], [ %inc171.i, %for.body163.i.for.body163.i_crit_edge ]
  %378 = ptrtoint ptr %maxdata153.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %maxdata153.i, align 4
  %div165337.i = lshr i32 %379, 1
  tail call fastcc void @ad8402_write(ptr noundef %dev, i32 noundef %i.2349.i, i32 noundef %div165337.i) #7
  %380 = ptrtoint ptr %maxdata153.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %maxdata153.i, align 4
  %div167338.i = lshr i32 %381, 1
  %382 = ptrtoint ptr %readback168.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %readback168.i, align 4
  %arrayidx169.i = getelementptr i32, ptr %383, i32 %i.2349.i
  %384 = ptrtoint ptr %arrayidx169.i to i32
  call void @__asan_store4_noabort(i32 %384)
  store i32 %div167338.i, ptr %arrayidx169.i, align 4
  %inc171.i = add nuw nsw i32 %i.2349.i, 1
  %385 = ptrtoint ptr %n_chan152.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %n_chan152.i, align 4
  %cmp161.i = icmp slt i32 %inc171.i, %386
  br i1 %cmp161.i, label %for.body163.i.for.body163.i_crit_edge, label %for.body163.i.if.end175.i_crit_edge

for.body163.i.if.end175.i_crit_edge:              ; preds = %for.body163.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end175.i

for.body163.i.for.body163.i_crit_edge:            ; preds = %for.body163.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body163.i

if.else173.i:                                     ; preds = %for.end143.i
  call void @__sanitizer_cov_trace_pc() #9
  %type174.i = getelementptr %struct.comedi_subdevice, ptr %368, i32 7, i32 2
  %387 = ptrtoint ptr %type174.i to i32
  call void @__asan_store4_noabort(i32 %387)
  store i32 0, ptr %type174.i, align 4
  br label %if.end175.i

if.end175.i:                                      ; preds = %if.else173.i, %for.body163.i.if.end175.i_crit_edge, %for.cond159.preheader.i.if.end175.i_crit_edge
  %388 = ptrtoint ptr %subdevices.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %subdevices.i, align 4
  %plx9080_iobase.i236 = getelementptr inbounds %struct.pcidas64_private, ptr %239, i32 0, i32 2
  %390 = ptrtoint ptr %plx9080_iobase.i236 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %plx9080_iobase.i236, align 4
  %add.ptr.i237 = getelementptr i8, ptr %391, i32 108
  %392 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i237) #7, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !264
  %393 = and i32 %392, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %393)
  %tobool180.not.i = icmp eq i32 %393, 0
  br i1 %tobool180.not.i, label %if.end175.i.setup_subdevices.exit.thread_crit_edge, label %if.then181.i

if.end175.i.setup_subdevices.exit.thread_crit_edge: ; preds = %if.end175.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %setup_subdevices.exit.thread

if.then181.i:                                     ; preds = %if.end175.i
  call void @__sanitizer_cov_trace_pc() #9
  %subdev_flags183.i = getelementptr %struct.comedi_subdevice, ptr %389, i32 8, i32 4
  %394 = ptrtoint ptr %subdev_flags183.i to i32
  call void @__asan_store4_noabort(i32 %394)
  store i32 327680, ptr %subdev_flags183.i, align 4
  %n_chan184.i = getelementptr %struct.comedi_subdevice, ptr %389, i32 8, i32 3
  %395 = ptrtoint ptr %n_chan184.i to i32
  call void @__asan_store4_noabort(i32 %395)
  store i32 128, ptr %n_chan184.i, align 4
  %maxdata185.i = getelementptr %struct.comedi_subdevice, ptr %389, i32 8, i32 13
  %396 = ptrtoint ptr %maxdata185.i to i32
  call void @__asan_store4_noabort(i32 %396)
  store i32 65535, ptr %maxdata185.i, align 4
  %insn_read186.i = getelementptr %struct.comedi_subdevice, ptr %389, i32 8, i32 18
  %397 = ptrtoint ptr %insn_read186.i to i32
  call void @__asan_store4_noabort(i32 %397)
  store ptr @eeprom_read_insn, ptr %insn_read186.i, align 4
  br label %setup_subdevices.exit.thread

setup_subdevices.exit.thread:                     ; preds = %if.then181.i, %if.end175.i.setup_subdevices.exit.thread_crit_edge
  %.sink352.i = phi i32 [ 8, %if.then181.i ], [ 0, %if.end175.i.setup_subdevices.exit.thread_crit_edge ]
  %398 = getelementptr %struct.comedi_subdevice, ptr %389, i32 8, i32 2
  %399 = ptrtoint ptr %398 to i32
  call void @__asan_store4_noabort(i32 %399)
  store i32 %.sink352.i, ptr %398, align 4
  %400 = ptrtoint ptr %subdevices.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %subdevices.i, align 4
  %type192.i = getelementptr %struct.comedi_subdevice, ptr %401, i32 9, i32 2
  %402 = ptrtoint ptr %type192.i to i32
  call void @__asan_store4_noabort(i32 %402)
  store i32 0, ptr %type192.i, align 4
  br label %cleanup

setup_subdevices.exit:                            ; preds = %if.then149.i.setup_subdevices.exit_crit_edge, %if.end113.i.setup_subdevices.exit_crit_edge, %if.end91.i.setup_subdevices.exit_crit_edge, %if.then26.i.setup_subdevices.exit_crit_edge, %do.end133.setup_subdevices.exit_crit_edge
  %retval.0.i238 = phi i32 [ %call.i225, %do.end133.setup_subdevices.exit_crit_edge ], [ %call35.i, %if.then26.i.setup_subdevices.exit_crit_edge ], [ %ret.0.i, %if.end91.i.setup_subdevices.exit_crit_edge ], [ %call128.i, %if.end113.i.setup_subdevices.exit_crit_edge ], [ %call155.i, %if.then149.i.setup_subdevices.exit_crit_edge ]
  %403 = tail call i32 @llvm.smin.i32(i32 %retval.0.i238, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %setup_subdevices.exit, %setup_subdevices.exit.thread, %if.then105, %do.body91, %if.then35.i.cleanup_crit_edge, %for.end25.i.cleanup_crit_edge, %if.then12.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %do.end, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ], [ %call.i222, %if.then105 ], [ 0, %setup_subdevices.exit.thread ], [ -12, %for.end25.i.cleanup_crit_edge ], [ -12, %if.then35.i.cleanup_crit_edge ], [ %call.i222, %do.body91 ], [ %403, %setup_subdevices.exit ], [ -12, %if.then12.i.cleanup_crit_edge ], [ -12, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_to_pci_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @handle_interrupt(i32 noundef %irq, ptr noundef %d) #2 align 64 {
entry:
  %val.i3.i.i = alloca i16, align 2
  %val.i.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %plx9080_iobase = getelementptr inbounds %struct.pcidas64_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %plx9080_iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plx9080_iobase, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 104
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !265
  %main_iobase = getelementptr inbounds %struct.pcidas64_private, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %main_iobase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %main_iobase, align 4
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %6) #7, !srcloc !248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !266
  %attached = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 10
  %8 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %attached, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = tail call i16 @llvm.bswap.i16(i16 %7)
  %10 = tail call i32 @llvm.bswap.i32(i32 %4)
  %board_ptr.i = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 9
  %11 = ptrtoint ptr %board_ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %board_ptr.i, align 4
  %13 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private, align 4
  %read_subdev.i = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 21
  %15 = ptrtoint ptr %read_subdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read_subdev.i, align 4
  %async1.i = getelementptr inbounds %struct.comedi_subdevice, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %async1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %async1.i, align 4
  %conv.i = zext i16 %9 to i32
  %and.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.do.body4.i_crit_edge, label %do.end.i

if.end.do.body4.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body4.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev.i = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 4
  %19 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %class_dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.39) #10
  %events.i = getelementptr inbounds %struct.comedi_async, ptr %18, i32 0, i32 16
  %21 = ptrtoint ptr %events.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %events.i, align 4
  %or.i = or i32 %22, 16
  store i32 %or.i, ptr %events.i, align 4
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.end.i, %if.end.do.body4.i_crit_edge
  %spinlock.i = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 11
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  %plx9080_iobase.i = getelementptr inbounds %struct.pcidas64_private, ptr %14, i32 0, i32 2
  %23 = ptrtoint ptr %plx9080_iobase.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %plx9080_iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 169
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #7, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !268
  %and14.i = and i32 %10, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %do.body4.i.if.end31.i_crit_edge, label %do.body17.i

do.body4.i.if.end31.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

do.body17.i:                                      ; preds = %do.body4.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !269
  tail call void @arm_heavy_mb() #7
  %26 = and i8 %25, 1
  %or22.i = or i8 %26, 8
  %27 = ptrtoint ptr %plx9080_iobase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %plx9080_iobase.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %28, i32 169
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr25.i, i8 %or22.i) #7, !srcloc !270
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool28.not.i = icmp eq i8 %26, 0
  br i1 %tobool28.not.i, label %do.body17.i.if.end31.i_crit_edge, label %if.then29.i

do.body17.i.if.end31.i_crit_edge:                 ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

if.then29.i:                                      ; preds = %do.body17.i
  %29 = ptrtoint ptr %board_ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %board_ptr.i, align 4
  %31 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %private, align 4
  %33 = ptrtoint ptr %read_subdev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read_subdev.i, align 4
  %plx9080_iobase.i.i = getelementptr inbounds %struct.pcidas64_private, ptr %32, i32 0, i32 2
  %35 = ptrtoint ptr %plx9080_iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %plx9080_iobase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 152
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !243
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !271
  %layout.i.i.i = getelementptr inbounds %struct.pcidas64_board, ptr %30, i32 0, i32 12
  %ai_dma_index.i.i = getelementptr inbounds %struct.pcidas64_private, ptr %32, i32 0, i32 10
  %39 = ptrtoint ptr %ai_dma_index.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ai_dma_index.i.i, align 4
  %arrayidx4.i.i = getelementptr %struct.pcidas64_private, ptr %32, i32 0, i32 7, i32 %40
  %41 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %42)
  %cmp5.i.i = icmp uge i32 %38, %42
  %add6.i.i = add i32 %42, 4096
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %add6.i.i)
  %cmp5.not7.i.i = icmp ult i32 %38, %add6.i.i
  %or.cond8.i.i = and i1 %cmp5.i.i, %cmp5.not7.i.i
  br i1 %or.cond8.i.i, label %if.then29.i.if.end31.i_crit_edge, label %if.then29.i.land.rhs.i.i_crit_edge

if.then29.i.land.rhs.i.i_crit_edge:               ; preds = %if.then29.i
  br label %land.rhs.i.i

if.then29.i.if.end31.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

land.rhs.i.i:                                     ; preds = %for.body.i.i.land.rhs.i.i_crit_edge, %if.then29.i.land.rhs.i.i_crit_edge
  %j.09.i.i = phi i32 [ %inc.i.i, %for.body.i.i.land.rhs.i.i_crit_edge ], [ 0, %if.then29.i.land.rhs.i.i_crit_edge ]
  %43 = ptrtoint ptr %layout.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %layout.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp.i.i.i = icmp eq i32 %44, 2
  %..i.i.i = select i1 %cmp.i.i.i, i32 128, i32 16
  call void @__sanitizer_cov_trace_cmp4(i32 %j.09.i.i, i32 %..i.i.i)
  %cmp7.i.i = icmp ult i32 %j.09.i.i, %..i.i.i
  br i1 %cmp7.i.i, label %for.body.i.i, label %land.rhs.i.i.if.end31.i_crit_edge

land.rhs.i.i.if.end31.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

for.body.i.i:                                     ; preds = %land.rhs.i.i
  %45 = ptrtoint ptr %board_ptr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %board_ptr.i, align 4
  %47 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %private, align 4
  %ai_fifo_segment_length.i.i.i = getelementptr inbounds %struct.pcidas64_private, ptr %48, i32 0, i32 28
  %49 = ptrtoint ptr %ai_fifo_segment_length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ai_fifo_segment_length.i.i.i, align 4
  %ai_fifo.i.i.i = getelementptr inbounds %struct.pcidas64_board, ptr %46, i32 0, i32 11
  %51 = ptrtoint ptr %ai_fifo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ai_fifo.i.i.i, align 4
  %sample_packing_ratio.i.i.i = getelementptr inbounds %struct.hw_fifo_info, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %sample_packing_ratio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sample_packing_ratio.i.i.i, align 4
  %mul.i.i.i = mul i32 %54, %50
  %55 = tail call i32 @llvm.umin.i32(i32 %mul.i.i.i, i32 2048) #7
  %call9.i.i = tail call i32 @comedi_nsamples_left(ptr noundef %34, i32 noundef %55) #7
  %56 = ptrtoint ptr %ai_dma_index.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ai_dma_index.i.i, align 4
  %arrayidx11.i.i = getelementptr %struct.pcidas64_private, ptr %32, i32 0, i32 6, i32 %57
  %58 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx11.i.i, align 4
  %call12.i.i = tail call i32 @comedi_buf_write_samples(ptr noundef %34, ptr noundef %59, i32 noundef %call9.i.i) #7
  %60 = ptrtoint ptr %ai_dma_index.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ai_dma_index.i.i, align 4
  %add14.i.i = add i32 %61, 1
  %62 = ptrtoint ptr %layout.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %layout.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %63)
  %cmp.i2.i.i = icmp eq i32 %63, 2
  %64 = select i1 %cmp.i2.i.i, i32 127, i32 15
  %rem.i.i = and i32 %64, %add14.i.i
  %65 = ptrtoint ptr %ai_dma_index.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %rem.i.i, ptr %ai_dma_index.i.i, align 4
  %inc.i.i = add nuw nsw i32 %j.09.i.i, 1
  %arrayidx.i.i = getelementptr %struct.pcidas64_private, ptr %32, i32 0, i32 7, i32 %rem.i.i
  %66 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %67)
  %cmp.i.i = icmp uge i32 %38, %67
  %add.i.i = add i32 %67, 4096
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %add.i.i)
  %cmp5.not.i.i = icmp ult i32 %38, %add.i.i
  %or.cond.i.i = and i1 %cmp.i.i, %cmp5.not.i.i
  br i1 %or.cond.i.i, label %for.body.i.i.if.end31.i_crit_edge, label %for.body.i.i.land.rhs.i.i_crit_edge

for.body.i.i.land.rhs.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i.i

for.body.i.i.if.end31.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

if.end31.i:                                       ; preds = %for.body.i.i.if.end31.i_crit_edge, %land.rhs.i.i.if.end31.i_crit_edge, %if.then29.i.if.end31.i_crit_edge, %do.body17.i.if.end31.i_crit_edge, %do.body4.i.if.end31.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call6.i) #7
  %and34.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %lor.lhs.false.i, label %if.end31.i.do.body47.i_crit_edge

if.end31.i.do.body47.i_crit_edge:                 ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body47.i

lor.lhs.false.i:                                  ; preds = %if.end31.i
  %flags36.i = getelementptr inbounds %struct.comedi_async, ptr %18, i32 0, i32 17, i32 1
  %68 = ptrtoint ptr %flags36.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags36.i, align 4
  %70 = and i32 %conv.i, 32
  %71 = and i32 %70, %69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %.not.not.i = icmp eq i32 %71, 0
  br i1 %.not.not.i, label %lor.lhs.false.i.if.end65.i_crit_edge, label %land.lhs.true42.i

lor.lhs.false.i.if.end65.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65.i

land.lhs.true42.i:                                ; preds = %lor.lhs.false.i
  %layout.i = getelementptr inbounds %struct.pcidas64_board, ptr %12, i32 0, i32 12
  %72 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %layout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %73)
  %cmp43.not.i = icmp eq i32 %73, 2
  br i1 %cmp43.not.i, label %land.lhs.true42.i.if.end65.i_crit_edge, label %land.lhs.true42.i.do.body47.i_crit_edge

land.lhs.true42.i.do.body47.i_crit_edge:          ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body47.i

land.lhs.true42.i.if.end65.i_crit_edge:           ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65.i

do.body47.i:                                      ; preds = %land.lhs.true42.i.do.body47.i_crit_edge, %if.end31.i.do.body47.i_crit_edge
  %call55.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  %ai_cmd_running.i = getelementptr inbounds %struct.pcidas64_private, ptr %14, i32 0, i32 27
  %74 = ptrtoint ptr %ai_cmd_running.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %ai_cmd_running.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %tobool60.not.i = icmp eq i16 %75, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call55.i) #7
  br i1 %tobool60.not.i, label %do.body47.i.if.end65.i_crit_edge, label %if.then61.i

do.body47.i.if.end65.i_crit_edge:                 ; preds = %do.body47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65.i

if.then61.i:                                      ; preds = %do.body47.i
  %76 = ptrtoint ptr %board_ptr.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %board_ptr.i, align 4
  %layout.i.i = getelementptr inbounds %struct.pcidas64_board, ptr %77, i32 0, i32 12
  %78 = ptrtoint ptr %layout.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %layout.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %79)
  %cmp.i112.i = icmp eq i32 %79, 2
  %80 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %private, align 4
  %82 = ptrtoint ptr %read_subdev.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %read_subdev.i, align 4
  %main_iobase.i.i.i = getelementptr inbounds %struct.pcidas64_private, ptr %81, i32 0, i32 3
  br i1 %cmp.i112.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then61.i
  %84 = ptrtoint ptr %main_iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %main_iobase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %85, i32 12
  %86 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #7, !srcloc !248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !272
  %87 = and i16 %86, -129
  %88 = ptrtoint ptr %main_iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %main_iobase.i.i.i, align 4
  %add.ptr5.i.i.i = getelementptr i8, ptr %89, i32 8
  %90 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr5.i.i.i) #7, !srcloc !248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !273
  %91 = and i16 %90, -129
  %call11.i.i.i = tail call i32 @comedi_nsamples_left(ptr noundef %83, i32 noundef 100000) #7
  call void @__sanitizer_cov_trace_cmp2(i16 %91, i16 %87)
  %cmp.not50.i.i.i = icmp ne i16 %91, %87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i.i)
  %cmp1351.i.i.i = icmp ne i32 %call11.i.i.i, 0
  %or.cond52.i.i.i = select i1 %cmp.not50.i.i.i, i1 %cmp1351.i.i.i, i1 false
  br i1 %or.cond52.i.i.i, label %for.body.lr.ph.i.i.i, label %if.then.i.i.if.end65.i_crit_edge

if.then.i.i.if.end65.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65.i

for.body.lr.ph.i.i.i:                             ; preds = %if.then.i.i
  %mmio.i.i.i = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 17
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %if.end.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.053.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %i.1.i.i.i, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i.i) #7
  %92 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 -1, ptr %val.i.i.i, align 2, !annotation !274
  %93 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr17.i.i.i = getelementptr i8, ptr %94, i32 512
  %95 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.i.i) #7, !srcloc !243
  %96 = call i32 @llvm.bswap.i32(i32 %95) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !275
  %conv22.i.i.i = trunc i32 %96 to i16
  %97 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %conv22.i.i.i, ptr %val.i.i.i, align 2
  %call23.i.i.i = call i32 @comedi_buf_write_samples(ptr noundef %83, ptr noundef nonnull %val.i.i.i, i32 noundef 1) #7
  %inc.i.i.i = add nuw i32 %i.053.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i, i32 %call11.i.i.i)
  %cmp24.i.i.i = icmp ult i32 %inc.i.i.i, %call11.i.i.i
  br i1 %cmp24.i.i.i, label %if.then.i.i.i, label %for.body.i.i.i.if.end.i.i.i_crit_edge

for.body.i.i.i.if.end.i.i.i_crit_edge:            ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i.i.i = lshr i32 %96, 16
  %conv27.i.i.i = trunc i32 %shr.i.i.i to i16
  %98 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %conv27.i.i.i, ptr %val.i.i.i, align 2
  %call28.i.i.i = call i32 @comedi_buf_write_samples(ptr noundef %83, ptr noundef nonnull %val.i.i.i, i32 noundef 1) #7
  %inc29.i.i.i = add nuw i32 %i.053.i.i.i, 2
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %for.body.i.i.i.if.end.i.i.i_crit_edge
  %i.1.i.i.i = phi i32 [ %inc29.i.i.i, %if.then.i.i.i ], [ %inc.i.i.i, %for.body.i.i.i.if.end.i.i.i_crit_edge ]
  %99 = ptrtoint ptr %main_iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %main_iobase.i.i.i, align 4
  %add.ptr33.i.i.i = getelementptr i8, ptr %100, i32 8
  %101 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr33.i.i.i) #7, !srcloc !248
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !276
  %102 = and i16 %101, -129
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i.i) #7
  call void @__sanitizer_cov_trace_cmp2(i16 %102, i16 %87)
  %cmp.not.i.i.i = icmp ne i16 %102, %87
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1.i.i.i, i32 %call11.i.i.i)
  %cmp13.i.i.i = icmp ult i32 %i.1.i.i.i, %call11.i.i.i
  %or.cond.i.i.i = select i1 %cmp.not.i.i.i, i1 %cmp13.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %if.end.i.i.i.for.body.i.i.i_crit_edge, label %if.end.i.i.i.if.end65.i_crit_edge

if.end.i.i.i.if.end65.i_crit_edge:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65.i

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

if.else.i.i:                                      ; preds = %if.then61.i
  %ai_fifo_segment_length.i.i113.i = getelementptr inbounds %struct.pcidas64_private, ptr %81, i32 0, i32 28
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %for.cond.do.cond42_crit_edge.i.i.i.do.body.i.i.i_crit_edge, %if.else.i.i
  %103 = ptrtoint ptr %main_iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %main_iobase.i.i.i, align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %104, i32 8
  %105 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i7.i.i) #7, !srcloc !248
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !277
  %106 = and i16 %105, -129
  %107 = call i16 @llvm.bswap.i16(i16 %106) #7
  %and.i.i.i = zext i16 %107 to i32
  %108 = ptrtoint ptr %main_iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %main_iobase.i.i.i, align 4
  %add.ptr5.i8.i.i = getelementptr i8, ptr %109, i32 12
  %110 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr5.i8.i.i) #7, !srcloc !248
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !278
  %111 = ptrtoint ptr %main_iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %main_iobase.i.i.i, align 4
  %add.ptr14.i.i.i = getelementptr i8, ptr %112, i32 20
  %113 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr14.i.i.i) #7, !srcloc !248
  %114 = call i16 @llvm.bswap.i16(i16 %113) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !279
  %115 = lshr i16 %114, 12
  %116 = and i16 %115, 3
  %117 = lshr i16 %114, 14
  call void @__sanitizer_cov_trace_cmp2(i16 %116, i16 %117)
  %cmp.not.i9.i.i = icmp eq i16 %116, %117
  br i1 %cmp.not.i9.i.i, label %if.else.i.i.i, label %if.then.i10.i.i

if.then.i10.i.i:                                  ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %118 = ptrtoint ptr %ai_fifo_segment_length.i.i113.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %ai_fifo_segment_length.i.i113.i, align 4
  br label %if.end.i11.i.i

if.else.i.i.i:                                    ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %120 = and i16 %110, -129
  %121 = call i16 @llvm.bswap.i16(i16 %120) #7
  %and10.i.i.i = zext i16 %121 to i32
  br label %if.end.i11.i.i

if.end.i11.i.i:                                   ; preds = %if.else.i.i.i, %if.then.i10.i.i
  %.pn.i.i.i = phi i32 [ %119, %if.then.i10.i.i ], [ %and10.i.i.i, %if.else.i.i.i ]
  %num_samples.0.i.i.i = sub i32 %.pn.i.i.i, %and.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_samples.0.i.i.i)
  %cmp22.i.i.i = icmp slt i32 %num_samples.0.i.i.i, 0
  br i1 %cmp22.i.i.i, label %do.end.i.i.i, label %if.end26.i.i.i

do.end.i.i.i:                                     ; preds = %if.end.i11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev.i.i.i = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 4
  %122 = ptrtoint ptr %class_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %class_dev.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %123, ptr noundef nonnull @.str.42) #10
  br label %if.end65.i

if.end26.i.i.i:                                   ; preds = %if.end.i11.i.i
  %call27.i.i.i = call i32 @comedi_nsamples_left(ptr noundef %83, i32 noundef %num_samples.0.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %cmp28.i.i.i = icmp eq i32 %call27.i.i.i, 0
  br i1 %cmp28.i.i.i, label %if.end26.i.i.i.if.end65.i_crit_edge, label %if.end26.i.i.i.for.body.i13.i.i_crit_edge

if.end26.i.i.i.for.body.i13.i.i_crit_edge:        ; preds = %if.end26.i.i.i
  br label %for.body.i13.i.i

if.end26.i.i.i.if.end65.i_crit_edge:              ; preds = %if.end26.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65.i

for.body.i13.i.i:                                 ; preds = %for.body.i13.i.i.for.body.i13.i.i_crit_edge, %if.end26.i.i.i.for.body.i13.i.i_crit_edge
  %i.062.i.i.i = phi i32 [ %inc.i12.i.i, %for.body.i13.i.i.for.body.i13.i.i_crit_edge ], [ 0, %if.end26.i.i.i.for.body.i13.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i3.i.i) #7
  %124 = ptrtoint ptr %val.i3.i.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 -1, ptr %val.i3.i.i, align 2, !annotation !274
  %125 = ptrtoint ptr %main_iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %main_iobase.i.i.i, align 4
  %add.ptr37.i.i.i = getelementptr i8, ptr %126, i32 512
  %127 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr37.i.i.i) #7, !srcloc !248
  %128 = call i16 @llvm.bswap.i16(i16 %127) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !280
  %129 = ptrtoint ptr %val.i3.i.i to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %128, ptr %val.i3.i.i, align 2
  %call41.i.i.i = call i32 @comedi_buf_write_samples(ptr noundef %83, ptr noundef nonnull %val.i3.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i3.i.i) #7
  %inc.i12.i.i = add nuw i32 %i.062.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i12.i.i, %call27.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.cond.do.cond42_crit_edge.i.i.i, label %for.body.i13.i.i.for.body.i13.i.i_crit_edge

for.body.i13.i.i.for.body.i13.i.i_crit_edge:      ; preds = %for.body.i13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i13.i.i

for.cond.do.cond42_crit_edge.i.i.i:               ; preds = %for.body.i13.i.i
  br i1 %cmp.not.i9.i.i, label %for.cond.do.cond42_crit_edge.i.i.i.if.end65.i_crit_edge, label %for.cond.do.cond42_crit_edge.i.i.i.do.body.i.i.i_crit_edge

for.cond.do.cond42_crit_edge.i.i.i.do.body.i.i.i_crit_edge: ; preds = %for.cond.do.cond42_crit_edge.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i

for.cond.do.cond42_crit_edge.i.i.i.if.end65.i_crit_edge: ; preds = %for.cond.do.cond42_crit_edge.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65.i

if.end65.i:                                       ; preds = %for.cond.do.cond42_crit_edge.i.i.i.if.end65.i_crit_edge, %if.end26.i.i.i.if.end65.i_crit_edge, %do.end.i.i.i, %if.end.i.i.i.if.end65.i_crit_edge, %if.then.i.i.if.end65.i_crit_edge, %do.body47.i.if.end65.i_crit_edge, %land.lhs.true42.i.if.end65.i_crit_edge, %lor.lhs.false.i.if.end65.i_crit_edge
  %stop_src.i = getelementptr inbounds %struct.comedi_async, ptr %18, i32 0, i32 17, i32 10
  %130 = ptrtoint ptr %stop_src.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %stop_src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %131)
  %cmp66.i = icmp eq i32 %131, 32
  br i1 %cmp66.i, label %land.lhs.true68.i, label %lor.lhs.false71.i

land.lhs.true68.i:                                ; preds = %if.end65.i
  %scans_done.i = getelementptr inbounds %struct.comedi_async, ptr %18, i32 0, i32 11
  %132 = ptrtoint ptr %scans_done.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %scans_done.i, align 4
  %stop_arg.i = getelementptr inbounds %struct.comedi_async, ptr %18, i32 0, i32 17, i32 11
  %134 = ptrtoint ptr %stop_arg.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %stop_arg.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %133, i32 %135)
  %cmp69.not.i = icmp ult i32 %133, %135
  br i1 %cmp69.not.i, label %land.lhs.true68.i.handle_ai_interrupt.exit_crit_edge, label %land.lhs.true68.i.if.then79.i_crit_edge

land.lhs.true68.i.if.then79.i_crit_edge:          ; preds = %land.lhs.true68.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then79.i

land.lhs.true68.i.handle_ai_interrupt.exit_crit_edge: ; preds = %land.lhs.true68.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %handle_ai_interrupt.exit

lor.lhs.false71.i:                                ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %131)
  %cmp73.i = icmp ne i32 %131, 64
  %and77.i = and i32 %conv.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77.i)
  %tobool78.not.i = icmp eq i32 %and77.i, 0
  %or.cond110.i = or i1 %tobool78.not.i, %cmp73.i
  br i1 %or.cond110.i, label %lor.lhs.false71.i.handle_ai_interrupt.exit_crit_edge, label %lor.lhs.false71.i.if.then79.i_crit_edge

lor.lhs.false71.i.if.then79.i_crit_edge:          ; preds = %lor.lhs.false71.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then79.i

lor.lhs.false71.i.handle_ai_interrupt.exit_crit_edge: ; preds = %lor.lhs.false71.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %handle_ai_interrupt.exit

if.then79.i:                                      ; preds = %lor.lhs.false71.i.if.then79.i_crit_edge, %land.lhs.true68.i.if.then79.i_crit_edge
  %events80.i = getelementptr inbounds %struct.comedi_async, ptr %18, i32 0, i32 16
  %136 = ptrtoint ptr %events80.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %events80.i, align 4
  %or81.i = or i32 %137, 2
  store i32 %or81.i, ptr %events80.i, align 4
  br label %handle_ai_interrupt.exit

handle_ai_interrupt.exit:                         ; preds = %if.then79.i, %lor.lhs.false71.i.handle_ai_interrupt.exit_crit_edge, %land.lhs.true68.i.handle_ai_interrupt.exit_crit_edge
  %call83.i = call i32 @comedi_handle_events(ptr noundef %d, ptr noundef %16) #7
  %write_subdev.i = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 22
  %138 = ptrtoint ptr %write_subdev.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %write_subdev.i, align 4
  %tobool.not.i33 = icmp eq ptr %139, null
  br i1 %tobool.not.i33, label %handle_ai_interrupt.exit.handle_ao_interrupt.exit_crit_edge, label %if.end.i

handle_ai_interrupt.exit.handle_ao_interrupt.exit_crit_edge: ; preds = %handle_ai_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %handle_ao_interrupt.exit

if.end.i:                                         ; preds = %handle_ai_interrupt.exit
  %140 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %private, align 4
  %async1.i35 = getelementptr inbounds %struct.comedi_subdevice, ptr %139, i32 0, i32 7
  %142 = ptrtoint ptr %async1.i35 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %async1.i35, align 4
  %call4.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  %plx9080_iobase.i37 = getelementptr inbounds %struct.pcidas64_private, ptr %141, i32 0, i32 2
  %144 = ptrtoint ptr %plx9080_iobase.i37 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %plx9080_iobase.i37, align 4
  %add.ptr.i38 = getelementptr i8, ptr %145, i32 168
  %146 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i38) #7, !srcloc !267
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !281
  %and.i39 = and i32 %10, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i39)
  %tobool10.not.i = icmp eq i32 %and.i39, 0
  br i1 %tobool10.not.i, label %if.end.i.if.end43.sink.split.i_crit_edge, label %if.then11.i

if.end.i.if.end43.sink.split.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.sink.split.i

if.then11.i:                                      ; preds = %if.end.i
  %conv12.i = zext i8 %146 to i32
  %and13.i = and i32 %conv12.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %tobool14.not.not.i = xor i1 %tobool14.not.i, true
  %and16.i = and i32 %conv12.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  %or.cond.i = select i1 %tobool14.not.not.i, i1 %tobool17.not.i, i1 false
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  %147 = ptrtoint ptr %plx9080_iobase.i37 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %plx9080_iobase.i37, align 4
  %add.ptr23.i = getelementptr i8, ptr %148, i32 168
  br i1 %or.cond.i, label %do.body19.i, label %do.body24.i

do.body19.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr23.i, i8 9) #7, !srcloc !270
  br label %if.end29.i

do.body24.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr23.i, i8 8) #7, !srcloc !270
  br label %if.end29.i

if.end29.i:                                       ; preds = %do.body24.i, %do.body19.i
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call4.i) #7
  br i1 %tobool14.not.i, label %if.end29.i.if.end43.i_crit_edge, label %if.then34.i

if.end29.i.if.end43.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.i

if.then34.i:                                      ; preds = %if.end29.i
  %149 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %private, align 4
  %plx9080_iobase.i.i40 = getelementptr inbounds %struct.pcidas64_private, ptr %150, i32 0, i32 2
  %151 = ptrtoint ptr %plx9080_iobase.i.i40 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %plx9080_iobase.i.i40, align 4
  %add.ptr.i.i41 = getelementptr i8, ptr %152, i32 132
  %ao_dma_index.i.i = getelementptr inbounds %struct.pcidas64_private, ptr %150, i32 0, i32 15
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i.i.do.body.i.i_crit_edge, %if.then34.i
  %153 = ptrtoint ptr %ao_dma_index.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %ao_dma_index.i.i, align 4
  %155 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i41) #7, !srcloc !243
  %156 = call i32 @llvm.bswap.i32(i32 %155) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !282
  %arrayidx.i.i42 = getelementptr %struct.pcidas64_private, ptr %150, i32 0, i32 12, i32 %154
  %157 = ptrtoint ptr %arrayidx.i.i42 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx.i.i42, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %156, i32 %158)
  %cmp.not.i.i = icmp uge i32 %156, %158
  %add.i.i43 = add i32 %158, 4096
  call void @__sanitizer_cov_trace_cmp4(i32 %156, i32 %add.i.i43)
  %cmp4.i.i = icmp ult i32 %156, %add.i.i43
  %or.cond.i.i44 = and i1 %cmp.not.i.i, %cmp4.i.i
  br i1 %or.cond.i.i44, label %do.body.i.i.load_ao_dma.exit.i_crit_edge, label %if.end.i.i

do.body.i.i.load_ao_dma.exit.i_crit_edge:         ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %load_ao_dma.exit.i

if.end.i.i:                                       ; preds = %do.body.i.i
  %call5.i.i = call fastcc i32 @load_ao_dma_buffer(ptr noundef %d) #7
  %cmp6.i.i = icmp ugt i32 %call5.i.i, 4095
  br i1 %cmp6.i.i, label %if.end.i.i.do.body.i.i_crit_edge, label %if.end.i.i.load_ao_dma.exit.i_crit_edge

if.end.i.i.load_ao_dma.exit.i_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %load_ao_dma.exit.i

if.end.i.i.do.body.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

load_ao_dma.exit.i:                               ; preds = %if.end.i.i.load_ao_dma.exit.i_crit_edge, %do.body.i.i.load_ao_dma.exit.i_crit_edge
  %159 = and i8 %146, 17
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %159)
  %.not.i.i = icmp eq i8 %159, 17
  br i1 %.not.i.i, label %if.end.i89.i, label %load_ao_dma.exit.i.if.end43.i_crit_edge

load_ao_dma.exit.i.if.end43.i_crit_edge:          ; preds = %load_ao_dma.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.i

if.end.i89.i:                                     ; preds = %load_ao_dma.exit.i
  %160 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %private, align 4
  %ao_dma_index.i.i.i.i = getelementptr inbounds %struct.pcidas64_private, ptr %161, i32 0, i32 15
  %162 = ptrtoint ptr %ao_dma_index.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %ao_dma_index.i.i.i.i, align 4
  %plx9080_iobase.i.i.i = getelementptr inbounds %struct.pcidas64_private, ptr %161, i32 0, i32 2
  %164 = ptrtoint ptr %plx9080_iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %plx9080_iobase.i.i.i, align 4
  %add.ptr.i.i.i45 = getelementptr i8, ptr %165, i32 168
  %166 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i45) #7, !srcloc !267
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !283
  %167 = and i8 %166, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %cmp.i.i.i46 = icmp eq i8 %167, 0
  br i1 %cmp.i.i.i46, label %if.end.i89.i.if.then38.i_crit_edge, label %last_ao_dma_load_completed.exit.i.i

if.end.i89.i.if.then38.i_crit_edge:               ; preds = %if.end.i89.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38.i

last_ao_dma_load_completed.exit.i.i:              ; preds = %if.end.i89.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %cmp.i.i.i.i = icmp eq i32 %163, 0
  %sub.i.i.i.i = add i32 %163, -1
  %buffer_index.0.i.i.i.i = select i1 %cmp.i.i.i.i, i32 15, i32 %sub.i.i.i.i
  %168 = ptrtoint ptr %plx9080_iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %plx9080_iobase.i.i.i, align 4
  %add.ptr8.i.i.i = getelementptr i8, ptr %169, i32 132
  %170 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i.i) #7, !srcloc !243
  %171 = call i32 @llvm.bswap.i32(i32 %170) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !284
  %arrayidx.i.i.i = getelementptr %struct.pcidas64_private, ptr %161, i32 0, i32 12, i32 %buffer_index.0.i.i.i.i
  %172 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %171, i32 %173)
  %cmp12.not.i.not.i.i = icmp eq i32 %171, %173
  br i1 %cmp12.not.i.not.i.i, label %last_ao_dma_load_completed.exit.i.i.if.end43.i_crit_edge, label %last_ao_dma_load_completed.exit.i.i.if.then38.i_crit_edge

last_ao_dma_load_completed.exit.i.i.if.then38.i_crit_edge: ; preds = %last_ao_dma_load_completed.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38.i

last_ao_dma_load_completed.exit.i.i.if.end43.i_crit_edge: ; preds = %last_ao_dma_load_completed.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.i

if.then38.i:                                      ; preds = %last_ao_dma_load_completed.exit.i.i.if.then38.i_crit_edge, %if.end.i89.i.if.then38.i_crit_edge
  %174 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %private, align 4
  %plx9080_iobase.i91.i = getelementptr inbounds %struct.pcidas64_private, ptr %175, i32 0, i32 2
  %176 = ptrtoint ptr %plx9080_iobase.i91.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %plx9080_iobase.i91.i, align 4
  %add.ptr.i92.i = getelementptr i8, ptr %177, i32 144
  %178 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i92.i) #7, !srcloc !243
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !285
  %179 = and i32 %178, -33554433
  %180 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %private, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  %plx9080_iobase19.i.i.i = getelementptr inbounds %struct.pcidas64_private, ptr %181, i32 0, i32 2
  %182 = ptrtoint ptr %plx9080_iobase19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %plx9080_iobase19.i.i.i, align 4
  %add.ptr20.i.i.i = getelementptr i8, ptr %183, i32 140
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i.i.i, i32 0) #7, !srcloc !242
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !286
  call void @arm_heavy_mb() #7
  %184 = ptrtoint ptr %plx9080_iobase19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %plx9080_iobase19.i.i.i, align 4
  %add.ptr25.i.i.i = getelementptr i8, ptr %185, i32 132
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i.i.i, i32 0) #7, !srcloc !242
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !287
  call void @arm_heavy_mb() #7
  %186 = ptrtoint ptr %plx9080_iobase19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %plx9080_iobase19.i.i.i, align 4
  %add.ptr30.i.i.i = getelementptr i8, ptr %187, i32 136
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i.i.i, i32 0) #7, !srcloc !242
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !288
  call void @arm_heavy_mb() #7
  %188 = ptrtoint ptr %plx9080_iobase19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %plx9080_iobase19.i.i.i, align 4
  %add.ptr35.i.i.i = getelementptr i8, ptr %189, i32 144
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i.i.i, i32 %179) #7, !srcloc !242
  %190 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %private, align 4
  %call2.i.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !289
  call void @arm_heavy_mb() #7
  %plx9080_iobase.i.i93.i = getelementptr inbounds %struct.pcidas64_private, ptr %191, i32 0, i32 2
  %192 = ptrtoint ptr %plx9080_iobase.i.i93.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %plx9080_iobase.i.i93.i, align 4
  %add.ptr.i.i94.i = getelementptr i8, ptr %193, i32 168
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i94.i, i8 11) #7, !srcloc !270
  br label %if.end43.sink.split.i

if.end43.sink.split.i:                            ; preds = %if.then38.i, %if.end.i.if.end43.sink.split.i_crit_edge
  %call2.i.i.sink.i = phi i32 [ %call2.i.i.i, %if.then38.i ], [ %call4.i, %if.end.i.if.end43.sink.split.i_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i.i.sink.i) #7
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.end43.sink.split.i, %last_ao_dma_load_completed.exit.i.i.if.end43.i_crit_edge, %load_ao_dma.exit.i.if.end43.i_crit_edge, %if.end29.i.if.end43.i_crit_edge
  %194 = and i16 %9, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %194)
  %tobool46.not.i = icmp eq i16 %194, 0
  br i1 %tobool46.not.i, label %if.end43.i.if.end60.i_crit_edge, label %if.then47.i

if.end43.i.if.end60.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60.i

if.then47.i:                                      ; preds = %if.end43.i
  %stop_src.i47 = getelementptr inbounds %struct.comedi_async, ptr %143, i32 0, i32 17, i32 10
  %195 = ptrtoint ptr %stop_src.i47 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %stop_src.i47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %196)
  %cmp48.i = icmp eq i32 %196, 32
  br i1 %cmp48.i, label %land.lhs.true50.i, label %if.then47.i.lor.lhs.false.i51_crit_edge

if.then47.i.lor.lhs.false.i51_crit_edge:          ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i51

land.lhs.true50.i:                                ; preds = %if.then47.i
  %scans_done.i48 = getelementptr inbounds %struct.comedi_async, ptr %143, i32 0, i32 11
  %197 = ptrtoint ptr %scans_done.i48 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %scans_done.i48, align 4
  %stop_arg.i49 = getelementptr inbounds %struct.comedi_async, ptr %143, i32 0, i32 17, i32 11
  %199 = ptrtoint ptr %stop_arg.i49 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %stop_arg.i49, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %198, i32 %200)
  %cmp51.not.i = icmp ult i32 %198, %200
  br i1 %cmp51.not.i, label %land.lhs.true50.i.lor.lhs.false.i51_crit_edge, label %land.lhs.true50.i.if.end60.sink.split.i_crit_edge

land.lhs.true50.i.if.end60.sink.split.i_crit_edge: ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60.sink.split.i

land.lhs.true50.i.lor.lhs.false.i51_crit_edge:    ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i51

lor.lhs.false.i51:                                ; preds = %land.lhs.true50.i.lor.lhs.false.i51_crit_edge, %if.then47.i.lor.lhs.false.i51_crit_edge
  %201 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %private, align 4
  %ao_dma_index.i.i.i = getelementptr inbounds %struct.pcidas64_private, ptr %202, i32 0, i32 15
  %203 = ptrtoint ptr %ao_dma_index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %ao_dma_index.i.i.i, align 4
  %plx9080_iobase.i96.i = getelementptr inbounds %struct.pcidas64_private, ptr %202, i32 0, i32 2
  %205 = ptrtoint ptr %plx9080_iobase.i96.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %plx9080_iobase.i96.i, align 4
  %add.ptr.i97.i = getelementptr i8, ptr %206, i32 168
  %207 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i97.i) #7, !srcloc !267
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !283
  %208 = and i8 %207, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %208)
  %cmp.i.i50 = icmp eq i8 %208, 0
  br i1 %cmp.i.i50, label %lor.lhs.false.i51.if.else56.i_crit_edge, label %last_ao_dma_load_completed.exit.i

lor.lhs.false.i51.if.else56.i_crit_edge:          ; preds = %lor.lhs.false.i51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else56.i

last_ao_dma_load_completed.exit.i:                ; preds = %lor.lhs.false.i51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %cmp.i.i98.i = icmp eq i32 %204, 0
  %sub.i.i.i = add i32 %204, -1
  %buffer_index.0.i.i.i = select i1 %cmp.i.i98.i, i32 15, i32 %sub.i.i.i
  %209 = ptrtoint ptr %plx9080_iobase.i96.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %plx9080_iobase.i96.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %210, i32 132
  %211 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i) #7, !srcloc !243
  %212 = call i32 @llvm.bswap.i32(i32 %211) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !284
  %arrayidx.i99.i = getelementptr %struct.pcidas64_private, ptr %202, i32 0, i32 12, i32 %buffer_index.0.i.i.i
  %213 = ptrtoint ptr %arrayidx.i99.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %arrayidx.i99.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %212, i32 %214)
  %cmp12.not.i.not.i = icmp eq i32 %212, %214
  br i1 %cmp12.not.i.not.i, label %last_ao_dma_load_completed.exit.i.if.end60.sink.split.i_crit_edge, label %last_ao_dma_load_completed.exit.i.if.else56.i_crit_edge

last_ao_dma_load_completed.exit.i.if.else56.i_crit_edge: ; preds = %last_ao_dma_load_completed.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else56.i

last_ao_dma_load_completed.exit.i.if.end60.sink.split.i_crit_edge: ; preds = %last_ao_dma_load_completed.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60.sink.split.i

if.else56.i:                                      ; preds = %last_ao_dma_load_completed.exit.i.if.else56.i_crit_edge, %lor.lhs.false.i51.if.else56.i_crit_edge
  br label %if.end60.sink.split.i

if.end60.sink.split.i:                            ; preds = %if.else56.i, %last_ao_dma_load_completed.exit.i.if.end60.sink.split.i_crit_edge, %land.lhs.true50.i.if.end60.sink.split.i_crit_edge
  %.sink106.i = phi i32 [ 16, %if.else56.i ], [ 2, %last_ao_dma_load_completed.exit.i.if.end60.sink.split.i_crit_edge ], [ 2, %land.lhs.true50.i.if.end60.sink.split.i_crit_edge ]
  %events57.i = getelementptr inbounds %struct.comedi_async, ptr %143, i32 0, i32 16
  %215 = ptrtoint ptr %events57.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %events57.i, align 4
  %or.i52 = or i32 %216, %.sink106.i
  store i32 %or.i52, ptr %events57.i, align 4
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.end60.sink.split.i, %if.end43.i.if.end60.i_crit_edge
  %call61.i = call i32 @comedi_handle_events(ptr noundef %d, ptr noundef nonnull %139) #7
  br label %handle_ao_interrupt.exit

handle_ao_interrupt.exit:                         ; preds = %if.end60.i, %handle_ai_interrupt.exit.handle_ao_interrupt.exit_crit_edge
  %and = and i32 %10, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %handle_ao_interrupt.exit.cleanup_crit_edge, label %if.then9

handle_ao_interrupt.exit.cleanup_crit_edge:       ; preds = %handle_ao_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then9:                                         ; preds = %handle_ao_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #9
  %217 = ptrtoint ptr %plx9080_iobase to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %plx9080_iobase, align 4
  %add.ptr13 = getelementptr i8, ptr %218, i32 100
  %219 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #7, !srcloc !243
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !290
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !291
  call void @arm_heavy_mb() #7
  %220 = ptrtoint ptr %plx9080_iobase to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %plx9080_iobase, align 4
  %add.ptr18 = getelementptr i8, ptr %221, i32 100
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %219) #7, !srcloc !242
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %handle_ao_interrupt.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @abort_dma(ptr noundef %dev, i32 noundef %channel) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %spinlock = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #7
  %plx9080_iobase = getelementptr inbounds %struct.pcidas64_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %plx9080_iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plx9080_iobase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %tobool.not.i = icmp eq i32 %channel, 0
  %cond.i = select i1 %tobool.not.i, i32 168, i32 169
  %add.ptr.i = getelementptr i8, ptr %3, i32 %cond.i
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #7, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !292
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i = icmp eq i8 %5, 0
  br i1 %cmp.i, label %entry.plx9080_abort_dma.exit_crit_edge, label %for.cond.preheader.i

entry.plx9080_abort_dma.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %plx9080_abort_dma.exit

for.cond.preheader.i:                             ; preds = %entry
  %6 = and i8 %4, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not2.not.i = icmp eq i8 %6, 0
  br i1 %tobool5.not2.not.i, label %for.cond.preheader.i.do.body.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.do.body.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.03.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #7
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #7, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !293
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %9 = and i8 %8, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not.i = icmp ne i8 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999, i32 %i.03.i)
  %cmp6.i = icmp ult i32 %i.03.i, 9999
  %or.cond.i = select i1 %tobool5.not.i, i1 %cmp6.i, i1 false
  br i1 %or.cond.i, label %for.body.i.for.body.i_crit_edge, label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %inc.i)
  %phi.cmp.i = icmp eq i32 %inc.i, 10000
  br i1 %phi.cmp.i, label %for.end.i.plx9080_abort_dma.exit_crit_edge, label %for.end.i.do.body.i_crit_edge

for.end.i.do.body.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

for.end.i.plx9080_abort_dma.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %plx9080_abort_dma.exit

do.body.i:                                        ; preds = %for.end.i.do.body.i_crit_edge, %for.cond.preheader.i.do.body.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !294
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 4) #7, !srcloc !270
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #7, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !295
  %11 = and i8 %10, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp254.i = icmp eq i8 %11, 0
  br i1 %cmp254.i, label %do.body.i.for.body31.i_crit_edge, label %do.body.i.plx9080_abort_dma.exit_crit_edge

do.body.i.plx9080_abort_dma.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %plx9080_abort_dma.exit

do.body.i.for.body31.i_crit_edge:                 ; preds = %do.body.i
  br label %for.body31.i

for.body31.i:                                     ; preds = %for.body31.i.for.body31.i_crit_edge, %do.body.i.for.body31.i_crit_edge
  %i.15.i = phi i32 [ %inc38.i, %for.body31.i.for.body31.i_crit_edge ], [ 0, %do.body.i.for.body31.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #7
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #7, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !296
  %inc38.i = add nuw nsw i32 %i.15.i, 1
  %14 = and i8 %13, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp25.i = icmp eq i8 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999, i32 %i.15.i)
  %cmp28.i = icmp ult i32 %i.15.i, 9999
  %or.cond1.i = select i1 %cmp25.i, i1 %cmp28.i, i1 false
  br i1 %or.cond1.i, label %for.body31.i.for.body31.i_crit_edge, label %for.body31.i.plx9080_abort_dma.exit_crit_edge

for.body31.i.plx9080_abort_dma.exit_crit_edge:    ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %plx9080_abort_dma.exit

for.body31.i.for.body31.i_crit_edge:              ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body31.i

plx9080_abort_dma.exit:                           ; preds = %for.body31.i.plx9080_abort_dma.exit_crit_edge, %do.body.i.plx9080_abort_dma.exit_crit_edge, %for.end.i.plx9080_abort_dma.exit_crit_edge, %entry.plx9080_abort_dma.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @disable_ai_pacing(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %spinlock.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  %intr_enable_bits.i = getelementptr inbounds %struct.pcidas64_private, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %intr_enable_bits.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %intr_enable_bits.i, align 4
  %and.i = and i32 %3, -34320
  store i32 %and.i, ptr %intr_enable_bits.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !297
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %intr_enable_bits.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %intr_enable_bits.i, align 4
  %conv9.i = trunc i32 %5 to i16
  %6 = tail call i16 @llvm.bswap.i16(i16 %conv9.i) #7
  %main_iobase.i = getelementptr inbounds %struct.pcidas64_private, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %main_iobase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %main_iobase.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %8, i16 %6) #7, !srcloc !257
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i) #7
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  %adc_control1_bits = getelementptr inbounds %struct.pcidas64_private, ptr %1, i32 0, i32 18
  %9 = ptrtoint ptr %adc_control1_bits to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %adc_control1_bits, align 4
  %11 = and i16 %10, -65
  store i16 %11, ptr %adc_control1_bits, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !298
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %adc_control1_bits to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %adc_control1_bits, align 4
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %15 = ptrtoint ptr %main_iobase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %main_iobase.i, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %14) #7, !srcloc !257
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !299
  tail call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %main_iobase.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %main_iobase.i, align 4
  %add.ptr16 = getelementptr i8, ptr %18, i32 16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr16, i16 1344) #7, !srcloc !257
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_handle_events(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_nsamples_left(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @load_ao_dma_buffer(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %write_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 22
  %2 = ptrtoint ptr %write_subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_subdev, align 4
  %ao_dma_index = getelementptr inbounds %struct.pcidas64_private, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %ao_dma_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ao_dma_index, align 4
  %arrayidx = getelementptr %struct.pcidas64_private, ptr %1, i32 0, i32 11, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %subdev_flags.i.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %subdev_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %subdev_flags.i.i.i, align 4
  %and.i.i.i = and i32 %9, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %shr.i.i = select i1 %tobool.not.i.i.i, i32 2048, i32 1024
  %call1.i = tail call i32 @comedi_nsamples_left(ptr noundef %3, i32 noundef %shr.i.i) #7
  %call2.i = tail call i32 @comedi_buf_read_samples(ptr noundef %3, ptr noundef %7, i32 noundef %call1.i) #7
  %10 = ptrtoint ptr %subdev_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %subdev_flags.i.i.i, align 4
  %and.i.i2.i = and i32 %11, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i2.i)
  %tobool.not.i.i3.i = icmp eq i32 %and.i.i2.i, 0
  %cond.i.i4.i = select i1 %tobool.not.i.i3.i, i32 1, i32 2
  %shr.i5.i = lshr i32 %call2.i, %cond.i.i4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i5.i)
  %cmp = icmp eq i32 %shr.i5.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  %sub.i = add i32 %5, -1
  %buffer_index.0.i = select i1 %cmp.i, i32 15, i32 %sub.i
  %shl.i = shl i32 %shr.i5.i, %cond.i.i4.i
  %12 = tail call i32 @llvm.bswap.i32(i32 %shl.i)
  %ao_dma_desc = getelementptr inbounds %struct.pcidas64_private, ptr %1, i32 0, i32 13
  %13 = ptrtoint ptr %ao_dma_desc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ao_dma_desc, align 4
  %transfer_size = getelementptr %struct.plx_dma_desc, ptr %14, i32 %5, i32 2
  %15 = ptrtoint ptr %transfer_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %12, ptr %transfer_size, align 4
  %16 = load ptr, ptr %ao_dma_desc, align 4
  %next = getelementptr %struct.plx_dma_desc, ptr %16, i32 %5, i32 3
  %17 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %next, align 4
  %19 = or i32 %18, 33554432
  store i32 %19, ptr %next, align 4
  %20 = load ptr, ptr %ao_dma_desc, align 4
  %next11 = getelementptr %struct.plx_dma_desc, ptr %20, i32 %buffer_index.0.i, i32 3
  %21 = ptrtoint ptr %next11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %next11, align 4
  %23 = and i32 %22, -33554433
  store i32 %23, ptr %next11, align 4
  %add = add i32 %5, 1
  %rem = and i32 %add, 15
  %24 = ptrtoint ptr %ao_dma_index to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %rem, ptr %ao_dma_index, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %shl.i, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_read_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ai_rinsn(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  %i2c_data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %4 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chanspec, align 4
  %shr4 = lshr i32 %5, 24
  %and5 = and i32 %shr4, 3
  tail call fastcc void @disable_ai_pacing(ptr noundef %dev)
  %spinlock = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #7
  %6 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chanspec, align 4
  %adc_control1_bits14 = getelementptr inbounds %struct.pcidas64_private, ptr %3, i32 0, i32 18
  %8 = ptrtoint ptr %adc_control1_bits14 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %adc_control1_bits14, align 4
  %10 = and i16 %9, -513
  %and11 = lshr i32 %7, 17
  %11 = trunc i32 %and11 to i16
  %12 = and i16 %11, 512
  %.sink = or i16 %10, %12
  store i16 %.sink, ptr %adc_control1_bits14, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !300
  tail call void @arm_heavy_mb() #7
  %adc_control1_bits21 = getelementptr inbounds %struct.pcidas64_private, ptr %3, i32 0, i32 18
  %13 = ptrtoint ptr %adc_control1_bits21 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %adc_control1_bits21, align 4
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %main_iobase = getelementptr inbounds %struct.pcidas64_private, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %main_iobase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %main_iobase, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %15) #7, !srcloc !257
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call7) #7
  %layout = getelementptr inbounds %struct.pcidas64_board, ptr %1, i32 0, i32 12
  %18 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %layout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp23.not = icmp eq i32 %19, 2
  br i1 %cmp23.not, label %if.else91, label %if.then25

if.then25:                                        ; preds = %entry
  %hw_config_bits = getelementptr inbounds %struct.pcidas64_private, ptr %3, i32 0, i32 20
  %20 = ptrtoint ptr %hw_config_bits to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %hw_config_bits, align 4
  %22 = and i16 %21, -513
  store i16 %22, ptr %hw_config_bits, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !301
  tail call void @arm_heavy_mb() #7
  %23 = ptrtoint ptr %hw_config_bits to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %hw_config_bits, align 4
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  %26 = ptrtoint ptr %main_iobase to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %main_iobase, align 4
  %add.ptr34 = getelementptr i8, ptr %27, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr34, i16 %25) #7, !srcloc !257
  %28 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %chanspec, align 4
  %and36 = and i32 %29, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %do.body55, label %if.then38

if.then38:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %layout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp40 = icmp eq i32 %31, 0
  %. = select i1 %cmp40, i16 512, i16 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !302
  tail call void @arm_heavy_mb() #7
  %calibration_source = getelementptr inbounds %struct.pcidas64_private, ptr %3, i32 0, i32 24
  %32 = ptrtoint ptr %calibration_source to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %calibration_source, align 4
  %source.tr.i = trunc i32 %33 to i16
  %34 = shl i16 %source.tr.i, 3
  %conv.i = and i16 %34, 120
  %or50 = or i16 %conv.i, %.
  %35 = tail call i16 @llvm.bswap.i16(i16 %or50)
  %36 = ptrtoint ptr %main_iobase to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %main_iobase, align 4
  %add.ptr53 = getelementptr i8, ptr %37, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr53, i16 %35) #7, !srcloc !257
  br label %if.end60

do.body55:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !303
  tail call void @arm_heavy_mb() #7
  %38 = ptrtoint ptr %main_iobase to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %main_iobase, align 4
  %add.ptr59 = getelementptr i8, ptr %39, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr59, i16 0) #7, !srcloc !257
  br label %if.end60

if.end60:                                         ; preds = %do.body55, %if.then38
  %40 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %chanspec, align 4
  %shr62 = lshr i32 %41, 16
  %and63 = and i32 %shr62, 255
  %42 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %board_ptr, align 4
  %ai_range_code.i = getelementptr inbounds %struct.pcidas64_board, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %ai_range_code.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ai_range_code.i, align 4
  %arrayidx.i = getelementptr i8, ptr %45, i32 %and63
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i, align 1
  %conv.i262 = zext i8 %47 to i32
  %shl.i = shl nuw nsw i32 %conv.i262, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and5)
  %cmp66 = icmp ne i32 %and5, 2
  %layout.i = getelementptr inbounds %struct.pcidas64_board, ptr %43, i32 0, i32 12
  %48 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %layout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp.i = icmp eq i32 %49, 1
  %or.cond.i = and i1 %cmp66, %cmp.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp2.i = icmp ne i32 %49, 0
  %or.cond7.i = or i1 %cmp66, %cmp2.i
  %50 = select i1 %or.cond7.i, i32 0, i32 4096
  %conv69 = select i1 %or.cond.i, i32 4096, i32 %50
  %or70 = or i32 %conv69, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and5)
  %cmp71 = icmp eq i32 %and5, 1
  %or74 = or i32 %or70, 8192
  %spec.select = select i1 %cmp71, i32 %or74, i32 %or70
  %51 = trunc i32 %5 to i16
  %conv.i264 = and i16 %51, 63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !304
  tail call void @arm_heavy_mb() #7
  %52 = shl nuw nsw i16 %conv.i264, 8
  %53 = ptrtoint ptr %main_iobase to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %main_iobase, align 4
  %add.ptr84 = getelementptr i8, ptr %54, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr84, i16 %52) #7, !srcloc !257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !305
  tail call void @arm_heavy_mb() #7
  %55 = trunc i32 %spec.select to i16
  %conv88 = or i16 %conv.i264, %55
  %56 = tail call i16 @llvm.bswap.i16(i16 %conv88)
  %57 = ptrtoint ptr %main_iobase to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %main_iobase, align 4
  %add.ptr90 = getelementptr i8, ptr %58, i32 40
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr90, i16 %56) #7, !srcloc !257
  br label %if.end150

if.else91:                                        ; preds = %entry
  %i2c_cal_range_bits = getelementptr inbounds %struct.pcidas64_private, ptr %3, i32 0, i32 25
  %59 = ptrtoint ptr %i2c_cal_range_bits to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %i2c_cal_range_bits, align 4
  %and94 = and i8 %60, -113
  store i8 %and94, ptr %i2c_cal_range_bits, align 4
  %61 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %chanspec, align 4
  %and97 = and i32 %62, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.else107, label %if.then99

if.then99:                                        ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #9
  %calibration_source100 = getelementptr inbounds %struct.pcidas64_private, ptr %3, i32 0, i32 24
  %63 = ptrtoint ptr %calibration_source100 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %calibration_source100, align 4
  %source.tr.i266 = trunc i32 %64 to i8
  %65 = shl i8 %source.tr.i266, 4
  %conv.i267 = and i8 %65, 112
  %or105261 = or i8 %conv.i267, %and94
  br label %if.end114

if.else107:                                       ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #9
  %or112258 = or i8 %and94, 64
  br label %if.end114

if.end114:                                        ; preds = %if.else107, %if.then99
  %storemerge = phi i8 [ %or112258, %if.else107 ], [ %or105261, %if.then99 ]
  %66 = and i32 %5, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp115 = icmp eq i32 %66, 0
  %and.i = and i32 %5, 3
  %shl.i268 = shl nuw nsw i32 1, %and.i
  %conv.i269 = trunc i32 %shl.i268 to i8
  %neg = xor i8 %conv.i269, -1
  %and129 = and i8 %storemerge, %neg
  %or122260 = or i8 %storemerge, %conv.i269
  %storemerge259 = select i1 %cmp115, i8 %or122260, i8 %and129
  %67 = ptrtoint ptr %i2c_cal_range_bits to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %storemerge259, ptr %i2c_cal_range_bits, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %60, i8 %storemerge259)
  %cmp135.not = icmp eq i8 %60, %storemerge259
  br i1 %cmp135.not, label %if.end114.do.body140_crit_edge, label %if.then137

if.end114.do.body140_crit_edge:                   ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body140

if.then137:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i2c_data) #7
  %68 = ptrtoint ptr %i2c_data to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %storemerge259, ptr %i2c_data, align 1
  call fastcc void @i2c_write(ptr noundef %dev, i32 noundef 32, ptr noundef nonnull %i2c_data, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i2c_data) #7
  br label %do.body140

do.body140:                                       ; preds = %if.then137, %if.end114.do.body140_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !306
  tail call void @arm_heavy_mb() #7
  %69 = ptrtoint ptr %main_iobase to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %main_iobase, align 4
  %add.ptr144 = getelementptr i8, ptr %70, i32 24
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr144, i16 0) #7, !srcloc !257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !307
  tail call void @arm_heavy_mb() #7
  %71 = ptrtoint ptr %main_iobase to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %main_iobase, align 4
  %add.ptr149 = getelementptr i8, ptr %72, i32 22
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr149, i16 512) #7, !srcloc !257
  br label %if.end150

if.end150:                                        ; preds = %do.body140, %if.end60
  %n151 = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %73 = ptrtoint ptr %n151 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %n151, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp152274.not = icmp eq i32 %74, 0
  br i1 %cmp152274.not, label %if.end150.cleanup_crit_edge, label %do.body154.lr.ph

if.end150.cleanup_crit_edge:                      ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body154.lr.ph:                                 ; preds = %if.end150
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  br label %do.body154

do.body154:                                       ; preds = %for.inc.do.body154_crit_edge, %do.body154.lr.ph
  %n.0275 = phi i32 [ 0, %do.body154.lr.ph ], [ %inc, %for.inc.do.body154_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !308
  tail call void @arm_heavy_mb() #7
  %75 = ptrtoint ptr %main_iobase to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %main_iobase, align 4
  %add.ptr158 = getelementptr i8, ptr %76, i32 42
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr158, i16 0) #7, !srcloc !257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !309
  tail call void @arm_heavy_mb() #7
  %77 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %chanspec, align 4
  %channel.tr.i = trunc i32 %78 to i16
  %conv.i273 = and i16 %channel.tr.i, 3
  %79 = ptrtoint ptr %main_iobase to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %main_iobase, align 4
  %add.ptr166 = getelementptr i8, ptr %80, i32 36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr166, i16 %conv.i273) #7, !srcloc !257
  %call167 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @cb_pcidas64_ai_eoc, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %tobool168.not = icmp eq i32 %call167, 0
  br i1 %tobool168.not, label %if.end170, label %do.body154.cleanup_crit_edge

do.body154.cleanup_crit_edge:                     ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end170:                                        ; preds = %do.body154
  %81 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %layout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %82)
  %cmp172 = icmp eq i32 %82, 2
  br i1 %cmp172, label %if.then174, label %if.else180

if.then174:                                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #9
  %83 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mmio, align 4
  %add.ptr175 = getelementptr i8, ptr %84, i32 512
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr175) #7, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !310
  %86 = and i32 %85, -65536
  %87 = tail call i32 @llvm.bswap.i32(i32 %86)
  br label %for.inc

if.else180:                                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #9
  %88 = ptrtoint ptr %main_iobase to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %main_iobase, align 4
  %add.ptr184 = getelementptr i8, ptr %89, i32 4
  %90 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr184) #7, !srcloc !248
  %91 = tail call i16 @llvm.bswap.i16(i16 %90)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !311
  %conv188 = zext i16 %91 to i32
  br label %for.inc

for.inc:                                          ; preds = %if.else180, %if.then174
  %conv188.sink = phi i32 [ %87, %if.then174 ], [ %conv188, %if.else180 ]
  %92 = getelementptr i32, ptr %data, i32 %n.0275
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %conv188.sink, ptr %92, align 4
  %inc = add nuw i32 %n.0275, 1
  %94 = ptrtoint ptr %n151 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %n151, align 4
  %cmp152 = icmp ult i32 %inc, %95
  br i1 %cmp152, label %for.inc.do.body154_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.do.body154_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body154

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.body154.cleanup_crit_edge, %if.end150.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end150.cleanup_crit_edge ], [ %inc, %for.inc.cleanup_crit_edge ], [ %call167, %do.body154.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ai_config_insn(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 20, label %sw.bb
    i32 22, label %sw.bb1
    i32 23, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %board_ptr.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %3 = ptrtoint ptr %board_ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %board_ptr.i, align 4
  %arrayidx.i = getelementptr i32, ptr %data, i32 1
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %layout.i = getelementptr inbounds %struct.pcidas64_board, ptr %4, i32 0, i32 12
  %7 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %layout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  %..i = select i1 %cmp.i, i32 16, i32 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %..i)
  %cmp1.not.i = icmp ult i32 %6, %..i
  br i1 %cmp1.not.i, label %if.end8.i, label %do.body.i

do.body.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ai_config_calibration_source.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ai_config_insn, %cleanup)) #7
          to label %if.then6.i [label %cleanup], !srcloc !250

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %9 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %class_dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ai_config_calibration_source.__UNIQUE_ID_ddebug236, ptr noundef %10, ptr noundef nonnull @.str.45, i32 noundef %6) #7
  br label %cleanup

if.end8.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %11 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private.i, align 4
  %calibration_source.i = getelementptr inbounds %struct.pcidas64_private, ptr %12, i32 0, i32 24
  %13 = ptrtoint ptr %calibration_source.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %6, ptr %calibration_source.i, align 4
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %board_ptr.i10 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %14 = ptrtoint ptr %board_ptr.i10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %board_ptr.i10, align 4
  %ai_fifo.i = getelementptr inbounds %struct.pcidas64_board, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %ai_fifo.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ai_fifo.i, align 4
  %arrayidx.i11 = getelementptr i32, ptr %data, i32 1
  %18 = ptrtoint ptr %arrayidx.i11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %sw.bb1.if.end3.i_crit_edge, label %if.then.i

sw.bb1.if.end3.i_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

if.then.i:                                        ; preds = %sw.bb1
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %17, align 4
  %mul.i = mul i32 %21, %19
  %div20.i = lshr i32 %mul.i, 1
  %sample_packing_ratio.i.i = getelementptr inbounds %struct.hw_fifo_info, ptr %17, i32 0, i32 2
  %22 = ptrtoint ptr %sample_packing_ratio.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sample_packing_ratio.i.i, align 4
  %div.i.i = udiv i32 %div20.i, %23
  %div2.i.i = udiv i32 %div.i.i, %21
  %private.i.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %24 = ptrtoint ptr %private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %private.i.i.i, align 4
  %26 = tail call i32 @llvm.umax.i32(i32 %div2.i.i, i32 256) #7
  %max_segment_length.i.i.i = getelementptr inbounds %struct.hw_fifo_info, ptr %17, i32 0, i32 1
  %27 = ptrtoint ptr %max_segment_length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_segment_length.i.i.i, align 4
  %29 = tail call i32 @llvm.umin.i32(i32 %26, i32 %28) #7
  %add.i.i.i = add nuw i32 %29, 128
  %div30.i.i.i = lshr i32 %add.i.i.i, 8
  %fifo_size_reg_mask.i.i.i = getelementptr inbounds %struct.hw_fifo_info, ptr %17, i32 0, i32 3
  %30 = ptrtoint ptr %fifo_size_reg_mask.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %fifo_size_reg_mask.i.i.i, align 4
  %32 = trunc i32 %div30.i.i.i to i16
  %33 = sub i16 0, %32
  %conv5.i.i.i = and i16 %31, %33
  %neg8.i.i.i = xor i16 %31, -1
  %fifo_size_bits.i.i.i = getelementptr inbounds %struct.pcidas64_private, ptr %25, i32 0, i32 19
  %34 = ptrtoint ptr %fifo_size_bits.i.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %fifo_size_bits.i.i.i, align 2
  %and10.i.i.i = and i16 %35, %neg8.i.i.i
  %or31.i.i.i = or i16 %conv5.i.i.i, %and10.i.i.i
  store i16 %or31.i.i.i, ptr %fifo_size_bits.i.i.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !262
  tail call void @arm_heavy_mb() #7
  %36 = ptrtoint ptr %fifo_size_bits.i.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %fifo_size_bits.i.i.i, align 2
  %38 = tail call i16 @llvm.bswap.i16(i16 %37) #7
  %main_iobase.i.i.i = getelementptr inbounds %struct.pcidas64_private, ptr %25, i32 0, i32 3
  %39 = ptrtoint ptr %main_iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %main_iobase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %40, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 %38) #7, !srcloc !257
  %mul.i.i.i = and i32 %add.i.i.i, -256
  %ai_fifo_segment_length.i.i.i = getelementptr inbounds %struct.pcidas64_private, ptr %25, i32 0, i32 28
  %41 = ptrtoint ptr %ai_fifo_segment_length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %mul.i.i.i, ptr %ai_fifo_segment_length.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i.i)
  %cmp.i.i = icmp slt i32 %mul.i.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.cleanup_crit_edge, label %set_ai_fifo_size.exit.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

set_ai_fifo_size.exit.i:                          ; preds = %if.then.i
  %42 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %17, align 4
  %mul.i.i = mul i32 %43, %mul.i.i.i
  %44 = ptrtoint ptr %sample_packing_ratio.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sample_packing_ratio.i.i, align 4
  %mul5.i.i = mul i32 %mul.i.i, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul5.i.i)
  %cmp.i12 = icmp slt i32 %mul5.i.i, 0
  br i1 %cmp.i12, label %set_ai_fifo_size.exit.i.cleanup_crit_edge, label %set_ai_fifo_size.exit.i.if.end3.i_crit_edge

set_ai_fifo_size.exit.i.if.end3.i_crit_edge:      ; preds = %set_ai_fifo_size.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

set_ai_fifo_size.exit.i.cleanup_crit_edge:        ; preds = %set_ai_fifo_size.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.i:                                        ; preds = %set_ai_fifo_size.exit.i.if.end3.i_crit_edge, %sw.bb1.if.end3.i_crit_edge
  %46 = ptrtoint ptr %board_ptr.i10 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %board_ptr.i10, align 4
  %private.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %48 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %private.i.i, align 4
  %ai_fifo_segment_length.i.i = getelementptr inbounds %struct.pcidas64_private, ptr %49, i32 0, i32 28
  %50 = ptrtoint ptr %ai_fifo_segment_length.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ai_fifo_segment_length.i.i, align 4
  %ai_fifo.i22.i = getelementptr inbounds %struct.pcidas64_board, ptr %47, i32 0, i32 11
  %52 = ptrtoint ptr %ai_fifo.i22.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ai_fifo.i22.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  %mul.i23.i = mul i32 %55, %51
  %sample_packing_ratio.i24.i = getelementptr inbounds %struct.hw_fifo_info, ptr %53, i32 0, i32 2
  %56 = ptrtoint ptr %sample_packing_ratio.i24.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sample_packing_ratio.i24.i, align 4
  %mul2.i.i = mul i32 %mul.i23.i, %57
  %58 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %17, align 4
  %div6.i = udiv i32 %mul2.i.i, %59
  %mul7.i = shl i32 %div6.i, 1
  %60 = ptrtoint ptr %arrayidx.i11 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %mul7.i, ptr %arrayidx.i11, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %board_ptr.i14 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %61 = ptrtoint ptr %board_ptr.i14 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %board_ptr.i14, align 4
  %layout.i15 = getelementptr inbounds %struct.pcidas64_board, ptr %62, i32 0, i32 12
  %63 = ptrtoint ptr %layout.i15 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %layout.i15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %64)
  %cond.i = icmp eq i32 %64, 2
  br i1 %cond.i, label %sw.bb.i, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i:                                          ; preds = %sw.bb3
  %arrayidx2.i.i = getelementptr i32, ptr %data, i32 1
  %65 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %66)
  %cond9.i.i = icmp eq i32 %66, 524288
  br i1 %cond9.i.i, label %sw.bb.i.i, label %sw.bb.i.cleanup_crit_edge

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i = getelementptr i32, ptr %data, i32 4
  %67 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %68)
  %cmp.i.i16 = icmp ult i32 %68, 2
  %69 = tail call i32 @llvm.umax.i32(i32 %68, i32 2) #7
  %private.i.i17 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %70 = ptrtoint ptr %private.i.i17 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %private.i.i17, align 4
  %ext_clock.i.i = getelementptr inbounds %struct.pcidas64_private, ptr %71, i32 0, i32 29
  %72 = ptrtoint ptr %ext_clock.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %69, ptr %ext_clock.i.i, align 4
  %arrayidx4.i.i = getelementptr i32, ptr %data, i32 2
  %73 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx4.i.i, align 4
  %chanspec.i.i = getelementptr inbounds %struct.pcidas64_private, ptr %71, i32 0, i32 29, i32 1
  %75 = ptrtoint ptr %chanspec.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %chanspec.i.i, align 4
  %76 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %69, ptr %arrayidx.i.i, align 4
  %spec.select18.i.i = select i1 %cmp.i.i16, i32 -11, i32 5
  br label %cleanup

cleanup:                                          ; preds = %sw.bb.i.i, %sw.bb.i.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %if.end3.i, %set_ai_fifo_size.exit.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.end8.i, %if.then6.i, %do.body.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 2, %if.end8.i ], [ -22, %if.then6.i ], [ -22, %do.body.i ], [ 2, %if.end3.i ], [ %mul5.i.i, %set_ai_fifo_size.exit.i.cleanup_crit_edge ], [ %mul.i.i.i, %if.then.i.cleanup_crit_edge ], [ -22, %sw.bb3.cleanup_crit_edge ], [ %spec.select18.i.i, %sw.bb.i.i ], [ -22, %sw.bb.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ai_cmd(ptr noundef %dev, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  %i2c_data.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %async1 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %4 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %async1, align 4
  %cmd2 = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17
  tail call fastcc void @disable_ai_pacing(ptr noundef %dev)
  tail call fastcc void @abort_dma(ptr noundef %dev, i32 noundef 1)
  %6 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %board_ptr, align 4
  %8 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private, align 4
  %layout.i = getelementptr inbounds %struct.pcidas64_board, ptr %7, i32 0, i32 12
  %10 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %layout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 2
  br i1 %cmp.not.i, label %if.else140.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %chanlist.i.i = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 12
  %chanlist_len.i.i = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 13
  %12 = ptrtoint ptr %chanlist_len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chanlist_len.i.i, align 4
  %umax.i.i = tail call i32 @llvm.umax.i32(i32 %13, i32 1) #7
  %14 = add i32 %umax.i.i, -1
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %if.end.i.i.for.cond.i.i_crit_edge, %if.then.i
  %i.0.i.i = phi i32 [ 0, %if.then.i ], [ %add.i.i, %if.end.i.i.for.cond.i.i_crit_edge ]
  %add.i.i = add nuw i32 %i.0.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i.i, i32 %14)
  %exitcond.not.i.i = icmp eq i32 %i.0.i.i, %14
  br i1 %exitcond.not.i.i, label %if.then1.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %15 = ptrtoint ptr %chanlist.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chanlist.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %16, i32 %add.i.i
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %18, 65535
  %arrayidx3.i.i = getelementptr i32, ptr %16, i32 %i.0.i.i
  %19 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx3.i.i, align 4
  %and4.i.i = and i32 %20, 65535
  %add5.i.i = add nuw nsw i32 %and4.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %add5.i.i)
  %cmp6.not.i.i = icmp eq i32 %and.i.i, %add5.i.i
  br i1 %cmp6.not.i.i, label %if.end.i.i, label %for.body.i.i.if.else.i_crit_edge

for.body.i.i.if.else.i_crit_edge:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %shr43.i.i = xor i32 %20, %18
  %21 = and i32 %shr43.i.i, 67043328
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %if.end.i.i.for.cond.i.i_crit_edge, label %if.end.i.i.if.else.i_crit_edge

if.end.i.i.if.else.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.end.i.i.for.cond.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

if.then1.i:                                       ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %hw_config_bits.i = getelementptr inbounds %struct.pcidas64_private, ptr %9, i32 0, i32 20
  %23 = ptrtoint ptr %hw_config_bits.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %hw_config_bits.i, align 4
  %25 = and i16 %24, -513
  store i16 %25, ptr %hw_config_bits.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !312
  tail call void @arm_heavy_mb() #7
  %26 = ptrtoint ptr %hw_config_bits.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %hw_config_bits.i, align 4
  %28 = tail call i16 @llvm.bswap.i16(i16 %27) #7
  %main_iobase.i = getelementptr inbounds %struct.pcidas64_private, ptr %9, i32 0, i32 3
  %29 = ptrtoint ptr %main_iobase.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %main_iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %30, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %28) #7, !srcloc !257
  %31 = ptrtoint ptr %chanlist.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chanlist.i.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %35 = trunc i32 %34 to i16
  %conv.i.i = and i16 %35, 63
  %shr.i = lshr i32 %34, 16
  %and11.i = and i32 %shr.i, 255
  %36 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %board_ptr, align 4
  %ai_range_code.i.i = getelementptr inbounds %struct.pcidas64_board, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %ai_range_code.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ai_range_code.i.i, align 4
  %arrayidx.i263.i = getelementptr i8, ptr %39, i32 %and11.i
  %40 = ptrtoint ptr %arrayidx.i263.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i263.i, align 1
  %conv.i264.i = zext i8 %41 to i16
  %shl.i.i = shl nuw i16 %conv.i264.i, 8
  %conv15.i = or i16 %shl.i.i, %conv.i.i
  %42 = and i32 %34, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %42)
  %cmp20.i = icmp ne i32 %42, 33554432
  %layout.i.i = getelementptr inbounds %struct.pcidas64_board, ptr %37, i32 0, i32 12
  %43 = ptrtoint ptr %layout.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %layout.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp.i.i = icmp eq i32 %44, 1
  %or.cond.i.i = and i1 %cmp20.i, %cmp.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp2.i.i = icmp ne i32 %44, 0
  %or.cond7.i.i = or i1 %cmp20.i, %cmp2.i.i
  %spec.select.i.i = select i1 %or.cond7.i.i, i16 0, i16 4096
  %retval.0.i266.i = select i1 %or.cond.i.i, i16 4096, i16 %spec.select.i.i
  %or25261.i = or i16 %retval.0.i266.i, %conv15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %42)
  %cmp31.i = icmp eq i32 %42, 16777216
  %45 = or i16 %or25261.i, 8192
  %spec.select.i = select i1 %cmp31.i, i16 %45, i16 %or25261.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !313
  tail call void @arm_heavy_mb() #7
  %46 = ptrtoint ptr %chanlist.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %chanlist.i.i, align 4
  %48 = ptrtoint ptr %chanlist_len.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %chanlist_len.i.i, align 4
  %sub.i = add i32 %49, -1
  %arrayidx41.i = getelementptr i32, ptr %47, i32 %sub.i
  %50 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx41.i, align 4
  %52 = trunc i32 %51 to i16
  %conv.i267.i = shl i16 %52, 8
  %53 = and i16 %conv.i267.i, 16128
  %54 = ptrtoint ptr %main_iobase.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %main_iobase.i, align 4
  %add.ptr45.i = getelementptr i8, ptr %55, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr45.i, i16 %53) #7, !srcloc !257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !314
  tail call void @arm_heavy_mb() #7
  %56 = tail call i16 @llvm.bswap.i16(i16 %spec.select.i) #7
  %57 = ptrtoint ptr %main_iobase.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %main_iobase.i, align 4
  %add.ptr50.i = getelementptr i8, ptr %58, i32 40
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr50.i, i16 %56) #7, !srcloc !257
  br label %do.body

if.else.i:                                        ; preds = %if.end.i.i.if.else.i_crit_edge, %for.body.i.i.if.else.i_crit_edge
  %write_subdev.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 22
  %59 = ptrtoint ptr %write_subdev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write_subdev.i, align 4
  %tobool51.not.i = icmp eq ptr %60, null
  br i1 %tobool51.not.i, label %if.else.i.if.end55.i_crit_edge, label %land.lhs.true.i

if.else.i.if.end55.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %busy.i = getelementptr inbounds %struct.comedi_subdevice, ptr %60, i32 0, i32 9
  %61 = ptrtoint ptr %busy.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %busy.i, align 4
  %tobool53.not.i = icmp eq ptr %62, null
  br i1 %tobool53.not.i, label %land.lhs.true.i.if.end55.i_crit_edge, label %setup_channel_queue.exit

land.lhs.true.i.if.end55.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55.i

if.end55.i:                                       ; preds = %land.lhs.true.i.if.end55.i_crit_edge, %if.else.i.if.end55.i_crit_edge
  %hw_config_bits56.i = getelementptr inbounds %struct.pcidas64_private, ptr %9, i32 0, i32 20
  %63 = ptrtoint ptr %hw_config_bits56.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %hw_config_bits56.i, align 4
  %65 = or i16 %64, 512
  store i16 %65, ptr %hw_config_bits56.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !315
  tail call void @arm_heavy_mb() #7
  %66 = ptrtoint ptr %hw_config_bits56.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %hw_config_bits56.i, align 4
  %68 = tail call i16 @llvm.bswap.i16(i16 %67) #7
  %main_iobase64.i = getelementptr inbounds %struct.pcidas64_private, ptr %9, i32 0, i32 3
  %69 = ptrtoint ptr %main_iobase64.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %main_iobase64.i, align 4
  %add.ptr65.i = getelementptr i8, ptr %70, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr65.i, i16 %68) #7, !srcloc !257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !316
  tail call void @arm_heavy_mb() #7
  %71 = ptrtoint ptr %main_iobase64.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %main_iobase64.i, align 4
  %add.ptr70.i = getelementptr i8, ptr %72, i32 102
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr70.i, i16 0) #7, !srcloc !257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !317
  tail call void @arm_heavy_mb() #7
  %73 = ptrtoint ptr %main_iobase64.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %main_iobase64.i, align 4
  %add.ptr75.i = getelementptr i8, ptr %74, i32 38
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr75.i, i16 0) #7, !srcloc !257
  %75 = ptrtoint ptr %chanlist_len.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %chanlist_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp77291.not.i = icmp eq i32 %76, 0
  br i1 %cmp77291.not.i, label %if.end55.i.do.body129.i_crit_edge, label %if.end55.i.for.body.i_crit_edge

if.end55.i.for.body.i_crit_edge:                  ; preds = %if.end55.i
  br label %for.body.i

if.end55.i.do.body129.i_crit_edge:                ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body129.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end55.i.for.body.i_crit_edge
  %77 = phi i32 [ %98, %for.body.i.for.body.i_crit_edge ], [ %76, %if.end55.i.for.body.i_crit_edge ]
  %i.0292.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end55.i.for.body.i_crit_edge ]
  %78 = ptrtoint ptr %chanlist.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %chanlist.i.i, align 4
  %arrayidx80.i = getelementptr i32, ptr %79, i32 %i.0292.i
  %80 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx80.i, align 4
  %82 = trunc i32 %81 to i16
  %conv.i268.i = and i16 %82, 63
  %shr87.i = lshr i32 %81, 16
  %and88.i = and i32 %shr87.i, 255
  %83 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %board_ptr, align 4
  %ai_range_code.i270.i = getelementptr inbounds %struct.pcidas64_board, ptr %84, i32 0, i32 5
  %85 = ptrtoint ptr %ai_range_code.i270.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ai_range_code.i270.i, align 4
  %arrayidx.i271.i = getelementptr i8, ptr %86, i32 %and88.i
  %87 = ptrtoint ptr %arrayidx.i271.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx.i271.i, align 1
  %conv.i272.i = zext i8 %88 to i16
  %shl.i273.i = shl nuw i16 %conv.i272.i, 8
  %conv92.i = or i16 %shl.i273.i, %conv.i268.i
  %89 = and i32 %81, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %89)
  %cmp95.i = icmp ne i32 %89, 33554432
  %layout.i275.i = getelementptr inbounds %struct.pcidas64_board, ptr %84, i32 0, i32 12
  %90 = ptrtoint ptr %layout.i275.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %layout.i275.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %91)
  %cmp.i276.i = icmp eq i32 %91, 1
  %or.cond.i278.i = and i1 %cmp95.i, %cmp.i276.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp2.i279.i = icmp ne i32 %91, 0
  %or.cond7.i280.i = or i1 %cmp95.i, %cmp2.i279.i
  %spec.select.i281.i = select i1 %or.cond7.i280.i, i16 0, i16 4096
  %retval.0.i282.i = select i1 %or.cond.i278.i, i16 4096, i16 %spec.select.i281.i
  %or102260.i = or i16 %retval.0.i282.i, %conv92.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %89)
  %cmp108.i = icmp eq i32 %89, 16777216
  %92 = or i16 %or102260.i, 8192
  %spec.select262.i = select i1 %cmp108.i, i16 %92, i16 %or102260.i
  %sub116.i = add i32 %77, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0292.i, i32 %sub116.i)
  %cmp117.i = icmp eq i32 %i.0292.i, %sub116.i
  %93 = or i16 %spec.select262.i, -16384
  %bits.2.i = select i1 %cmp117.i, i16 %93, i16 %spec.select262.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !318
  tail call void @arm_heavy_mb() #7
  %94 = tail call i16 @llvm.bswap.i16(i16 %bits.2.i) #7
  %95 = ptrtoint ptr %main_iobase64.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %main_iobase64.i, align 4
  %add.ptr128.i = getelementptr i8, ptr %96, i32 256
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr128.i, i16 %94) #7, !srcloc !257
  %inc.i = add nuw i32 %i.0292.i, 1
  %97 = ptrtoint ptr %chanlist_len.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %chanlist_len.i.i, align 4
  %cmp77.i = icmp ult i32 %inc.i, %98
  br i1 %cmp77.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.do.body129.i_crit_edge

for.body.i.do.body129.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body129.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do.body129.i:                                     ; preds = %for.body.i.do.body129.i_crit_edge, %if.end55.i.do.body129.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !319
  tail call void @arm_heavy_mb() #7
  %99 = ptrtoint ptr %main_iobase64.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %main_iobase64.i, align 4
  %add.ptr133.i = getelementptr i8, ptr %100, i32 38
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr133.i, i16 0) #7, !srcloc !257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !320
  tail call void @arm_heavy_mb() #7
  %101 = ptrtoint ptr %main_iobase64.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %main_iobase64.i, align 4
  %add.ptr138.i = getelementptr i8, ptr %102, i32 40
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr138.i, i16 0) #7, !srcloc !257
  br label %do.body

if.else140.i:                                     ; preds = %entry
  %i2c_cal_range_bits.i = getelementptr inbounds %struct.pcidas64_private, ptr %9, i32 0, i32 25
  %103 = ptrtoint ptr %i2c_cal_range_bits.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %i2c_cal_range_bits.i, align 4
  %105 = and i8 %104, -113
  %or150258.i = or i8 %105, 64
  store i8 %or150258.i, ptr %i2c_cal_range_bits.i, align 4
  %chanlist_len153.i = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 13
  %106 = ptrtoint ptr %chanlist_len153.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %chanlist_len153.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp154293.not.i = icmp eq i32 %107, 0
  br i1 %cmp154293.not.i, label %if.else140.i.for.end183.i_crit_edge, label %for.body156.lr.ph.i

if.else140.i.for.end183.i_crit_edge:              ; preds = %if.else140.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end183.i

for.body156.lr.ph.i:                              ; preds = %if.else140.i
  %chanlist157.i = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 12
  br label %for.body156.i

for.body156.i:                                    ; preds = %if.end180.i.for.body156.i_crit_edge, %for.body156.lr.ph.i
  %i.1294.i = phi i32 [ 0, %for.body156.lr.ph.i ], [ %inc182.i, %if.end180.i.for.body156.i_crit_edge ]
  %108 = ptrtoint ptr %chanlist157.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %chanlist157.i, align 4
  %arrayidx158.i = getelementptr i32, ptr %109, i32 %i.1294.i
  %110 = ptrtoint ptr %arrayidx158.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx158.i, align 4
  %112 = and i32 %111, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp164.i = icmp eq i32 %112, 0
  %and.i283.i = and i32 %111, 3
  %shl.i284.i = shl nuw nsw i32 1, %and.i283.i
  %conv.i285.i = trunc i32 %shl.i284.i to i8
  br i1 %cmp164.i, label %if.then166.i, label %if.else173.i

if.then166.i:                                     ; preds = %for.body156.i
  call void @__sanitizer_cov_trace_pc() #9
  %113 = ptrtoint ptr %i2c_cal_range_bits.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %i2c_cal_range_bits.i, align 4
  %or171259.i = or i8 %114, %conv.i285.i
  br label %if.end180.i

if.else173.i:                                     ; preds = %for.body156.i
  call void @__sanitizer_cov_trace_pc() #9
  %neg.i = xor i8 %conv.i285.i, -1
  %115 = ptrtoint ptr %i2c_cal_range_bits.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %i2c_cal_range_bits.i, align 4
  %and178.i = and i8 %116, %neg.i
  br label %if.end180.i

if.end180.i:                                      ; preds = %if.else173.i, %if.then166.i
  %storemerge.i = phi i8 [ %and178.i, %if.else173.i ], [ %or171259.i, %if.then166.i ]
  %117 = ptrtoint ptr %i2c_cal_range_bits.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %storemerge.i, ptr %i2c_cal_range_bits.i, align 4
  %inc182.i = add nuw i32 %i.1294.i, 1
  %118 = ptrtoint ptr %chanlist_len153.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %chanlist_len153.i, align 4
  %cmp154.i = icmp ult i32 %inc182.i, %119
  br i1 %cmp154.i, label %if.end180.i.for.body156.i_crit_edge, label %if.end180.i.for.end183.i_crit_edge

if.end180.i.for.end183.i_crit_edge:               ; preds = %if.end180.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end183.i

if.end180.i.for.body156.i_crit_edge:              ; preds = %if.end180.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body156.i

for.end183.i:                                     ; preds = %if.end180.i.for.end183.i_crit_edge, %if.else140.i.for.end183.i_crit_edge
  %120 = ptrtoint ptr %i2c_cal_range_bits.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %i2c_cal_range_bits.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %104, i8 %121)
  %cmp187.not.i = icmp eq i8 %104, %121
  br i1 %cmp187.not.i, label %for.end183.i.do.body_crit_edge, label %if.then189.i

for.end183.i.do.body_crit_edge:                   ; preds = %for.end183.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then189.i:                                     ; preds = %for.end183.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i2c_data.i) #7
  %122 = ptrtoint ptr %i2c_data.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %121, ptr %i2c_data.i, align 1
  call fastcc void @i2c_write(ptr noundef %dev, i32 noundef 32, ptr noundef nonnull %i2c_data.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i2c_data.i) #7
  br label %do.body

setup_channel_queue.exit:                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %123 = ptrtoint ptr %class_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %class_dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %124, ptr noundef nonnull @.str.46) #10
  %125 = ptrtoint ptr %class_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %class_dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %126, ptr noundef nonnull @.str.49) #10
  br label %cleanup

do.body:                                          ; preds = %if.then189.i, %for.end183.i.do.body_crit_edge, %do.body129.i, %if.then1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !321
  tail call void @arm_heavy_mb() #7
  %main_iobase = getelementptr inbounds %struct.pcidas64_private, ptr %3, i32 0, i32 3
  %127 = ptrtoint ptr %main_iobase to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %main_iobase, align 4
  %add.ptr = getelementptr i8, ptr %128, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 0) #7, !srcloc !257
  %129 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %board_ptr, align 4
  %131 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %private, align 4
  tail call fastcc void @check_adc_timing(ptr noundef %dev, ptr noundef %cmd2) #7
  %133 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %board_ptr, align 4
  %layout.i.i293 = getelementptr inbounds %struct.pcidas64_board, ptr %134, i32 0, i32 12
  %135 = ptrtoint ptr %layout.i.i293 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %layout.i.i293, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %136)
  %cond.i.i = icmp eq i32 %136, 2
  br i1 %cond.i.i, label %sw.bb.i.i, label %do.body.select_master_clock.exit.i_crit_edge

do.body.select_master_clock.exit.i_crit_edge:     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %select_master_clock.exit.i

sw.bb.i.i:                                        ; preds = %do.body
  %137 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %private, align 4
  %hw_config_bits.i.i.i = getelementptr inbounds %struct.pcidas64_private, ptr %138, i32 0, i32 20
  %139 = ptrtoint ptr %hw_config_bits.i.i.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %hw_config_bits.i.i.i, align 4
  %141 = and i16 %140, -4
  store i16 %141, ptr %hw_config_bits.i.i.i, align 4
  %scan_begin_src.i.i.i = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 4
  %142 = ptrtoint ptr %scan_begin_src.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %scan_begin_src.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %143)
  %cmp.i.i.i = icmp eq i32 %143, 256
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else13.i.i.i

if.then.i.i.i:                                    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %chanspec3.i.i.i = getelementptr inbounds %struct.pcidas64_private, ptr %138, i32 0, i32 29, i32 1
  %144 = ptrtoint ptr %chanspec3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %chanspec3.i.i.i, align 4
  %and4.i.i.i = and i32 %145, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and4.i.i.i, 0
  %146 = or i16 %140, 3
  %147 = or i16 %141, 2
  %storemerge.i.i.i = select i1 %tobool.not.i.i.i, i16 %146, i16 %147
  br label %select_master_clock_4020.exit.i.i

if.else13.i.i.i:                                  ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %148 = or i16 %141, 1
  br label %select_master_clock_4020.exit.i.i

select_master_clock_4020.exit.i.i:                ; preds = %if.else13.i.i.i, %if.then.i.i.i
  %storemerge26.i.i.i = phi i16 [ %storemerge.i.i.i, %if.then.i.i.i ], [ %148, %if.else13.i.i.i ]
  %149 = ptrtoint ptr %hw_config_bits.i.i.i to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %storemerge26.i.i.i, ptr %hw_config_bits.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !322
  tail call void @arm_heavy_mb() #7
  %150 = ptrtoint ptr %hw_config_bits.i.i.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %hw_config_bits.i.i.i, align 4
  %152 = tail call i16 @llvm.bswap.i16(i16 %151) #7
  %main_iobase.i.i.i = getelementptr inbounds %struct.pcidas64_private, ptr %138, i32 0, i32 3
  %153 = ptrtoint ptr %main_iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %main_iobase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %154, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 %152) #7, !srcloc !257
  br label %select_master_clock.exit.i

select_master_clock.exit.i:                       ; preds = %select_master_clock_4020.exit.i.i, %do.body.select_master_clock.exit.i_crit_edge
  %layout.i294 = getelementptr inbounds %struct.pcidas64_board, ptr %130, i32 0, i32 12
  %155 = ptrtoint ptr %layout.i294 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %layout.i294, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %156)
  %cmp.i = icmp eq i32 %156, 2
  br i1 %cmp.i, label %if.then.i295, label %if.else.i297

if.then.i295:                                     ; preds = %select_master_clock.exit.i
  %scan_begin_src.i.i = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 4
  %157 = ptrtoint ptr %scan_begin_src.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %scan_begin_src.i.i, align 4
  %159 = zext i32 %158 to i64
  call void @__sanitizer_cov_trace_switch(i64 %159, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %158, label %do.end.i.i [
    i32 16, label %sw.bb.i42.i
    i32 256, label %sw.bb1.i.i
  ]

sw.bb.i42.i:                                      ; preds = %if.then.i295
  call void @__sanitizer_cov_trace_pc() #9
  %scan_begin_arg.i.i = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 5
  %160 = ptrtoint ptr %scan_begin_arg.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %scan_begin_arg.i.i, align 4
  %div.i.i = udiv i32 %161, 25
  br label %ai_convert_counter_4020.exit.i

sw.bb1.i.i:                                       ; preds = %if.then.i295
  call void @__sanitizer_cov_trace_pc() #9
  %162 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %private, align 4
  %ext_clock.i.i = getelementptr inbounds %struct.pcidas64_private, ptr %163, i32 0, i32 29
  %164 = ptrtoint ptr %ext_clock.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %ext_clock.i.i, align 4
  br label %ai_convert_counter_4020.exit.i

do.end.i.i:                                       ; preds = %if.then.i295
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev.i.i296 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %166 = ptrtoint ptr %class_dev.i.i296 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %class_dev.i.i296, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %167, ptr noundef nonnull @.str.51) #10
  br label %ai_convert_counter_4020.exit.i

ai_convert_counter_4020.exit.i:                   ; preds = %do.end.i.i, %sw.bb1.i.i, %sw.bb.i42.i
  %divisor.0.i.i = phi i32 [ 1000, %do.end.i.i ], [ %165, %sw.bb1.i.i ], [ %div.i.i, %sw.bb.i42.i ]
  %sub.i.i = add i32 %divisor.0.i.i, -2
  br label %set_ai_pacing.exit

if.else.i297:                                     ; preds = %select_master_clock.exit.i
  %convert_arg.i.i = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 7
  %168 = ptrtoint ptr %convert_arg.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %convert_arg.i.i, align 4
  %div.i43.i = udiv i32 %169, 25
  %sub.i44.i = add nsw i32 %div.i43.i, -3
  %scan_begin_src.i45.i = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 4
  %170 = ptrtoint ptr %scan_begin_src.i45.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %scan_begin_src.i45.i, align 4
  %172 = zext i32 %171 to i64
  call void @__sanitizer_cov_trace_switch(i64 %172, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %171, label %if.else.i297.set_ai_pacing.exit_crit_edge [
    i32 16, label %sw.bb.i49.i
    i32 4, label %if.else.i297.sw.epilog.i.i_crit_edge
  ]

if.else.i297.sw.epilog.i.i_crit_edge:             ; preds = %if.else.i297
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

if.else.i297.set_ai_pacing.exit_crit_edge:        ; preds = %if.else.i297
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_ai_pacing.exit

sw.bb.i49.i:                                      ; preds = %if.else.i297
  call void @__sanitizer_cov_trace_pc() #9
  %scan_begin_arg.i46.i = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 5
  %173 = ptrtoint ptr %scan_begin_arg.i46.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %scan_begin_arg.i46.i, align 4
  %chanlist_len.i.i298 = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 13
  %175 = ptrtoint ptr %chanlist_len.i.i298 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %chanlist_len.i.i298, align 4
  %sub.i48.i = add i32 %176, -1
  %mul.i.i = mul i32 %sub.i48.i, %169
  %sub1.i.i = sub i32 %174, %mul.i.i
  %.pre.i = udiv i32 %sub1.i.i, 25
  %.pre50.i = add nsw i32 %.pre.i, -3
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb.i49.i, %if.else.i297.sw.epilog.i.i_crit_edge
  %sub5.i.pre-phi.i = phi i32 [ %sub.i44.i, %if.else.i297.sw.epilog.i.i_crit_edge ], [ %.pre50.i, %sw.bb.i49.i ]
  br label %set_ai_pacing.exit

set_ai_pacing.exit:                               ; preds = %sw.epilog.i.i, %if.else.i297.set_ai_pacing.exit_crit_edge, %ai_convert_counter_4020.exit.i
  %convert_counter.0.i = phi i32 [ %sub.i.i, %ai_convert_counter_4020.exit.i ], [ %sub.i44.i, %if.else.i297.set_ai_pacing.exit_crit_edge ], [ %sub.i44.i, %sw.epilog.i.i ]
  %scan_counter.0.i = phi i32 [ 0, %ai_convert_counter_4020.exit.i ], [ 0, %if.else.i297.set_ai_pacing.exit_crit_edge ], [ %sub5.i.pre-phi.i, %sw.epilog.i.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !323
  tail call void @arm_heavy_mb() #7
  %conv.i = trunc i32 %convert_counter.0.i to i16
  %177 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #7
  %main_iobase.i299 = getelementptr inbounds %struct.pcidas64_private, ptr %132, i32 0, i32 3
  %178 = ptrtoint ptr %main_iobase.i299 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %main_iobase.i299, align 4
  %add.ptr.i300 = getelementptr i8, ptr %179, i32 22
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i300, i16 %177) #7, !srcloc !257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !324
  tail call void @arm_heavy_mb() #7
  %sh.diff.i = lshr i32 %convert_counter.0.i, 8
  %tr.sh.diff.i = trunc i32 %sh.diff.i to i16
  %conv7.i = and i16 %tr.sh.diff.i, -256
  %180 = ptrtoint ptr %main_iobase.i299 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %main_iobase.i299, align 4
  %add.ptr9.i = getelementptr i8, ptr %181, i32 24
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9.i, i16 %conv7.i) #7, !srcloc !257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !325
  tail call void @arm_heavy_mb() #7
  %conv14.i = trunc i32 %scan_counter.0.i to i16
  %182 = tail call i16 @llvm.bswap.i16(i16 %conv14.i) #7
  %183 = ptrtoint ptr %main_iobase.i299 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %main_iobase.i299, align 4
  %add.ptr16.i = getelementptr i8, ptr %184, i32 26
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr16.i, i16 %182) #7, !srcloc !257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !326
  tail call void @arm_heavy_mb() #7
  %sh.diff40.i = lshr i32 %scan_counter.0.i, 8
  %tr.sh.diff41.i = trunc i32 %sh.diff40.i to i16
  %conv22.i = and i16 %tr.sh.diff41.i, -256
  %185 = ptrtoint ptr %main_iobase.i299 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %main_iobase.i299, align 4
  %add.ptr24.i = getelementptr i8, ptr %186, i32 28
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr24.i, i16 %conv22.i) #7, !srcloc !257
  %187 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !327
  tail call void @arm_heavy_mb() #7
  %main_iobase12.i = getelementptr inbounds %struct.pcidas64_private, ptr %188, i32 0, i32 3
  %189 = ptrtoint ptr %main_iobase12.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %main_iobase12.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %190, i32 30
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr13.i, i16 256) #7, !srcloc !257
  %191 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %private, align 4
  %flags1.i = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 1
  %193 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %flags1.i, align 4
  %and.i = and i32 %194, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %set_ai_pacing.exit.enable_ai_interrupts.exit_crit_edge, label %if.then.i307

set_ai_pacing.exit.enable_ai_interrupts.exit_crit_edge: ; preds = %set_ai_pacing.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %enable_ai_interrupts.exit

if.then.i307:                                     ; preds = %set_ai_pacing.exit
  call void @__sanitizer_cov_trace_pc() #9
  %195 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %board_ptr, align 4
  %layout.i304 = getelementptr inbounds %struct.pcidas64_board, ptr %196, i32 0, i32 12
  %197 = ptrtoint ptr %layout.i304 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %layout.i304, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %198)
  %cmp.not.i305 = icmp eq i32 %198, 2
  %spec.select.i306 = select i1 %cmp.not.i305, i32 34312, i32 34318
  br label %enable_ai_interrupts.exit

enable_ai_interrupts.exit:                        ; preds = %if.then.i307, %set_ai_pacing.exit.enable_ai_interrupts.exit_crit_edge
  %bits.0.i = phi i32 [ 34312, %set_ai_pacing.exit.enable_ai_interrupts.exit_crit_edge ], [ %spec.select.i306, %if.then.i307 ]
  %spinlock.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  %intr_enable_bits.i = getelementptr inbounds %struct.pcidas64_private, ptr %192, i32 0, i32 17
  %199 = ptrtoint ptr %intr_enable_bits.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %intr_enable_bits.i, align 4
  %or9.i = or i32 %200, %bits.0.i
  store i32 %or9.i, ptr %intr_enable_bits.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !328
  tail call void @arm_heavy_mb() #7
  %201 = ptrtoint ptr %intr_enable_bits.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %intr_enable_bits.i, align 4
  %conv14.i308 = trunc i32 %202 to i16
  %203 = tail call i16 @llvm.bswap.i16(i16 %conv14.i308) #7
  %main_iobase.i309 = getelementptr inbounds %struct.pcidas64_private, ptr %192, i32 0, i32 3
  %204 = ptrtoint ptr %main_iobase.i309 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %main_iobase.i309, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %205, i16 %203) #7, !srcloc !257
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call6.i) #7
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  %adc_control1_bits = getelementptr inbounds %struct.pcidas64_private, ptr %3, i32 0, i32 18
  %206 = ptrtoint ptr %adc_control1_bits to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %adc_control1_bits, align 4
  %208 = and i16 %207, -577
  %209 = or i16 %208, 64
  store i16 %209, ptr %adc_control1_bits, align 4
  %layout = getelementptr inbounds %struct.pcidas64_board, ptr %1, i32 0, i32 12
  %210 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %layout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %211)
  %cmp18.not = icmp eq i32 %211, 2
  br i1 %cmp18.not, label %if.else41, label %if.then20

if.then20:                                        ; preds = %enable_ai_interrupts.exit
  %212 = and i16 %209, 3583
  %213 = ptrtoint ptr %adc_control1_bits to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 %212, ptr %adc_control1_bits, align 4
  %convert_src = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 6
  %214 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %215)
  %cmp25 = icmp eq i32 %215, 64
  br i1 %cmp25, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  %or32287 = or i16 %212, -12288
  br label %do.body90

if.else:                                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  %or38286 = or i16 %212, -32768
  br label %do.body90

if.else41:                                        ; preds = %enable_ai_interrupts.exit
  %216 = and i16 %209, -12801
  %217 = ptrtoint ptr %adc_control1_bits to i32
  call void @__asan_store2_noabort(i32 %217)
  store i16 %216, ptr %adc_control1_bits, align 4
  %chanlist_len = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 13
  %218 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %chanlist_len, align 4
  %220 = zext i32 %219 to i64
  call void @__sanitizer_cov_trace_switch(i64 %220, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %219, label %if.else41.if.end63_crit_edge [
    i32 4, label %if.else41.if.end63.sink.split_crit_edge
    i32 2, label %if.then57
  ]

if.else41.if.end63.sink.split_crit_edge:          ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63.sink.split

if.else41.if.end63_crit_edge:                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.then57:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63.sink.split

if.end63.sink.split:                              ; preds = %if.then57, %if.else41.if.end63.sink.split_crit_edge
  %.sink329 = phi i16 [ 4096, %if.then57 ], [ 8192, %if.else41.if.end63.sink.split_crit_edge ]
  %221 = or i16 %216, %.sink329
  %222 = ptrtoint ptr %adc_control1_bits to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 %221, ptr %adc_control1_bits, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.end63.sink.split, %if.else41.if.end63_crit_edge
  %223 = ptrtoint ptr %adc_control1_bits to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %adc_control1_bits, align 4
  %225 = and i16 %224, -769
  store i16 %225, ptr %adc_control1_bits, align 4
  %chanlist = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 12
  %226 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %chanlist, align 4
  %228 = ptrtoint ptr %227 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %227, align 4
  %channel.tr.i = trunc i32 %229 to i16
  %230 = shl i16 %channel.tr.i, 8
  %conv.i310 = and i16 %230, 768
  %.masked = and i16 %224, -3841
  %231 = or i16 %conv.i310, %.masked
  store i16 %231, ptr %adc_control1_bits, align 4
  %232 = load ptr, ptr %chanlist, align 4
  %233 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %chanlist_len, align 4
  %sub = add i32 %234, -1
  %arrayidx81 = getelementptr i32, ptr %232, i32 %sub
  %235 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %arrayidx81, align 4
  %channel.tr.i311 = trunc i32 %236 to i16
  %237 = shl i16 %channel.tr.i311, 10
  %conv.i312 = and i16 %237, 3072
  %or87285 = or i16 %conv.i312, %231
  br label %do.body90

do.body90:                                        ; preds = %if.end63, %if.else, %if.then27
  %or87285.sink = phi i16 [ %or87285, %if.end63 ], [ %or38286, %if.else ], [ %or32287, %if.then27 ]
  %238 = ptrtoint ptr %adc_control1_bits to i32
  call void @__asan_store2_noabort(i32 %238)
  store i16 %or87285.sink, ptr %adc_control1_bits, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  tail call void @arm_heavy_mb() #7
  %239 = ptrtoint ptr %adc_control1_bits to i32
  call void @__asan_load2_noabort(i32 %239)
  %240 = load i16, ptr %adc_control1_bits, align 4
  %241 = tail call i16 @llvm.bswap.i16(i16 %240)
  %242 = ptrtoint ptr %main_iobase to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %main_iobase, align 4
  %add.ptr95 = getelementptr i8, ptr %243, i32 18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr95, i16 %241) #7, !srcloc !257
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !330
  tail call void @arm_heavy_mb() #7
  %244 = ptrtoint ptr %main_iobase to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %main_iobase, align 4
  %add.ptr101 = getelementptr i8, ptr %245, i32 42
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr101, i16 0) #7, !srcloc !257
  %246 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %flags1.i, align 4
  %and103 = and i32 %247, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %cmp104 = icmp eq i32 %and103, 0
  br i1 %cmp104, label %do.body90.if.then109_crit_edge, label %lor.lhs.false

do.body90.if.then109_crit_edge:                   ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then109

lor.lhs.false:                                    ; preds = %do.body90
  %248 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %layout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %249)
  %cmp107 = icmp eq i32 %249, 2
  br i1 %cmp107, label %lor.lhs.false.if.then109_crit_edge, label %lor.lhs.false.do.body145_crit_edge

lor.lhs.false.do.body145_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body145

lor.lhs.false.if.then109_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then109

if.then109:                                       ; preds = %lor.lhs.false.if.then109_crit_edge, %do.body90.if.then109_crit_edge
  %ai_dma_index = getelementptr inbounds %struct.pcidas64_private, ptr %3, i32 0, i32 10
  %250 = ptrtoint ptr %ai_dma_index to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 0, ptr %ai_dma_index, align 4
  %ai_dma_desc = getelementptr inbounds %struct.pcidas64_private, ptr %3, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then109
  %i.0328 = phi i32 [ 0, %if.then109 ], [ %inc, %for.body.for.body_crit_edge ]
  %251 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %board_ptr, align 4
  %253 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %private, align 4
  %ai_fifo_segment_length.i = getelementptr inbounds %struct.pcidas64_private, ptr %254, i32 0, i32 28
  %255 = ptrtoint ptr %ai_fifo_segment_length.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %ai_fifo_segment_length.i, align 4
  %ai_fifo.i = getelementptr inbounds %struct.pcidas64_board, ptr %252, i32 0, i32 11
  %257 = ptrtoint ptr %ai_fifo.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %ai_fifo.i, align 4
  %sample_packing_ratio.i = getelementptr inbounds %struct.hw_fifo_info, ptr %258, i32 0, i32 2
  %259 = ptrtoint ptr %sample_packing_ratio.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %sample_packing_ratio.i, align 4
  %mul.i = mul i32 %260, %256
  %261 = tail call i32 @llvm.umin.i32(i32 %mul.i, i32 2048) #7
  %mul = shl nuw nsw i32 %261, 1
  %262 = tail call i32 @llvm.bswap.i32(i32 %mul)
  %263 = ptrtoint ptr %ai_dma_desc to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %ai_dma_desc, align 4
  %transfer_size = getelementptr %struct.plx_dma_desc, ptr %264, i32 %i.0328, i32 2
  %265 = ptrtoint ptr %transfer_size to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 %262, ptr %transfer_size, align 4
  %inc = add nuw nsw i32 %i.0328, 1
  %266 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %layout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %267)
  %cmp.i314 = icmp eq i32 %267, 2
  %..i = select i1 %cmp.i314, i32 128, i32 16
  %cmp111 = icmp ult i32 %inc, %..i
  br i1 %cmp111, label %for.body.for.body_crit_edge, label %if.end118

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end118:                                        ; preds = %for.body
  %ai_dma_desc_bus_addr = getelementptr inbounds %struct.pcidas64_private, ptr %3, i32 0, i32 9
  %268 = ptrtoint ptr %ai_dma_desc_bus_addr to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %ai_dma_desc_bus_addr, align 4
  %or117 = or i32 %269, 13
  %270 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %plx9080_iobase19.i = getelementptr inbounds %struct.pcidas64_private, ptr %271, i32 0, i32 2
  %272 = ptrtoint ptr %plx9080_iobase19.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %plx9080_iobase19.i, align 4
  %add.ptr.i318 = getelementptr i8, ptr %273, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i318, i32 0) #7, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !331
  tail call void @arm_heavy_mb() #7
  %274 = ptrtoint ptr %plx9080_iobase19.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %plx9080_iobase19.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %275, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 0) #7, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !332
  tail call void @arm_heavy_mb() #7
  %276 = ptrtoint ptr %plx9080_iobase19.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %plx9080_iobase19.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %277, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 0) #7, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !333
  tail call void @arm_heavy_mb() #7
  %278 = tail call i32 @llvm.bswap.i32(i32 %or117) #7
  %279 = ptrtoint ptr %plx9080_iobase19.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %plx9080_iobase19.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %280, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %278) #7, !srcloc !242
  %281 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %private, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !289
  tail call void @arm_heavy_mb() #7
  %plx9080_iobase.i = getelementptr inbounds %struct.pcidas64_private, ptr %282, i32 0, i32 2
  %283 = ptrtoint ptr %plx9080_iobase.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %plx9080_iobase.i, align 4
  %add.ptr.i321 = getelementptr i8, ptr %284, i32 169
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i321, i8 11) #7, !srcloc !270
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i) #7
  %285 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %285)
  %.pr = load i32, ptr %layout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp120 = icmp eq i32 %.pr, 2
  br i1 %cmp120, label %if.then122, label %if.end118.do.body145_crit_edge

if.end118.do.body145_crit_edge:                   ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body145

if.then122:                                       ; preds = %if.end118
  %start_src = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 2
  %286 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %287)
  %cmp123 = icmp eq i32 %287, 64
  br i1 %cmp123, label %land.lhs.true, label %if.then122.if.end128_crit_edge

if.then122.if.end128_crit_edge:                   ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end128

land.lhs.true:                                    ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #9
  %start_arg = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 3
  %288 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %start_arg, align 4
  %and125 = and i32 %289, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool.not = icmp eq i32 %and125, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 8192
  br label %if.end128

if.end128:                                        ; preds = %land.lhs.true, %if.then122.if.end128_crit_edge
  %bits.0 = phi i32 [ 0, %if.then122.if.end128_crit_edge ], [ %spec.select, %land.lhs.true ]
  %stop_src = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 10
  %290 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %291)
  %cmp129 = icmp eq i32 %291, 64
  br i1 %cmp129, label %land.lhs.true131, label %if.end128.do.body137_crit_edge

if.end128.do.body137_crit_edge:                   ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body137

land.lhs.true131:                                 ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #9
  %stop_arg = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 11
  %292 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %stop_arg, align 4
  %and132 = and i32 %293, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132)
  %tobool133.not = icmp eq i32 %and132, 0
  %or135 = or i32 %bits.0, 16384
  %spec.select288 = select i1 %tobool133.not, i32 %bits.0, i32 %or135
  br label %do.body137

do.body137:                                       ; preds = %land.lhs.true131, %if.end128.do.body137_crit_edge
  %bits.1 = phi i32 [ %bits.0, %if.end128.do.body137_crit_edge ], [ %spec.select288, %land.lhs.true131 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !334
  tail call void @arm_heavy_mb() #7
  %conv140 = trunc i32 %bits.1 to i16
  %294 = tail call i16 @llvm.bswap.i16(i16 %conv140)
  %295 = ptrtoint ptr %main_iobase to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %main_iobase, align 4
  %add.ptr142 = getelementptr i8, ptr %296, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr142, i16 %294) #7, !srcloc !257
  br label %do.body145

do.body145:                                       ; preds = %do.body137, %if.end118.do.body145_crit_edge, %lor.lhs.false.do.body145_crit_edge
  %call153 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  %297 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %flags1.i, align 4
  %and159 = and i32 %298, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159)
  %tobool160.not = icmp eq i32 %and159, 0
  %spec.select289 = select i1 %tobool160.not, i32 32773, i32 49157
  %start_src164 = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 2
  %299 = ptrtoint ptr %start_src164 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %start_src164, align 4
  %301 = zext i32 %300 to i64
  call void @__sanitizer_cov_trace_switch(i64 %301, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %300, label %do.body145.if.end182_crit_edge [
    i32 64, label %if.then167
    i32 2, label %if.then179
  ]

do.body145.if.end182_crit_edge:                   ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end182

if.then167:                                       ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #9
  %start_arg169 = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 3
  %302 = ptrtoint ptr %start_arg169 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %start_arg169, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %303)
  %tobool171.not325 = icmp slt i32 %303, 0
  %spec.select290.v = select i1 %tobool171.not325, i32 96, i32 32
  %spec.select290 = or i32 %spec.select290.v, %spec.select289
  br label %if.end182

if.then179:                                       ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #9
  %or180 = or i32 %spec.select289, 16
  br label %if.end182

if.end182:                                        ; preds = %if.then179, %if.then167, %do.body145.if.end182_crit_edge
  %bits.3 = phi i32 [ %or180, %if.then179 ], [ %spec.select290, %if.then167 ], [ %spec.select289, %do.body145.if.end182_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !335
  tail call void @arm_heavy_mb() #7
  %conv191 = trunc i32 %bits.3 to i16
  %304 = tail call i16 @llvm.bswap.i16(i16 %conv191)
  %305 = ptrtoint ptr %main_iobase to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %main_iobase, align 4
  %add.ptr193 = getelementptr i8, ptr %306, i32 16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr193, i16 %304) #7, !srcloc !257
  %ai_cmd_running = getelementptr inbounds %struct.pcidas64_private, ptr %3, i32 0, i32 27
  %307 = ptrtoint ptr %ai_cmd_running to i32
  call void @__asan_store2_noabort(i32 %307)
  store i16 1, ptr %ai_cmd_running, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call153) #7
  %308 = ptrtoint ptr %start_src164 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %start_src164, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %309)
  %cmp196 = icmp eq i32 %309, 2
  br i1 %cmp196, label %do.body199, label %if.end182.cleanup_crit_edge

if.end182.cleanup_crit_edge:                      ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body199:                                       ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !336
  tail call void @arm_heavy_mb() #7
  %310 = ptrtoint ptr %main_iobase to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %main_iobase, align 4
  %add.ptr203 = getelementptr i8, ptr %311, i32 34
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr203, i16 0) #7, !srcloc !257
  br label %cleanup

cleanup:                                          ; preds = %do.body199, %if.end182.cleanup_crit_edge, %setup_channel_queue.exit
  %retval.0 = phi i32 [ -16, %setup_channel_queue.exit ], [ 0, %do.body199 ], [ 0, %if.end182.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ai_cmdtest(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %start_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 2
  %2 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start_src, align 4
  %and.i = and i32 %3, 66
  store i32 %and.i, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %3)
  %cmp1.not.i = icmp eq i32 %and.i, %3
  %or.cond.i = and i1 %cmp.i, %cmp1.not.i
  %layout = getelementptr inbounds %struct.pcidas64_board, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %layout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  %. = select i1 %cmp, i32 272, i32 20
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 4
  %6 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %scan_begin_src, align 4
  %and.i189 = and i32 %., %7
  store i32 %and.i189, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i189)
  %cmp.i190 = icmp ne i32 %and.i189, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i189, i32 %7)
  %cmp1.not.i191 = icmp eq i32 %and.i189, %7
  %or.cond.i192 = and i1 %cmp.i190, %cmp1.not.i191
  %8 = select i1 %or.cond.i, i1 %or.cond.i192, i1 false
  %9 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %layout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp6 = icmp eq i32 %10, 2
  %triggers.1 = select i1 %cmp6, i32 18, i32 80
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %11 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %convert_src, align 4
  %and.i194 = and i32 %triggers.1, %12
  store i32 %and.i194, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i194)
  %cmp.i195 = icmp ne i32 %and.i194, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i194, i32 %12)
  %cmp1.not.i196 = icmp eq i32 %and.i194, %12
  %or.cond.i197 = and i1 %cmp.i195, %cmp1.not.i196
  %13 = select i1 %8, i1 %or.cond.i197, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %14 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %scan_end_src, align 4
  %and.i199 = and i32 %15, 32
  store i32 %and.i199, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i199)
  %cmp.i200 = icmp ne i32 %and.i199, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i199, i32 %15)
  %cmp1.not.i201 = icmp eq i32 %and.i199, %15
  %or.cond.i202 = and i1 %cmp.i200, %cmp1.not.i201
  %16 = select i1 %13, i1 %or.cond.i202, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %17 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %stop_src, align 4
  %and.i204 = and i32 %18, 97
  store i32 %and.i204, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i204)
  %cmp.i205 = icmp ne i32 %and.i204, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i204, i32 %18)
  %cmp1.not.i206 = icmp eq i32 %and.i204, %18
  %or.cond.i207 = and i1 %cmp.i205, %cmp1.not.i206
  %19 = select i1 %16, i1 %or.cond.i207, i1 false
  br i1 %19, label %if.end19, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %entry
  %20 = tail call i32 @llvm.ctpop.i32(i32 %3) #7, !range !337
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp.not.i = icmp ult i32 %20, 2
  %21 = tail call i32 @llvm.ctpop.i32(i32 %7) #7, !range !337
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp.not.i209 = icmp ult i32 %21, 2
  %22 = tail call i32 @llvm.ctpop.i32(i32 %12) #7, !range !337
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp.not.i211 = icmp ult i32 %22, 2
  %23 = tail call i32 @llvm.ctpop.i32(i32 %18) #7, !range !337
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp.not.i213 = icmp ult i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %12)
  %cmp33 = icmp ne i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp35 = icmp ne i32 %7, 16
  %or.cond = select i1 %cmp33, i1 true, i1 %cmp35
  %24 = select i1 %or.cond, i1 %cmp.not.i, i1 false
  %25 = select i1 %24, i1 %cmp.not.i209, i1 false
  %26 = select i1 %25, i1 %cmp.not.i211, i1 false
  %or.cond253 = select i1 %26, i1 %cmp.not.i213, i1 false
  br i1 %or.cond253, label %if.end41, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end41:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cond = icmp eq i32 %3, 2
  br i1 %cond, label %sw.bb, label %if.end41.sw.epilog_crit_edge

if.end41.sw.epilog_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end41
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %27 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.not.i215 = icmp eq i32 %28, 0
  br i1 %cmp.not.i215, label %sw.bb.sw.epilog_crit_edge, label %if.then.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %start_arg, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.i, %sw.bb.sw.epilog_crit_edge, %if.end41.sw.epilog_crit_edge
  %err.1 = phi i32 [ 0, %if.end41.sw.epilog_crit_edge ], [ -22, %if.then.i ], [ 0, %sw.bb.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %12)
  %cmp46 = icmp eq i32 %12, 16
  br i1 %cmp46, label %if.then47, label %sw.epilog.if.end65_crit_edge

sw.epilog.if.end65_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then47:                                        ; preds = %sw.epilog
  %30 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %layout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp49 = icmp eq i32 %31, 2
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  br i1 %cmp49, label %if.then50, label %if.else53

if.then50:                                        ; preds = %if.then47
  %32 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %convert_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.not.i217 = icmp eq i32 %33, 0
  br i1 %cmp.not.i217, label %if.then50.comedi_check_trigger_arg_is.exit220_crit_edge, label %if.then.i218

if.then50.comedi_check_trigger_arg_is.exit220_crit_edge: ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit220

if.then.i218:                                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %convert_arg, align 4
  br label %comedi_check_trigger_arg_is.exit220

comedi_check_trigger_arg_is.exit220:              ; preds = %if.then.i218, %if.then50.comedi_check_trigger_arg_is.exit220_crit_edge
  %retval.0.i219 = phi i32 [ -22, %if.then.i218 ], [ 0, %if.then50.comedi_check_trigger_arg_is.exit220_crit_edge ]
  %or52 = or i32 %retval.0.i219, %err.1
  br label %if.end65

if.else53:                                        ; preds = %if.then47
  %ai_speed = getelementptr inbounds %struct.pcidas64_board, ptr %1, i32 0, i32 3
  %35 = ptrtoint ptr %ai_speed to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ai_speed, align 4
  %37 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %convert_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %36)
  %cmp.i221 = icmp ult i32 %38, %36
  br i1 %cmp.i221, label %if.then.i222, label %if.else53.comedi_check_trigger_arg_min.exit_crit_edge

if.else53.comedi_check_trigger_arg_min.exit_crit_edge: ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_min.exit

if.then.i222:                                     ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %36, ptr %convert_arg, align 4
  br label %comedi_check_trigger_arg_min.exit

comedi_check_trigger_arg_min.exit:                ; preds = %if.then.i222, %if.else53.comedi_check_trigger_arg_min.exit_crit_edge
  %retval.0.i223 = phi i32 [ -22, %if.then.i222 ], [ 0, %if.else53.comedi_check_trigger_arg_min.exit_crit_edge ]
  %or56 = or i32 %retval.0.i223, %err.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp58 = icmp eq i32 %7, 16
  br i1 %cmp58, label %if.then59, label %comedi_check_trigger_arg_min.exit.if.end65_crit_edge

comedi_check_trigger_arg_min.exit.if.end65_crit_edge: ; preds = %comedi_check_trigger_arg_min.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then59:                                        ; preds = %comedi_check_trigger_arg_min.exit
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %40 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %convert_arg, align 4
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %42 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %chanlist_len, align 4
  %mul = mul i32 %43, %41
  %44 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %mul)
  %cmp.i224 = icmp ult i32 %45, %mul
  br i1 %cmp.i224, label %if.then.i225, label %if.then59.comedi_check_trigger_arg_min.exit227_crit_edge

if.then59.comedi_check_trigger_arg_min.exit227_crit_edge: ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_min.exit227

if.then.i225:                                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %mul, ptr %scan_begin_arg, align 4
  br label %comedi_check_trigger_arg_min.exit227

comedi_check_trigger_arg_min.exit227:             ; preds = %if.then.i225, %if.then59.comedi_check_trigger_arg_min.exit227_crit_edge
  %retval.0.i226 = phi i32 [ -22, %if.then.i225 ], [ 0, %if.then59.comedi_check_trigger_arg_min.exit227_crit_edge ]
  %or62 = or i32 %retval.0.i226, %or56
  br label %if.end65

if.end65:                                         ; preds = %comedi_check_trigger_arg_min.exit227, %comedi_check_trigger_arg_min.exit.if.end65_crit_edge, %comedi_check_trigger_arg_is.exit220, %sw.epilog.if.end65_crit_edge
  %err.2 = phi i32 [ %or52, %comedi_check_trigger_arg_is.exit220 ], [ %or62, %comedi_check_trigger_arg_min.exit227 ], [ %or56, %comedi_check_trigger_arg_min.exit.if.end65_crit_edge ], [ %err.1, %sw.epilog.if.end65_crit_edge ]
  %chanlist_len66 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %47 = ptrtoint ptr %chanlist_len66 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %chanlist_len66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.i228 = icmp eq i32 %48, 0
  br i1 %cmp.i228, label %if.then.i229, label %if.end65.comedi_check_trigger_arg_min.exit231_crit_edge

if.end65.comedi_check_trigger_arg_min.exit231_crit_edge: ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_min.exit231

if.then.i229:                                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %chanlist_len66 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %chanlist_len66, align 4
  br label %comedi_check_trigger_arg_min.exit231

comedi_check_trigger_arg_min.exit231:             ; preds = %if.then.i229, %if.end65.comedi_check_trigger_arg_min.exit231_crit_edge
  %retval.0.i230 = phi i32 [ -22, %if.then.i229 ], [ 0, %if.end65.comedi_check_trigger_arg_min.exit231_crit_edge ]
  %or68 = or i32 %retval.0.i230, %err.2
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %50 = ptrtoint ptr %chanlist_len66 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %chanlist_len66, align 4
  %52 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %51)
  %cmp.not.i232 = icmp eq i32 %53, %51
  br i1 %cmp.not.i232, label %comedi_check_trigger_arg_min.exit231.comedi_check_trigger_arg_is.exit235_crit_edge, label %if.then.i233

comedi_check_trigger_arg_min.exit231.comedi_check_trigger_arg_is.exit235_crit_edge: ; preds = %comedi_check_trigger_arg_min.exit231
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit235

if.then.i233:                                     ; preds = %comedi_check_trigger_arg_min.exit231
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %51, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit235

comedi_check_trigger_arg_is.exit235:              ; preds = %if.then.i233, %comedi_check_trigger_arg_min.exit231.comedi_check_trigger_arg_is.exit235_crit_edge
  %retval.0.i234 = phi i32 [ -22, %if.then.i233 ], [ 0, %comedi_check_trigger_arg_min.exit231.comedi_check_trigger_arg_is.exit235_crit_edge ]
  %or71 = or i32 %or68, %retval.0.i234
  %55 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %18, label %comedi_check_trigger_arg_is.exit235.sw.epilog80_crit_edge [
    i32 1, label %sw.bb76
    i32 32, label %sw.bb73
  ]

comedi_check_trigger_arg_is.exit235.sw.epilog80_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit235
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog80

sw.bb73:                                          ; preds = %comedi_check_trigger_arg_is.exit235
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %56 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.i236 = icmp eq i32 %57, 0
  br i1 %cmp.i236, label %if.then.i237, label %sw.bb73.comedi_check_trigger_arg_min.exit239_crit_edge

sw.bb73.comedi_check_trigger_arg_min.exit239_crit_edge: ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_min.exit239

if.then.i237:                                     ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %stop_arg, align 4
  br label %comedi_check_trigger_arg_min.exit239

comedi_check_trigger_arg_min.exit239:             ; preds = %if.then.i237, %sw.bb73.comedi_check_trigger_arg_min.exit239_crit_edge
  %retval.0.i238 = phi i32 [ -22, %if.then.i237 ], [ 0, %sw.bb73.comedi_check_trigger_arg_min.exit239_crit_edge ]
  %or75 = or i32 %retval.0.i238, %or71
  br label %sw.epilog80

sw.bb76:                                          ; preds = %comedi_check_trigger_arg_is.exit235
  %stop_arg77 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %59 = ptrtoint ptr %stop_arg77 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %stop_arg77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp.not.i240 = icmp eq i32 %60, 0
  br i1 %cmp.not.i240, label %sw.bb76.comedi_check_trigger_arg_is.exit243_crit_edge, label %if.then.i241

sw.bb76.comedi_check_trigger_arg_is.exit243_crit_edge: ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit243

if.then.i241:                                     ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %stop_arg77 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %stop_arg77, align 4
  br label %comedi_check_trigger_arg_is.exit243

comedi_check_trigger_arg_is.exit243:              ; preds = %if.then.i241, %sw.bb76.comedi_check_trigger_arg_is.exit243_crit_edge
  %retval.0.i242 = phi i32 [ -22, %if.then.i241 ], [ 0, %sw.bb76.comedi_check_trigger_arg_is.exit243_crit_edge ]
  %or79 = or i32 %retval.0.i242, %or71
  br label %sw.epilog80

sw.epilog80:                                      ; preds = %comedi_check_trigger_arg_is.exit243, %comedi_check_trigger_arg_min.exit239, %comedi_check_trigger_arg_is.exit235.sw.epilog80_crit_edge
  %err.3 = phi i32 [ %or71, %comedi_check_trigger_arg_is.exit235.sw.epilog80_crit_edge ], [ %or75, %comedi_check_trigger_arg_min.exit239 ], [ %or79, %comedi_check_trigger_arg_is.exit243 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.3)
  %tobool81.not = icmp eq i32 %err.3, 0
  br i1 %tobool81.not, label %if.end83, label %sw.epilog80.cleanup_crit_edge

sw.epilog80.cleanup_crit_edge:                    ; preds = %sw.epilog80
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end83:                                         ; preds = %sw.epilog80
  br i1 %cmp46, label %if.then86, label %if.end83.if.end101_crit_edge

if.end83.if.end101_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

if.then86:                                        ; preds = %if.end83
  %convert_arg87 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %62 = ptrtoint ptr %convert_arg87 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %convert_arg87, align 4
  %scan_begin_arg88 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %64 = ptrtoint ptr %scan_begin_arg88 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %scan_begin_arg88, align 4
  tail call fastcc void @check_adc_timing(ptr noundef %dev, ptr noundef %cmd)
  %66 = ptrtoint ptr %convert_arg87 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %convert_arg87, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %67)
  %cmp90.not.not = icmp eq i32 %63, %67
  %68 = ptrtoint ptr %scan_begin_arg88 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %scan_begin_arg88, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %69)
  %cmp94.not = icmp eq i32 %65, %69
  %or.cond254 = select i1 %cmp94.not, i1 %cmp90.not.not, i1 false
  br i1 %or.cond254, label %if.then86.if.end101_crit_edge, label %if.then86.cleanup_crit_edge

if.then86.cleanup_crit_edge:                      ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then86.if.end101_crit_edge:                    ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

if.end101:                                        ; preds = %if.then86.if.end101_crit_edge, %if.end83.if.end101_crit_edge
  %chanlist = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %70 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %chanlist, align 4
  %tobool102.not = icmp eq ptr %71, null
  br i1 %tobool102.not, label %if.end101.if.end109.thread_crit_edge, label %land.lhs.true103

if.end101.if.end109.thread_crit_edge:             ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109.thread

land.lhs.true103:                                 ; preds = %if.end101
  %72 = ptrtoint ptr %chanlist_len66 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %chanlist_len66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp105.not = icmp eq i32 %73, 0
  br i1 %cmp105.not, label %land.lhs.true103.if.end109.thread_crit_edge, label %if.end109

land.lhs.true103.if.end109.thread_crit_edge:      ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109.thread

if.end109:                                        ; preds = %land.lhs.true103
  %call107 = tail call fastcc i32 @cb_pcidas64_ai_check_chanlist(ptr noundef %dev, ptr noundef %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %phi.cmp = icmp eq i32 %call107, 0
  br i1 %phi.cmp, label %if.end109.if.end109.thread_crit_edge, label %if.end109.cleanup_crit_edge

if.end109.cleanup_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end109.if.end109.thread_crit_edge:             ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109.thread

if.end109.thread:                                 ; preds = %if.end109.if.end109.thread_crit_edge, %land.lhs.true103.if.end109.thread_crit_edge, %if.end101.if.end109.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end109.thread, %if.end109.cleanup_crit_edge, %if.then86.cleanup_crit_edge, %sw.epilog80.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 3, %sw.epilog80.cleanup_crit_edge ], [ 0, %if.end109.thread ], [ 5, %if.end109.cleanup_crit_edge ], [ 4, %if.then86.cleanup_crit_edge ], [ 2, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ai_cancel(ptr noundef %dev, ptr nocapture noundef readnone %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %spinlock = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #7
  %ai_cmd_running = getelementptr inbounds %struct.pcidas64_private, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %ai_cmd_running to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ai_cmd_running, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp6 = icmp eq i16 %3, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call2) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %ai_cmd_running to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %ai_cmd_running, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call2) #7
  tail call fastcc void @disable_ai_pacing(ptr noundef %dev)
  tail call fastcc void @abort_dma(ptr noundef %dev, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2c_write(ptr nocapture noundef readonly %dev, i32 noundef %address, ptr nocapture noundef readonly %data, i32 noundef %length) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %plx_control_bits = getelementptr inbounds %struct.pcidas64_private, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %plx_control_bits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %plx_control_bits, align 4
  %and = and i32 %3, -33554433
  store i32 %and, ptr %plx_control_bits, align 4
  tail call fastcc void @i2c_stop(ptr noundef %dev)
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private, align 4
  %plx9080_iobase.i.i = getelementptr inbounds %struct.pcidas64_private, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %plx9080_iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %plx9080_iobase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 108
  %plx_control_bits2.i.i = getelementptr inbounds %struct.pcidas64_private, ptr %5, i32 0, i32 22
  %8 = ptrtoint ptr %plx_control_bits2.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %plx_control_bits2.i.i, align 4
  %and.i.i = and i32 %9, -65537
  store i32 %and.i.i, ptr %plx_control_bits2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %plx_control_bits2.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %plx_control_bits2.i.i, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %12) #7, !srcloc !242
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #7
  %14 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %private, align 4
  %plx9080_iobase.i4.i = getelementptr inbounds %struct.pcidas64_private, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %plx9080_iobase.i4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %plx9080_iobase.i4.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %17, i32 108
  %plx_control_bits2.i6.i = getelementptr inbounds %struct.pcidas64_private, ptr %15, i32 0, i32 22
  %18 = ptrtoint ptr %plx_control_bits2.i6.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %plx_control_bits2.i6.i, align 4
  %and.i7.i = and i32 %19, -67108865
  store i32 %and.i7.i, ptr %plx_control_bits2.i6.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %plx_control_bits2.i6.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %plx_control_bits2.i6.i, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %22) #7, !srcloc !242
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #7
  %24 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %private, align 4
  %plx9080_iobase.i9.i = getelementptr inbounds %struct.pcidas64_private, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %plx9080_iobase.i9.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %plx9080_iobase.i9.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %27, i32 108
  %plx_control_bits2.i11.i = getelementptr inbounds %struct.pcidas64_private, ptr %25, i32 0, i32 22
  %28 = ptrtoint ptr %plx_control_bits2.i11.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %plx_control_bits2.i11.i, align 4
  %or.i.i = or i32 %29, 67108864
  store i32 %or.i.i, ptr %plx_control_bits2.i11.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !340
  tail call void @arm_heavy_mb() #7
  %30 = ptrtoint ptr %plx_control_bits2.i11.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %plx_control_bits2.i11.i, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 %32) #7, !srcloc !242
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 2147480) #7
  %address.tr = trunc i32 %address to i8
  %conv = shl i8 %address.tr, 1
  tail call fastcc void @i2c_write_byte(ptr noundef %dev, i8 noundef zeroext %conv)
  %34 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %private, align 4
  %plx9080_iobase.i.i30 = getelementptr inbounds %struct.pcidas64_private, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %plx9080_iobase.i.i30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %plx9080_iobase.i.i30, align 4
  %add.ptr.i.i31 = getelementptr i8, ptr %37, i32 108
  %plx_control_bits2.i.i32 = getelementptr inbounds %struct.pcidas64_private, ptr %35, i32 0, i32 22
  %38 = ptrtoint ptr %plx_control_bits2.i.i32 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %plx_control_bits2.i.i32, align 4
  %or.i.i33 = or i32 %39, 65536
  store i32 %or.i.i33, ptr %plx_control_bits2.i.i32, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !341
  tail call void @arm_heavy_mb() #7
  %40 = ptrtoint ptr %plx_control_bits2.i.i32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %plx_control_bits2.i.i32, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i31, i32 %42) #7, !srcloc !242
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 2147480) #7
  %44 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %private, align 4
  %plx9080_iobase.i2.i = getelementptr inbounds %struct.pcidas64_private, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %plx9080_iobase.i2.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %plx9080_iobase.i2.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %47, i32 108
  %plx_control_bits2.i4.i = getelementptr inbounds %struct.pcidas64_private, ptr %45, i32 0, i32 22
  %48 = ptrtoint ptr %plx_control_bits2.i4.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %plx_control_bits2.i4.i, align 4
  %and.i.i34 = and i32 %49, -67108865
  store i32 %and.i.i34, ptr %plx_control_bits2.i4.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %50 = ptrtoint ptr %plx_control_bits2.i4.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %plx_control_bits2.i4.i, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %52) #7, !srcloc !242
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748000) #7
  %54 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %private, align 4
  %plx9080_iobase.i6.i = getelementptr inbounds %struct.pcidas64_private, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %plx9080_iobase.i6.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %plx9080_iobase.i6.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %57, i32 108
  %plx_control_bits2.i8.i = getelementptr inbounds %struct.pcidas64_private, ptr %55, i32 0, i32 22
  %58 = ptrtoint ptr %plx_control_bits2.i8.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %plx_control_bits2.i8.i, align 4
  %and.i9.i = and i32 %59, -65537
  store i32 %and.i9.i, ptr %plx_control_bits2.i8.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  tail call void @arm_heavy_mb() #7
  %60 = ptrtoint ptr %plx_control_bits2.i8.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %plx_control_bits2.i8.i, align 4
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %62) #7, !srcloc !242
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 214748000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp348.not = icmp eq i32 %length, 0
  br i1 %cmp348.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.049 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %data, i32 %i.049
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx, align 1
  tail call fastcc void @i2c_write_byte(ptr noundef %dev, i8 noundef zeroext %65)
  %66 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %private, align 4
  %plx9080_iobase.i.i36 = getelementptr inbounds %struct.pcidas64_private, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %plx9080_iobase.i.i36 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %plx9080_iobase.i.i36, align 4
  %add.ptr.i.i37 = getelementptr i8, ptr %69, i32 108
  %plx_control_bits2.i.i38 = getelementptr inbounds %struct.pcidas64_private, ptr %67, i32 0, i32 22
  %70 = ptrtoint ptr %plx_control_bits2.i.i38 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %plx_control_bits2.i.i38, align 4
  %or.i.i39 = or i32 %71, 65536
  store i32 %or.i.i39, ptr %plx_control_bits2.i.i38, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !341
  tail call void @arm_heavy_mb() #7
  %72 = ptrtoint ptr %plx_control_bits2.i.i38 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %plx_control_bits2.i.i38, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i37, i32 %74) #7, !srcloc !242
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 2147480) #7
  %76 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %private, align 4
  %plx9080_iobase.i2.i40 = getelementptr inbounds %struct.pcidas64_private, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %plx9080_iobase.i2.i40 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %plx9080_iobase.i2.i40, align 4
  %add.ptr.i3.i41 = getelementptr i8, ptr %79, i32 108
  %plx_control_bits2.i4.i42 = getelementptr inbounds %struct.pcidas64_private, ptr %77, i32 0, i32 22
  %80 = ptrtoint ptr %plx_control_bits2.i4.i42 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %plx_control_bits2.i4.i42, align 4
  %and.i.i43 = and i32 %81, -67108865
  store i32 %and.i.i43, ptr %plx_control_bits2.i4.i42, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %82 = ptrtoint ptr %plx_control_bits2.i4.i42 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %plx_control_bits2.i4.i42, align 4
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i41, i32 %84) #7, !srcloc !242
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %85(i32 noundef 214748000) #7
  %86 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %private, align 4
  %plx9080_iobase.i6.i44 = getelementptr inbounds %struct.pcidas64_private, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %plx9080_iobase.i6.i44 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %plx9080_iobase.i6.i44, align 4
  %add.ptr.i7.i45 = getelementptr i8, ptr %89, i32 108
  %plx_control_bits2.i8.i46 = getelementptr inbounds %struct.pcidas64_private, ptr %87, i32 0, i32 22
  %90 = ptrtoint ptr %plx_control_bits2.i8.i46 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %plx_control_bits2.i8.i46, align 4
  %and.i9.i47 = and i32 %91, -65537
  store i32 %and.i9.i47, ptr %plx_control_bits2.i8.i46, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  tail call void @arm_heavy_mb() #7
  %92 = ptrtoint ptr %plx_control_bits2.i8.i46 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %plx_control_bits2.i8.i46, align 4
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i45, i32 %94) #7, !srcloc !242
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %95(i32 noundef 214748000) #7
  %inc = add nuw i32 %i.049, 1
  %exitcond.not = icmp eq i32 %inc, %length
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call fastcc void @i2c_stop(ptr noundef %dev)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ao_winsn(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %4 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chanspec, align 4
  %and = and i32 %5, 65535
  %shr = lshr i32 %5, 16
  %and2 = and i32 %shr, 255
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  %6 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %readback, align 4
  %arrayidx = getelementptr i32, ptr %7, i32 %and
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !342
  tail call void @arm_heavy_mb() #7
  %main_iobase = getelementptr inbounds %struct.pcidas64_private, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %main_iobase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %main_iobase, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 80
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 0) #7, !srcloc !257
  %dac_control1_bits = getelementptr inbounds %struct.pcidas64_private, ptr %3, i32 0, i32 21
  %12 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %board_ptr, align 4
  %ao_range_code.i = getelementptr inbounds %struct.pcidas64_board, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %ao_range_code.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ao_range_code.i, align 4
  %arrayidx.i = getelementptr i32, ptr %15, i32 %and2
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp.i = icmp ugt i32 %and, 1
  br i1 %cmp.i, label %do.end.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %18 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %class_dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.61) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %tobool.not.i = icmp ult i32 %17, 4
  br i1 %tobool.not.i, label %if.end.i.set_dac_range_bits.exit_crit_edge, label %do.end4.i

if.end.i.set_dac_range_bits.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_dac_range_bits.exit

do.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev5.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %20 = ptrtoint ptr %class_dev5.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %class_dev5.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.64) #10
  br label %set_dac_range_bits.exit

set_dac_range_bits.exit:                          ; preds = %do.end4.i, %if.end.i.set_dac_range_bits.exit_crit_edge
  %mul.i = shl nuw nsw i32 %and, 1
  %shl.i = shl i32 3, %mul.i
  %22 = ptrtoint ptr %dac_control1_bits to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %dac_control1_bits, align 2
  %24 = trunc i32 %shl.i to i16
  %25 = xor i16 %24, -1
  %conv8.i = and i16 %23, %25
  %shl10.i = shl i32 %17, %mul.i
  %26 = trunc i32 %shl10.i to i16
  %conv12.i = or i16 %conv8.i, %26
  store i16 %conv12.i, ptr %dac_control1_bits, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !343
  tail call void @arm_heavy_mb() #7
  %27 = ptrtoint ptr %dac_control1_bits to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %dac_control1_bits, align 2
  %29 = tail call i16 @llvm.bswap.i16(i16 %28)
  %30 = ptrtoint ptr %main_iobase to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %main_iobase, align 4
  %add.ptr8 = getelementptr i8, ptr %31, i32 82
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8, i16 %29) #7, !srcloc !257
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %32 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp65.not = icmp eq i32 %33, 0
  br i1 %cmp65.not, label %set_dac_range_bits.exit.for.end_crit_edge, label %for.body.lr.ph

set_dac_range_bits.exit.for.end_crit_edge:        ; preds = %set_dac_range_bits.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %set_dac_range_bits.exit
  %layout = getelementptr inbounds %struct.pcidas64_board, ptr %1, i32 0, i32 12
  %mul.i63 = and i32 %mul.i, 2
  %add.i64 = or i32 %mul.i63, 112
  %and.i = shl nuw nsw i32 %and, 2
  %mul.i58 = and i32 %and.i, 4
  %add.i = or i32 %mul.i58, 112
  %add.i61 = or i32 %mul.i58, 114
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.066 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx9 = getelementptr i32, ptr %data, i32 %i.066
  %34 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx9, align 4
  %36 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %layout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp10 = icmp eq i32 %37, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %38 = trunc i32 %35 to i16
  br i1 %cmp10, label %do.body11, label %do.body26

do.body11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %conv = shl i16 %38, 8
  %39 = ptrtoint ptr %main_iobase to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %main_iobase, align 4
  %add.ptr16 = getelementptr i8, ptr %40, i32 %add.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr16, i16 %conv) #7, !srcloc !257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !344
  tail call void @arm_heavy_mb() #7
  %conv22 = and i16 %38, 3840
  %41 = ptrtoint ptr %main_iobase to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %main_iobase, align 4
  %add.ptr25 = getelementptr i8, ptr %42, i32 %add.i61
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr25, i16 %conv22) #7, !srcloc !257
  br label %for.inc

do.body26:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %43 = tail call i16 @llvm.bswap.i16(i16 %38)
  %44 = ptrtoint ptr %main_iobase to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %main_iobase, align 4
  %add.ptr32 = getelementptr i8, ptr %45, i32 %add.i64
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr32, i16 %43) #7, !srcloc !257
  br label %for.inc

for.inc:                                          ; preds = %do.body26, %do.body11
  %inc = add nuw i32 %i.066, 1
  %46 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %47
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %set_dac_range_bits.exit.for.end_crit_edge
  %val.0.lcssa = phi i32 [ %9, %set_dac_range_bits.exit.for.end_crit_edge ], [ %35, %for.inc.for.end_crit_edge ]
  %48 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %readback, align 4
  %arrayidx34 = getelementptr i32, ptr %49, i32 %and
  %50 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %val.0.lcssa, ptr %arrayidx34, align 4
  %51 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %n, align 4
  ret i32 %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ao_cmdtest(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %start_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 2
  %2 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start_src, align 4
  %and.i = and i32 %3, 192
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
  %and.i138 = and i32 %5, 80
  store i32 %and.i138, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i138)
  %cmp.i139 = icmp ne i32 %and.i138, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i138, i32 %5)
  %cmp1.not.i140 = icmp eq i32 %and.i138, %5
  %or.cond.i141 = and i1 %cmp.i139, %cmp1.not.i140
  %6 = select i1 %or.cond.i, i1 %or.cond.i141, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %7 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %convert_src, align 4
  %and.i143 = and i32 %8, 2
  store i32 %and.i143, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i143)
  %cmp.i144 = icmp ne i32 %and.i143, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i143, i32 %8)
  %cmp1.not.i145 = icmp eq i32 %and.i143, %8
  %or.cond.i146 = and i1 %cmp.i144, %cmp1.not.i145
  %9 = select i1 %6, i1 %or.cond.i146, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %10 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %scan_end_src, align 4
  %and.i148 = and i32 %11, 32
  store i32 %and.i148, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i148)
  %cmp.i149 = icmp ne i32 %and.i148, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i148, i32 %11)
  %cmp1.not.i150 = icmp eq i32 %and.i148, %11
  %or.cond.i151 = and i1 %cmp.i149, %cmp1.not.i150
  %12 = select i1 %9, i1 %or.cond.i151, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %13 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stop_src, align 4
  %and.i153 = and i32 %14, 1
  store i32 %and.i153, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %15 = icmp eq i32 %14, 1
  %16 = select i1 %12, i1 %15, i1 false
  br i1 %16, label %if.end20, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %entry
  %17 = tail call i32 @llvm.ctpop.i32(i32 %3) #7, !range !337
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.not.i = icmp ult i32 %17, 2
  %18 = tail call i32 @llvm.ctpop.i32(i32 %5) #7, !range !337
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp.not.i158 = icmp ult i32 %18, 2
  %or.cond = select i1 %cmp.not.i, i1 %cmp.not.i158, i1 false
  br i1 %or.cond, label %if.end34, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end34:                                         ; preds = %if.end20
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %19 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.not.i160 = icmp eq i32 %20, 0
  br i1 %cmp.not.i160, label %if.end34.comedi_check_trigger_arg_is.exit_crit_edge, label %if.then.i

if.end34.comedi_check_trigger_arg_is.exit_crit_edge: ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit

if.then.i:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %start_arg, align 4
  br label %comedi_check_trigger_arg_is.exit

comedi_check_trigger_arg_is.exit:                 ; preds = %if.then.i, %if.end34.comedi_check_trigger_arg_is.exit_crit_edge
  %retval.0.i161 = phi i32 [ -22, %if.then.i ], [ 0, %if.end34.comedi_check_trigger_arg_is.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %5)
  %cmp38 = icmp eq i32 %5, 16
  br i1 %cmp38, label %if.then39, label %comedi_check_trigger_arg_is.exit.if.end49_crit_edge

comedi_check_trigger_arg_is.exit.if.end49_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then39:                                        ; preds = %comedi_check_trigger_arg_is.exit
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %ao_scan_speed = getelementptr inbounds %struct.pcidas64_board, ptr %1, i32 0, i32 8
  %22 = ptrtoint ptr %ao_scan_speed to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ao_scan_speed, align 4
  %24 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %23)
  %cmp.i162 = icmp ult i32 %25, %23
  br i1 %cmp.i162, label %if.then.i163, label %if.then39.comedi_check_trigger_arg_min.exit_crit_edge

if.then39.comedi_check_trigger_arg_min.exit_crit_edge: ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_min.exit

if.then.i163:                                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %23, ptr %scan_begin_arg, align 4
  br label %comedi_check_trigger_arg_min.exit

comedi_check_trigger_arg_min.exit:                ; preds = %if.then.i163, %if.then39.comedi_check_trigger_arg_min.exit_crit_edge
  %retval.0.i164 = phi i32 [ -22, %if.then.i163 ], [ 0, %if.then39.comedi_check_trigger_arg_min.exit_crit_edge ]
  %or41 = or i32 %retval.0.i164, %retval.0.i161
  %27 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %scan_begin_arg, align 4
  %flags = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 1
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 4
  %and.i.i = and i32 %30, 196608
  %31 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %and.i.i, label %sw.default.i.i [
    i32 131072, label %sw.bb.i.i
    i32 65536, label %comedi_check_trigger_arg_min.exit.get_ao_divisor.exit_crit_edge
  ]

comedi_check_trigger_arg_min.exit.get_ao_divisor.exit_crit_edge: ; preds = %comedi_check_trigger_arg_min.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_ao_divisor.exit

sw.bb.i.i:                                        ; preds = %comedi_check_trigger_arg_min.exit
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %28, 24
  br label %get_ao_divisor.exit

sw.default.i.i:                                   ; preds = %comedi_check_trigger_arg_min.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add5.i.i = add i32 %28, 12
  br label %get_ao_divisor.exit

get_ao_divisor.exit:                              ; preds = %sw.default.i.i, %sw.bb.i.i, %comedi_check_trigger_arg_min.exit.get_ao_divisor.exit_crit_edge
  %divisor.0.in.i.i = phi i32 [ %add5.i.i, %sw.default.i.i ], [ %sub.i.i, %sw.bb.i.i ], [ %28, %comedi_check_trigger_arg_min.exit.get_ao_divisor.exit_crit_edge ]
  %divisor.0.i.i = udiv i32 %divisor.0.in.i.i, 25
  %32 = add nsw i32 %divisor.0.i.i, -16777218
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777216, i32 %32)
  %cmp44 = icmp ult i32 %32, -16777216
  br i1 %cmp44, label %if.then45, label %get_ao_divisor.exit.if.end49_crit_edge

get_ao_divisor.exit.if.end49_crit_edge:           ; preds = %get_ao_divisor.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then45:                                        ; preds = %get_ao_divisor.exit
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 419430425, ptr %scan_begin_arg, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then45, %get_ao_divisor.exit.if.end49_crit_edge, %comedi_check_trigger_arg_is.exit.if.end49_crit_edge
  %err.2 = phi i32 [ -22, %if.then45 ], [ %or41, %get_ao_divisor.exit.if.end49_crit_edge ], [ %retval.0.i161, %comedi_check_trigger_arg_is.exit.if.end49_crit_edge ]
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %34 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i165 = icmp eq i32 %35, 0
  br i1 %cmp.i165, label %if.then.i166, label %if.end49.comedi_check_trigger_arg_min.exit168_crit_edge

if.end49.comedi_check_trigger_arg_min.exit168_crit_edge: ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_min.exit168

if.then.i166:                                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %chanlist_len, align 4
  br label %comedi_check_trigger_arg_min.exit168

comedi_check_trigger_arg_min.exit168:             ; preds = %if.then.i166, %if.end49.comedi_check_trigger_arg_min.exit168_crit_edge
  %37 = phi i32 [ %35, %if.end49.comedi_check_trigger_arg_min.exit168_crit_edge ], [ 1, %if.then.i166 ]
  %retval.0.i167 = phi i32 [ 0, %if.end49.comedi_check_trigger_arg_min.exit168_crit_edge ], [ -22, %if.then.i166 ]
  %or51 = or i32 %retval.0.i167, %err.2
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %38 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %37)
  %cmp.not.i169 = icmp eq i32 %39, %37
  br i1 %cmp.not.i169, label %comedi_check_trigger_arg_min.exit168.comedi_check_trigger_arg_is.exit172_crit_edge, label %if.then.i170

comedi_check_trigger_arg_min.exit168.comedi_check_trigger_arg_is.exit172_crit_edge: ; preds = %comedi_check_trigger_arg_min.exit168
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit172

if.then.i170:                                     ; preds = %comedi_check_trigger_arg_min.exit168
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %37, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit172

comedi_check_trigger_arg_is.exit172:              ; preds = %if.then.i170, %comedi_check_trigger_arg_min.exit168.comedi_check_trigger_arg_is.exit172_crit_edge
  %retval.0.i171 = phi i32 [ -22, %if.then.i170 ], [ 0, %comedi_check_trigger_arg_min.exit168.comedi_check_trigger_arg_is.exit172_crit_edge ]
  %or54 = or i32 %or51, %retval.0.i171
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or54)
  %tobool55.not = icmp eq i32 %or54, 0
  br i1 %tobool55.not, label %if.end57, label %comedi_check_trigger_arg_is.exit172.cleanup_crit_edge

comedi_check_trigger_arg_is.exit172.cleanup_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit172
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end57:                                         ; preds = %comedi_check_trigger_arg_is.exit172
  br i1 %cmp38, label %if.then60, label %if.end57.if.end73_crit_edge

if.end57.if.end73_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.then60:                                        ; preds = %if.end57
  %scan_begin_arg61 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %41 = ptrtoint ptr %scan_begin_arg61 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %scan_begin_arg61, align 4
  %flags63 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 1
  %43 = ptrtoint ptr %flags63 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags63, align 4
  %and.i173 = and i32 %44, 196608
  %45 = zext i32 %and.i173 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %and.i173, label %sw.default.i [
    i32 131072, label %sw.bb.i
    i32 65536, label %if.then60.get_divisor.exit_crit_edge
  ]

if.then60.get_divisor.exit_crit_edge:             ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_divisor.exit

sw.bb.i:                                          ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i174 = add i32 %42, 24
  br label %get_divisor.exit

sw.default.i:                                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  %add5.i = add i32 %42, 12
  br label %get_divisor.exit

get_divisor.exit:                                 ; preds = %sw.default.i, %sw.bb.i, %if.then60.get_divisor.exit_crit_edge
  %divisor.0.in.i = phi i32 [ %add5.i, %sw.default.i ], [ %sub.i174, %sw.bb.i ], [ %42, %if.then60.get_divisor.exit_crit_edge ]
  %46 = urem i32 %divisor.0.in.i, 25
  %mul = sub i32 %divisor.0.in.i, %46
  %47 = ptrtoint ptr %scan_begin_arg61 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %mul, ptr %scan_begin_arg61, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %mul)
  %cmp67.not = icmp eq i32 %42, %mul
  br i1 %cmp67.not, label %get_divisor.exit.if.end73_crit_edge, label %get_divisor.exit.cleanup_crit_edge

get_divisor.exit.cleanup_crit_edge:               ; preds = %get_divisor.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

get_divisor.exit.if.end73_crit_edge:              ; preds = %get_divisor.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.end73:                                         ; preds = %get_divisor.exit.if.end73_crit_edge, %if.end57.if.end73_crit_edge
  %chanlist = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %48 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %chanlist, align 4
  %tobool74.not = icmp eq ptr %49, null
  br i1 %tobool74.not, label %if.end73.if.end81.thread_crit_edge, label %if.end81

if.end73.if.end81.thread_crit_edge:               ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81.thread

if.end81:                                         ; preds = %if.end73
  %call79 = tail call fastcc i32 @cb_pcidas64_ao_check_chanlist(ptr noundef %dev, ptr noundef %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %phi.cmp = icmp eq i32 %call79, 0
  br i1 %phi.cmp, label %if.end81.if.end81.thread_crit_edge, label %if.end81.cleanup_crit_edge

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end81.if.end81.thread_crit_edge:               ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81.thread

if.end81.thread:                                  ; preds = %if.end81.if.end81.thread_crit_edge, %if.end73.if.end81.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end81.thread, %if.end81.cleanup_crit_edge, %get_divisor.exit.cleanup_crit_edge, %comedi_check_trigger_arg_is.exit172.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 3, %comedi_check_trigger_arg_is.exit172.cleanup_crit_edge ], [ 4, %get_divisor.exit.cleanup_crit_edge ], [ 0, %if.end81.thread ], [ 5, %if.end81.cleanup_crit_edge ], [ 2, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ao_cmd(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s) #2 align 64 {
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
  %read_subdev.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %4 = ptrtoint ptr %read_subdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_subdev.i, align 4
  %busy.i = getelementptr inbounds %struct.comedi_subdevice, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %busy.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %busy.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.do.body_crit_edge, label %if.end.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end.i:                                         ; preds = %entry
  %board_ptr.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %8 = ptrtoint ptr %board_ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %board_ptr.i, align 4
  %layout.i = getelementptr inbounds %struct.pcidas64_board, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %layout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.i = icmp eq i32 %11, 2
  br i1 %cmp.i, label %if.end.i.do.body_crit_edge, label %if.else.i

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.else.i:                                        ; preds = %if.end.i
  %async.i = getelementptr inbounds %struct.comedi_subdevice, ptr %5, i32 0, i32 7
  %12 = ptrtoint ptr %async.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %async.i, align 4
  %chanlist.i.i = getelementptr inbounds %struct.comedi_async, ptr %13, i32 0, i32 17, i32 12
  %chanlist_len.i.i = getelementptr inbounds %struct.comedi_async, ptr %13, i32 0, i32 17, i32 13
  %14 = ptrtoint ptr %chanlist_len.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chanlist_len.i.i, align 4
  %umax.i.i = tail call i32 @llvm.umax.i32(i32 %15, i32 1) #7
  %16 = add i32 %umax.i.i, -1
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %if.end.i.i.for.cond.i.i_crit_edge, %if.else.i
  %i.0.i.i = phi i32 [ 0, %if.else.i ], [ %add.i.i, %if.end.i.i.for.cond.i.i_crit_edge ]
  %add.i.i = add nuw i32 %i.0.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i.i, i32 %16)
  %exitcond.not.i.i = icmp eq i32 %i.0.i.i, %16
  br i1 %exitcond.not.i.i, label %for.cond.i.i.do.body_crit_edge, label %for.body.i.i

for.cond.i.i.do.body_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.body.i.i:                                     ; preds = %for.cond.i.i
  %17 = ptrtoint ptr %chanlist.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chanlist.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %18, i32 %add.i.i
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %20, 65535
  %arrayidx3.i.i = getelementptr i32, ptr %18, i32 %i.0.i.i
  %21 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx3.i.i, align 4
  %and4.i.i = and i32 %22, 65535
  %add5.i.i = add nuw nsw i32 %and4.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %add5.i.i)
  %cmp6.not.i.i = icmp eq i32 %and.i.i, %add5.i.i
  br i1 %cmp6.not.i.i, label %if.end.i.i, label %for.body.i.i.if.then_crit_edge

for.body.i.i.if.then_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end.i.i:                                       ; preds = %for.body.i.i
  %shr43.i.i = xor i32 %22, %20
  %23 = and i32 %shr43.i.i, 67043328
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %if.end.i.i.for.cond.i.i_crit_edge, label %if.end.i.i.if.then_crit_edge

if.end.i.i.if.then_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end.i.i.for.cond.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

if.then:                                          ; preds = %if.end.i.i.if.then_crit_edge, %for.body.i.i.if.then_crit_edge
  %class_dev.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %25 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %class_dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.46) #10
  %27 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %class_dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.49) #10
  br label %cleanup

do.body:                                          ; preds = %for.cond.i.i.do.body_crit_edge, %if.end.i.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !345
  tail call void @arm_heavy_mb() #7
  %main_iobase = getelementptr inbounds %struct.pcidas64_private, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %main_iobase to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %main_iobase, align 4
  %add.ptr = getelementptr i8, ptr %30, i32 80
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 0) #7, !srcloc !257
  %ao_dma_index = getelementptr inbounds %struct.pcidas64_private, ptr %1, i32 0, i32 15
  %31 = ptrtoint ptr %ao_dma_index to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %ao_dma_index, align 4
  %32 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %private, align 4
  %chanlist.i = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 12
  %34 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chanlist.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %and.i = and i32 %37, 65535
  %chanlist_len.i = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 13
  %38 = ptrtoint ptr %chanlist_len.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %chanlist_len.i, align 4
  %sub.i = add i32 %39, -1
  %arrayidx2.i = getelementptr i32, ptr %35, i32 %sub.i
  %40 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx2.i, align 4
  %and3.i = and i32 %41, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i, i32 %and.i)
  %cmp.i16 = icmp ult i32 %and3.i, %and.i
  br i1 %cmp.i16, label %do.end.i, label %do.body.set_dac_select_reg.exit_crit_edge

do.body.set_dac_select_reg.exit_crit_edge:        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_dac_select_reg.exit

do.end.i:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev.i17 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %42 = ptrtoint ptr %class_dev.i17 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %class_dev.i17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.67) #10
  br label %set_dac_select_reg.exit

set_dac_select_reg.exit:                          ; preds = %do.end.i, %do.body.set_dac_select_reg.exit_crit_edge
  %and4.i = and i32 %37, 7
  %and5.i = shl i32 %41, 3
  %shl.i = and i32 %and5.i, 56
  %or.i = or i32 %shl.i, %and4.i
  %conv.i = trunc i32 %or.i to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !346
  tail call void @arm_heavy_mb() #7
  %44 = shl nuw nsw i16 %conv.i, 8
  %main_iobase.i = getelementptr inbounds %struct.pcidas64_private, ptr %33, i32 0, i32 3
  %45 = ptrtoint ptr %main_iobase.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %main_iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %46, i32 96
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %44) #7, !srcloc !257
  %47 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %private, align 4
  %scan_begin_src.i = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 4
  %49 = ptrtoint ptr %scan_begin_src.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %scan_begin_src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %50)
  %cmp.not.i = icmp eq i32 %50, 16
  br i1 %cmp.not.i, label %if.end.i20, label %set_dac_select_reg.exit.set_dac_interval_regs.exit_crit_edge

set_dac_select_reg.exit.set_dac_interval_regs.exit_crit_edge: ; preds = %set_dac_select_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_dac_interval_regs.exit

if.end.i20:                                       ; preds = %set_dac_select_reg.exit
  %scan_begin_arg.i = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 5
  %51 = ptrtoint ptr %scan_begin_arg.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %scan_begin_arg.i, align 4
  %flags.i = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 1
  %53 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags.i, align 4
  %and.i.i.i = and i32 %54, 196608
  %55 = zext i32 %and.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %and.i.i.i, label %sw.default.i.i.i [
    i32 131072, label %sw.bb.i.i.i
    i32 65536, label %if.end.i20.get_ao_divisor.exit.i_crit_edge
  ]

if.end.i20.get_ao_divisor.exit.i_crit_edge:       ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_ao_divisor.exit.i

sw.bb.i.i.i:                                      ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i = add i32 %52, 24
  br label %get_ao_divisor.exit.i

sw.default.i.i.i:                                 ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #9
  %add5.i.i.i = add i32 %52, 12
  br label %get_ao_divisor.exit.i

get_ao_divisor.exit.i:                            ; preds = %sw.default.i.i.i, %sw.bb.i.i.i, %if.end.i20.get_ao_divisor.exit.i_crit_edge
  %divisor.0.in.i.i.i = phi i32 [ %add5.i.i.i, %sw.default.i.i.i ], [ %sub.i.i.i, %sw.bb.i.i.i ], [ %52, %if.end.i20.get_ao_divisor.exit.i_crit_edge ]
  %divisor.0.i.i.i = udiv i32 %divisor.0.in.i.i.i, 25
  %sub.i.i = add nsw i32 %divisor.0.i.i.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %sub.i.i)
  %cmp1.i = icmp ugt i32 %sub.i.i, 16777215
  br i1 %cmp1.i, label %do.end.i22, label %get_ao_divisor.exit.i.do.body4.i_crit_edge

get_ao_divisor.exit.i.do.body4.i_crit_edge:       ; preds = %get_ao_divisor.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body4.i

do.end.i22:                                       ; preds = %get_ao_divisor.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev.i21 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %56 = ptrtoint ptr %class_dev.i21 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %class_dev.i21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.69) #10
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.end.i22, %get_ao_divisor.exit.i.do.body4.i_crit_edge
  %divisor.0.i = phi i32 [ 16777215, %do.end.i22 ], [ %sub.i.i, %get_ao_divisor.exit.i.do.body4.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !347
  tail call void @arm_heavy_mb() #7
  %conv.i23 = trunc i32 %divisor.0.i to i16
  %58 = tail call i16 @llvm.bswap.i16(i16 %conv.i23) #7
  %main_iobase.i24 = getelementptr inbounds %struct.pcidas64_private, ptr %48, i32 0, i32 3
  %59 = ptrtoint ptr %main_iobase.i24 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %main_iobase.i24, align 4
  %add.ptr.i25 = getelementptr i8, ptr %60, i32 84
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i25, i16 %58) #7, !srcloc !257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !348
  tail call void @arm_heavy_mb() #7
  %sh.diff.i = lshr i32 %divisor.0.i, 8
  %tr.sh.diff.i = trunc i32 %sh.diff.i to i16
  %conv11.i = and i16 %tr.sh.diff.i, -256
  %61 = ptrtoint ptr %main_iobase.i24 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %main_iobase.i24, align 4
  %add.ptr13.i = getelementptr i8, ptr %62, i32 86
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr13.i, i16 %conv11.i) #7, !srcloc !257
  br label %set_dac_interval_regs.exit

set_dac_interval_regs.exit:                       ; preds = %do.body4.i, %set_dac_select_reg.exit.set_dac_interval_regs.exit_crit_edge
  %ao_dma_desc_bus_addr = getelementptr inbounds %struct.pcidas64_private, ptr %1, i32 0, i32 14
  %63 = ptrtoint ptr %ao_dma_desc_bus_addr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ao_dma_desc_bus_addr, align 4
  %or2 = or i32 %64, 5
  %65 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %plx9080_iobase19.i = getelementptr inbounds %struct.pcidas64_private, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %plx9080_iobase19.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %plx9080_iobase19.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %68, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 0) #7, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !286
  tail call void @arm_heavy_mb() #7
  %69 = ptrtoint ptr %plx9080_iobase19.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %plx9080_iobase19.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %70, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 0) #7, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !287
  tail call void @arm_heavy_mb() #7
  %71 = ptrtoint ptr %plx9080_iobase19.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %plx9080_iobase19.i, align 4
  %add.ptr30.i = getelementptr i8, ptr %72, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 0) #7, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !288
  tail call void @arm_heavy_mb() #7
  %73 = tail call i32 @llvm.bswap.i32(i32 %or2) #7
  %74 = ptrtoint ptr %plx9080_iobase19.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %plx9080_iobase19.i, align 4
  %add.ptr35.i = getelementptr i8, ptr %75, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i, i32 %73) #7, !srcloc !242
  %76 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %private, align 4
  %78 = ptrtoint ptr %chanlist_len.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %chanlist_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp16.not.i = icmp eq i32 %79, 0
  br i1 %cmp16.not.i, label %set_dac_interval_regs.exit.set_dac_control1_reg.exit_crit_edge, label %for.body.lr.ph.i

set_dac_interval_regs.exit.set_dac_control1_reg.exit_crit_edge: ; preds = %set_dac_interval_regs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_dac_control1_reg.exit

for.body.lr.ph.i:                                 ; preds = %set_dac_interval_regs.exit
  %dac_control1_bits.i = getelementptr inbounds %struct.pcidas64_private, ptr %77, i32 0, i32 21
  %board_ptr.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %class_dev.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %set_dac_range_bits.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.017.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %set_dac_range_bits.exit.i.for.body.i_crit_edge ]
  %80 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %chanlist.i, align 4
  %arrayidx.i = getelementptr i32, ptr %81, i32 %i.017.i
  %82 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx.i, align 4
  %and.i31 = and i32 %83, 65535
  %shr.i = lshr i32 %83, 16
  %and3.i32 = and i32 %shr.i, 255
  %84 = ptrtoint ptr %board_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %board_ptr.i.i, align 4
  %ao_range_code.i.i = getelementptr inbounds %struct.pcidas64_board, ptr %85, i32 0, i32 10
  %86 = ptrtoint ptr %ao_range_code.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ao_range_code.i.i, align 4
  %arrayidx.i.i33 = getelementptr i32, ptr %87, i32 %and3.i32
  %88 = ptrtoint ptr %arrayidx.i.i33 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx.i.i33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i31)
  %cmp.i.i = icmp ugt i32 %and.i31, 1
  br i1 %cmp.i.i, label %do.end.i.i, label %for.body.i.if.end.i.i34_crit_edge

for.body.i.if.end.i.i34_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i34

do.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %90 = ptrtoint ptr %class_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %class_dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.61) #10
  br label %if.end.i.i34

if.end.i.i34:                                     ; preds = %do.end.i.i, %for.body.i.if.end.i.i34_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %89)
  %tobool.not.i.i = icmp ult i32 %89, 4
  br i1 %tobool.not.i.i, label %if.end.i.i34.set_dac_range_bits.exit.i_crit_edge, label %do.end4.i.i

if.end.i.i34.set_dac_range_bits.exit.i_crit_edge: ; preds = %if.end.i.i34
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_dac_range_bits.exit.i

do.end4.i.i:                                      ; preds = %if.end.i.i34
  call void @__sanitizer_cov_trace_pc() #9
  %92 = ptrtoint ptr %class_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %class_dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.64) #10
  br label %set_dac_range_bits.exit.i

set_dac_range_bits.exit.i:                        ; preds = %do.end4.i.i, %if.end.i.i34.set_dac_range_bits.exit.i_crit_edge
  %mul.i.i = shl nuw nsw i32 %and.i31, 1
  %shl.i.i = shl i32 3, %mul.i.i
  %94 = ptrtoint ptr %dac_control1_bits.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %dac_control1_bits.i, align 2
  %96 = trunc i32 %shl.i.i to i16
  %97 = xor i16 %96, -1
  %conv8.i.i = and i16 %95, %97
  %shl10.i.i = shl i32 %89, %mul.i.i
  %98 = trunc i32 %shl10.i.i to i16
  %conv12.i.i = or i16 %conv8.i.i, %98
  store i16 %conv12.i.i, ptr %dac_control1_bits.i, align 2
  %inc.i = add nuw i32 %i.017.i, 1
  %99 = ptrtoint ptr %chanlist_len.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %chanlist_len.i, align 4
  %cmp.i35 = icmp ult i32 %inc.i, %100
  br i1 %cmp.i35, label %set_dac_range_bits.exit.i.for.body.i_crit_edge, label %set_dac_range_bits.exit.i.set_dac_control1_reg.exit_crit_edge

set_dac_range_bits.exit.i.set_dac_control1_reg.exit_crit_edge: ; preds = %set_dac_range_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_dac_control1_reg.exit

set_dac_range_bits.exit.i.for.body.i_crit_edge:   ; preds = %set_dac_range_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

set_dac_control1_reg.exit:                        ; preds = %set_dac_range_bits.exit.i.set_dac_control1_reg.exit_crit_edge, %set_dac_interval_regs.exit.set_dac_control1_reg.exit_crit_edge
  %dac_control1_bits4.i = getelementptr inbounds %struct.pcidas64_private, ptr %77, i32 0, i32 21
  %101 = ptrtoint ptr %dac_control1_bits4.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %dac_control1_bits4.i, align 2
  %103 = or i16 %102, 32
  store i16 %103, ptr %dac_control1_bits4.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !349
  tail call void @arm_heavy_mb() #7
  %104 = ptrtoint ptr %dac_control1_bits4.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %dac_control1_bits4.i, align 2
  %106 = tail call i16 @llvm.bswap.i16(i16 %105) #7
  %main_iobase.i36 = getelementptr inbounds %struct.pcidas64_private, ptr %77, i32 0, i32 3
  %107 = ptrtoint ptr %main_iobase.i36 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %main_iobase.i36, align 4
  %add.ptr.i37 = getelementptr i8, ptr %108, i32 82
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i37, i16 %106) #7, !srcloc !257
  %109 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %async, align 4
  %inttrig = getelementptr inbounds %struct.comedi_async, ptr %110, i32 0, i32 20
  %111 = ptrtoint ptr %inttrig to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @ao_inttrig, ptr %inttrig, align 4
  br label %cleanup

cleanup:                                          ; preds = %set_dac_control1_reg.exit, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ 0, %set_dac_control1_reg.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ao_cancel(ptr noundef %dev, ptr nocapture noundef readnone %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !350
  tail call void @arm_heavy_mb() #7
  %main_iobase = getelementptr inbounds %struct.pcidas64_private, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %main_iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %main_iobase, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 80
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 0) #7, !srcloc !257
  tail call fastcc void @abort_dma(ptr noundef %dev, i32 noundef 0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @di_rbits(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 40
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !351
  %3 = and i8 %2, 15
  %and = zext i8 %3 to i32
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and, ptr %arrayidx, align 4
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %data, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %6 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n, align 4
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_wbits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !352
  tail call void @arm_heavy_mb() #7
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %conv = trunc i32 %1 to i8
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #7, !srcloc !270
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %state1 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %4 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state1, align 4
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %7 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n, align 4
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @subdev_8255_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dio_callback_4020(ptr nocapture noundef readonly %dev, i32 noundef %dir, i32 noundef %port, i32 noundef %data, i32 noundef %iobase) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %tobool.not = icmp eq i32 %dir, 0
  br i1 %tobool.not, label %if.end, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !353
  tail call void @arm_heavy_mb() #7
  %conv = trunc i32 %data to i16
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %main_iobase = getelementptr inbounds %struct.pcidas64_private, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %main_iobase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %main_iobase, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 %iobase
  %mul = shl i32 %port, 1
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %mul
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1, i16 %2) #7, !srcloc !257
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %main_iobase2 = getelementptr inbounds %struct.pcidas64_private, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %main_iobase2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %main_iobase2, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 %iobase
  %mul4 = shl i32 %port, 1
  %add.ptr5 = getelementptr i8, ptr %add.ptr3, i32 %mul4
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr5) #7, !srcloc !248
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !354
  %conv7 = zext i16 %8 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.body
  %retval.0 = phi i32 [ 0, %do.body ], [ %conv7, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @subdev_8255_mm_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dio_60xx_config_insn(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !355
  tail call void @arm_heavy_mb() #7
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 12
  %0 = ptrtoint ptr %io_bits to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_bits, align 4
  %conv = trunc i32 %1 to i8
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 64
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #7, !srcloc !270
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %4 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %do.body ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dio_60xx_wbits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !356
  tail call void @arm_heavy_mb() #7
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %conv = trunc i32 %1 to i8
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 72
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #7, !srcloc !270
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %mmio1 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %4 = ptrtoint ptr %mmio1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio1, align 4
  %add.ptr2 = getelementptr i8, ptr %5, i32 72
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2) #7, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !357
  %conv5 = zext i8 %6 to i32
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv5, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %8 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n, align 4
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cb_pcidas64_calib_insn_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
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
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then:                                          ; preds = %entry
  %sub = add i32 %3, -1
  %arrayidx = getelementptr i32, ptr %data, i32 %sub
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  %6 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %readback, align 4
  %arrayidx2 = getelementptr i32, ptr %7, i32 %and
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %5)
  %cmp.not = icmp eq i32 %9, %5
  br i1 %cmp.not, label %if.then.if.end6_crit_edge, label %if.then3

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @caldac_write(ptr noundef %dev, i32 noundef %and, i32 noundef %5)
  %10 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %readback, align 4
  %arrayidx5 = getelementptr i32, ptr %11, i32 %and
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %5, ptr %arrayidx5, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %13 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n, align 4
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @caldac_write(ptr nocapture noundef readonly %dev, i32 noundef %channel, i32 noundef %value) unnamed_addr #2 align 64 {
entry:
  %serial_bytes.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %layout = getelementptr inbounds %struct.pcidas64_board, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %layout, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge11
    i32 2, label %sw.bb1
  ]

entry.sw.bb_crit_edge11:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge11
  %and.i = shl i32 %channel, 8
  %conv.i = and i32 %value, 255
  %or.i = or i32 %conv.i, %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %channel)
  %cmp.i = icmp ugt i32 %channel, 7
  br i1 %cmp.i, label %do.end.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %sw.bb
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %5 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private.i, align 4
  %main_iobase.i = getelementptr inbounds %struct.pcidas64_private, ptr %6, i32 0, i32 3
  br label %for.body.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %7 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %class_dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.71) #10
  br label %sw.epilog

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i
  %bit.01.i = phi i32 [ 1024, %for.cond.preheader.i ], [ %shr.i, %for.body.i.for.body.i_crit_edge ]
  %and2.i = and i32 %bit.01.i, %or.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %spec.select.i = select i1 %tobool3.not.i, i16 0, i16 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !358
  tail call void @arm_heavy_mb() #7
  %10 = shl nuw i16 %spec.select.i, 8
  %11 = ptrtoint ptr %main_iobase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %main_iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %10) #7, !srcloc !257
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !359
  tail call void @arm_heavy_mb() #7
  %conv15.i = or i16 %spec.select.i, 256
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv15.i) #7
  %15 = ptrtoint ptr %main_iobase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %main_iobase.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %16, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr17.i, i16 %14) #7, !srcloc !257
  %shr.i = lshr i32 %bit.01.i, 1
  %tobool.not.i = icmp ult i32 %bit.01.i, 2
  br i1 %tobool.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !360
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %main_iobase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %main_iobase.i, align 4
  %add.ptr22.i = getelementptr i8, ptr %19, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr22.i, i16 256) #7, !srcloc !257
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !361
  tail call void @arm_heavy_mb() #7
  %21 = ptrtoint ptr %main_iobase.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %main_iobase.i, align 4
  %add.ptr27.i = getelementptr i8, ptr %22, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr27.i, i16 0) #7, !srcloc !257
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #7
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %serial_bytes.i) #7
  %24 = getelementptr inbounds [3 x i8], ptr %serial_bytes.i, i32 0, i32 1
  %25 = getelementptr inbounds [3 x i8], ptr %serial_bytes.i, i32 0, i32 2
  %26 = zext i32 %channel to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %channel, label %do.end.i8 [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb3.i
    i32 3, label %sw.bb5.i
    i32 4, label %sw.bb7.i
    i32 5, label %sw.bb9.i
    i32 6, label %sw.bb11.i
    i32 7, label %sw.bb13.i
  ]

sw.bb.i:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %serial_bytes.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %serial_bytes.i, align 1
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %serial_bytes.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 4, ptr %serial_bytes.i, align 1
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %serial_bytes.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %serial_bytes.i, align 1
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %serial_bytes.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 4, ptr %serial_bytes.i, align 1
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %serial_bytes.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 2, ptr %serial_bytes.i, align 1
  br label %sw.epilog.i

sw.bb9.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %serial_bytes.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 8, ptr %serial_bytes.i, align 1
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %serial_bytes.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 2, ptr %serial_bytes.i, align 1
  br label %sw.epilog.i

sw.bb13.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %serial_bytes.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 8, ptr %serial_bytes.i, align 1
  br label %sw.epilog.i

do.end.i8:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev.i7 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %35 = ptrtoint ptr %class_dev.i7 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %class_dev.i7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.73) #10
  br label %caldac_i2c_write.exit

sw.epilog.i:                                      ; preds = %sw.bb13.i, %sw.bb11.i, %sw.bb9.i, %sw.bb7.i, %sw.bb5.i, %sw.bb3.i, %sw.bb1.i, %sw.bb.i
  %i2c_addr.0.i = phi i32 [ 13, %sw.bb13.i ], [ 13, %sw.bb11.i ], [ 12, %sw.bb9.i ], [ 12, %sw.bb7.i ], [ 13, %sw.bb5.i ], [ 13, %sw.bb3.i ], [ 12, %sw.bb1.i ], [ 12, %sw.bb.i ]
  %shr.i9 = lshr i32 %value, 8
  %37 = trunc i32 %shr.i9 to i8
  %38 = and i8 %37, 15
  %conv.i10 = or i8 %38, 32
  %39 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv.i10, ptr %24, align 1
  %conv17.i = trunc i32 %value to i8
  %40 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv17.i, ptr %25, align 1
  call fastcc void @i2c_write(ptr noundef %dev, i32 noundef %i2c_addr.0.i, ptr noundef nonnull %serial_bytes.i, i32 noundef 3) #7
  br label %caldac_i2c_write.exit

caldac_i2c_write.exit:                            ; preds = %sw.epilog.i, %do.end.i8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %serial_bytes.i) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %caldac_i2c_write.exit, %for.end.i, %do.end.i, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cb_pcidas64_ad8402_insn_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
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
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then:                                          ; preds = %entry
  %sub = add i32 %3, -1
  %arrayidx = getelementptr i32, ptr %data, i32 %sub
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  %6 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %readback, align 4
  %arrayidx2 = getelementptr i32, ptr %7, i32 %and
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %5)
  %cmp.not = icmp eq i32 %9, %5
  br i1 %cmp.not, label %if.then.if.end6_crit_edge, label %if.then3

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ad8402_write(ptr noundef %dev, i32 noundef %and, i32 noundef %5)
  %10 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %readback, align 4
  %arrayidx5 = getelementptr i32, ptr %11, i32 %and
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %5, ptr %arrayidx5, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %13 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n, align 4
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ad8402_write(ptr nocapture noundef readonly %dev, i32 noundef %channel, i32 noundef %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %and = shl i32 %channel, 8
  %and1 = and i32 %value, 255
  %or = or i32 %and1, %and
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !362
  tail call void @arm_heavy_mb() #7
  %main_iobase = getelementptr inbounds %struct.pcidas64_private, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %main_iobase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %main_iobase, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 512) #7, !srcloc !257
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %register_bits.034 = phi i32 [ 2, %entry ], [ %register_bits.1, %for.body.for.body_crit_edge ]
  %bit.033 = phi i32 [ 512, %entry ], [ %shr, %for.body.for.body_crit_edge ]
  %and2 = and i32 %bit.033, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %and5 = and i32 %register_bits.034, -129
  %masksel = select i1 %tobool3.not, i32 0, i32 128
  %register_bits.1 = or i32 %masksel, %and5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !363
  tail call void @arm_heavy_mb() #7
  %conv9 = trunc i32 %register_bits.1 to i16
  %6 = tail call i16 @llvm.bswap.i16(i16 %conv9)
  %7 = ptrtoint ptr %main_iobase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %main_iobase, align 4
  %add.ptr11 = getelementptr i8, ptr %8, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11, i16 %6) #7, !srcloc !257
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !364
  tail call void @arm_heavy_mb() #7
  %conv16 = or i16 %conv9, 256
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv16)
  %11 = ptrtoint ptr %main_iobase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %main_iobase, align 4
  %add.ptr18 = getelementptr i8, ptr %12, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr18, i16 %10) #7, !srcloc !257
  %shr = lshr i32 %bit.033, 1
  %tobool.not = icmp ult i32 %bit.033, 2
  br i1 %tobool.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !365
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %main_iobase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %main_iobase, align 4
  %add.ptr23 = getelementptr i8, ptr %15, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr23, i16 0) #7, !srcloc !257
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eeprom_read_insn(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %0 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i, align 4
  %conv.i = and i32 %3, 255
  %or.i = or i32 %conv.i, 1536
  %plx9080_iobase.i = getelementptr inbounds %struct.pcidas64_private, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %plx9080_iobase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %plx9080_iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 108
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #7
  %plx_control_bits.i = getelementptr inbounds %struct.pcidas64_private, ptr %5, i32 0, i32 22
  %9 = ptrtoint ptr %plx_control_bits.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %plx_control_bits.i, align 4
  %and.i = and i32 %10, -50397185
  %or2.i = or i32 %and.i, 65536
  store i32 %or2.i, ptr %plx_control_bits.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !366
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %plx_control_bits.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %plx_control_bits.i, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #7, !srcloc !242
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #7
  %15 = ptrtoint ptr %plx_control_bits.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %plx_control_bits.i, align 4
  %or5.i = or i32 %16, 33554432
  store i32 %or5.i, ptr %plx_control_bits.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !367
  tail call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %plx_control_bits.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %plx_control_bits.i, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %19) #7, !srcloc !242
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then
  %bit.096.i = phi i32 [ 1024, %if.then ], [ %shr.i, %for.body.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #7
  %and10.i = and i32 %bit.096.i, %or.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %21 = ptrtoint ptr %plx_control_bits.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %plx_control_bits.i, align 4
  %and15.i = and i32 %22, -67108865
  %masksel.i = select i1 %tobool11.not.i, i32 0, i32 67108864
  %storemerge.i = or i32 %and15.i, %masksel.i
  store i32 %storemerge.i, ptr %plx_control_bits.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !368
  tail call void @arm_heavy_mb() #7
  %23 = ptrtoint ptr %plx_control_bits.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %plx_control_bits.i, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %25) #7, !srcloc !242
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748) #7
  %27 = ptrtoint ptr %plx_control_bits.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %plx_control_bits.i, align 4
  %or21.i = or i32 %28, 16777216
  store i32 %or21.i, ptr %plx_control_bits.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !369
  tail call void @arm_heavy_mb() #7
  %29 = ptrtoint ptr %plx_control_bits.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %plx_control_bits.i, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %31) #7, !srcloc !242
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748) #7
  %33 = ptrtoint ptr %plx_control_bits.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %plx_control_bits.i, align 4
  %and27.i = and i32 %34, -16777217
  store i32 %and27.i, ptr %plx_control_bits.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !370
  tail call void @arm_heavy_mb() #7
  %35 = ptrtoint ptr %plx_control_bits.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %plx_control_bits.i, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %37) #7, !srcloc !242
  %shr.i = lshr i32 %bit.096.i, 1
  %tobool.not.i = icmp ult i32 %bit.096.i, 2
  br i1 %tobool.not.i, label %for.body.i.for.body34.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.for.body34.i_crit_edge:                ; preds = %for.body.i
  br label %for.body34.i

for.body34.i:                                     ; preds = %for.body34.i.for.body34.i_crit_edge, %for.body.i.for.body34.i_crit_edge
  %bit.198.i = phi i32 [ %shr56.i, %for.body34.i.for.body34.i_crit_edge ], [ 32768, %for.body.i.for.body34.i_crit_edge ]
  %value.097.i = phi i16 [ %value.1.i, %for.body34.i.for.body34.i_crit_edge ], [ 0, %for.body.i.for.body34.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748) #7
  %39 = ptrtoint ptr %plx_control_bits.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %plx_control_bits.i, align 4
  %or36.i = or i32 %40, 16777216
  store i32 %or36.i, ptr %plx_control_bits.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !371
  tail call void @arm_heavy_mb() #7
  %41 = ptrtoint ptr %plx_control_bits.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %plx_control_bits.i, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %43) #7, !srcloc !242
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748) #7
  %45 = ptrtoint ptr %plx_control_bits.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %plx_control_bits.i, align 4
  %and42.i = and i32 %46, -16777217
  store i32 %and42.i, ptr %plx_control_bits.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !372
  tail call void @arm_heavy_mb() #7
  %47 = ptrtoint ptr %plx_control_bits.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %plx_control_bits.i, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %49) #7, !srcloc !242
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748) #7
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !373
  %52 = and i32 %51, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool49.not.i = icmp eq i32 %52, 0
  %53 = trunc i32 %bit.198.i to i16
  %conv53.i = select i1 %tobool49.not.i, i16 0, i16 %53
  %value.1.i = or i16 %conv53.i, %value.097.i
  %shr56.i = lshr i32 %bit.198.i, 1
  %tobool33.not.i = icmp ult i32 %bit.198.i, 2
  br i1 %tobool33.not.i, label %read_eeprom.exit, label %for.body34.i.for.body34.i_crit_edge

for.body34.i.for.body34.i_crit_edge:              ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body34.i

read_eeprom.exit:                                 ; preds = %for.body34.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748) #7
  %55 = ptrtoint ptr %plx_control_bits.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %plx_control_bits.i, align 4
  %and59.i = and i32 %56, -33554433
  store i32 %and59.i, ptr %plx_control_bits.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !374
  tail call void @arm_heavy_mb() #7
  %57 = ptrtoint ptr %plx_control_bits.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %plx_control_bits.i, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %59) #7, !srcloc !242
  %conv1 = zext i16 %value.1.i to i32
  %60 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp10.not = icmp eq i32 %61, 0
  br i1 %cmp10.not, label %read_eeprom.exit.if.end_crit_edge, label %read_eeprom.exit.for.body_crit_edge

read_eeprom.exit.for.body_crit_edge:              ; preds = %read_eeprom.exit
  br label %for.body

read_eeprom.exit.if.end_crit_edge:                ; preds = %read_eeprom.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %read_eeprom.exit.for.body_crit_edge
  %i.011 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %read_eeprom.exit.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %data, i32 %i.011
  %62 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %conv1, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.011, 1
  %63 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %64
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %read_eeprom.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %65 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %n, align 4
  ret i32 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_timeout(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cb_pcidas64_ai_eoc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %main_iobase = getelementptr inbounds %struct.pcidas64_private, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %main_iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %main_iobase, align 4
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %5) #7, !srcloc !248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  %layout = getelementptr inbounds %struct.pcidas64_board, ptr %1, i32 0, i32 12
  %7 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %layout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp = icmp eq i32 %8, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = ptrtoint ptr %main_iobase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %main_iobase, align 4
  %add.ptr6 = getelementptr i8, ptr %10, i32 12
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr6) #7, !srcloc !248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !376
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not = icmp eq i16 %11, 0
  br i1 %tobool.not, label %if.then.if.end17_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.else:                                          ; preds = %entry
  %12 = and i16 %6, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool14.not = icmp eq i16 %12, 0
  br i1 %tobool14.not, label %if.else.if.end17_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.end17:                                         ; preds = %if.else.if.end17_crit_edge, %if.then.if.end17_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.end17 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @check_adc_timing(ptr nocapture noundef readonly %dev, ptr nocapture noundef %cmd) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %0 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %convert_src, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %1, label %entry.if.end21_crit_edge [
    i32 16, label %if.then
    i32 2, label %if.then18
  ]

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then:                                          ; preds = %entry
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %3 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %board_ptr, align 4
  %layout = getelementptr inbounds %struct.pcidas64_board, ptr %4, i32 0, i32 12
  %5 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %layout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp1 = icmp eq i32 %6, 2
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %convert_arg, align 4
  br label %if.end21

if.else:                                          ; preds = %if.then
  %8 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %convert_arg, align 4
  %flags = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and.i = and i32 %11, 196608
  %12 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %and.i, label %sw.default.i [
    i32 131072, label %sw.bb.i
    i32 65536, label %if.else.get_divisor.exit_crit_edge
  ]

if.else.get_divisor.exit_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_divisor.exit

sw.bb.i:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add i32 %9, 24
  br label %get_divisor.exit

sw.default.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %add5.i = add i32 %9, 12
  br label %get_divisor.exit

get_divisor.exit:                                 ; preds = %sw.default.i, %sw.bb.i, %if.else.get_divisor.exit_crit_edge
  %divisor.0.in.i = phi i32 [ %add5.i, %sw.default.i ], [ %sub.i, %sw.bb.i ], [ %9, %if.else.get_divisor.exit_crit_edge ]
  %divisor.0.i = udiv i32 %divisor.0.in.i, 25
  %13 = tail call i32 @llvm.umin.i32(i32 %divisor.0.i, i32 16777218)
  %14 = tail call i32 @llvm.umax.i32(i32 %13, i32 3)
  %15 = zext i32 %14 to i64
  %mul = mul nuw nsw i32 %14, 25
  %16 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul, ptr %convert_arg, align 4
  br label %if.end21

if.then18:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %convert_arg19 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %17 = ptrtoint ptr %convert_arg19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %convert_arg19, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %get_divisor.exit, %if.then2, %entry.if.end21_crit_edge
  %convert_divisor.0 = phi i64 [ 0, %if.then2 ], [ %15, %get_divisor.exit ], [ 0, %if.then18 ], [ 0, %entry.if.end21_crit_edge ]
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 4
  %18 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %19)
  %cmp22 = icmp eq i32 %19, 16
  br i1 %cmp22, label %if.then24, label %if.end21.if.end53_crit_edge

if.end21.if.end53_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then24:                                        ; preds = %if.end21
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %20 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %scan_begin_arg, align 4
  %flags25 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 1
  %22 = ptrtoint ptr %flags25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags25, align 4
  %and.i77 = and i32 %23, 196608
  %24 = zext i32 %and.i77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %and.i77, label %sw.default.i81 [
    i32 131072, label %sw.bb.i79
    i32 65536, label %if.then24.get_divisor.exit84_crit_edge
  ]

if.then24.get_divisor.exit84_crit_edge:           ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_divisor.exit84

sw.bb.i79:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i78 = add i32 %21, 24
  br label %get_divisor.exit84

sw.default.i81:                                   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  %add5.i80 = add i32 %21, 12
  br label %get_divisor.exit84

get_divisor.exit84:                               ; preds = %sw.default.i81, %sw.bb.i79, %if.then24.get_divisor.exit84_crit_edge
  %divisor.0.in.i82 = phi i32 [ %add5.i80, %sw.default.i81 ], [ %sub.i78, %sw.bb.i79 ], [ %21, %if.then24.get_divisor.exit84_crit_edge ]
  %divisor.0.i83 = udiv i32 %divisor.0.in.i82, 25
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp28 = icmp eq i32 %1, 16
  br i1 %cmp28, label %if.then30, label %get_divisor.exit84.if.end38_crit_edge

get_divisor.exit84.if.end38_crit_edge:            ; preds = %get_divisor.exit84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then30:                                        ; preds = %get_divisor.exit84
  call void @__sanitizer_cov_trace_pc() #9
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %25 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %chanlist_len, align 4
  %conv31 = zext i32 %26 to i64
  %mul32 = mul nuw nsw i64 %convert_divisor.0, %conv31
  %add = add nuw nsw i64 %mul32, 16777214
  br label %if.end38

if.end38:                                         ; preds = %if.then30, %get_divisor.exit84.if.end38_crit_edge
  %max_scan_divisor.0 = phi i64 [ %add, %if.then30 ], [ 16777217, %get_divisor.exit84.if.end38_crit_edge ]
  %min_scan_divisor.0 = phi i64 [ %mul32, %if.then30 ], [ 2, %get_divisor.exit84.if.end38_crit_edge ]
  %conv39 = zext i32 %divisor.0.i83 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %max_scan_divisor.0, i64 %conv39)
  %cmp40 = icmp ult i64 %max_scan_divisor.0, %conv39
  %conv43 = trunc i64 %max_scan_divisor.0 to i32
  %spec.select = select i1 %cmp40, i32 %conv43, i32 %divisor.0.i83
  %conv45 = zext i32 %spec.select to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %min_scan_divisor.0, i64 %conv45)
  %cmp46 = icmp ugt i64 %min_scan_divisor.0, %conv45
  %conv49 = trunc i64 %min_scan_divisor.0 to i32
  %scan_divisor.1 = select i1 %cmp46, i32 %conv49, i32 %spec.select
  %mul51 = mul i32 %scan_divisor.1, 25
  %27 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul51, ptr %scan_begin_arg, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.end38, %if.end21.if.end53_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cb_pcidas64_ai_check_chanlist(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %chanlist = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %2 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chanlist, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %6 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp17 = icmp ugt i32 %7, 1
  br i1 %cmp17, label %entry.for.body_crit_edge, label %entry.cleanup78_crit_edge

entry.cleanup78_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup78

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.018 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  %arrayidx2 = getelementptr i32, ptr %3, i32 %i.018
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2, align 4
  %shr31 = xor i32 %9, %5
  %10 = and i32 %shr31, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp5.not = icmp eq i32 %10, 0
  br i1 %cmp5.not, label %for.cond, label %do.body

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb_pcidas64_ai_check_chanlist.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cb_pcidas64_ai_check_chanlist, %cleanup78)) #7
          to label %if.then9 [label %cleanup78], !srcloc !250

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %11 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb_pcidas64_ai_check_chanlist.__UNIQUE_ID_ddebug237, ptr noundef %12, ptr noundef nonnull @.str.54) #7
  br label %cleanup78

for.end:                                          ; preds = %for.cond
  %layout = getelementptr inbounds %struct.pcidas64_board, ptr %1, i32 0, i32 12
  %13 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %layout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp11 = icmp eq i32 %14, 2
  br i1 %cmp11, label %if.then12, label %for.end.cleanup78_crit_edge

for.end.cleanup78_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup78

if.then12:                                        ; preds = %for.end
  %and15 = and i32 %5, 65535
  br i1 %cmp17, label %if.then12.for.body19_crit_edge, label %if.then12.cleanup78_crit_edge

if.then12.cleanup78_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup78

if.then12.for.body19_crit_edge:                   ; preds = %if.then12
  br label %for.body19

for.cond16:                                       ; preds = %for.body19
  %inc49 = add nuw i32 %i.120, 1
  %exitcond21.not = icmp eq i32 %inc49, %7
  br i1 %exitcond21.not, label %for.end50, label %for.cond16.for.body19_crit_edge

for.cond16.for.body19_crit_edge:                  ; preds = %for.cond16
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body19

for.body19:                                       ; preds = %for.cond16.for.body19_crit_edge, %if.then12.for.body19_crit_edge
  %i.120 = phi i32 [ %inc49, %for.cond16.for.body19_crit_edge ], [ 1, %if.then12.for.body19_crit_edge ]
  %arrayidx21 = getelementptr i32, ptr %3, i32 %i.120
  %15 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx21, align 4
  %and22 = and i32 %16, 65535
  %add = add i32 %i.120, %and15
  call void @__sanitizer_cov_trace_cmp4(i32 %and22, i32 %add)
  %cmp23.not = icmp eq i32 %and22, %add
  br i1 %cmp23.not, label %for.cond16, label %do.body25

do.body25:                                        ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb_pcidas64_ai_check_chanlist.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cb_pcidas64_ai_check_chanlist, %cleanup78)) #7
          to label %if.then39 [label %cleanup78], !srcloc !250

if.then39:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev40 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %17 = ptrtoint ptr %class_dev40 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %class_dev40, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb_pcidas64_ai_check_chanlist.__UNIQUE_ID_ddebug238, ptr noundef %18, ptr noundef nonnull @.str.55) #7
  br label %cleanup78

for.end50:                                        ; preds = %for.cond16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp52 = icmp eq i32 %7, 3
  br i1 %cmp52, label %do.body54, label %for.end50.cleanup78_crit_edge

for.end50.cleanup78_crit_edge:                    ; preds = %for.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup78

do.body54:                                        ; preds = %for.end50
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb_pcidas64_ai_check_chanlist.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cb_pcidas64_ai_check_chanlist, %cleanup78)) #7
          to label %if.then68 [label %cleanup78], !srcloc !250

if.then68:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev69 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %19 = ptrtoint ptr %class_dev69 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %class_dev69, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb_pcidas64_ai_check_chanlist.__UNIQUE_ID_ddebug239, ptr noundef %20, ptr noundef nonnull @.str.56) #7
  br label %cleanup78

cleanup78:                                        ; preds = %if.then68, %do.body54, %for.end50.cleanup78_crit_edge, %if.then39, %do.body25, %if.then12.cleanup78_crit_edge, %for.end.cleanup78_crit_edge, %if.then9, %do.body, %entry.cleanup78_crit_edge
  %retval.5 = phi i32 [ -22, %if.then9 ], [ -22, %if.then39 ], [ -22, %if.then68 ], [ 0, %for.end.cleanup78_crit_edge ], [ 0, %for.end50.cleanup78_crit_edge ], [ -22, %do.body ], [ -22, %do.body25 ], [ -22, %do.body54 ], [ 0, %if.then12.cleanup78_crit_edge ], [ 0, %entry.cleanup78_crit_edge ]
  ret i32 %retval.5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2c_stop(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %plx9080_iobase.i = getelementptr inbounds %struct.pcidas64_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %plx9080_iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plx9080_iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 108
  %plx_control_bits2.i = getelementptr inbounds %struct.pcidas64_private, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %plx_control_bits2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %plx_control_bits2.i, align 4
  %or.i = or i32 %5, 65536
  store i32 %or.i, ptr %plx_control_bits2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !341
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %plx_control_bits2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %plx_control_bits2.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #7, !srcloc !242
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 2147480) #7
  %10 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private.i, align 4
  %plx9080_iobase.i5 = getelementptr inbounds %struct.pcidas64_private, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %plx9080_iobase.i5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %plx9080_iobase.i5, align 4
  %add.ptr.i6 = getelementptr i8, ptr %13, i32 108
  %plx_control_bits2.i7 = getelementptr inbounds %struct.pcidas64_private, ptr %11, i32 0, i32 22
  %14 = ptrtoint ptr %plx_control_bits2.i7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %plx_control_bits2.i7, align 4
  %or.i8 = or i32 %15, 67108864
  store i32 %or.i8, ptr %plx_control_bits2.i7, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !340
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %plx_control_bits2.i7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %plx_control_bits2.i7, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 %18) #7, !srcloc !242
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 2147480) #7
  %20 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %private.i, align 4
  %plx9080_iobase.i10 = getelementptr inbounds %struct.pcidas64_private, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %plx9080_iobase.i10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %plx9080_iobase.i10, align 4
  %add.ptr.i11 = getelementptr i8, ptr %23, i32 108
  %plx_control_bits2.i12 = getelementptr inbounds %struct.pcidas64_private, ptr %21, i32 0, i32 22
  %24 = ptrtoint ptr %plx_control_bits2.i12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %plx_control_bits2.i12, align 4
  %and.i = and i32 %25, -65537
  store i32 %and.i, ptr %plx_control_bits2.i12, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  tail call void @arm_heavy_mb() #7
  %26 = ptrtoint ptr %plx_control_bits2.i12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %plx_control_bits2.i12, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %28) #7, !srcloc !242
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #7
  %30 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %private.i, align 4
  %plx9080_iobase.i14 = getelementptr inbounds %struct.pcidas64_private, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %plx9080_iobase.i14 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %plx9080_iobase.i14, align 4
  %add.ptr.i15 = getelementptr i8, ptr %33, i32 108
  %plx_control_bits2.i16 = getelementptr inbounds %struct.pcidas64_private, ptr %31, i32 0, i32 22
  %34 = ptrtoint ptr %plx_control_bits2.i16 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %plx_control_bits2.i16, align 4
  %and.i17 = and i32 %35, -67108865
  store i32 %and.i17, ptr %plx_control_bits2.i16, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %36 = ptrtoint ptr %plx_control_bits2.i16 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %plx_control_bits2.i16, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %38) #7, !srcloc !242
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748000) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2c_write_byte(ptr nocapture noundef readonly %dev, i8 noundef zeroext %byte) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %bit.026 = phi i8 [ -128, %entry ], [ %35, %if.end.for.body_crit_edge ]
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %plx9080_iobase.i = getelementptr inbounds %struct.pcidas64_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %plx9080_iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plx9080_iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 108
  %plx_control_bits2.i = getelementptr inbounds %struct.pcidas64_private, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %plx_control_bits2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %plx_control_bits2.i, align 4
  %or.i = or i32 %5, 65536
  store i32 %or.i, ptr %plx_control_bits2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !341
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %plx_control_bits2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %plx_control_bits2.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #7, !srcloc !242
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 2147480) #7
  %and11 = and i8 %bit.026, %byte
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and11)
  %tobool3.not = icmp eq i8 %and11, 0
  %10 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private.i, align 4
  %plx9080_iobase.i17 = getelementptr inbounds %struct.pcidas64_private, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %plx9080_iobase.i17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %plx9080_iobase.i17, align 4
  %add.ptr.i18 = getelementptr i8, ptr %13, i32 108
  %plx_control_bits2.i19 = getelementptr inbounds %struct.pcidas64_private, ptr %11, i32 0, i32 22
  %14 = ptrtoint ptr %plx_control_bits2.i19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %plx_control_bits2.i19, align 4
  br i1 %tobool3.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %15, -67108865
  %16 = ptrtoint ptr %plx_control_bits2.i19 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and.i, ptr %plx_control_bits2.i19, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !339
  tail call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %plx_control_bits2.i19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %plx_control_bits2.i19, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %19) #7, !srcloc !242
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %or.i20 = or i32 %15, 67108864
  %20 = ptrtoint ptr %plx_control_bits2.i19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.i20, ptr %plx_control_bits2.i19, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !340
  tail call void @arm_heavy_mb() #7
  %21 = ptrtoint ptr %plx_control_bits2.i19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %plx_control_bits2.i19, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %23) #7, !srcloc !242
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ 2147480, %if.else ], [ 214748000, %if.then ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef %.sink) #7
  %25 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %private.i, align 4
  %plx9080_iobase.i22 = getelementptr inbounds %struct.pcidas64_private, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %plx9080_iobase.i22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %plx9080_iobase.i22, align 4
  %add.ptr.i23 = getelementptr i8, ptr %28, i32 108
  %plx_control_bits2.i24 = getelementptr inbounds %struct.pcidas64_private, ptr %26, i32 0, i32 22
  %29 = ptrtoint ptr %plx_control_bits2.i24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %plx_control_bits2.i24, align 4
  %and.i25 = and i32 %30, -65537
  store i32 %and.i25, ptr %plx_control_bits2.i24, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !338
  tail call void @arm_heavy_mb() #7
  %31 = ptrtoint ptr %plx_control_bits2.i24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %plx_control_bits2.i24, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 %33) #7, !srcloc !242
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #7
  %35 = lshr i8 %bit.026, 1
  %tobool.not = icmp ult i8 %bit.026, 2
  br i1 %tobool.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cb_pcidas64_ao_check_chanlist(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chanlist = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %0 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chanlist, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 65535
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %4 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp3 = icmp ugt i32 %5, 1
  br i1 %cmp3, label %entry.for.body_crit_edge, label %entry.cleanup10_crit_edge

entry.cleanup10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup10

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.cond.cleanup10_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.cleanup10_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup10

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.04 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  %arrayidx2 = getelementptr i32, ptr %1, i32 %i.04
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2, align 4
  %and3 = and i32 %7, 65535
  %add = add i32 %i.04, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %and3, i32 %add)
  %cmp4.not = icmp eq i32 %and3, %add
  br i1 %cmp4.not, label %for.cond, label %do.body

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb_pcidas64_ao_check_chanlist.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cb_pcidas64_ao_check_chanlist, %cleanup10)) #7
          to label %if.then8 [label %cleanup10], !srcloc !250

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %8 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb_pcidas64_ao_check_chanlist.__UNIQUE_ID_ddebug240, ptr noundef %9, ptr noundef nonnull @.str.55) #7
  br label %cleanup10

cleanup10:                                        ; preds = %if.then8, %do.body, %for.cond.cleanup10_crit_edge, %entry.cleanup10_crit_edge
  %retval.2 = phi i32 [ -22, %if.then8 ], [ -22, %do.body ], [ 0, %entry.cleanup10_crit_edge ], [ 0, %for.cond.cleanup10_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ao_inttrig(ptr noundef %dev, ptr nocapture noundef readonly %s, i32 noundef %trig_num) #2 align 64 {
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
  %start_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 3
  %4 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %trig_num)
  %cmp.not = icmp eq i32 %5, %trig_num
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %write_subdev.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 22
  %6 = ptrtoint ptr %write_subdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_subdev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !377
  tail call void @arm_heavy_mb() #7
  %main_iobase.i = getelementptr inbounds %struct.pcidas64_private, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %main_iobase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %main_iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 38
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 0) #7, !srcloc !257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %main_iobase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %main_iobase.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %11, i32 102
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i, i16 0) #7, !srcloc !257
  %ao_bounce_buffer.i = getelementptr inbounds %struct.pcidas64_private, ptr %1, i32 0, i32 30
  %subdev_flags.i.i.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %7, i32 0, i32 4
  %12 = ptrtoint ptr %subdev_flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %subdev_flags.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %13, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %shr.i.i.i = select i1 %tobool.not.i.i.i.i, i32 4096, i32 2048
  %call1.i.i = tail call i32 @comedi_nsamples_left(ptr noundef %7, i32 noundef %shr.i.i.i) #7
  %call2.i.i = tail call i32 @comedi_buf_read_samples(ptr noundef %7, ptr noundef %ao_bounce_buffer.i, i32 noundef %call1.i.i) #7
  %14 = ptrtoint ptr %subdev_flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %subdev_flags.i.i.i.i, align 4
  %and.i.i2.i.i = and i32 %15, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i2.i.i)
  %tobool.not.i.i3.i.i = icmp eq i32 %and.i.i2.i.i, 0
  %cond.i.i4.i.i = select i1 %tobool.not.i.i3.i.i, i32 1, i32 2
  %shr.i5.i.i = lshr i32 %call2.i.i, %cond.i.i4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i5.i.i)
  %cmp.i = icmp eq i32 %shr.i5.i.i, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.do.body7.i_crit_edge

if.end.do.body7.i_crit_edge:                      ; preds = %if.end
  br label %do.body7.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body7.i:                                       ; preds = %do.body7.i.do.body7.i_crit_edge, %if.end.do.body7.i_crit_edge
  %i.046.i = phi i32 [ %inc.i, %do.body7.i.do.body7.i_crit_edge ], [ 0, %if.end.do.body7.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !379
  tail call void @arm_heavy_mb() #7
  %arrayidx.i = getelementptr %struct.pcidas64_private, ptr %1, i32 0, i32 30, i32 %i.046.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.i, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #7
  %19 = ptrtoint ptr %main_iobase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %main_iobase.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %20, i32 768
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr12.i, i16 %18) #7, !srcloc !257
  %inc.i = add nuw nsw i32 %i.046.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %shr.i5.i.i
  br i1 %exitcond.not.i, label %for.end.i, label %do.body7.i.do.body7.i_crit_edge

do.body7.i.do.body7.i_crit_edge:                  ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body7.i

for.end.i:                                        ; preds = %do.body7.i
  %stop_src.i = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 10
  %21 = ptrtoint ptr %stop_src.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %stop_src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %22)
  %cmp13.i = icmp eq i32 %22, 32
  br i1 %cmp13.i, label %land.lhs.true.i, label %for.end.i.if.end16.i_crit_edge

for.end.i.if.end16.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

land.lhs.true.i:                                  ; preds = %for.end.i
  %async.i = getelementptr inbounds %struct.comedi_subdevice, ptr %7, i32 0, i32 7
  %23 = ptrtoint ptr %async.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %async.i, align 4
  %scans_done.i = getelementptr inbounds %struct.comedi_async, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %scans_done.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %scans_done.i, align 4
  %stop_arg.i = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 11
  %27 = ptrtoint ptr %stop_arg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %stop_arg.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp14.not.i = icmp ult i32 %26, %28
  br i1 %cmp14.not.i, label %land.lhs.true.i.if.end16.i_crit_edge, label %land.lhs.true.i.if.end5_crit_edge

land.lhs.true.i.if.end5_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

land.lhs.true.i.if.end16.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

if.end16.i:                                       ; preds = %land.lhs.true.i.if.end16.i_crit_edge, %for.end.i.if.end16.i_crit_edge
  %call17.i = tail call fastcc i32 @load_ao_dma_buffer(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.i = icmp eq i32 %call17.i, 0
  br i1 %cmp18.i, label %if.end16.i.cleanup_crit_edge, label %if.end20.i

if.end16.i.cleanup_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20.i:                                       ; preds = %if.end16.i
  %29 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %private, align 4
  %plx9080_iobase.i.i = getelementptr inbounds %struct.pcidas64_private, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %plx9080_iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %plx9080_iobase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 132
  %ao_dma_index.i.i = getelementptr inbounds %struct.pcidas64_private, ptr %30, i32 0, i32 15
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i.i.do.body.i.i_crit_edge, %if.end20.i
  %33 = ptrtoint ptr %ao_dma_index.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ao_dma_index.i.i, align 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !243
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !282
  %arrayidx.i.i = getelementptr %struct.pcidas64_private, ptr %30, i32 0, i32 12, i32 %34
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp.not.i.i = icmp uge i32 %36, %38
  %add.i.i = add i32 %38, 4096
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %add.i.i)
  %cmp4.i.i = icmp ult i32 %36, %add.i.i
  %or.cond.i.i = and i1 %cmp.not.i.i, %cmp4.i.i
  br i1 %or.cond.i.i, label %do.body.i.i.load_ao_dma.exit.i_crit_edge, label %if.end.i.i

do.body.i.i.load_ao_dma.exit.i_crit_edge:         ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %load_ao_dma.exit.i

if.end.i.i:                                       ; preds = %do.body.i.i
  %call5.i.i = tail call fastcc i32 @load_ao_dma_buffer(ptr noundef %dev) #7
  %cmp6.i.i = icmp ugt i32 %call5.i.i, 4095
  br i1 %cmp6.i.i, label %if.end.i.i.do.body.i.i_crit_edge, label %if.end.i.i.load_ao_dma.exit.i_crit_edge

if.end.i.i.load_ao_dma.exit.i_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %load_ao_dma.exit.i

if.end.i.i.do.body.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

load_ao_dma.exit.i:                               ; preds = %if.end.i.i.load_ao_dma.exit.i_crit_edge, %do.body.i.i.load_ao_dma.exit.i_crit_edge
  %39 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %private, align 4
  %spinlock.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call2.i42.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !289
  tail call void @arm_heavy_mb() #7
  %plx9080_iobase.i43.i = getelementptr inbounds %struct.pcidas64_private, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %plx9080_iobase.i43.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %plx9080_iobase.i43.i, align 4
  %add.ptr.i44.i = getelementptr i8, ptr %42, i32 168
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i44.i, i8 11) #7, !srcloc !270
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i.i, i32 noundef %call2.i42.i) #7
  br label %if.end5

if.end5:                                          ; preds = %load_ao_dma.exit.i, %land.lhs.true.i.if.end5_crit_edge
  %43 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %private, align 4
  %start_src.i = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 2
  %45 = ptrtoint ptr %start_src.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %start_src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %46)
  %cmp.i19 = icmp eq i32 %46, 64
  br i1 %cmp.i19, label %if.then.i, label %if.end5.if.end4.i_crit_edge

if.end5.if.end4.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %tobool.not.i = icmp sgt i32 %48, -1
  %spec.select.i = select i1 %tobool.not.i, i32 32807, i32 32815
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then.i, %if.end5.if.end4.i_crit_edge
  %bits.0.i = phi i32 [ %spec.select.i, %if.then.i ], [ 32791, %if.end5.if.end4.i_crit_edge ]
  %scan_begin_src.i = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 4
  %49 = ptrtoint ptr %scan_begin_src.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %scan_begin_src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %50)
  %cmp5.i = icmp eq i32 %50, 64
  br i1 %cmp5.i, label %if.then6.i, label %if.end4.i.set_dac_control0_reg.exit_crit_edge

if.end4.i.set_dac_control0_reg.exit_crit_edge:    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_dac_control0_reg.exit

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %scan_begin_arg.i = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 5
  %51 = ptrtoint ptr %scan_begin_arg.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %scan_begin_arg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool9.not23.i = icmp slt i32 %52, 0
  %spec.select22.v.i = select i1 %tobool9.not23.i, i32 192, i32 64
  %spec.select22.i = or i32 %spec.select22.v.i, %bits.0.i
  br label %set_dac_control0_reg.exit

set_dac_control0_reg.exit:                        ; preds = %if.then6.i, %if.end4.i.set_dac_control0_reg.exit_crit_edge
  %bits.1.i = phi i32 [ %bits.0.i, %if.end4.i.set_dac_control0_reg.exit_crit_edge ], [ %spec.select22.i, %if.then6.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !380
  tail call void @arm_heavy_mb() #7
  %conv.i = trunc i32 %bits.1.i to i16
  %53 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #7
  %main_iobase.i20 = getelementptr inbounds %struct.pcidas64_private, ptr %44, i32 0, i32 3
  %54 = ptrtoint ptr %main_iobase.i20 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %main_iobase.i20, align 4
  %add.ptr.i21 = getelementptr i8, ptr %55, i32 80
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i21, i16 %53) #7, !srcloc !257
  %56 = ptrtoint ptr %start_src.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %start_src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %57)
  %cmp6 = icmp eq i32 %57, 128
  br i1 %cmp6, label %do.body, label %set_dac_control0_reg.exit.if.end8_crit_edge

set_dac_control0_reg.exit.if.end8_crit_edge:      ; preds = %set_dac_control0_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

do.body:                                          ; preds = %set_dac_control0_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !381
  tail call void @arm_heavy_mb() #7
  %58 = ptrtoint ptr %main_iobase.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %main_iobase.i, align 4
  %add.ptr = getelementptr i8, ptr %59, i32 100
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 0) #7, !srcloc !257
  br label %if.end8

if.end8:                                          ; preds = %do.body, %set_dac_control0_reg.exit.if.end8_crit_edge
  %60 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %async, align 4
  %inttrig = getelementptr inbounds %struct.comedi_async, ptr %61, i32 0, i32 20
  %62 = ptrtoint ptr %inttrig to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %inttrig, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end16.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %entry.cleanup_crit_edge ], [ -32, %if.end.cleanup_crit_edge ], [ -32, %if.end16.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_insn_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cb_pcidas64_pci_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %call = tail call i32 @comedi_pci_auto_config(ptr noundef %dev, ptr noundef nonnull @cb_pcidas64_driver, i32 noundef %1) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_auto_unconfig(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_auto_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 99)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 99)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !122, !123, !124, !125, !127, !128, !129, !130, !132, !133, !134, !136, !137, !138, !139, !141, !142, !143, !145, !147, !149, !151, !152, !153, !154, !156, !157, !158, !160, !161, !163, !164, !166, !168, !169, !170, !171, !173, !174, !176, !178, !180, !181, !182, !183, !185, !186, !187, !189, !190, !192, !193, !194, !195, !197, !198, !199, !200, !202, !204, !206, !208, !209, !210, !211, !213, !214, !215, !216, !218, !220, !222, !224, !226, !228, !230}
!llvm.module.flags = !{!232, !233, !234, !235, !236, !237, !238, !239}
!llvm.ident = !{!240}

!0 = !{ptr @__initcall__kmod_cb_pcidas64__244_4114_cb_pcidas64_driver_init6, !1, !"__initcall__kmod_cb_pcidas64__244_4114_cb_pcidas64_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 4114, i32 1}
!2 = !{ptr @__exitcall_cb_pcidas64_driver_exit, !1, !"__exitcall_cb_pcidas64_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author245, !4, !"__UNIQUE_ID_author245", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 4116, i32 1}
!5 = !{ptr @__UNIQUE_ID_description246, !6, !"__UNIQUE_ID_description246", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 4117, i32 1}
!7 = !{ptr @__UNIQUE_ID_file247, !8, !"__UNIQUE_ID_file247", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 4118, i32 1}
!9 = !{ptr @__UNIQUE_ID_license248, !8, !"__UNIQUE_ID_license248", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 4069, i32 17}
!12 = !{ptr @cb_pcidas64_driver, !13, !"cb_pcidas64_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 4068, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 4002, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @auto_attach._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @auto_attach._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 4026, i32 2}
!24 = !{ptr @auto_attach.__UNIQUE_ID_ddebug241, !23, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 4034, i32 3}
!27 = !{ptr @auto_attach.__UNIQUE_ID_ddebug242, !26, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 4039, i32 2}
!30 = !{ptr @auto_attach.__UNIQUE_ID_ddebug243, !29, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 674, i32 12}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 690, i32 12}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 706, i32 12}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 722, i32 11}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 738, i32 12}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 754, i32 12}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 769, i32 12}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 785, i32 12}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 800, i32 12}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 816, i32 12}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 832, i32 12}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 848, i32 12}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 860, i32 12}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 872, i32 12}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 885, i32 12}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 901, i32 12}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 917, i32 12}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 933, i32 12}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 949, i32 12}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 965, i32 12}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 981, i32 12}
!73 = !{ptr @pcidas64_boards, !74, !"pcidas64_boards", i1 false, i1 false}
!74 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 672, i32 36}
!75 = !{ptr @ai_ranges_64xx, !76, !"ai_ranges_64xx", i1 false, i1 false}
!76 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 418, i32 35}
!77 = !{ptr @ai_range_code_64xx, !78, !"ai_range_code_64xx", i1 false, i1 false}
!78 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 431, i32 17}
!79 = !{ptr @ao_ranges_64xx, !80, !"ao_ranges_64xx", i1 false, i1 false}
!80 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 528, i32 35}
!81 = !{ptr @ao_range_code_64xx, !82, !"ao_range_code_64xx", i1 false, i1 false}
!82 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 537, i32 18}
!83 = !{ptr @ai_fifo_64xx, !84, !"ai_fifo_64xx", i1 false, i1 false}
!84 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 641, i32 34}
!85 = !{ptr @ai_ranges_64_mx, !86, !"ai_ranges_64_mx", i1 false, i1 false}
!86 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 437, i32 35}
!87 = !{ptr @ai_range_code_64_mx, !88, !"ai_range_code_64_mx", i1 false, i1 false}
!88 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 449, i32 17}
!89 = !{ptr @ai_ranges_60xx, !90, !"ai_ranges_60xx", i1 false, i1 false}
!90 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 455, i32 35}
!91 = !{ptr @ai_range_code_60xx, !92, !"ai_range_code_60xx", i1 false, i1 false}
!92 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 464, i32 17}
!93 = !{ptr @ao_range_code_60xx, !94, !"ao_range_code_60xx", i1 false, i1 false}
!94 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 544, i32 18}
!95 = !{ptr @ai_fifo_60xx, !96, !"ai_fifo_60xx", i1 false, i1 false}
!96 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 648, i32 34}
!97 = !{ptr @ai_ranges_6030, !98, !"ai_ranges_6030", i1 false, i1 false}
!98 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 469, i32 35}
!99 = !{ptr @ai_range_code_6030, !100, !"ai_range_code_6030", i1 false, i1 false}
!100 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 488, i32 17}
!101 = !{ptr @ao_ranges_6030, !102, !"ao_ranges_6030", i1 false, i1 false}
!102 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 548, i32 35}
!103 = !{ptr @ao_range_code_6030, !104, !"ao_range_code_6030", i1 false, i1 false}
!104 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 555, i32 18}
!105 = !{ptr @ai_ranges_6052, !106, !"ai_ranges_6052", i1 false, i1 false}
!106 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 494, i32 35}
!107 = !{ptr @ai_range_code_6052, !108, !"ai_range_code_6052", i1 false, i1 false}
!108 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 514, i32 17}
!109 = !{ptr @ai_ranges_4020, !110, !"ai_ranges_4020", i1 false, i1 false}
!110 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 520, i32 35}
!111 = !{ptr @ao_ranges_4020, !112, !"ao_ranges_4020", i1 false, i1 false}
!112 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 560, i32 35}
!113 = !{ptr @ao_range_code_4020, !114, !"ao_range_code_4020", i1 false, i1 false}
!114 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 567, i32 18}
!115 = !{ptr @ai_fifo_4020, !116, !"ai_fifo_4020", i1 false, i1 false}
!116 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 634, i32 34}
!117 = distinct !{null, !118, !"increment_size", i1 false, i1 false}
!118 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 1363, i32 19}
!119 = !{ptr @.str.39, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 2822, i32 3}
!121 = !{ptr @.str.40, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.41, !120, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @handle_ai_interrupt._entry, !120, !"_entry", i1 false, i1 false}
!124 = !{ptr @handle_ai_interrupt._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.42, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 2709, i32 4}
!127 = !{ptr @.str.43, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @pio_drain_ai_fifo_16._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @pio_drain_ai_fifo_16._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.44, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 1886, i32 3}
!132 = !{ptr @.str.45, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @ai_config_calibration_source.__UNIQUE_ID_ddebug236, !131, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!134 = !{ptr @.str.46, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 1592, i32 2}
!136 = !{ptr @.str.47, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @warn_external_queue._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @warn_external_queue._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.49, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 1594, i32 2}
!141 = !{ptr @warn_external_queue._entry.48, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @warn_external_queue._entry_ptr.50, !140, !"_entry_ptr", i1 false, i1 false}
!143 = distinct !{null, !144, !"min_convert_divisor", i1 false, i1 false}
!144 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 2016, i32 19}
!145 = distinct !{null, !146, !"max_convert_divisor", i1 false, i1 false}
!146 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 2017, i32 19}
!147 = distinct !{null, !148, !"min_scan_divisor_4020", i1 false, i1 false}
!148 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 2019, i32 19}
!149 = !{ptr @.str.51, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 2306, i32 3}
!151 = !{ptr @.str.52, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @ai_convert_counter_4020._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @ai_convert_counter_4020._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.53, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 2069, i32 4}
!156 = !{ptr @.str.54, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @cb_pcidas64_ai_check_chanlist.__UNIQUE_ID_ddebug237, !155, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!158 = !{ptr @.str.55, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 2082, i32 5}
!160 = !{ptr @cb_pcidas64_ai_check_chanlist.__UNIQUE_ID_ddebug238, !159, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!161 = !{ptr @.str.56, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 2088, i32 4}
!163 = !{ptr @cb_pcidas64_ai_check_chanlist.__UNIQUE_ID_ddebug239, !162, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!164 = distinct !{null, !165, !"read_bit", i1 false, i1 false}
!165 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 1690, i32 19}
!166 = !{ptr @.str.57, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 1709, i32 3}
!168 = !{ptr @.str.58, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @i2c_write._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @i2c_write._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @i2c_write._entry.59, !172, !"_entry", i1 false, i1 false}
!172 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 1717, i32 4}
!173 = !{ptr @i2c_write._entry_ptr.60, !172, !"_entry_ptr", i1 false, i1 false}
!174 = distinct !{null, !175, !"clock_bit", i1 false, i1 false}
!175 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 1627, i32 19}
!176 = distinct !{null, !177, !"data_bit", i1 false, i1 false}
!177 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 1608, i32 19}
!178 = !{ptr @.str.61, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 1199, i32 3}
!180 = !{ptr @.str.62, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @set_dac_range_bits._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @set_dac_range_bits._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.64, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 1201, i32 3}
!185 = !{ptr @set_dac_range_bits._entry.63, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @set_dac_range_bits._entry_ptr.65, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.66, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 3324, i32 4}
!189 = !{ptr @cb_pcidas64_ao_check_chanlist.__UNIQUE_ID_ddebug240, !188, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!190 = !{ptr @.str.67, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 3178, i32 3}
!192 = !{ptr @.str.68, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @set_dac_select_reg._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @set_dac_select_reg._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.69, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 3202, i32 3}
!197 = !{ptr @.str.70, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @set_dac_interval_regs._entry, !196, !"_entry", i1 false, i1 false}
!199 = !{ptr @set_dac_interval_regs._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!200 = distinct !{null, !201, !"num_caldac_channels", i1 false, i1 false}
!201 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 3516, i32 19}
!202 = distinct !{null, !203, !"bitstream_length", i1 false, i1 false}
!203 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 3517, i32 19}
!204 = distinct !{null, !205, !"caldac_8800_udelay", i1 false, i1 false}
!205 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 3520, i32 19}
!206 = !{ptr @.str.71, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 3523, i32 3}
!208 = !{ptr @.str.72, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @caldac_8800_write._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @caldac_8800_write._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.73, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 3595, i32 3}
!213 = !{ptr @.str.74, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @caldac_i2c_write._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @caldac_i2c_write._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = distinct !{null, !217, !"bitstream_length", i1 false, i1 false}
!217 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 3649, i32 19}
!218 = distinct !{null, !219, !"ad8402_udelay", i1 false, i1 false}
!219 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 3652, i32 19}
!220 = distinct !{null, !221, !"bitstream_length", i1 false, i1 false}
!221 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 3701, i32 19}
!222 = distinct !{null, !223, !"read_command", i1 false, i1 false}
!223 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 3702, i32 19}
!224 = distinct !{null, !225, !"value_length", i1 false, i1 false}
!225 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 3708, i32 19}
!226 = distinct !{null, !227, !"eeprom_udelay", i1 false, i1 false}
!227 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 3709, i32 19}
!228 = !{ptr @cb_pcidas64_pci_driver, !229, !"cb_pcidas64_pci_driver", i1 false, i1 false}
!229 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 4108, i32 26}
!230 = !{ptr @cb_pcidas64_pci_table, !231, !"cb_pcidas64_pci_table", i1 false, i1 false}
!231 = !{!"../drivers/comedi/drivers/cb_pcidas64.c", i32 4082, i32 35}
!232 = !{i32 1, !"wchar_size", i32 2}
!233 = !{i32 1, !"min_enum_size", i32 4}
!234 = !{i32 8, !"branch-target-enforcement", i32 0}
!235 = !{i32 8, !"sign-return-address", i32 0}
!236 = !{i32 8, !"sign-return-address-all", i32 0}
!237 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!238 = !{i32 7, !"uwtable", i32 1}
!239 = !{i32 7, !"frame-pointer", i32 2}
!240 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!241 = !{i64 2154680725}
!242 = !{i64 4736161}
!243 = !{i64 4736579}
!244 = !{i64 2154812934}
!245 = !{i64 2154814170}
!246 = !{i64 2154815406}
!247 = !{i64 2154816642}
!248 = !{i64 4735741}
!249 = !{i64 2154817887}
!250 = !{i64 2149065908, i64 2149065913, i64 2149065926, i64 2149065970, i64 2149066004, i64 2149066025}
!251 = !{i64 2154683300}
!252 = !{i64 2154683701}
!253 = !{i64 2154684958}
!254 = !{i64 2154685362}
!255 = !{i64 2154686465}
!256 = !{i64 2154689741}
!257 = !{i64 4735541}
!258 = !{i64 2154690257}
!259 = !{i64 2154690723}
!260 = !{i64 2154691207}
!261 = !{i64 2154691627}
!262 = !{i64 2154688868}
!263 = !{i64 2154692074}
!264 = !{i64 2154810115}
!265 = !{i64 2154763147}
!266 = !{i64 2154763709}
!267 = !{i64 4736359}
!268 = !{i64 2154755961}
!269 = !{i64 2154756516}
!270 = !{i64 4735964}
!271 = !{i64 2154753802}
!272 = !{i64 2154751600}
!273 = !{i64 2154752178}
!274 = !{!"auto-init"}
!275 = !{i64 2154752692}
!276 = !{i64 2154753270}
!277 = !{i64 2154747612}
!278 = !{i64 2154748194}
!279 = !{i64 2154748748}
!280 = !{i64 2154751018}
!281 = !{i64 2154761243}
!282 = !{i64 2154760600}
!283 = !{i64 2154757603}
!284 = !{i64 2154758238}
!285 = !{i64 2154759124}
!286 = !{i64 2154741872}
!287 = !{i64 2154742290}
!288 = !{i64 2154742722}
!289 = !{i64 2154731929}
!290 = !{i64 2154764346}
!291 = !{i64 2154764587}
!292 = !{i64 2154669666}
!293 = !{i64 2154670586}
!294 = !{i64 2154670904}
!295 = !{i64 2154671195}
!296 = !{i64 2154672033}
!297 = !{i64 2154681595}
!298 = !{i64 2154687337}
!299 = !{i64 2154687897}
!300 = !{i64 2154709835}
!301 = !{i64 2154710354}
!302 = !{i64 2154710915}
!303 = !{i64 2154711527}
!304 = !{i64 2154712020}
!305 = !{i64 2154712515}
!306 = !{i64 2154712975}
!307 = !{i64 2154713426}
!308 = !{i64 2154713868}
!309 = !{i64 2154714384}
!310 = !{i64 2154715262}
!311 = !{i64 2154715828}
!312 = !{i64 2154734780}
!313 = !{i64 2154735556}
!314 = !{i64 2154736222}
!315 = !{i64 2154736680}
!316 = !{i64 2154737172}
!317 = !{i64 2154737604}
!318 = !{i64 2154738180}
!319 = !{i64 2154738630}
!320 = !{i64 2154739060}
!321 = !{i64 2154743181}
!322 = !{i64 2154730497}
!323 = !{i64 2154732377}
!324 = !{i64 2154732926}
!325 = !{i64 2154733483}
!326 = !{i64 2154734018}
!327 = !{i64 2154728100}
!328 = !{i64 2154682485}
!329 = !{i64 2154744098}
!330 = !{i64 2154744602}
!331 = !{i64 2154740144}
!332 = !{i64 2154740562}
!333 = !{i64 2154740994}
!334 = !{i64 2154745557}
!335 = !{i64 2154746404}
!336 = !{i64 2154746846}
!337 = !{i32 0, i32 33}
!338 = !{i64 2154702697}
!339 = !{i64 2154700422}
!340 = !{i64 2154701517}
!341 = !{i64 2154703792}
!342 = !{i64 2154765452}
!343 = !{i64 2154765902}
!344 = !{i64 2154766896}
!345 = !{i64 2154779943}
!346 = !{i64 2154774803}
!347 = !{i64 2154776896}
!348 = !{i64 2154777413}
!349 = !{i64 2154768391}
!350 = !{i64 2154783217}
!351 = !{i64 2154784665}
!352 = !{i64 2154784885}
!353 = !{i64 2154783652}
!354 = !{i64 2154784431}
!355 = !{i64 2154785182}
!356 = !{i64 2154785490}
!357 = !{i64 2154785816}
!358 = !{i64 2154788312}
!359 = !{i64 2154789421}
!360 = !{i64 2154790532}
!361 = !{i64 2154791635}
!362 = !{i64 2154794959}
!363 = !{i64 2154796038}
!364 = !{i64 2154797136}
!365 = !{i64 2154798260}
!366 = !{i64 2154799582}
!367 = !{i64 2154800749}
!368 = !{i64 2154802000}
!369 = !{i64 2154803167}
!370 = !{i64 2154804334}
!371 = !{i64 2154805501}
!372 = !{i64 2154806668}
!373 = !{i64 2154807998}
!374 = !{i64 2154809009}
!375 = !{i64 2154708518}
!376 = !{i64 2154709100}
!377 = !{i64 2154777917}
!378 = !{i64 2154778349}
!379 = !{i64 2154778808}
!380 = !{i64 2154767862}
!381 = !{i64 2154779504}
