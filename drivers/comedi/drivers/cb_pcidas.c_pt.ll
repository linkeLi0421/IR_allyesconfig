; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/cb_pcidas.c_pt.bc'
source_filename = "../drivers/comedi/drivers/cb_pcidas.c"
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
%struct.cb_pcidas_board = type { ptr, i32, i32, i32, i32, i8 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.cb_pcidas_private = type { ptr, i32, i32, i32, i32, i32, i32, i32, [1024 x i16], [1024 x i16], i32 }
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
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }

@__initcall__kmod_cb_pcidas__240_1494_cb_pcidas_driver_init6 = internal global ptr @cb_pcidas_driver_init, section ".initcall6.init", align 4
@cb_pcidas_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr null, ptr @cb_pcidas_detach, ptr @cb_pcidas_auto_attach, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cb_pcidas_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @cb_pcidas_pci_table, ptr @cb_pcidas_pci_probe, ptr @comedi_pci_auto_unconfig, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_cb_pcidas_driver_exit = internal global ptr @cb_pcidas_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author241 = internal constant [47 x i8] c"cb_pcidas.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [76 x i8] c"cb_pcidas.description=Comedi driver for MeasurementComputing PCI-DAS series\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [48 x i8] c"cb_pcidas.file=drivers/comedi/drivers/cb_pcidas\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [22 x i8] c"cb_pcidas.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cb_pcidas\00", [22 x i8] zeroinitializer }, align 32
@cb_pcidas_boards = internal constant { [8 x %struct.cb_pcidas_board], [32 x i8] } { [8 x %struct.cb_pcidas_board] [%struct.cb_pcidas_board { ptr @.str.4, i32 5000, i32 10000, i32 512, i32 1, i8 124 }, %struct.cb_pcidas_board { ptr @.str.5, i32 3200, i32 0, i32 1024, i32 0, i8 64 }, %struct.cb_pcidas_board { ptr @.str.6, i32 3200, i32 4000, i32 1024, i32 0, i8 100 }, %struct.cb_pcidas_board { ptr @.str.7, i32 3200, i32 0, i32 1024, i32 0, i8 0 }, %struct.cb_pcidas_board { ptr @.str.8, i32 5000, i32 0, i32 512, i32 1, i8 28 }, %struct.cb_pcidas_board { ptr @.str.9, i32 4000, i32 0, i32 1024, i32 0, i8 0 }, %struct.cb_pcidas_board { ptr @.str.10, i32 6800, i32 0, i32 1024, i32 0, i8 -64 }, %struct.cb_pcidas_board { ptr @.str.11, i32 6800, i32 0, i32 1024, i32 0, i8 64 }], [32 x i8] zeroinitializer }, align 32
@cb_pcidas_auto_attach.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 65, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cb_pcidas_auto_attach\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/comedi/drivers/cb_pcidas.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unable to allocate irq %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pci-das1602/16\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pci-das1200\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pci-das1602/12\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pci-das1200/jr\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pci-das1602/16/jr\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pci-das1000\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pci-das1001\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pci-das1002\00", [20 x i8] zeroinitializer }, align 32
@cb_pcidas_ao_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 1121, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dac fifo underflow\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cb_pcidas_ao_interrupt\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cb_pcidas_ao_interrupt._entry_ptr = internal global ptr @cb_pcidas_ao_interrupt._entry, section ".printk_index", align 4
@cb_pcidas_ai_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 1186, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"bug! encountered end of acquisition interrupt?\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cb_pcidas_ai_interrupt\00", [41 x i8] zeroinitializer }, align 32
@cb_pcidas_ai_interrupt._entry_ptr = internal global ptr @cb_pcidas_ai_interrupt._entry, section ".printk_index", align 4
@cb_pcidas_ai_interrupt._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 1193, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fifo overflow\0A\00", [17 x i8] zeroinitializer }, align 32
@cb_pcidas_ai_interrupt._entry_ptr.20 = internal global ptr @cb_pcidas_ai_interrupt._entry.18, section ".printk_index", align 4
@cb_pcidas_alt_ranges = internal constant { { i32, [8 x %struct.comedi_krange] }, [60 x i8] } { { i32, [8 x %struct.comedi_krange] } { i32 8, [8 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -1000000, i32 1000000, i32 0 }, %struct.comedi_krange { i32 -100000, i32 100000, i32 0 }, %struct.comedi_krange { i32 -10000, i32 10000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 1000000, i32 0 }, %struct.comedi_krange { i32 0, i32 100000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000, i32 0 }] }, [60 x i8] zeroinitializer }, align 32
@cb_pcidas_ranges = internal constant { { i32, [8 x %struct.comedi_krange] }, [60 x i8] } { { i32, [8 x %struct.comedi_krange] } { i32 8, [8 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 2500000, i32 0 }, %struct.comedi_krange { i32 0, i32 1250000, i32 0 }] }, [60 x i8] zeroinitializer }, align 32
@cb_pcidas_ai_insn_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 390, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"invalid calibration source: %i\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cb_pcidas_ai_insn_config\00", [39 x i8] zeroinitializer }, align 32
@cb_pcidas_ai_insn_config._entry_ptr = internal global ptr @cb_pcidas_ai_insn_config._entry, section ".printk_index", align 4
@cb_pcidas_ai_check_chanlist.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 -91, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cb_pcidas_ai_check_chanlist\00", [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"entries in chanlist must be consecutive channels, counting upwards\0A\00", [60 x i8] zeroinitializer }, align 32
@cb_pcidas_ai_check_chanlist.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.27, i8 0, i8 -90, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"entries in chanlist must all have the same gain\0A\00", [47 x i8] zeroinitializer }, align 32
@cb_pcidas_ao_ranges = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@cb_pcidas_ao_check_chanlist.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 -36, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cb_pcidas_ao_check_chanlist\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"channels must be ordered channel 0, channel 1 in chanlist\0A\00", [37 x i8] zeroinitializer }, align 32
@cb_pcidas_ao_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 1074, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error setting dac pacer source\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cb_pcidas_ao_cmd\00", [47 x i8] zeroinitializer }, align 32
@cb_pcidas_ao_cmd._entry_ptr = internal global ptr @cb_pcidas_ao_cmd._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cb_pcidas_pci_table = internal constant { [9 x %struct.pci_device_id], [64 x i8] } { [9 x %struct.pci_device_id] [%struct.pci_device_id { i32 4871, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4871, i32 15, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4871, i32 16, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4871, i32 25, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4871, i32 28, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4871, i32 76, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4871, i32 26, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 4871, i32 27, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 64]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 64]
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"cb_pcidas_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1461, i32 29 }
@___asan_gen_.37 = private unnamed_addr constant [21 x i8] c"cb_pcidas_pci_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1488, i32 26 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1462, i32 17 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"cb_pcidas_boards\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 230, i32 37 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1285, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 232, i32 12 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 244, i32 12 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 250, i32 12 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 259, i32 12 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 264, i32 12 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 273, i32 12 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 278, i32 12 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 285, i32 12 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1121, i32 5 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1185, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1193, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [21 x i8] c"cb_pcidas_alt_ranges\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 182, i32 35 }
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"cb_pcidas_ranges\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 168, i32 35 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 388, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 660, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 666, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant [20 x i8] c"cb_pcidas_ao_ranges\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 196, i32 35 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 879, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1074, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [20 x i8] c"cb_pcidas_pci_table\00", align 1
@___asan_gen_.152 = private constant [38 x i8] c"../drivers/comedi/drivers/cb_pcidas.c\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1475, i32 35 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__exitcall_cb_pcidas_driver_exit, ptr @__initcall__kmod_cb_pcidas__240_1494_cb_pcidas_driver_init6, ptr @cb_pcidas_ai_insn_config._entry, ptr @cb_pcidas_ai_insn_config._entry_ptr, ptr @cb_pcidas_ai_interrupt._entry, ptr @cb_pcidas_ai_interrupt._entry.18, ptr @cb_pcidas_ai_interrupt._entry_ptr, ptr @cb_pcidas_ai_interrupt._entry_ptr.20, ptr @cb_pcidas_ao_cmd._entry, ptr @cb_pcidas_ao_cmd._entry_ptr, ptr @cb_pcidas_ao_interrupt._entry, ptr @cb_pcidas_ao_interrupt._entry_ptr, ptr @cb_pcidas_driver_exit, ptr @cb_pcidas_driver, ptr @cb_pcidas_pci_driver, ptr @.str, ptr @cb_pcidas_boards, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @cb_pcidas_alt_ranges, ptr @cb_pcidas_ranges, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @cb_pcidas_ao_ranges, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @cb_pcidas_pci_table], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb_pcidas_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb_pcidas_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb_pcidas_boards to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb_pcidas_ao_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb_pcidas_ai_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb_pcidas_ai_interrupt._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb_pcidas_alt_ranges to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb_pcidas_ranges to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb_pcidas_ai_insn_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb_pcidas_ao_ranges to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb_pcidas_ao_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb_pcidas_pci_table to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cb_pcidas_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_pci_driver_register(ptr noundef nonnull @cb_pcidas_driver, ptr noundef nonnull @cb_pcidas_pci_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cb_pcidas_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @comedi_pci_driver_unregister(ptr noundef nonnull @cb_pcidas_driver, ptr noundef nonnull @cb_pcidas_pci_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_driver_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cb_pcidas_detach(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then:                                          ; preds = %entry
  %amcc = getelementptr inbounds %struct.cb_pcidas_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %amcc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %amcc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %do.body

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %amcc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %amcc, align 4
  %add = add i32 %5, 56
  %and = and i32 %add, 1048575
  %add4 = or i32 %and, -18874368
  %6 = inttoptr i32 %add4 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %6, i32 512) #6, !srcloc !94
  br label %if.end

if.end:                                           ; preds = %do.body, %if.then.if.end_crit_edge
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  tail call void @kfree(ptr noundef %8) #6
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  tail call void @comedi_pci_detach(ptr noundef %dev) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cb_pcidas_auto_attach(ptr noundef %dev, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_pci_dev(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %context)
  %cmp = icmp ugt i32 %context, 7
  %arrayidx = getelementptr [8 x %struct.cb_pcidas_board], ptr @cb_pcidas_boards, i32 0, i32 %context
  %tobool.not398 = icmp eq ptr %arrayidx, null
  %tobool.not = or i1 %cmp, %tobool.not398
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
  %call3 = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 4132) #6
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end2.cleanup_crit_edge, label %if.end6

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %call7 = tail call i32 @comedi_pci_enable(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %resource = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 47
  %4 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %resource, align 8
  %amcc = getelementptr inbounds %struct.cb_pcidas_private, ptr %call3, i32 0, i32 1
  %6 = ptrtoint ptr %amcc to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %amcc, align 4
  %arrayidx13 = getelementptr %struct.pci_dev, ptr %call, i32 0, i32 47, i32 1
  %7 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx13, align 8
  %pcibar1 = getelementptr inbounds %struct.cb_pcidas_private, ptr %call3, i32 0, i32 2
  %9 = ptrtoint ptr %pcibar1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %pcibar1, align 4
  %arrayidx16 = getelementptr %struct.pci_dev, ptr %call, i32 0, i32 47, i32 2
  %10 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx16, align 8
  %pcibar2 = getelementptr inbounds %struct.cb_pcidas_private, ptr %call3, i32 0, i32 3
  %12 = ptrtoint ptr %pcibar2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %pcibar2, align 4
  %arrayidx19 = getelementptr %struct.pci_dev, ptr %call, i32 0, i32 47, i32 3
  %13 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx19, align 8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %15 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %iobase, align 4
  %16 = add nsw i32 %context, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %tobool21.not = icmp ult i32 %16, 3
  br i1 %tobool21.not, label %if.end10.do.body_crit_edge, label %if.then22

if.end10.do.body_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then22:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx24 = getelementptr %struct.pci_dev, ptr %call, i32 0, i32 47, i32 4
  %17 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx24, align 8
  %pcibar4 = getelementptr inbounds %struct.cb_pcidas_private, ptr %call3, i32 0, i32 4
  %19 = ptrtoint ptr %pcibar4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %pcibar4, align 4
  br label %do.body

do.body:                                          ; preds = %if.then22, %if.end10.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %amcc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %amcc, align 4
  %add = add i32 %21, 56
  %and = and i32 %add, 1048575
  %add28 = or i32 %and, -18874368
  %22 = inttoptr i32 %add28 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %22, i32 512) #6, !srcloc !94
  %irq = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 46
  %23 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %24, ptr noundef nonnull @cb_pcidas_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool31.not = icmp eq i32 %call.i, 0
  br i1 %tobool31.not, label %if.end44, label %do.body33

do.body33:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb_pcidas_auto_attach.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cb_pcidas_auto_attach, %cleanup)) #6
          to label %if.then39 [label %cleanup], !srcloc !96

if.then39:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %25 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %class_dev, align 4
  %27 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb_pcidas_auto_attach.__UNIQUE_ID_ddebug239, ptr noundef %26, ptr noundef nonnull @.str.3, i32 noundef %28) #6
  br label %cleanup

if.end44:                                         ; preds = %do.body
  %29 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq, align 4
  %irq46 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %31 = ptrtoint ptr %irq46 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %irq46, align 4
  %32 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %iobase, align 4
  %call49 = tail call ptr @comedi_8254_init(i32 noundef %33, i32 noundef 100, i32 noundef 1, i32 noundef 0) #6
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %34 = ptrtoint ptr %pacer to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call49, ptr %pacer, align 4
  %tobool51.not = icmp eq ptr %call49, null
  br i1 %tobool51.not, label %if.end44.cleanup_crit_edge, label %if.end53

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end53:                                         ; preds = %if.end44
  %35 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %iobase, align 4
  %add55 = add i32 %36, 8
  %call56 = tail call ptr @comedi_8254_init(i32 noundef %add55, i32 noundef 100, i32 noundef 1, i32 noundef 0) #6
  %37 = ptrtoint ptr %call3 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call56, ptr %call3, align 4
  %tobool58.not = icmp eq ptr %call56, null
  br i1 %tobool58.not, label %if.end53.cleanup_crit_edge, label %if.end60

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end60:                                         ; preds = %if.end53
  %call61 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.end60.cleanup_crit_edge

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end64:                                         ; preds = %if.end60
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %38 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %39, i32 0, i32 4
  %41 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 5308416, ptr %subdev_flags, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %39, i32 0, i32 3
  %42 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 16, ptr %n_chan, align 4
  %43 = and i32 %context, 536870907
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %.not = icmp eq i32 %43, 0
  %cond = select i1 %.not, i32 65535, i32 4095
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %39, i32 0, i32 13
  %44 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %cond, ptr %maxdata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %context)
  %tobool70.not.not = icmp eq i32 %context, 6
  %cond71 = select i1 %tobool70.not.not, ptr @cb_pcidas_alt_ranges, ptr @cb_pcidas_ranges
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %39, i32 0, i32 15
  %45 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %cond71, ptr %range_table, align 4
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, ptr %39, i32 0, i32 18
  %46 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @cb_pcidas_ai_insn_read, ptr %insn_read, align 4
  %insn_config = getelementptr inbounds %struct.comedi_subdevice, ptr %39, i32 0, i32 21
  %47 = ptrtoint ptr %insn_config to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @cb_pcidas_ai_insn_config, ptr %insn_config, align 4
  %48 = ptrtoint ptr %irq46 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %irq46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool73.not = icmp eq i32 %49, 0
  br i1 %tobool73.not, label %if.end64.if.end77_crit_edge, label %if.then74

if.end64.if.end77_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

if.then74:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %50 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %39, ptr %read_subdev, align 4
  %51 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %subdev_flags, align 4
  %or = or i32 %52, 32768
  store i32 %or, ptr %subdev_flags, align 4
  %53 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %n_chan, align 4
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, ptr %39, i32 0, i32 5
  %55 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %len_chanlist, align 4
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, ptr %39, i32 0, i32 22
  %56 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @cb_pcidas_ai_cmd, ptr %do_cmd, align 4
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, ptr %39, i32 0, i32 23
  %57 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @cb_pcidas_ai_cmdtest, ptr %do_cmdtest, align 4
  %cancel = getelementptr inbounds %struct.comedi_subdevice, ptr %39, i32 0, i32 25
  %58 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @cb_pcidas_ai_cancel, ptr %cancel, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then74, %if.end64.if.end77_crit_edge
  %59 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %subdevices, align 4
  %arrayidx79 = getelementptr %struct.comedi_subdevice, ptr %60, i32 1
  %type122 = getelementptr %struct.comedi_subdevice, ptr %60, i32 1, i32 2
  br i1 %tobool21.not, label %if.else, label %if.then86

if.then86:                                        ; preds = %if.end77
  %61 = ptrtoint ptr %type122 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 2, ptr %type122, align 4
  %subdev_flags88 = getelementptr %struct.comedi_subdevice, ptr %60, i32 1, i32 4
  %62 = ptrtoint ptr %subdev_flags88 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1179648, ptr %subdev_flags88, align 4
  %n_chan89 = getelementptr %struct.comedi_subdevice, ptr %60, i32 1, i32 3
  %63 = ptrtoint ptr %n_chan89 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 2, ptr %n_chan89, align 4
  %maxdata93 = getelementptr %struct.comedi_subdevice, ptr %60, i32 1, i32 13
  %64 = ptrtoint ptr %maxdata93 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %cond, ptr %maxdata93, align 4
  %range_table94 = getelementptr %struct.comedi_subdevice, ptr %60, i32 1, i32 15
  %65 = ptrtoint ptr %range_table94 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @cb_pcidas_ao_ranges, ptr %range_table94, align 4
  %66 = and i32 %context, 536870909
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %.not400 = icmp eq i32 %66, 0
  %cond100 = select i1 %.not400, ptr @cb_pcidas_ao_fifo_insn_write, ptr @cb_pcidas_ao_nofifo_insn_write
  %insn_write = getelementptr %struct.comedi_subdevice, ptr %60, i32 1, i32 19
  %67 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %cond100, ptr %insn_write, align 4
  %call101 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx79) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end104, label %if.then86.cleanup_crit_edge

if.then86.cleanup_crit_edge:                      ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end104:                                        ; preds = %if.then86
  %68 = ptrtoint ptr %irq46 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %irq46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool106.not = icmp ne i32 %69, 0
  %or.cond = and i1 %.not400, %tobool106.not
  br i1 %or.cond, label %if.then113, label %if.end104.if.end123_crit_edge

if.end104.if.end123_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123

if.then113:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  %write_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 22
  %70 = ptrtoint ptr %write_subdev to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %arrayidx79, ptr %write_subdev, align 4
  %71 = ptrtoint ptr %subdev_flags88 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %subdev_flags88, align 4
  %or115 = or i32 %72, 16384
  store i32 %or115, ptr %subdev_flags88, align 4
  %73 = ptrtoint ptr %n_chan89 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %n_chan89, align 4
  %len_chanlist117 = getelementptr %struct.comedi_subdevice, ptr %60, i32 1, i32 5
  %75 = ptrtoint ptr %len_chanlist117 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %len_chanlist117, align 4
  %do_cmdtest118 = getelementptr %struct.comedi_subdevice, ptr %60, i32 1, i32 23
  %76 = ptrtoint ptr %do_cmdtest118 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @cb_pcidas_ao_cmdtest, ptr %do_cmdtest118, align 4
  %do_cmd119 = getelementptr %struct.comedi_subdevice, ptr %60, i32 1, i32 22
  %77 = ptrtoint ptr %do_cmd119 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @cb_pcidas_ao_cmd, ptr %do_cmd119, align 4
  %cancel120 = getelementptr %struct.comedi_subdevice, ptr %60, i32 1, i32 25
  %78 = ptrtoint ptr %cancel120 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @cb_pcidas_ao_cancel, ptr %cancel120, align 4
  br label %if.end123

if.else:                                          ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  %79 = ptrtoint ptr %type122 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %type122, align 4
  br label %if.end123

if.end123:                                        ; preds = %if.else, %if.then113, %if.end104.if.end123_crit_edge
  %80 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %subdevices, align 4
  %arrayidx125 = getelementptr %struct.comedi_subdevice, ptr %81, i32 2
  %call126 = tail call i32 @subdev_8255_init(ptr noundef %dev, ptr noundef %arrayidx125, ptr noundef null, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.end129, label %if.end123.cleanup_crit_edge

if.end123.cleanup_crit_edge:                      ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end129:                                        ; preds = %if.end123
  %82 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %subdevices, align 4
  %type132 = getelementptr %struct.comedi_subdevice, ptr %83, i32 3, i32 2
  %84 = ptrtoint ptr %type132 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 8, ptr %type132, align 4
  %subdev_flags133 = getelementptr %struct.comedi_subdevice, ptr %83, i32 3, i32 4
  %85 = ptrtoint ptr %subdev_flags133 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 327680, ptr %subdev_flags133, align 4
  %n_chan134 = getelementptr %struct.comedi_subdevice, ptr %83, i32 3, i32 3
  %86 = ptrtoint ptr %n_chan134 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 256, ptr %n_chan134, align 4
  %maxdata135 = getelementptr %struct.comedi_subdevice, ptr %83, i32 3, i32 13
  %87 = ptrtoint ptr %maxdata135 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 255, ptr %maxdata135, align 4
  %insn_read136 = getelementptr %struct.comedi_subdevice, ptr %83, i32 3, i32 18
  %88 = ptrtoint ptr %insn_read136 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @cb_pcidas_eeprom_insn_read, ptr %insn_read136, align 4
  %89 = load ptr, ptr %subdevices, align 4
  %arrayidx138 = getelementptr %struct.comedi_subdevice, ptr %89, i32 4
  %type139 = getelementptr %struct.comedi_subdevice, ptr %89, i32 4, i32 2
  %90 = ptrtoint ptr %type139 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 9, ptr %type139, align 4
  %subdev_flags140 = getelementptr %struct.comedi_subdevice, ptr %89, i32 4, i32 4
  %91 = ptrtoint ptr %subdev_flags140 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 393216, ptr %subdev_flags140, align 4
  %n_chan141 = getelementptr %struct.comedi_subdevice, ptr %89, i32 4, i32 3
  %92 = ptrtoint ptr %n_chan141 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 8, ptr %n_chan141, align 4
  %maxdata142 = getelementptr %struct.comedi_subdevice, ptr %89, i32 4, i32 13
  %93 = ptrtoint ptr %maxdata142 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 255, ptr %maxdata142, align 4
  %insn_write143 = getelementptr %struct.comedi_subdevice, ptr %89, i32 4, i32 19
  %94 = ptrtoint ptr %insn_write143 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @cb_pcidas_caldac_insn_write, ptr %insn_write143, align 4
  %call144 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx138) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %for.cond.preheader, label %if.end129.cleanup_crit_edge

if.end129.cleanup_crit_edge:                      ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end129
  %95 = ptrtoint ptr %n_chan141 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %n_chan141, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp149404 = icmp sgt i32 %96, 0
  br i1 %cmp149404, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %readback = getelementptr %struct.comedi_subdevice, ptr %89, i32 4, i32 32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0405 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %97 = ptrtoint ptr %maxdata142 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %maxdata142, align 4
  %div396 = lshr i32 %98, 1
  %shl = shl i32 %i.0405, 8
  %or151 = or i32 %div396, %shl
  tail call fastcc void @cb_pcidas_calib_write(ptr noundef %dev, i32 noundef %or151, i32 noundef 11, i1 noundef zeroext false)
  %99 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %readback, align 4
  %arrayidx152 = getelementptr i32, ptr %100, i32 %i.0405
  %101 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %div396, ptr %arrayidx152, align 4
  %inc = add nuw nsw i32 %i.0405, 1
  %102 = ptrtoint ptr %n_chan141 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %n_chan141, align 4
  %cmp149 = icmp slt i32 %inc, %103
  br i1 %cmp149, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %104 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %subdevices, align 4
  %arrayidx154 = getelementptr %struct.comedi_subdevice, ptr %105, i32 5
  %type155 = getelementptr %struct.comedi_subdevice, ptr %105, i32 5, i32 2
  %106 = ptrtoint ptr %type155 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 9, ptr %type155, align 4
  %subdev_flags156 = getelementptr %struct.comedi_subdevice, ptr %105, i32 5, i32 4
  %107 = ptrtoint ptr %subdev_flags156 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 393216, ptr %subdev_flags156, align 4
  %spec.select = select i1 %.not, i32 2, i32 1
  %spec.select411 = select i1 %.not, i32 255, i32 127
  %108 = getelementptr %struct.comedi_subdevice, ptr %105, i32 5, i32 3
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %spec.select, ptr %108, align 4
  %110 = getelementptr %struct.comedi_subdevice, ptr %105, i32 5, i32 13
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %spec.select411, ptr %110, align 4
  %insn_write169 = getelementptr %struct.comedi_subdevice, ptr %105, i32 5, i32 19
  %112 = ptrtoint ptr %insn_write169 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @cb_pcidas_trimpot_insn_write, ptr %insn_write169, align 4
  %call170 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx154) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170)
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %for.cond174.preheader, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond174.preheader:                            ; preds = %for.end
  %113 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp176406 = icmp sgt i32 %114, 0
  br i1 %cmp176406, label %for.body177.lr.ph, label %for.cond174.preheader.for.end186_crit_edge

for.cond174.preheader.for.end186_crit_edge:       ; preds = %for.cond174.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end186

for.body177.lr.ph:                                ; preds = %for.cond174.preheader
  %readback182 = getelementptr %struct.comedi_subdevice, ptr %105, i32 5, i32 32
  br label %for.body177

for.body177:                                      ; preds = %for.body177.for.body177_crit_edge, %for.body177.lr.ph
  %i.1407 = phi i32 [ 0, %for.body177.lr.ph ], [ %inc185, %for.body177.for.body177_crit_edge ]
  %115 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %110, align 4
  %div179394 = lshr i32 %116, 1
  tail call fastcc void @cb_pcidas_trimpot_write(ptr noundef %dev, i32 noundef %i.1407, i32 noundef %div179394)
  %117 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %110, align 4
  %div181395 = lshr i32 %118, 1
  %119 = ptrtoint ptr %readback182 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %readback182, align 4
  %arrayidx183 = getelementptr i32, ptr %120, i32 %i.1407
  %121 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %div181395, ptr %arrayidx183, align 4
  %inc185 = add nuw nsw i32 %i.1407, 1
  %122 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %108, align 4
  %cmp176 = icmp slt i32 %inc185, %123
  br i1 %cmp176, label %for.body177.for.body177_crit_edge, label %for.body177.for.end186_crit_edge

for.body177.for.end186_crit_edge:                 ; preds = %for.body177
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end186

for.body177.for.body177_crit_edge:                ; preds = %for.body177
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body177

for.end186:                                       ; preds = %for.body177.for.end186_crit_edge, %for.cond174.preheader.for.end186_crit_edge
  %124 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %subdevices, align 4
  br i1 %.not, label %if.then194, label %if.else217

if.then194:                                       ; preds = %for.end186
  %arrayidx188 = getelementptr %struct.comedi_subdevice, ptr %125, i32 6
  %type195 = getelementptr %struct.comedi_subdevice, ptr %125, i32 6, i32 2
  %126 = ptrtoint ptr %type195 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 9, ptr %type195, align 4
  %subdev_flags196 = getelementptr %struct.comedi_subdevice, ptr %125, i32 6, i32 4
  %127 = ptrtoint ptr %subdev_flags196 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 393216, ptr %subdev_flags196, align 4
  %n_chan197 = getelementptr %struct.comedi_subdevice, ptr %125, i32 6, i32 3
  %128 = ptrtoint ptr %n_chan197 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 1, ptr %n_chan197, align 4
  %maxdata198 = getelementptr %struct.comedi_subdevice, ptr %125, i32 6, i32 13
  %129 = ptrtoint ptr %maxdata198 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 255, ptr %maxdata198, align 4
  %insn_write199 = getelementptr %struct.comedi_subdevice, ptr %125, i32 6, i32 19
  %130 = ptrtoint ptr %insn_write199 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr @cb_pcidas_dac08_insn_write, ptr %insn_write199, align 4
  %call200 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx188) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200)
  %tobool201.not = icmp eq i32 %call200, 0
  br i1 %tobool201.not, label %for.cond204.preheader, label %if.then194.cleanup_crit_edge

if.then194.cleanup_crit_edge:                     ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond204.preheader:                            ; preds = %if.then194
  %131 = ptrtoint ptr %n_chan197 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %n_chan197, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %cmp206408 = icmp sgt i32 %132, 0
  br i1 %cmp206408, label %for.body207.lr.ph, label %for.cond204.preheader.if.end219_crit_edge

for.cond204.preheader.if.end219_crit_edge:        ; preds = %for.cond204.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end219

for.body207.lr.ph:                                ; preds = %for.cond204.preheader
  %readback212 = getelementptr %struct.comedi_subdevice, ptr %125, i32 6, i32 32
  br label %for.body207

for.body207:                                      ; preds = %for.body207.for.body207_crit_edge, %for.body207.lr.ph
  %i.2409 = phi i32 [ 0, %for.body207.lr.ph ], [ %inc215, %for.body207.for.body207_crit_edge ]
  %133 = ptrtoint ptr %maxdata198 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %maxdata198, align 4
  %div209392 = lshr i32 %134, 1
  tail call fastcc void @cb_pcidas_dac08_write(ptr noundef %dev, i32 noundef %div209392)
  %135 = ptrtoint ptr %maxdata198 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %maxdata198, align 4
  %div211393 = lshr i32 %136, 1
  %137 = ptrtoint ptr %readback212 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %readback212, align 4
  %arrayidx213 = getelementptr i32, ptr %138, i32 %i.2409
  %139 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %div211393, ptr %arrayidx213, align 4
  %inc215 = add nuw nsw i32 %i.2409, 1
  %140 = ptrtoint ptr %n_chan197 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %n_chan197, align 4
  %cmp206 = icmp slt i32 %inc215, %141
  br i1 %cmp206, label %for.body207.for.body207_crit_edge, label %for.body207.if.end219_crit_edge

for.body207.if.end219_crit_edge:                  ; preds = %for.body207
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end219

for.body207.for.body207_crit_edge:                ; preds = %for.body207
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body207

if.else217:                                       ; preds = %for.end186
  call void @__sanitizer_cov_trace_pc() #8
  %type218 = getelementptr %struct.comedi_subdevice, ptr %125, i32 6, i32 2
  %142 = ptrtoint ptr %type218 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %type218, align 4
  br label %if.end219

if.end219:                                        ; preds = %if.else217, %for.body207.if.end219_crit_edge, %for.cond204.preheader.if.end219_crit_edge
  %143 = ptrtoint ptr %amcc to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %amcc, align 4
  %add221 = add i32 %144, 28
  %and222 = and i32 %add221, 1048575
  %add223 = or i32 %and222, -18874368
  %145 = inttoptr i32 %add223 to ptr
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %145) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  %amcc_intcsr = getelementptr inbounds %struct.cb_pcidas_private, ptr %call3, i32 0, i32 6
  %147 = ptrtoint ptr %amcc_intcsr to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 7936, ptr %amcc_intcsr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @arm_heavy_mb() #6
  %148 = ptrtoint ptr %amcc_intcsr to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %amcc_intcsr, align 4
  %or231 = or i32 %149, 131072
  %150 = tail call i32 @llvm.bswap.i32(i32 %or231)
  %151 = ptrtoint ptr %amcc to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %amcc, align 4
  %add233 = add i32 %152, 56
  %and234 = and i32 %add233, 1048575
  %add235 = or i32 %and234, -18874368
  %153 = inttoptr i32 %add235 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %153, i32 %150) #6, !srcloc !94
  br label %cleanup

cleanup:                                          ; preds = %if.end219, %if.then194.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end129.cleanup_crit_edge, %if.end123.cleanup_crit_edge, %if.then86.cleanup_crit_edge, %if.end60.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %if.then39, %do.body33, %if.end6.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end219 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end2.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ %call.i, %if.then39 ], [ -12, %if.end44.cleanup_crit_edge ], [ -12, %if.end53.cleanup_crit_edge ], [ %call61, %if.end60.cleanup_crit_edge ], [ %call101, %if.then86.cleanup_crit_edge ], [ %call126, %if.end123.cleanup_crit_edge ], [ %call144, %if.end129.cleanup_crit_edge ], [ %call170, %for.end.cleanup_crit_edge ], [ %call200, %if.then194.cleanup_crit_edge ], [ %call.i, %do.body33 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

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
define internal i32 @cb_pcidas_interrupt(i32 noundef %irq, ptr noundef %d) #2 align 64 {
entry:
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
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
  %amcc = getelementptr inbounds %struct.cb_pcidas_private, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %amcc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %amcc, align 4
  %add = add i32 %4, 56
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %5 = inttoptr i32 %add1 to ptr
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %5) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %7 = and i32 %6, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %8 = ptrtoint ptr %amcc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %amcc, align 4
  %add7 = add i32 %9, 28
  %and.i = and i32 %add7, 1048575
  %add.i = or i32 %and.i, -18874368
  %10 = inttoptr i32 %add.i to ptr
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %10) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %amcc_intcsr = getelementptr inbounds %struct.cb_pcidas_private, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %amcc_intcsr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %amcc_intcsr, align 4
  %or = or i32 %13, 131072
  %14 = tail call i32 @llvm.bswap.i32(i32 %or)
  %15 = ptrtoint ptr %amcc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %amcc, align 4
  %add10 = add i32 %16, 56
  %and11 = and i32 %add10, 1048575
  %add12 = or i32 %and11, -18874368
  %17 = inttoptr i32 %add12 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %17, i32 %14) #6, !srcloc !94
  %pcibar1 = getelementptr inbounds %struct.cb_pcidas_private, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %pcibar1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pcibar1, align 4
  %and16 = and i32 %19, 1048575
  %add17 = or i32 %and16, -18874368
  %20 = inttoptr i32 %add17 to ptr
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %20) #6, !srcloc !103
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  %conv = zext i16 %22 to i32
  %and21 = and i32 %conv, 16416
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end5.if.end26_crit_edge, label %if.then23

if.end5.if.end26_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then23:                                        ; preds = %if.end5
  %board_ptr.i = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 9
  %23 = ptrtoint ptr %board_ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %board_ptr.i, align 4
  %write_subdev.i = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 22
  %25 = ptrtoint ptr %write_subdev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write_subdev.i, align 4
  %async1.i = getelementptr inbounds %struct.comedi_subdevice, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %async1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %async1.i, align 4
  %and.i79 = and i32 %conv, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i79)
  %tobool.not.i = icmp eq i32 %and.i79, 0
  br i1 %tobool.not.i, label %if.else17.i, label %if.then.i

if.then.i:                                        ; preds = %if.then23
  %29 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %private, align 4
  %pcibar4.i = getelementptr inbounds %struct.cb_pcidas_private, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %pcibar4.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pcibar4.i, align 4
  %add.i80 = add i32 %32, 8
  %and3.i = and i32 %add.i80, 1048575
  %add4.i = or i32 %and3.i, -18874368
  %33 = inttoptr i32 %add4.i to ptr
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %33) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  %35 = and i16 %34, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool7.not.i = icmp eq i16 %35, 0
  br i1 %tobool7.not.i, label %if.then.i.cb_pcidas_ao_interrupt.exit_crit_edge, label %if.then8.i

if.then.i.cb_pcidas_ao_interrupt.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cb_pcidas_ao_interrupt.exit

if.then8.i:                                       ; preds = %if.then.i
  %stop_src.i = getelementptr inbounds %struct.comedi_async, ptr %28, i32 0, i32 17, i32 10
  %36 = ptrtoint ptr %stop_src.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %stop_src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %37)
  %cmp.i = icmp eq i32 %37, 32
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then8.i.do.end.i_crit_edge

if.then8.i.do.end.i_crit_edge:                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.then8.i
  %scans_done.i = getelementptr inbounds %struct.comedi_async, ptr %28, i32 0, i32 11
  %38 = ptrtoint ptr %scans_done.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %scans_done.i, align 4
  %stop_arg.i = getelementptr inbounds %struct.comedi_async, ptr %28, i32 0, i32 17, i32 11
  %40 = ptrtoint ptr %stop_arg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %stop_arg.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp10.not.i = icmp ult i32 %39, %41
  br i1 %cmp10.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %if.then12.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.then12.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %events.i = getelementptr inbounds %struct.comedi_async, ptr %28, i32 0, i32 16
  %42 = ptrtoint ptr %events.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %events.i, align 4
  %or13.i = or i32 %43, 2
  store i32 %or13.i, ptr %events.i, align 4
  br label %cb_pcidas_ao_interrupt.exit

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %if.then8.i.do.end.i_crit_edge
  %class_dev.i = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 4
  %44 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %class_dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.12) #9
  %events14.i = getelementptr inbounds %struct.comedi_async, ptr %28, i32 0, i32 16
  %46 = ptrtoint ptr %events14.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %events14.i, align 4
  %or15.i = or i32 %47, 16
  store i32 %or15.i, ptr %events14.i, align 4
  br label %cb_pcidas_ao_interrupt.exit

if.else17.i:                                      ; preds = %if.then23
  %and18.i = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.else17.i.cb_pcidas_ao_interrupt.exit_crit_edge, label %if.then20.i

if.else17.i.cb_pcidas_ao_interrupt.exit_crit_edge: ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cb_pcidas_ao_interrupt.exit

if.then20.i:                                      ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #8
  %fifo_size.i = getelementptr inbounds %struct.cb_pcidas_board, ptr %24, i32 0, i32 3
  %48 = ptrtoint ptr %fifo_size.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fifo_size.i, align 4
  %div.i = sdiv i32 %49, 2
  %50 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %private, align 4
  %call.i.i = tail call i32 @comedi_nsamples_left(ptr noundef %26, i32 noundef %div.i) #6
  %ao_buffer.i.i = getelementptr inbounds %struct.cb_pcidas_private, ptr %51, i32 0, i32 9
  %call1.i.i = tail call i32 @comedi_buf_read_samples(ptr noundef %26, ptr noundef %ao_buffer.i.i, i32 noundef %call.i.i) #6
  %subdev_flags.i.i.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %26, i32 0, i32 4
  %52 = ptrtoint ptr %subdev_flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %subdev_flags.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %53, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 1, i32 2
  %shr.i.i.i = lshr i32 %call1.i.i, %cond.i.i.i.i
  %pcibar4.i.i = getelementptr inbounds %struct.cb_pcidas_private, ptr %51, i32 0, i32 4
  %54 = ptrtoint ptr %pcibar4.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pcibar4.i.i, align 4
  %and.i.i = and i32 %55, 1048575
  %add3.i.i = or i32 %and.i.i, -18874368
  %56 = inttoptr i32 %add3.i.i to ptr
  tail call void @__raw_writesw(ptr noundef nonnull %56, ptr noundef %ao_buffer.i.i, i32 noundef %shr.i.i.i) #6
  br label %cb_pcidas_ao_interrupt.exit

cb_pcidas_ao_interrupt.exit:                      ; preds = %if.then20.i, %if.else17.i.cb_pcidas_ao_interrupt.exit_crit_edge, %do.end.i, %if.then12.i, %if.then.i.cb_pcidas_ao_interrupt.exit_crit_edge
  %irq_clr.0.i = phi i32 [ 16384, %if.then12.i ], [ 16384, %do.end.i ], [ 16384, %if.then.i.cb_pcidas_ao_interrupt.exit_crit_edge ], [ 32, %if.then20.i ], [ 0, %if.else17.i.cb_pcidas_ao_interrupt.exit_crit_edge ]
  %call24.i = tail call i32 @comedi_handle_events(ptr noundef %d, ptr noundef %26) #6
  br label %if.end26

if.end26:                                         ; preds = %cb_pcidas_ao_interrupt.exit, %if.end5.if.end26_crit_edge
  %irq_clr.0 = phi i32 [ %irq_clr.0.i, %cb_pcidas_ao_interrupt.exit ], [ 0, %if.end5.if.end26_crit_edge ]
  %and27 = and i32 %conv, 11840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.if.end32_crit_edge, label %if.then29

if.end26.if.end32_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then29:                                        ; preds = %if.end26
  %57 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %private, align 4
  %read_subdev.i = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 21
  %59 = ptrtoint ptr %read_subdev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %read_subdev.i, align 4
  %async1.i82 = getelementptr inbounds %struct.comedi_subdevice, ptr %60, i32 0, i32 7
  %61 = ptrtoint ptr %async1.i82 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %async1.i82, align 4
  %and.i83 = and i32 %conv, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i83)
  %tobool.not.i84 = icmp eq i32 %and.i83, 0
  br i1 %tobool.not.i84, label %if.else.i, label %if.then.i92

if.then.i92:                                      ; preds = %if.then29
  %board_ptr.i85 = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 9
  %63 = ptrtoint ptr %board_ptr.i85 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %board_ptr.i85, align 4
  %fifo_size.i86 = getelementptr inbounds %struct.cb_pcidas_board, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %fifo_size.i86 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %fifo_size.i86, align 4
  %div.i87 = sdiv i32 %66, 2
  %call.i = tail call i32 @comedi_nsamples_left(ptr noundef %60, i32 noundef %div.i87) #6
  %pcibar2.i = getelementptr inbounds %struct.cb_pcidas_private, ptr %58, i32 0, i32 3
  %67 = ptrtoint ptr %pcibar2.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pcibar2.i, align 4
  %and3.i88 = and i32 %68, 1048575
  %add4.i89 = or i32 %and3.i88, -18874368
  %69 = inttoptr i32 %add4.i89 to ptr
  %ai_buffer.i = getelementptr inbounds %struct.cb_pcidas_private, ptr %58, i32 0, i32 8
  tail call void @__raw_readsw(ptr noundef nonnull %69, ptr noundef %ai_buffer.i, i32 noundef %call.i) #6
  %call8.i = tail call i32 @comedi_buf_write_samples(ptr noundef %60, ptr noundef %ai_buffer.i, i32 noundef %call.i) #6
  %stop_src.i90 = getelementptr inbounds %struct.comedi_async, ptr %62, i32 0, i32 17, i32 10
  %70 = ptrtoint ptr %stop_src.i90 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %stop_src.i90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %71)
  %cmp.i91 = icmp eq i32 %71, 32
  br i1 %cmp.i91, label %land.lhs.true.i95, label %if.then.i92.if.end55.i_crit_edge

if.then.i92.if.end55.i_crit_edge:                 ; preds = %if.then.i92
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55.i

land.lhs.true.i95:                                ; preds = %if.then.i92
  %scans_done.i93 = getelementptr inbounds %struct.comedi_async, ptr %62, i32 0, i32 11
  %72 = ptrtoint ptr %scans_done.i93 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %scans_done.i93, align 4
  %stop_arg.i94 = getelementptr inbounds %struct.comedi_async, ptr %62, i32 0, i32 17, i32 11
  %74 = ptrtoint ptr %stop_arg.i94 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %stop_arg.i94, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %75)
  %cmp9.not.i = icmp ult i32 %73, %75
  br i1 %cmp9.not.i, label %land.lhs.true.i95.if.end55.i_crit_edge, label %if.then10.i

land.lhs.true.i95.if.end55.i_crit_edge:           ; preds = %land.lhs.true.i95
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55.i

if.then10.i:                                      ; preds = %land.lhs.true.i95
  call void @__sanitizer_cov_trace_pc() #8
  %events.i96 = getelementptr inbounds %struct.comedi_async, ptr %62, i32 0, i32 16
  %76 = ptrtoint ptr %events.i96 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %events.i96, align 4
  %or11.i = or i32 %77, 2
  store i32 %or11.i, ptr %events.i96, align 4
  br label %if.end55.i

if.else.i:                                        ; preds = %if.then29
  %and12.i = and i32 %conv, 2560
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.else48.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.else.i
  %pcibar1.i = getelementptr inbounds %struct.cb_pcidas_private, ptr %58, i32 0, i32 2
  %pcibar228.i = getelementptr inbounds %struct.cb_pcidas_private, ptr %58, i32 0, i32 3
  %stop_src36.i = getelementptr inbounds %struct.comedi_async, ptr %62, i32 0, i32 17, i32 10
  %scans_done40.i = getelementptr inbounds %struct.comedi_async, ptr %62, i32 0, i32 11
  %stop_arg41.i = getelementptr inbounds %struct.comedi_async, ptr %62, i32 0, i32 17, i32 11
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.0106.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #6
  %78 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 -1, ptr %val.i, align 2, !annotation !106
  %79 = ptrtoint ptr %pcibar1.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %pcibar1.i, align 4
  %and18.i97 = and i32 %80, 1048575
  %add19.i = or i32 %and18.i97, -18874368
  %81 = inttoptr i32 %add19.i to ptr
  %82 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %81) #6, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  %83 = and i16 %82, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %cmp23.i = icmp eq i16 %83, 0
  br i1 %cmp23.i, label %for.body.i.cleanup.i_crit_edge, label %if.end26.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.end26.i:                                       ; preds = %for.body.i
  %84 = ptrtoint ptr %pcibar228.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %pcibar228.i, align 4
  %and30.i = and i32 %85, 1048575
  %add31.i = or i32 %and30.i, -18874368
  %86 = inttoptr i32 %add31.i to ptr
  %87 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %86) #6, !srcloc !103
  %88 = call i16 @llvm.bswap.i16(i16 %87) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  %89 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %val.i, align 2
  %call35.i = call i32 @comedi_buf_write_samples(ptr noundef %60, ptr noundef nonnull %val.i, i32 noundef 1) #6
  %90 = ptrtoint ptr %stop_src36.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %stop_src36.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %91)
  %cmp37.i = icmp eq i32 %91, 32
  br i1 %cmp37.i, label %land.lhs.true39.i, label %if.end26.i.for.inc.i_crit_edge

if.end26.i.for.inc.i_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true39.i:                                ; preds = %if.end26.i
  %92 = ptrtoint ptr %scans_done40.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %scans_done40.i, align 4
  %94 = ptrtoint ptr %stop_arg41.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %stop_arg41.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %95)
  %cmp42.not.i = icmp ult i32 %93, %95
  br i1 %cmp42.not.i, label %land.lhs.true39.i.for.inc.i_crit_edge, label %if.then44.i

land.lhs.true39.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then44.i:                                      ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #8
  %events45.i = getelementptr inbounds %struct.comedi_async, ptr %62, i32 0, i32 16
  %96 = ptrtoint ptr %events45.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %events45.i, align 4
  %or46.i = or i32 %97, 2
  store i32 %or46.i, ptr %events45.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then44.i, %for.body.i.cleanup.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #6
  br label %if.end55.i

for.inc.i:                                        ; preds = %land.lhs.true39.i.for.inc.i_crit_edge, %if.end26.i.for.inc.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #6
  %inc.i = add nuw nsw i32 %i.0106.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10000
  br i1 %exitcond.not.i, label %for.inc.i.if.end55.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.end55.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55.i

if.else48.i:                                      ; preds = %if.else.i
  %and49.i = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  br i1 %tobool50.not.i, label %if.else48.i.if.end55.i_crit_edge, label %if.then51.i

if.else48.i.if.end55.i_crit_edge:                 ; preds = %if.else48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55.i

if.then51.i:                                      ; preds = %if.else48.i
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev.i98 = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 4
  %98 = ptrtoint ptr %class_dev.i98 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %class_dev.i98, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.16) #9
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then51.i, %if.else48.i.if.end55.i_crit_edge, %for.inc.i.if.end55.i_crit_edge, %cleanup.i, %if.then10.i, %land.lhs.true.i95.if.end55.i_crit_edge, %if.then.i92.if.end55.i_crit_edge
  %irq_clr.0.i99 = phi i32 [ 64, %if.then51.i ], [ 0, %if.else48.i.if.end55.i_crit_edge ], [ 128, %if.then10.i ], [ 128, %land.lhs.true.i95.if.end55.i_crit_edge ], [ 128, %if.then.i92.if.end55.i_crit_edge ], [ 128, %cleanup.i ], [ 128, %for.inc.i.if.end55.i_crit_edge ]
  %and56.i = and i32 %conv, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  br i1 %tobool57.not.i, label %if.end55.i.cb_pcidas_ai_interrupt.exit_crit_edge, label %if.then58.i

if.end55.i.cb_pcidas_ai_interrupt.exit_crit_edge: ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cb_pcidas_ai_interrupt.exit

if.then58.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #8
  %or59.i = or i32 %irq_clr.0.i99, 8192
  %class_dev63.i = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 4
  %100 = ptrtoint ptr %class_dev63.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %class_dev63.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.19) #9
  %events64.i = getelementptr inbounds %struct.comedi_async, ptr %62, i32 0, i32 16
  %102 = ptrtoint ptr %events64.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %events64.i, align 4
  %or65.i = or i32 %103, 16
  store i32 %or65.i, ptr %events64.i, align 4
  br label %cb_pcidas_ai_interrupt.exit

cb_pcidas_ai_interrupt.exit:                      ; preds = %if.then58.i, %if.end55.i.cb_pcidas_ai_interrupt.exit_crit_edge
  %irq_clr.1.i = phi i32 [ %or59.i, %if.then58.i ], [ %irq_clr.0.i99, %if.end55.i.cb_pcidas_ai_interrupt.exit_crit_edge ]
  %call67.i = call i32 @comedi_handle_events(ptr noundef %d, ptr noundef %60) #6
  %or31 = or i32 %irq_clr.1.i, %irq_clr.0
  br label %if.end32

if.end32:                                         ; preds = %cb_pcidas_ai_interrupt.exit, %if.end26.if.end32_crit_edge
  %irq_clr.1 = phi i32 [ %or31, %cb_pcidas_ai_interrupt.exit ], [ %irq_clr.0, %if.end26.if.end32_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq_clr.1)
  %tobool33.not = icmp eq i32 %irq_clr.1, 0
  br i1 %tobool33.not, label %if.end32.cleanup_crit_edge, label %if.then34

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then34:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %spinlock = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 11
  %call41 = call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  call void @arm_heavy_mb() #6
  %ctrl = getelementptr inbounds %struct.cb_pcidas_private, ptr %1, i32 0, i32 5
  %104 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %ctrl, align 4
  %or49 = or i32 %105, %irq_clr.1
  %conv50 = trunc i32 %or49 to i16
  %106 = call i16 @llvm.bswap.i16(i16 %conv50)
  %107 = ptrtoint ptr %pcibar1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %pcibar1, align 4
  %and53 = and i32 %108, 1048575
  %add54 = or i32 %and53, -18874368
  %109 = inttoptr i32 %add54 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %109, i16 %106) #6, !srcloc !110
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call41) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %if.end32.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.then34 ], [ 1, %if.end32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_8254_init(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cb_pcidas_ai_insn_read(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %shr = lshr i32 %3, 16
  %and2 = and i32 %shr, 255
  %and7 = and i32 %3, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool.not = icmp eq i32 %and7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %tobool.not, label %do.body11, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %calib_src = getelementptr inbounds %struct.cb_pcidas_private, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %calib_src to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %calib_src, align 4
  %.tr = trunc i32 %5 to i16
  %6 = shl i16 %.tr, 3
  %conv = and i16 %6, 56
  %7 = or i16 %conv, 64
  %pcibar1 = getelementptr inbounds %struct.cb_pcidas_private, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %pcibar1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pcibar1, align 4
  %add = add i32 %9, 6
  %and9 = and i32 %add, 1048575
  %add10 = or i32 %and9, -18874368
  %10 = inttoptr i32 %add10 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %10, i16 %7) #6, !srcloc !110
  br label %if.end

do.body11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pcibar114 = getelementptr inbounds %struct.cb_pcidas_private, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %pcibar114 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pcibar114, align 4
  %add15 = add i32 %12, 6
  %and16 = and i32 %add15, 1048575
  %add17 = or i32 %and16, -18874368
  %13 = inttoptr i32 %add17 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %13, i16 0) #6, !srcloc !110
  %phi.bo = and i32 %3, 15
  %phi.bo103 = mul nuw nsw i32 %phi.bo, 17
  br label %if.end

if.end:                                           ; preds = %do.body11, %do.body
  %chan.0 = phi i32 [ 0, %do.body ], [ %phi.bo103, %do.body11 ]
  %and23 = shl nuw nsw i32 %shr, 8
  %shl24 = and i32 %and23, 768
  %or25 = add nuw nsw i32 %chan.0, %shl24
  %range_table.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 15
  %14 = ptrtoint ptr %range_table.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %range_table.i, align 4
  %arrayidx.i = getelementptr %struct.comedi_lrange, ptr %15, i32 0, i32 1, i32 %and2
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %or28 = or i32 %or25, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i99 = icmp slt i32 %17, 0
  %spec.select = select i1 %cmp.i99, i32 %or25, i32 %or28
  %18 = and i32 %3, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %18)
  %cmp.not = icmp eq i32 %18, 33554432
  %or32 = or i32 %spec.select, 1024
  %bits.1 = select i1 %cmp.not, i32 %spec.select, i32 %or32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  tail call void @arm_heavy_mb() #6
  %conv37 = trunc i32 %bits.1 to i16
  %19 = tail call i16 @llvm.bswap.i16(i16 %conv37)
  %pcibar138 = getelementptr inbounds %struct.cb_pcidas_private, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %pcibar138 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pcibar138, align 4
  %add39 = add i32 %21, 2
  %and40 = and i32 %add39, 1048575
  %add41 = or i32 %and40, -18874368
  %22 = inttoptr i32 %add41 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %22, i16 %19) #6, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  tail call void @arm_heavy_mb() #6
  %pcibar2 = getelementptr inbounds %struct.cb_pcidas_private, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %pcibar2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pcibar2, align 4
  %add46 = add i32 %24, 2
  %and47 = and i32 %add46, 1048575
  %add48 = or i32 %and47, -18874368
  %25 = inttoptr i32 %add48 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %25, i16 0) #6, !srcloc !110
  %n50 = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %26 = ptrtoint ptr %n50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp51100.not = icmp eq i32 %27, 0
  br i1 %cmp51100.not, label %if.end.cleanup_crit_edge, label %if.end.do.body53_crit_edge

if.end.do.body53_crit_edge:                       ; preds = %if.end
  br label %do.body53

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body53:                                        ; preds = %if.end64.do.body53_crit_edge, %if.end.do.body53_crit_edge
  %n.0101 = phi i32 [ %inc, %if.end64.do.body53_crit_edge ], [ 0, %if.end.do.body53_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %28 = ptrtoint ptr %pcibar2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pcibar2, align 4
  %and58 = and i32 %29, 1048575
  %add59 = or i32 %and58, -18874368
  %30 = inttoptr i32 %add59 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %30, i16 0) #6, !srcloc !110
  %call61 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @cb_pcidas_ai_eoc, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %do.body53.cleanup_crit_edge

do.body53.cleanup_crit_edge:                      ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end64:                                         ; preds = %do.body53
  %31 = ptrtoint ptr %pcibar2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pcibar2, align 4
  %and67 = and i32 %32, 1048575
  %add68 = or i32 %and67, -18874368
  %33 = inttoptr i32 %add68 to ptr
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %33) #6, !srcloc !103
  %35 = tail call i16 @llvm.bswap.i16(i16 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  %conv71 = zext i16 %35 to i32
  %arrayidx = getelementptr i32, ptr %data, i32 %n.0101
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv71, ptr %arrayidx, align 4
  %inc = add nuw i32 %n.0101, 1
  %37 = ptrtoint ptr %n50 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %n50, align 4
  %cmp51 = icmp ult i32 %inc, %38
  br i1 %cmp51, label %if.end64.do.body53_crit_edge, label %if.end64.cleanup_crit_edge

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end64.do.body53_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body53

cleanup:                                          ; preds = %if.end64.cleanup_crit_edge, %do.body53.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %inc, %if.end64.cleanup_crit_edge ], [ %call61, %do.body53.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cb_pcidas_ai_insn_config(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %arrayidx1 = getelementptr i32, ptr %data, i32 1
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %3)
  %cond = icmp eq i32 %3, 20
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %5)
  %cmp = icmp ugt i32 %5, 7
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %6 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.23, i32 noundef %5) #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %calib_src = getelementptr inbounds %struct.cb_pcidas_private, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %calib_src to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %calib_src, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %9 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %10, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cb_pcidas_ai_cmd(ptr noundef %dev, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %chanlist = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 12
  %6 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chanlist, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %shr = lshr i32 %9, 16
  %and = and i32 %shr, 255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  %pcibar1 = getelementptr inbounds %struct.cb_pcidas_private, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %pcibar1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pcibar1, align 4
  %add = add i32 %11, 6
  %and3 = and i32 %add, 1048575
  %add4 = or i32 %and3, -18874368
  %12 = inttoptr i32 %add4 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %12, i16 0) #6, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %pcibar1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pcibar1, align 4
  %add9 = add i32 %14, 4
  %and10 = and i32 %add9, 1048575
  %add11 = or i32 %and10, -18874368
  %15 = inttoptr i32 %add11 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %15, i16 0) #6, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %pcibar2 = getelementptr inbounds %struct.cb_pcidas_private, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %pcibar2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pcibar2, align 4
  %add16 = add i32 %17, 2
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %18 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %18, i16 0) #6, !srcloc !110
  %19 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chanlist, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %and23 = and i32 %22, 15
  %chanlist_len = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 13
  %23 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %chanlist_len, align 4
  %sub = add i32 %24, -1
  %arrayidx25 = getelementptr i32, ptr %20, i32 %sub
  %25 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx25, align 4
  %and27 = shl i32 %26, 4
  %shl = and i32 %and27, 240
  %and28 = shl nuw nsw i32 %shr, 8
  %shl29 = and i32 %and28, 768
  %or = or i32 %and23, %shl29
  %or30 = or i32 %or, %shl
  %range_table.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 15
  %27 = ptrtoint ptr %range_table.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %range_table.i, align 4
  %arrayidx.i = getelementptr %struct.comedi_lrange, ptr %28, i32 0, i32 1, i32 %and
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i, align 4
  %or32 = or i32 %or30, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i198 = icmp slt i32 %30, 0
  %spec.select = select i1 %cmp.i198, i32 %or30, i32 %or32
  %31 = and i32 %22, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %31)
  %cmp.not = icmp eq i32 %31, 33554432
  %or38 = or i32 %spec.select, 1024
  %bits.1 = select i1 %cmp.not, i32 %spec.select, i32 %or38
  %convert_src = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 6
  %32 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %33)
  %cmp40 = icmp eq i32 %33, 64
  br i1 %cmp40, label %entry.do.body46_crit_edge, label %lor.lhs.false

entry.do.body46_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body46

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %scan_begin_src = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 4
  %34 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %35)
  %cmp41 = icmp eq i32 %35, 64
  %spec.select199 = select i1 %cmp41, i32 12288, i32 4096
  br label %do.body46

do.body46:                                        ; preds = %lor.lhs.false, %entry.do.body46_crit_edge
  %.sink = phi i32 [ 12288, %entry.do.body46_crit_edge ], [ %spec.select199, %lor.lhs.false ]
  %or43 = or i32 %bits.1, %.sink
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  tail call void @arm_heavy_mb() #6
  %conv = trunc i32 %or43 to i16
  %36 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %37 = ptrtoint ptr %pcibar1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pcibar1, align 4
  %add50 = add i32 %38, 2
  %and51 = and i32 %add50, 1048575
  %add52 = or i32 %and51, -18874368
  %39 = inttoptr i32 %add52 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %39, i16 %36) #6, !srcloc !110
  %scan_begin_src54 = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 4
  %40 = ptrtoint ptr %scan_begin_src54 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %scan_begin_src54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %41)
  %cmp55 = icmp eq i32 %41, 16
  br i1 %cmp55, label %do.body46.if.then61_crit_edge, label %lor.lhs.false57

do.body46.if.then61_crit_edge:                    ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then61

lor.lhs.false57:                                  ; preds = %do.body46
  %42 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %43)
  %cmp59 = icmp eq i32 %43, 16
  br i1 %cmp59, label %lor.lhs.false57.if.then61_crit_edge, label %lor.lhs.false57.do.body65_crit_edge

lor.lhs.false57.do.body65_crit_edge:              ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body65

lor.lhs.false57.if.then61_crit_edge:              ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then61

if.then61:                                        ; preds = %lor.lhs.false57.if.then61_crit_edge, %do.body46.if.then61_crit_edge
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %44 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pacer, align 4
  tail call void @comedi_8254_update_divisors(ptr noundef %45) #6
  %46 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pacer, align 4
  tail call void @comedi_8254_pacer_enable(ptr noundef %47, i32 noundef 1, i32 noundef 2, i1 noundef zeroext true) #6
  br label %do.body65

do.body65:                                        ; preds = %if.then61, %lor.lhs.false57.do.body65_crit_edge
  %spinlock = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call69 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  %ctrl = getelementptr inbounds %struct.cb_pcidas_private, ptr %3, i32 0, i32 5
  %48 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ctrl, align 4
  %or74 = and i32 %49, -8
  %and76 = or i32 %or74, 4
  store i32 %and76, ptr %ctrl, align 4
  %flags77 = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 1
  %50 = ptrtoint ptr %flags77 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags77, align 4
  %and78 = and i32 %51, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool.not = icmp eq i32 %and78, 0
  br i1 %tobool.not, label %if.else93, label %if.then79

if.then79:                                        ; preds = %do.body65
  %52 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %cmp81 = icmp eq i32 %53, 2
  br i1 %cmp81, label %land.lhs.true, label %if.then79.if.else89_crit_edge

if.then79.if.else89_crit_edge:                    ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else89

land.lhs.true:                                    ; preds = %if.then79
  %54 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp84 = icmp ugt i32 %55, 1
  br i1 %cmp84, label %if.then86, label %land.lhs.true.if.else89_crit_edge

land.lhs.true.if.else89_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else89

if.then86:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %or88 = or i32 %or74, 5
  br label %do.body97

if.else89:                                        ; preds = %land.lhs.true.if.else89_crit_edge, %if.then79.if.else89_crit_edge
  %or91 = or i32 %49, 7
  br label %do.body97

if.else93:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #8
  %or95 = or i32 %or74, 6
  br label %do.body97

do.body97:                                        ; preds = %if.else93, %if.else89, %if.then86
  %or95.sink = phi i32 [ %or95, %if.else93 ], [ %or91, %if.else89 ], [ %or88, %if.then86 ]
  %56 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or95.sink, ptr %ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  %57 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ctrl, align 4
  %59 = trunc i32 %58 to i16
  %conv104 = or i16 %59, 8384
  %60 = tail call i16 @llvm.bswap.i16(i16 %conv104)
  %61 = ptrtoint ptr %pcibar1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pcibar1, align 4
  %and107 = and i32 %62, 1048575
  %add108 = or i32 %and107, -18874368
  %63 = inttoptr i32 %add108 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %63, i16 %60) #6, !srcloc !110
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call69) #6
  %start_src = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 2
  %64 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %65)
  %cmp111 = icmp eq i32 %65, 2
  br i1 %cmp111, label %do.body97.if.end131_crit_edge, label %if.else115

do.body97.if.end131_crit_edge:                    ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end131

if.else115:                                       ; preds = %do.body97
  %is_1602 = getelementptr inbounds %struct.cb_pcidas_board, ptr %1, i32 0, i32 5
  %66 = ptrtoint ptr %is_1602 to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load = load i8, ptr %is_1602, align 4
  %67 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool117.not = icmp eq i8 %67, 0
  br i1 %tobool117.not, label %if.else115.if.end131_crit_edge, label %if.then118

if.else115.if.end131_crit_edge:                   ; preds = %if.else115
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end131

if.then118:                                       ; preds = %if.else115
  call void @__sanitizer_cov_trace_pc() #8
  %start_arg = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 3
  %68 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %69)
  %tobool120.not = icmp sgt i32 %69, -1
  %spec.select195 = select i1 %tobool120.not, i32 146, i32 150
  %and125 = lshr i32 %69, 27
  %70 = and i32 %and125, 8
  %71 = or i32 %70, %spec.select195
  br label %if.end131

if.end131:                                        ; preds = %if.then118, %if.else115.if.end131_crit_edge, %do.body97.if.end131_crit_edge
  %bits.4 = phi i32 [ 146, %if.else115.if.end131_crit_edge ], [ 1, %do.body97.if.end131_crit_edge ], [ %71, %if.then118 ]
  %72 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %73)
  %cmp133 = icmp eq i32 %73, 2
  br i1 %cmp133, label %land.lhs.true135, label %if.end131.do.body142_crit_edge

if.end131.do.body142_crit_edge:                   ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body142

land.lhs.true135:                                 ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #8
  %74 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %75)
  %cmp137 = icmp ugt i32 %75, 1
  %or140 = or i32 %bits.4, 32
  %spec.select196 = select i1 %cmp137, i32 %or140, i32 %bits.4
  br label %do.body142

do.body142:                                       ; preds = %land.lhs.true135, %if.end131.do.body142_crit_edge
  %bits.5 = phi i32 [ %bits.4, %if.end131.do.body142_crit_edge ], [ %spec.select196, %land.lhs.true135 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  tail call void @arm_heavy_mb() #6
  %conv145 = trunc i32 %bits.5 to i16
  %76 = tail call i16 @llvm.bswap.i16(i16 %conv145)
  %77 = ptrtoint ptr %pcibar1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %pcibar1, align 4
  %add147 = add i32 %78, 4
  %and148 = and i32 %add147, 1048575
  %add149 = or i32 %and148, -18874368
  %79 = inttoptr i32 %add149 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %79, i16 %76) #6, !srcloc !110
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cb_pcidas_ai_cmdtest(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef %cmd) #2 align 64 {
entry:
  %arg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg) #6
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %arg, align 4, !annotation !106
  %start_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 2
  %3 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %start_src, align 4
  %and.i = and i32 %4, 66
  store i32 %and.i, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %4)
  %cmp1.not.i = icmp eq i32 %and.i, %4
  %or.cond.i = and i1 %cmp.i, %cmp1.not.i
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 4
  %5 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %scan_begin_src, align 4
  %and.i206 = and i32 %6, 84
  store i32 %and.i206, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i206)
  %cmp.i207 = icmp ne i32 %and.i206, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i206, i32 %6)
  %cmp1.not.i208 = icmp eq i32 %and.i206, %6
  %or.cond.i209 = and i1 %cmp.i207, %cmp1.not.i208
  %7 = select i1 %or.cond.i, i1 %or.cond.i209, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %8 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %convert_src, align 4
  %and.i211 = and i32 %9, 82
  store i32 %and.i211, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i211)
  %cmp.i212 = icmp ne i32 %and.i211, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i211, i32 %9)
  %cmp1.not.i213 = icmp eq i32 %and.i211, %9
  %or.cond.i214 = and i1 %cmp.i212, %cmp1.not.i213
  %10 = select i1 %7, i1 %or.cond.i214, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %11 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %scan_end_src, align 4
  %and.i216 = and i32 %12, 32
  store i32 %and.i216, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i216)
  %cmp.i217 = icmp ne i32 %and.i216, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i216, i32 %12)
  %cmp1.not.i218 = icmp eq i32 %and.i216, %12
  %or.cond.i219 = and i1 %cmp.i217, %cmp1.not.i218
  %13 = select i1 %10, i1 %or.cond.i219, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %14 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stop_src, align 4
  %and.i221 = and i32 %15, 33
  store i32 %and.i221, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i221)
  %cmp.i222 = icmp ne i32 %and.i221, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i221, i32 %15)
  %cmp1.not.i223 = icmp eq i32 %and.i221, %15
  %or.cond.i224 = and i1 %cmp.i222, %cmp1.not.i223
  %16 = select i1 %13, i1 %or.cond.i224, i1 false
  br i1 %16, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %17 = tail call i32 @llvm.ctpop.i32(i32 %4) #6, !range !121
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.not.i = icmp ult i32 %17, 2
  %18 = tail call i32 @llvm.ctpop.i32(i32 %6) #6, !range !121
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp.not.i226 = icmp ult i32 %18, 2
  %19 = select i1 %cmp.not.i, i1 %cmp.not.i226, i1 false
  %20 = tail call i32 @llvm.ctpop.i32(i32 %9) #6, !range !121
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp.not.i228 = icmp ult i32 %20, 2
  %21 = select i1 %19, i1 %cmp.not.i228, i1 false
  %22 = tail call i32 @llvm.ctpop.i32(i32 %15) #6, !range !121
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp.not.i230 = icmp ult i32 %22, 2
  %23 = select i1 %21, i1 %cmp.not.i230, i1 false
  %or20 = select i1 %23, i32 0, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp = icmp eq i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp31.not = icmp eq i32 %9, 2
  %spec.select205 = select i1 %cmp31.not, i32 %or20, i32 -22
  %spec.select = select i1 %cmp31.not, i32 -22, i32 %or20
  %err.1 = select i1 %cmp, i32 %spec.select, i32 %spec.select205
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %4)
  %cmp36 = icmp eq i32 %4, 64
  br i1 %cmp36, label %land.lhs.true37, label %if.end44

land.lhs.true37:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %9)
  %cmp39 = icmp ne i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %6)
  %cmp41 = icmp ne i32 %6, 64
  %or.cond = select i1 %cmp39, i1 %cmp41, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool45.not = icmp eq i32 %err.1, 0
  %or.cond265 = select i1 %or.cond, i1 %tobool45.not, i1 false
  br i1 %or.cond265, label %land.lhs.true37.sw.bb51_crit_edge, label %land.lhs.true37.cleanup_crit_edge

land.lhs.true37.cleanup_crit_edge:                ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true37.sw.bb51_crit_edge:                ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb51

if.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool45.not.old = icmp eq i32 %err.1, 0
  br i1 %tobool45.not.old, label %if.end47, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end47:                                         ; preds = %if.end44
  %24 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %if.end47.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 64, label %if.end47.sw.bb51_crit_edge
  ]

if.end47.sw.bb51_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb51

if.end47.sw.epilog_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end47
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %25 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.not.i232 = icmp eq i32 %26, 0
  br i1 %cmp.not.i232, label %sw.bb.sw.epilog_crit_edge, label %if.then.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %start_arg, align 4
  br label %sw.epilog

sw.bb51:                                          ; preds = %if.end47.sw.bb51_crit_edge, %land.lhs.true37.sw.bb51_crit_edge
  %start_arg52 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %28 = ptrtoint ptr %start_arg52 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %start_arg52, align 4
  %and = and i32 %29, 1006632960
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp53.not = icmp eq i32 %and, 0
  br i1 %cmp53.not, label %sw.bb51.if.end58_crit_edge, label %if.then54

sw.bb51.if.end58_crit_edge:                       ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.then54:                                        ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #8
  %and56 = and i32 %29, -1006632961
  %30 = ptrtoint ptr %start_arg52 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and56, ptr %start_arg52, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then54, %sw.bb51.if.end58_crit_edge
  %err.3 = phi i32 [ -22, %if.then54 ], [ 0, %sw.bb51.if.end58_crit_edge ]
  %is_1602 = getelementptr inbounds %struct.cb_pcidas_board, ptr %1, i32 0, i32 5
  %31 = ptrtoint ptr %is_1602 to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load = load i8, ptr %is_1602, align 4
  %32 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool59.not = icmp eq i8 %32, 0
  br i1 %tobool59.not, label %land.lhs.true60, label %if.end58.sw.epilog_crit_edge

if.end58.sw.epilog_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true60:                                  ; preds = %if.end58
  %33 = ptrtoint ptr %start_arg52 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %start_arg52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %tobool63.not = icmp sgt i32 %34, -1
  br i1 %tobool63.not, label %land.lhs.true60.sw.epilog_crit_edge, label %if.then64

land.lhs.true60.sw.epilog_crit_edge:              ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then64:                                        ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #8
  %and66 = and i32 %34, 2080374784
  %35 = ptrtoint ptr %start_arg52 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and66, ptr %start_arg52, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then64, %land.lhs.true60.sw.epilog_crit_edge, %if.end58.sw.epilog_crit_edge, %if.then.i, %sw.bb.sw.epilog_crit_edge, %if.end47.sw.epilog_crit_edge
  %err.4 = phi i32 [ 0, %if.end47.sw.epilog_crit_edge ], [ %err.3, %if.end58.sw.epilog_crit_edge ], [ -22, %if.then64 ], [ %err.3, %land.lhs.true60.sw.epilog_crit_edge ], [ -22, %if.then.i ], [ 0, %sw.bb.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %6)
  %cmp70 = icmp eq i32 %6, 16
  br i1 %cmp70, label %if.then71, label %sw.epilog.if.end74_crit_edge

sw.epilog.if.end74_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74

if.then71:                                        ; preds = %sw.epilog
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %ai_speed = getelementptr inbounds %struct.cb_pcidas_board, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %ai_speed to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ai_speed, align 4
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %38 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %chanlist_len, align 4
  %mul = mul i32 %39, %37
  %40 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %mul)
  %cmp.i234 = icmp ult i32 %41, %mul
  br i1 %cmp.i234, label %if.then.i235, label %if.then71.comedi_check_trigger_arg_min.exit_crit_edge

if.then71.comedi_check_trigger_arg_min.exit_crit_edge: ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_min.exit

if.then.i235:                                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %mul, ptr %scan_begin_arg, align 4
  br label %comedi_check_trigger_arg_min.exit

comedi_check_trigger_arg_min.exit:                ; preds = %if.then.i235, %if.then71.comedi_check_trigger_arg_min.exit_crit_edge
  %retval.0.i236 = phi i32 [ -22, %if.then.i235 ], [ 0, %if.then71.comedi_check_trigger_arg_min.exit_crit_edge ]
  %or73 = or i32 %retval.0.i236, %err.4
  br label %if.end74

if.end74:                                         ; preds = %comedi_check_trigger_arg_min.exit, %sw.epilog.if.end74_crit_edge
  %err.5 = phi i32 [ %or73, %comedi_check_trigger_arg_min.exit ], [ %err.4, %sw.epilog.if.end74_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %9)
  %cmp76 = icmp eq i32 %9, 16
  br i1 %cmp76, label %if.then77, label %if.end74.if.end81_crit_edge

if.end74.if.end81_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

if.then77:                                        ; preds = %if.end74
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %ai_speed78 = getelementptr inbounds %struct.cb_pcidas_board, ptr %1, i32 0, i32 1
  %43 = ptrtoint ptr %ai_speed78 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ai_speed78, align 4
  %45 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %convert_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %44)
  %cmp.i237 = icmp ult i32 %46, %44
  br i1 %cmp.i237, label %if.then.i238, label %if.then77.comedi_check_trigger_arg_min.exit240_crit_edge

if.then77.comedi_check_trigger_arg_min.exit240_crit_edge: ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_min.exit240

if.then.i238:                                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %44, ptr %convert_arg, align 4
  br label %comedi_check_trigger_arg_min.exit240

comedi_check_trigger_arg_min.exit240:             ; preds = %if.then.i238, %if.then77.comedi_check_trigger_arg_min.exit240_crit_edge
  %retval.0.i239 = phi i32 [ -22, %if.then.i238 ], [ 0, %if.then77.comedi_check_trigger_arg_min.exit240_crit_edge ]
  %or80 = or i32 %retval.0.i239, %err.5
  br label %if.end81

if.end81:                                         ; preds = %comedi_check_trigger_arg_min.exit240, %if.end74.if.end81_crit_edge
  %err.6 = phi i32 [ %or80, %comedi_check_trigger_arg_min.exit240 ], [ %err.5, %if.end74.if.end81_crit_edge ]
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %chanlist_len82 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %48 = ptrtoint ptr %chanlist_len82 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %chanlist_len82, align 4
  %50 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %49)
  %cmp.not.i241 = icmp eq i32 %51, %49
  br i1 %cmp.not.i241, label %if.end81.comedi_check_trigger_arg_is.exit244_crit_edge, label %if.then.i242

if.end81.comedi_check_trigger_arg_is.exit244_crit_edge: ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit244

if.then.i242:                                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %49, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit244

comedi_check_trigger_arg_is.exit244:              ; preds = %if.then.i242, %if.end81.comedi_check_trigger_arg_is.exit244_crit_edge
  %retval.0.i243 = phi i32 [ -22, %if.then.i242 ], [ 0, %if.end81.comedi_check_trigger_arg_is.exit244_crit_edge ]
  %or84 = or i32 %retval.0.i243, %err.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %15)
  %cmp86 = icmp eq i32 %15, 32
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %53 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.i245 = icmp eq i32 %54, 0
  br i1 %cmp86, label %if.then87, label %if.else

if.then87:                                        ; preds = %comedi_check_trigger_arg_is.exit244
  br i1 %cmp.i245, label %if.then87.if.end93.sink.split_crit_edge, label %if.then87.if.end93_crit_edge

if.then87.if.end93_crit_edge:                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93

if.then87.if.end93.sink.split_crit_edge:          ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93.sink.split

if.else:                                          ; preds = %comedi_check_trigger_arg_is.exit244
  br i1 %cmp.i245, label %if.else.if.end93_crit_edge, label %if.else.if.end93.sink.split_crit_edge

if.else.if.end93.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93.sink.split

if.else.if.end93_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93

if.end93.sink.split:                              ; preds = %if.else.if.end93.sink.split_crit_edge, %if.then87.if.end93.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then87.if.end93.sink.split_crit_edge ], [ 0, %if.else.if.end93.sink.split_crit_edge ]
  %55 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %.sink, ptr %stop_arg, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.end93.sink.split, %if.else.if.end93_crit_edge, %if.then87.if.end93_crit_edge
  %call88.pn = phi i32 [ 0, %if.then87.if.end93_crit_edge ], [ 0, %if.else.if.end93_crit_edge ], [ -22, %if.end93.sink.split ]
  %err.7 = or i32 %or84, %call88.pn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.7)
  %tobool94.not = icmp eq i32 %err.7, 0
  br i1 %tobool94.not, label %if.end96, label %if.end93.cleanup_crit_edge

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end96:                                         ; preds = %if.end93
  br i1 %cmp70, label %if.then99, label %if.end96.if.end104_crit_edge

if.end96.if.end104_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104

if.then99:                                        ; preds = %if.end96
  %scan_begin_arg100 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %56 = ptrtoint ptr %scan_begin_arg100 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %scan_begin_arg100, align 4
  %58 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %arg, align 4
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %59 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pacer, align 4
  %flags = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 1
  %61 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags, align 4
  call void @comedi_8254_cascade_ns_to_timer(ptr noundef %60, ptr noundef nonnull %arg, i32 noundef %62) #6
  %63 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arg, align 4
  %65 = ptrtoint ptr %scan_begin_arg100 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %scan_begin_arg100, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %64)
  %cmp.not.i253 = icmp eq i32 %66, %64
  br i1 %cmp.not.i253, label %if.then99.if.end104_crit_edge, label %if.then.i254

if.then99.if.end104_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104

if.then.i254:                                     ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %scan_begin_arg100 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %64, ptr %scan_begin_arg100, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.then.i254, %if.then99.if.end104_crit_edge, %if.end96.if.end104_crit_edge
  %err.8 = phi i32 [ 0, %if.end96.if.end104_crit_edge ], [ -22, %if.then.i254 ], [ 0, %if.then99.if.end104_crit_edge ]
  %68 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %69)
  %cmp106 = icmp eq i32 %69, 16
  br i1 %cmp106, label %if.then107, label %if.end104.if.end114_crit_edge

if.end104.if.end114_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end114

if.then107:                                       ; preds = %if.end104
  %convert_arg108 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %70 = ptrtoint ptr %convert_arg108 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %convert_arg108, align 4
  %72 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %arg, align 4
  %pacer109 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %73 = ptrtoint ptr %pacer109 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pacer109, align 4
  %flags110 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 1
  %75 = ptrtoint ptr %flags110 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flags110, align 4
  call void @comedi_8254_cascade_ns_to_timer(ptr noundef %74, ptr noundef nonnull %arg, i32 noundef %76) #6
  %77 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arg, align 4
  %79 = ptrtoint ptr %convert_arg108 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %convert_arg108, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %78)
  %cmp.not.i257 = icmp eq i32 %80, %78
  br i1 %cmp.not.i257, label %if.then107.comedi_check_trigger_arg_is.exit260_crit_edge, label %if.then.i258

if.then107.comedi_check_trigger_arg_is.exit260_crit_edge: ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit260

if.then.i258:                                     ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #8
  %81 = ptrtoint ptr %convert_arg108 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %78, ptr %convert_arg108, align 4
  br label %comedi_check_trigger_arg_is.exit260

comedi_check_trigger_arg_is.exit260:              ; preds = %if.then.i258, %if.then107.comedi_check_trigger_arg_is.exit260_crit_edge
  %retval.0.i259 = phi i32 [ -22, %if.then.i258 ], [ 0, %if.then107.comedi_check_trigger_arg_is.exit260_crit_edge ]
  %or113 = or i32 %retval.0.i259, %err.8
  br label %if.end114

if.end114:                                        ; preds = %comedi_check_trigger_arg_is.exit260, %if.end104.if.end114_crit_edge
  %err.9 = phi i32 [ %or113, %comedi_check_trigger_arg_is.exit260 ], [ %err.8, %if.end104.if.end114_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.9)
  %tobool115.not = icmp eq i32 %err.9, 0
  br i1 %tobool115.not, label %if.end117, label %if.end114.cleanup_crit_edge

if.end114.cleanup_crit_edge:                      ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end117:                                        ; preds = %if.end114
  %chanlist = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %82 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %chanlist, align 4
  %tobool118.not = icmp eq ptr %83, null
  br i1 %tobool118.not, label %if.end117.if.end125.thread_crit_edge, label %land.lhs.true119

if.end117.if.end125.thread_crit_edge:             ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end125.thread

land.lhs.true119:                                 ; preds = %if.end117
  %84 = ptrtoint ptr %chanlist_len82 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %chanlist_len82, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp121.not = icmp eq i32 %85, 0
  br i1 %cmp121.not, label %land.lhs.true119.if.end125.thread_crit_edge, label %if.end125

land.lhs.true119.if.end125.thread_crit_edge:      ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end125.thread

if.end125:                                        ; preds = %land.lhs.true119
  %call123 = call fastcc i32 @cb_pcidas_ai_check_chanlist(ptr noundef %dev, ptr noundef %s, ptr noundef %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %phi.cmp = icmp eq i32 %call123, 0
  br i1 %phi.cmp, label %if.end125.if.end125.thread_crit_edge, label %if.end125.cleanup_crit_edge

if.end125.cleanup_crit_edge:                      ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end125.if.end125.thread_crit_edge:             ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end125.thread

if.end125.thread:                                 ; preds = %if.end125.if.end125.thread_crit_edge, %land.lhs.true119.if.end125.thread_crit_edge, %if.end117.if.end125.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end125.thread, %if.end125.cleanup_crit_edge, %if.end114.cleanup_crit_edge, %if.end93.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %land.lhs.true37.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 2, %if.end44.cleanup_crit_edge ], [ 3, %if.end93.cleanup_crit_edge ], [ 4, %if.end114.cleanup_crit_edge ], [ 0, %if.end125.thread ], [ 5, %if.end125.cleanup_crit_edge ], [ 2, %land.lhs.true37.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cb_pcidas_ai_cancel(ptr noundef %dev, ptr nocapture noundef readnone %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %spinlock = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  %ctrl = getelementptr inbounds %struct.cb_pcidas_private, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctrl, align 4
  %and = and i32 %3, -21
  store i32 %and, ptr %ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctrl, align 4
  %conv9 = trunc i32 %5 to i16
  %6 = tail call i16 @llvm.bswap.i16(i16 %conv9)
  %pcibar1 = getelementptr inbounds %struct.cb_pcidas_private, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %pcibar1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pcibar1, align 4
  %and10 = and i32 %8, 1048575
  %add11 = or i32 %and10, -18874368
  %9 = inttoptr i32 %add11 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 %6) #6, !srcloc !110
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %pcibar1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pcibar1, align 4
  %add18 = add i32 %11, 4
  %and19 = and i32 %add18, 1048575
  %add20 = or i32 %and19, -18874368
  %12 = inttoptr i32 %add20 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %12, i16 0) #6, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %pcibar1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pcibar1, align 4
  %add26 = add i32 %14, 2
  %and27 = and i32 %add26, 1048575
  %add28 = or i32 %and27, -18874368
  %15 = inttoptr i32 %add28 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %15, i16 0) #6, !srcloc !110
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cb_pcidas_ao_fifo_insn_write(ptr noundef %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %shr = lshr i32 %3, 16
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  %4 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %readback, align 4
  %arrayidx = getelementptr i32, ptr %5, i32 %and
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  %pcibar4 = getelementptr inbounds %struct.cb_pcidas_private, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %pcibar4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pcibar4, align 4
  %add = add i32 %9, 2
  %and3 = and i32 %add, 1048575
  %add4 = or i32 %and3, -18874368
  %10 = inttoptr i32 %add4 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %10, i16 0) #6, !srcloc !110
  %spinlock = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  %and13 = and i32 %3, 1
  %mul = shl nuw nsw i32 %and13, 1
  %add14 = or i32 %mul, 8
  %shl = shl i32 3, %add14
  %neg = xor i32 %shl, -127
  %ao_ctrl = getelementptr inbounds %struct.cb_pcidas_private, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %ao_ctrl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ao_ctrl, align 4
  %and16 = and i32 %12, %neg
  %and17 = and i32 %shr, 3
  %shl21 = shl i32 %and17, %add14
  %shl25 = shl nuw nsw i32 32, %and13
  %or22 = or i32 %shl21, %shl25
  %or27 = or i32 %or22, 6
  %or29 = or i32 %and16, %or27
  store i32 %or29, ptr %ao_ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !126
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %ao_ctrl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ao_ctrl, align 4
  %conv34 = trunc i32 %14 to i16
  %15 = tail call i16 @llvm.bswap.i16(i16 %conv34)
  %pcibar1 = getelementptr inbounds %struct.cb_pcidas_private, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %pcibar1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pcibar1, align 4
  %add35 = add i32 %17, 8
  %and36 = and i32 %add35, 1048575
  %add37 = or i32 %and36, -18874368
  %18 = inttoptr i32 %add37 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %18, i16 %15) #6, !srcloc !110
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call8) #6
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %19 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp4073.not = icmp eq i32 %20, 0
  br i1 %cmp4073.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.074 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx42 = getelementptr i32, ptr %data, i32 %i.074
  %21 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx42, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !127
  tail call void @arm_heavy_mb() #6
  %conv46 = trunc i32 %22 to i16
  %23 = tail call i16 @llvm.bswap.i16(i16 %conv46)
  %24 = ptrtoint ptr %pcibar4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pcibar4, align 4
  %and49 = and i32 %25, 1048575
  %add50 = or i32 %and49, -18874368
  %26 = inttoptr i32 %add50 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %26, i16 %23) #6, !srcloc !110
  %inc = add nuw i32 %i.074, 1
  %27 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %n, align 4
  %cmp40 = icmp ult i32 %inc, %28
  br i1 %cmp40, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %val.0.lcssa = phi i32 [ %7, %entry.for.end_crit_edge ], [ %22, %for.body.for.end_crit_edge ]
  %29 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %readback, align 4
  %arrayidx53 = getelementptr i32, ptr %30, i32 %and
  %31 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %val.0.lcssa, ptr %arrayidx53, align 4
  %32 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %n, align 4
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cb_pcidas_ao_nofifo_insn_write(ptr noundef %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %shr = lshr i32 %3, 16
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  %4 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %readback, align 4
  %arrayidx = getelementptr i32, ptr %5, i32 %and
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %spinlock = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  %and7 = shl i32 %3, 1
  %mul = and i32 %and7, 2
  %add = or i32 %mul, 8
  %shl = shl i32 3, %add
  %neg = xor i32 %shl, -131
  %ao_ctrl = getelementptr inbounds %struct.cb_pcidas_private, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %ao_ctrl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ao_ctrl, align 4
  %and8 = and i32 %neg, %9
  %and9 = and i32 %shr, 3
  %shl13 = shl i32 %and9, %add
  %or14 = or i32 %shl13, 2
  %or16 = or i32 %and8, %or14
  store i32 %or16, ptr %ao_ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %ao_ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ao_ctrl, align 4
  %conv21 = trunc i32 %11 to i16
  %12 = tail call i16 @llvm.bswap.i16(i16 %conv21)
  %pcibar1 = getelementptr inbounds %struct.cb_pcidas_private, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %pcibar1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pcibar1, align 4
  %add22 = add i32 %14, 8
  %and23 = and i32 %add22, 1048575
  %add24 = or i32 %and23, -18874368
  %15 = inttoptr i32 %add24 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %15, i16 %12) #6, !srcloc !110
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call4) #6
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %16 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp2760.not = icmp eq i32 %17, 0
  br i1 %cmp2760.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pcibar4 = getelementptr inbounds %struct.cb_pcidas_private, ptr %1, i32 0, i32 4
  %mul34 = shl nuw nsw i32 %and, 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.061 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx29 = getelementptr i32, ptr %data, i32 %i.061
  %18 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx29, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  tail call void @arm_heavy_mb() #6
  %conv33 = trunc i32 %19 to i16
  %20 = tail call i16 @llvm.bswap.i16(i16 %conv33)
  %21 = ptrtoint ptr %pcibar4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pcibar4, align 4
  %add36 = add i32 %22, %mul34
  %and37 = and i32 %add36, 1048575
  %add38 = or i32 %and37, -18874368
  %23 = inttoptr i32 %add38 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %23, i16 %20) #6, !srcloc !110
  %inc = add nuw i32 %i.061, 1
  %24 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %n, align 4
  %cmp27 = icmp ult i32 %inc, %25
  br i1 %cmp27, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %val.0.lcssa = phi i32 [ %7, %entry.for.end_crit_edge ], [ %19, %for.body.for.end_crit_edge ]
  %26 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %readback, align 4
  %arrayidx41 = getelementptr i32, ptr %27, i32 %and
  %28 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %val.0.lcssa, ptr %arrayidx41, align 4
  %29 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %n, align 4
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cb_pcidas_ao_cmdtest(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef %cmd) #2 align 64 {
entry:
  %arg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %start_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 2
  %4 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %start_src, align 4
  %and.i = and i32 %5, 128
  store i32 %and.i, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %5)
  %cmp1.not.i = icmp eq i32 %and.i, %5
  %or.cond.i = and i1 %cmp.i, %cmp1.not.i
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 4
  %6 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %scan_begin_src, align 4
  %and.i104 = and i32 %7, 80
  store i32 %and.i104, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i104)
  %cmp.i105 = icmp ne i32 %and.i104, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i104, i32 %7)
  %cmp1.not.i106 = icmp eq i32 %and.i104, %7
  %or.cond.i107 = and i1 %cmp.i105, %cmp1.not.i106
  %8 = select i1 %or.cond.i, i1 %or.cond.i107, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %9 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %convert_src, align 4
  %and.i109 = and i32 %10, 2
  store i32 %and.i109, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i109)
  %cmp.i110 = icmp ne i32 %and.i109, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i109, i32 %10)
  %cmp1.not.i111 = icmp eq i32 %and.i109, %10
  %or.cond.i112 = and i1 %cmp.i110, %cmp1.not.i111
  %11 = select i1 %8, i1 %or.cond.i112, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %12 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %scan_end_src, align 4
  %and.i114 = and i32 %13, 32
  store i32 %and.i114, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i114)
  %cmp.i115 = icmp ne i32 %and.i114, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i114, i32 %13)
  %cmp1.not.i116 = icmp eq i32 %and.i114, %13
  %or.cond.i117 = and i1 %cmp.i115, %cmp1.not.i116
  %14 = select i1 %11, i1 %or.cond.i117, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %15 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %stop_src, align 4
  %and.i119 = and i32 %16, 33
  store i32 %and.i119, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i119)
  %cmp.i120 = icmp ne i32 %and.i119, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i119, i32 %16)
  %cmp1.not.i121 = icmp eq i32 %and.i119, %16
  %or.cond.i122 = and i1 %cmp.i120, %cmp1.not.i121
  %17 = select i1 %14, i1 %or.cond.i122, i1 false
  br i1 %17, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %18 = tail call i32 @llvm.ctpop.i32(i32 %7) #6, !range !121
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp.not.i = icmp ult i32 %18, 2
  %19 = tail call i32 @llvm.ctpop.i32(i32 %16) #6, !range !121
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp.not.i124 = icmp ult i32 %19, 2
  %20 = select i1 %cmp.not.i, i1 %cmp.not.i124, i1 false
  br i1 %20, label %if.end17, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %21 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.not.i126 = icmp eq i32 %22, 0
  br i1 %cmp.not.i126, label %if.end17.comedi_check_trigger_arg_is.exit_crit_edge, label %if.then.i

if.end17.comedi_check_trigger_arg_is.exit_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %start_arg, align 4
  br label %comedi_check_trigger_arg_is.exit

comedi_check_trigger_arg_is.exit:                 ; preds = %if.then.i, %if.end17.comedi_check_trigger_arg_is.exit_crit_edge
  %retval.0.i127 = phi i32 [ -22, %if.then.i ], [ 0, %if.end17.comedi_check_trigger_arg_is.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp = icmp eq i32 %7, 16
  br i1 %cmp, label %if.then21, label %comedi_check_trigger_arg_is.exit.if.end24_crit_edge

comedi_check_trigger_arg_is.exit.if.end24_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then21:                                        ; preds = %comedi_check_trigger_arg_is.exit
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %ao_scan_speed = getelementptr inbounds %struct.cb_pcidas_board, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %ao_scan_speed to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ao_scan_speed, align 4
  %26 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %25)
  %cmp.i128 = icmp ult i32 %27, %25
  br i1 %cmp.i128, label %if.then.i129, label %if.then21.comedi_check_trigger_arg_min.exit_crit_edge

if.then21.comedi_check_trigger_arg_min.exit_crit_edge: ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_min.exit

if.then.i129:                                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %25, ptr %scan_begin_arg, align 4
  br label %comedi_check_trigger_arg_min.exit

comedi_check_trigger_arg_min.exit:                ; preds = %if.then.i129, %if.then21.comedi_check_trigger_arg_min.exit_crit_edge
  %retval.0.i130 = phi i32 [ -22, %if.then.i129 ], [ 0, %if.then21.comedi_check_trigger_arg_min.exit_crit_edge ]
  %or23 = or i32 %retval.0.i130, %retval.0.i127
  br label %if.end24

if.end24:                                         ; preds = %comedi_check_trigger_arg_min.exit, %comedi_check_trigger_arg_is.exit.if.end24_crit_edge
  %err.0 = phi i32 [ %or23, %comedi_check_trigger_arg_min.exit ], [ %retval.0.i127, %comedi_check_trigger_arg_is.exit.if.end24_crit_edge ]
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %29 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %chanlist_len, align 4
  %31 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %30)
  %cmp.not.i131 = icmp eq i32 %32, %30
  br i1 %cmp.not.i131, label %if.end24.comedi_check_trigger_arg_is.exit134_crit_edge, label %if.then.i132

if.end24.comedi_check_trigger_arg_is.exit134_crit_edge: ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit134

if.then.i132:                                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %30, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit134

comedi_check_trigger_arg_is.exit134:              ; preds = %if.then.i132, %if.end24.comedi_check_trigger_arg_is.exit134_crit_edge
  %retval.0.i133 = phi i32 [ -22, %if.then.i132 ], [ 0, %if.end24.comedi_check_trigger_arg_is.exit134_crit_edge ]
  %or26 = or i32 %retval.0.i133, %err.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %16)
  %cmp28 = icmp eq i32 %16, 32
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %34 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i135 = icmp eq i32 %35, 0
  br i1 %cmp28, label %if.then29, label %if.else

if.then29:                                        ; preds = %comedi_check_trigger_arg_is.exit134
  br i1 %cmp.i135, label %if.then29.if.end35.sink.split_crit_edge, label %if.then29.if.end35_crit_edge

if.then29.if.end35_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then29.if.end35.sink.split_crit_edge:          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35.sink.split

if.else:                                          ; preds = %comedi_check_trigger_arg_is.exit134
  br i1 %cmp.i135, label %if.else.if.end35_crit_edge, label %if.else.if.end35.sink.split_crit_edge

if.else.if.end35.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35.sink.split

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.end35.sink.split:                              ; preds = %if.else.if.end35.sink.split_crit_edge, %if.then29.if.end35.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then29.if.end35.sink.split_crit_edge ], [ 0, %if.else.if.end35.sink.split_crit_edge ]
  %36 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %.sink, ptr %stop_arg, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.end35.sink.split, %if.else.if.end35_crit_edge, %if.then29.if.end35_crit_edge
  %call30.pn = phi i32 [ 0, %if.then29.if.end35_crit_edge ], [ 0, %if.else.if.end35_crit_edge ], [ -22, %if.end35.sink.split ]
  %err.1 = or i32 %or26, %call30.pn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool36.not = icmp eq i32 %err.1, 0
  br i1 %tobool36.not, label %if.end38, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end38:                                         ; preds = %if.end35
  br i1 %cmp, label %if.then41, label %if.end38.if.end49_crit_edge

if.end38.if.end49_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then41:                                        ; preds = %if.end38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg) #6
  %scan_begin_arg42 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %37 = ptrtoint ptr %scan_begin_arg42 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %scan_begin_arg42, align 4
  %39 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arg, align 4
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %3, align 4
  %flags = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 1
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags, align 4
  call void @comedi_8254_cascade_ns_to_timer(ptr noundef %41, ptr noundef nonnull %arg, i32 noundef %43) #6
  %44 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arg, align 4
  %46 = ptrtoint ptr %scan_begin_arg42 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %scan_begin_arg42, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %45)
  %cmp.not.i143 = icmp eq i32 %47, %45
  br i1 %cmp.not.i143, label %comedi_check_trigger_arg_is.exit146.thread, label %comedi_check_trigger_arg_is.exit146

comedi_check_trigger_arg_is.exit146.thread:       ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #6
  br label %if.end49

comedi_check_trigger_arg_is.exit146:              ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %scan_begin_arg42 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %45, ptr %scan_begin_arg42, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #6
  br label %cleanup

if.end49:                                         ; preds = %comedi_check_trigger_arg_is.exit146.thread, %if.end38.if.end49_crit_edge
  %chanlist = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %49 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %chanlist, align 4
  %tobool50.not = icmp eq ptr %50, null
  br i1 %tobool50.not, label %if.end49.if.end56.thread_crit_edge, label %land.lhs.true

if.end49.if.end56.thread_crit_edge:               ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56.thread

land.lhs.true:                                    ; preds = %if.end49
  %51 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp52.not = icmp eq i32 %52, 0
  br i1 %cmp52.not, label %land.lhs.true.if.end56.thread_crit_edge, label %if.end56

land.lhs.true.if.end56.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56.thread

if.end56:                                         ; preds = %land.lhs.true
  %call54 = call fastcc i32 @cb_pcidas_ao_check_chanlist(ptr noundef %dev, ptr noundef %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %phi.cmp103 = icmp eq i32 %call54, 0
  br i1 %phi.cmp103, label %if.end56.if.end56.thread_crit_edge, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end56.if.end56.thread_crit_edge:               ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56.thread

if.end56.thread:                                  ; preds = %if.end56.if.end56.thread_crit_edge, %land.lhs.true.if.end56.thread_crit_edge, %if.end49.if.end56.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end56.thread, %if.end56.cleanup_crit_edge, %comedi_check_trigger_arg_is.exit146, %if.end35.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ], [ 3, %if.end35.cleanup_crit_edge ], [ 4, %comedi_check_trigger_arg_is.exit146 ], [ 0, %if.end56.thread ], [ 5, %if.end56.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cb_pcidas_ao_cmd(ptr noundef %dev, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %async1 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %2 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %async1, align 4
  %spinlock = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  %chanlist_len = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 13
  %4 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp793.not = icmp eq i32 %5, 0
  br i1 %cmp793.not, label %entry.do.body19_crit_edge, label %for.body.lr.ph

entry.do.body19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body19

for.body.lr.ph:                                   ; preds = %entry
  %chanlist = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 12
  %ao_ctrl = getelementptr inbounds %struct.cb_pcidas_private, ptr %1, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.094 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chanlist, align 4
  %arrayidx = getelementptr i32, ptr %7, i32 %i.094
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %shr = lshr i32 %9, 16
  %and12 = and i32 %9, 1
  %shl = shl nuw nsw i32 32, %and12
  %10 = ptrtoint ptr %ao_ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ao_ctrl, align 4
  %or = or i32 %shl, %11
  %and13 = and i32 %shr, 3
  %mul = shl nuw nsw i32 %and12, 1
  %add15 = or i32 %mul, 8
  %shl16 = shl i32 %and13, %add15
  %or18 = or i32 %or, %shl16
  store i32 %or18, ptr %ao_ctrl, align 4
  %inc = add nuw i32 %i.094, 1
  %12 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chanlist_len, align 4
  %cmp7 = icmp ult i32 %inc, %13
  br i1 %cmp7, label %for.body.for.body_crit_edge, label %for.body.do.body19_crit_edge

for.body.do.body19_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body19

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body19:                                        ; preds = %for.body.do.body19_crit_edge, %entry.do.body19_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !130
  tail call void @arm_heavy_mb() #6
  %ao_ctrl22 = getelementptr inbounds %struct.cb_pcidas_private, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %ao_ctrl22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ao_ctrl22, align 4
  %conv23 = trunc i32 %15 to i16
  %16 = tail call i16 @llvm.bswap.i16(i16 %conv23)
  %pcibar1 = getelementptr inbounds %struct.cb_pcidas_private, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %pcibar1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pcibar1, align 4
  %add24 = add i32 %18, 8
  %and25 = and i32 %add24, 1048575
  %add26 = or i32 %and25, -18874368
  %19 = inttoptr i32 %add26 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %19, i16 %16) #6, !srcloc !110
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !131
  tail call void @arm_heavy_mb() #6
  %pcibar4 = getelementptr inbounds %struct.cb_pcidas_private, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %pcibar4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pcibar4, align 4
  %add32 = add i32 %21, 2
  %and33 = and i32 %add32, 1048575
  %add34 = or i32 %and33, -18874368
  %22 = inttoptr i32 %add34 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %22, i16 0) #6, !srcloc !110
  %scan_begin_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 4
  %23 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %24)
  %cmp36 = icmp eq i32 %24, 16
  br i1 %cmp36, label %if.then, label %do.body19.do.body40_crit_edge

do.body19.do.body40_crit_edge:                    ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body40

if.then:                                          ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  tail call void @comedi_8254_update_divisors(ptr noundef %26) #6
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  tail call void @comedi_8254_pacer_enable(ptr noundef %28, i32 noundef 1, i32 noundef 2, i1 noundef zeroext true) #6
  br label %do.body40

do.body40:                                        ; preds = %if.then, %do.body19.do.body40_crit_edge
  %call48 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  %29 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %scan_begin_src, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %30, label %sw.default [
    i32 16, label %do.body40.sw.epilog_crit_edge
    i32 64, label %sw.bb56
  ]

do.body40.sw.epilog_crit_edge:                    ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb56:                                          ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.default:                                       ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call48) #6
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %32 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.31) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb56, %do.body40.sw.epilog_crit_edge
  %.sink95 = phi i32 [ 24, %sw.bb56 ], [ 8, %do.body40.sw.epilog_crit_edge ]
  %34 = ptrtoint ptr %ao_ctrl22 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ao_ctrl22, align 4
  %or58 = or i32 %35, %.sink95
  store i32 %or58, ptr %ao_ctrl22, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call48) #6
  %inttrig = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 20
  %36 = ptrtoint ptr %inttrig to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @cb_pcidas_ao_inttrig, ptr %inttrig, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default
  %retval.0 = phi i32 [ -1, %sw.default ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cb_pcidas_ao_cancel(ptr noundef %dev, ptr nocapture noundef readnone %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %spinlock = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  %ctrl = getelementptr inbounds %struct.cb_pcidas_private, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctrl, align 4
  %and = and i32 %3, -4105
  store i32 %and, ptr %ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !132
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctrl, align 4
  %conv9 = trunc i32 %5 to i16
  %6 = tail call i16 @llvm.bswap.i16(i16 %conv9)
  %pcibar1 = getelementptr inbounds %struct.cb_pcidas_private, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %pcibar1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pcibar1, align 4
  %and10 = and i32 %8, 1048575
  %add11 = or i32 %and10, -18874368
  %9 = inttoptr i32 %add11 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 %6) #6, !srcloc !110
  %ao_ctrl = getelementptr inbounds %struct.cb_pcidas_private, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %ao_ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ao_ctrl, align 4
  %and13 = and i32 %11, -27
  store i32 %and13, ptr %ao_ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !133
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %ao_ctrl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ao_ctrl, align 4
  %conv18 = trunc i32 %13 to i16
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv18)
  %15 = ptrtoint ptr %pcibar1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pcibar1, align 4
  %add20 = add i32 %16, 8
  %and21 = and i32 %add20, 1048575
  %add22 = or i32 %and21, -18874368
  %17 = inttoptr i32 %add22 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %17, i16 %14) #6, !srcloc !110
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call2) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @subdev_8255_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cb_pcidas_eeprom_insn_read(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %0 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp72.not = icmp eq i32 %1, 0
  br i1 %cmp72.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private, align 4
  %amcc = getelementptr inbounds %struct.cb_pcidas_private, ptr %5, i32 0, i32 1
  %conv = trunc i32 %3 to i8
  %and = lshr i32 %3, 8
  %conv25 = trunc i32 %and to i8
  br label %for.body

for.body:                                         ; preds = %if.end42.for.body_crit_edge, %for.body.lr.ph
  %i.073 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end42.for.body_crit_edge ]
  %call = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @cb_pcidas_eeprom_ready, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !134
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %amcc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %amcc, align 4
  %add = add i32 %7, 63
  %and1 = and i32 %add, 1048575
  %add2 = or i32 %and1, -18874368
  %8 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 -128) #6, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !136
  tail call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %amcc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %amcc, align 4
  %add9 = add i32 %10, 62
  %and10 = and i32 %add9, 1048575
  %add11 = or i32 %and10, -18874368
  %11 = inttoptr i32 %add11 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %conv) #6, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !137
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %amcc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %amcc, align 4
  %add17 = add i32 %13, 63
  %and18 = and i32 %add17, 1048575
  %add19 = or i32 %and18, -18874368
  %14 = inttoptr i32 %add19 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 -96) #6, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !138
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %amcc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %amcc, align 4
  %add27 = add i32 %16, 62
  %and28 = and i32 %add27, 1048575
  %add29 = or i32 %and28, -18874368
  %17 = inttoptr i32 %add29 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %conv25) #6, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !139
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %amcc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %amcc, align 4
  %add35 = add i32 %19, 63
  %and36 = and i32 %add35, 1048575
  %add37 = or i32 %and36, -18874368
  %20 = inttoptr i32 %add37 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 -32) #6, !srcloc !135
  %call39 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @cb_pcidas_eeprom_ready, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end42:                                         ; preds = %do.body
  %21 = ptrtoint ptr %amcc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %amcc, align 4
  %add44 = add i32 %22, 62
  %and45 = and i32 %add44, 1048575
  %add46 = or i32 %and45, -18874368
  %23 = inttoptr i32 %add46 to ptr
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %23) #6, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !141
  %conv49 = zext i8 %24 to i32
  %arrayidx = getelementptr i32, ptr %data, i32 %i.073
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv49, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.073, 1
  %26 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %27
  br i1 %cmp, label %if.end42.for.body_crit_edge, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end42.for.body_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %if.end42.cleanup_crit_edge, %do.body.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %27, %if.end42.cleanup_crit_edge ], [ %call39, %do.body.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cb_pcidas_caldac_insn_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %shl = shl nuw nsw i32 %and, 8
  %or = or i32 %5, %shl
  tail call fastcc void @cb_pcidas_calib_write(ptr noundef %dev, i32 noundef %or, i32 noundef 11, i1 noundef zeroext false)
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
define internal fastcc void @cb_pcidas_calib_write(ptr nocapture noundef readonly %dev, i32 noundef %val, i32 noundef %len, i1 noundef zeroext %trimpot) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %calib_src = getelementptr inbounds %struct.cb_pcidas_private, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %calib_src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %calib_src, align 4
  %and = shl i32 %3, 11
  %shl = and i32 %and, 14336
  %or = or i32 %shl, 16384
  br i1 %trimpot, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %or1 = or i32 %shl, 16896
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !142
  tail call void @arm_heavy_mb() #6
  %conv = trunc i32 %or1 to i16
  %4 = lshr exact i16 %conv, 8
  %pcibar1 = getelementptr inbounds %struct.cb_pcidas_private, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %pcibar1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pcibar1, align 4
  %add = add i32 %6, 6
  %and2 = and i32 %add, 1048575
  %add3 = or i32 %and2, -18874368
  %7 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %7, i16 %4) #6, !srcloc !110
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %calib_bits.0 = phi i32 [ %or1, %if.then ], [ %or, %entry.if.end_crit_edge ]
  %sub = add i32 %len, -1
  %shl4 = shl nuw i32 1, %sub
  %pcibar116 = getelementptr inbounds %struct.cb_pcidas_private, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %bit.062 = phi i32 [ %shl4, %if.end ], [ %shr, %for.body.for.body_crit_edge ]
  %calib_bits.161 = phi i32 [ %calib_bits.0, %if.end ], [ %calib_bits.2, %for.body.for.body_crit_edge ]
  %and6 = and i32 %bit.062, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %and10 = and i32 %calib_bits.161, -32769
  %masksel = select i1 %tobool7.not, i32 0, i32 32768
  %calib_bits.2 = or i32 %masksel, %and10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  %conv15 = trunc i32 %calib_bits.2 to i16
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv15)
  %10 = ptrtoint ptr %pcibar116 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pcibar116, align 4
  %add17 = add i32 %11, 6
  %and18 = and i32 %add17, 1048575
  %add19 = or i32 %and18, -18874368
  %12 = inttoptr i32 %add19 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %12, i16 %9) #6, !srcloc !110
  %shr = lshr i32 %bit.062, 1
  %tobool5.not = icmp ult i32 %bit.062, 2
  br i1 %tobool5.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #6
  %14 = ptrtoint ptr %calib_src to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %calib_src, align 4
  %and22 = shl i32 %15, 11
  %shl23 = and i32 %and22, 14336
  br i1 %trimpot, label %for.end.do.body38_crit_edge, label %do.body27

for.end.do.body38_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %.pre = trunc i32 %shl23 to i16
  %.pre63 = lshr exact i16 %.pre, 8
  br label %do.body38

do.body27:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  tail call void @arm_heavy_mb() #6
  %16 = trunc i32 %shl23 to i16
  %conv31 = lshr exact i16 %16, 8
  %17 = or i16 %conv31, 65
  %18 = ptrtoint ptr %pcibar116 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pcibar116, align 4
  %add33 = add i32 %19, 6
  %and34 = and i32 %add33, 1048575
  %add35 = or i32 %and34, -18874368
  %20 = inttoptr i32 %add35 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %20, i16 %17) #6, !srcloc !110
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #6
  br label %do.body38

do.body38:                                        ; preds = %do.body27, %for.end.do.body38_crit_edge
  %conv41.pre-phi = phi i16 [ %.pre63, %for.end.do.body38_crit_edge ], [ %conv31, %do.body27 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !145
  tail call void @arm_heavy_mb() #6
  %22 = or i16 %conv41.pre-phi, 64
  %23 = ptrtoint ptr %pcibar116 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pcibar116, align 4
  %add43 = add i32 %24, 6
  %and44 = and i32 %add43, 1048575
  %add45 = or i32 %and44, -18874368
  %25 = inttoptr i32 %add45 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %25, i16 %22) #6, !srcloc !110
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cb_pcidas_trimpot_insn_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then3:                                         ; preds = %if.then
  %board_ptr.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %10 = ptrtoint ptr %board_ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %board_ptr.i, align 4
  %has_ad8402.i = getelementptr inbounds %struct.cb_pcidas_board, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %has_ad8402.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %has_ad8402.i, align 4
  %13 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i = shl nuw nsw i32 %and, 8
  %or.i = or i32 %5, %shl.i
  tail call fastcc void @cb_pcidas_calib_write(ptr noundef %dev, i32 noundef %or.i, i32 noundef 10, i1 noundef zeroext true) #6
  br label %cb_pcidas_trimpot_write.exit

if.else.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @cb_pcidas_calib_write(ptr noundef %dev, i32 noundef %5, i32 noundef 7, i1 noundef zeroext true) #6
  br label %cb_pcidas_trimpot_write.exit

cb_pcidas_trimpot_write.exit:                     ; preds = %if.else.i, %if.then.i
  %14 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %readback, align 4
  %arrayidx5 = getelementptr i32, ptr %15, i32 %and
  %16 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %5, ptr %arrayidx5, align 4
  br label %if.end6

if.end6:                                          ; preds = %cb_pcidas_trimpot_write.exit, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %17 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n, align 4
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cb_pcidas_trimpot_write(ptr nocapture noundef readonly %dev, i32 noundef %chan, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %has_ad8402 = getelementptr inbounds %struct.cb_pcidas_board, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %has_ad8402 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %has_ad8402, align 4
  %3 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %shl = shl i32 %chan, 8
  %or = or i32 %shl, %val
  tail call fastcc void @cb_pcidas_calib_write(ptr noundef %dev, i32 noundef %or, i32 noundef 10, i1 noundef zeroext true)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @cb_pcidas_calib_write(ptr noundef %dev, i32 noundef %val, i32 noundef 7, i1 noundef zeroext true)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cb_pcidas_dac08_insn_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %10 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private.i, align 4
  %calib_src.i = getelementptr inbounds %struct.cb_pcidas_private, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %calib_src.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %calib_src.i, align 4
  %and.i = shl i32 %13, 11
  %shl.i = and i32 %and.i, 14336
  %or.i = or i32 %shl.i, %5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %14 = trunc i32 %or.i to i16
  %conv.i = or i16 %14, 16384
  %15 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #6
  %pcibar1.i = getelementptr inbounds %struct.cb_pcidas_private, ptr %11, i32 0, i32 2
  %16 = ptrtoint ptr %pcibar1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pcibar1.i, align 4
  %add.i = add i32 %17, 6
  %and2.i = and i32 %add.i, 1048575
  %add3.i = or i32 %and2.i, -18874368
  %18 = inttoptr i32 %add3.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %18, i16 %15) #6, !srcloc !110
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !147
  tail call void @arm_heavy_mb() #6
  %conv8.i = or i16 %14, 17408
  %20 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #6
  %21 = ptrtoint ptr %pcibar1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pcibar1.i, align 4
  %add10.i = add i32 %22, 6
  %and11.i = and i32 %add10.i, 1048575
  %add12.i = or i32 %and11.i, -18874368
  %23 = inttoptr i32 %add12.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %23, i16 %20) #6, !srcloc !110
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  tail call void @arm_heavy_mb() #6
  %25 = ptrtoint ptr %pcibar1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pcibar1.i, align 4
  %add19.i = add i32 %26, 6
  %and20.i = and i32 %add19.i, 1048575
  %add21.i = or i32 %and20.i, -18874368
  %27 = inttoptr i32 %add21.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %27, i16 %15) #6, !srcloc !110
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748) #6
  %29 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %readback, align 4
  %arrayidx5 = getelementptr i32, ptr %30, i32 %and
  %31 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %5, ptr %arrayidx5, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %32 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %n, align 4
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cb_pcidas_dac08_write(ptr nocapture noundef readonly %dev, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %calib_src = getelementptr inbounds %struct.cb_pcidas_private, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %calib_src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %calib_src, align 4
  %and = shl i32 %3, 11
  %shl = and i32 %and, 14336
  %or = or i32 %shl, %val
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %4 = trunc i32 %or to i16
  %conv = or i16 %4, 16384
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %pcibar1 = getelementptr inbounds %struct.cb_pcidas_private, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %pcibar1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pcibar1, align 4
  %add = add i32 %7, 6
  %and2 = and i32 %add, 1048575
  %add3 = or i32 %and2, -18874368
  %8 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %8, i16 %5) #6, !srcloc !110
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !147
  tail call void @arm_heavy_mb() #6
  %conv8 = or i16 %4, 17408
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv8)
  %11 = ptrtoint ptr %pcibar1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pcibar1, align 4
  %add10 = add i32 %12, 6
  %and11 = and i32 %add10, 1048575
  %add12 = or i32 %and11, -18874368
  %13 = inttoptr i32 %add12 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %13, i16 %10) #6, !srcloc !110
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %pcibar1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pcibar1, align 4
  %add19 = add i32 %16, 6
  %and20 = and i32 %add19, 1048575
  %add21 = or i32 %and20, -18874368
  %17 = inttoptr i32 %add21 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %17, i16 %5) #6, !srcloc !110
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_handle_events(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_nsamples_left(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_read_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_timeout(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cb_pcidas_ai_eoc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %pcibar1 = getelementptr inbounds %struct.cb_pcidas_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pcibar1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pcibar1, align 4
  %add = add i32 %3, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %4) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  %6 = and i16 %5, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  %. = select i1 %tobool.not, i32 -16, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_update_divisors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_pacer_enable(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_cascade_ns_to_timer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cb_pcidas_ai_check_chanlist(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %cmp61 = icmp ugt i32 %5, 1
  br i1 %cmp61, label %for.body.lr.ph, label %entry.cleanup40_crit_edge

entry.cleanup40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup40

for.body.lr.ph:                                   ; preds = %entry
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 3
  %6 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_chan, align 4
  br label %for.body

for.cond:                                         ; preds = %if.end16
  %inc = add nuw i32 %i.062, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.cond.cleanup40_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.cleanup40_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup40

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.062 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx5 = getelementptr i32, ptr %1, i32 %i.062
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5, align 4
  %and6 = and i32 %9, 65535
  %add = add i32 %i.062, %and
  %rem = urem i32 %add, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %and6, i32 %rem)
  %cmp11.not = icmp eq i32 %and6, %rem
  br i1 %cmp11.not, label %if.end16, label %do.body

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb_pcidas_ai_check_chanlist.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cb_pcidas_ai_check_chanlist, %cleanup40)) #6
          to label %if.then15 [label %cleanup40], !srcloc !96

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %10 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb_pcidas_ai_check_chanlist.__UNIQUE_ID_ddebug236, ptr noundef %11, ptr noundef nonnull @.str.26) #6
  br label %cleanup40

if.end16:                                         ; preds = %for.body
  %shr952 = xor i32 %9, %3
  %12 = and i32 %shr952, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp17.not = icmp eq i32 %12, 0
  br i1 %cmp17.not, label %for.cond, label %do.body19

do.body19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb_pcidas_ai_check_chanlist.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cb_pcidas_ai_check_chanlist, %cleanup40)) #6
          to label %if.then33 [label %cleanup40], !srcloc !96

if.then33:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev34 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %13 = ptrtoint ptr %class_dev34 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %class_dev34, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb_pcidas_ai_check_chanlist.__UNIQUE_ID_ddebug237, ptr noundef %14, ptr noundef nonnull @.str.27) #6
  br label %cleanup40

cleanup40:                                        ; preds = %if.then33, %do.body19, %if.then15, %do.body, %for.cond.cleanup40_crit_edge, %entry.cleanup40_crit_edge
  %retval.2 = phi i32 [ -22, %if.then15 ], [ -22, %if.then33 ], [ -22, %do.body ], [ -22, %do.body19 ], [ 0, %entry.cleanup40_crit_edge ], [ 0, %for.cond.cleanup40_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cb_pcidas_ao_check_chanlist(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %0 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.cleanup13_crit_edge

entry.cleanup13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup13

if.then:                                          ; preds = %entry
  %chanlist = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %2 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chanlist, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %and = and i32 %5, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp4.not = icmp eq i32 %and, 0
  br i1 %cmp4.not, label %lor.lhs.false, label %if.then.do.body_crit_edge

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

lor.lhs.false:                                    ; preds = %if.then
  %arrayidx2 = getelementptr i32, ptr %3, i32 1
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2, align 4
  %and3 = and i32 %7, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and3)
  %cmp5.not = icmp eq i32 %and3, 1
  br i1 %cmp5.not, label %lor.lhs.false.cleanup13_crit_edge, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

lor.lhs.false.cleanup13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup13

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %if.then.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb_pcidas_ao_check_chanlist.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cb_pcidas_ao_check_chanlist, %cleanup13)) #6
          to label %if.then10 [label %cleanup13], !srcloc !96

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %8 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb_pcidas_ao_check_chanlist.__UNIQUE_ID_ddebug238, ptr noundef %9, ptr noundef nonnull @.str.30) #6
  br label %cleanup13

cleanup13:                                        ; preds = %if.then10, %do.body, %lor.lhs.false.cleanup13_crit_edge, %entry.cleanup13_crit_edge
  %retval.1 = phi i32 [ -22, %if.then10 ], [ 0, %lor.lhs.false.cleanup13_crit_edge ], [ 0, %entry.cleanup13_crit_edge ], [ -22, %do.body ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cb_pcidas_ao_inttrig(ptr noundef %dev, ptr noundef %s, i32 noundef %trig_num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %async1 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %0 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %async1, align 4
  %start_arg = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 17, i32 3
  %2 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %trig_num)
  %cmp.not = icmp eq i32 %3, %trig_num
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private, align 4
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %6 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %board_ptr, align 4
  %fifo_size = getelementptr inbounds %struct.cb_pcidas_board, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fifo_size, align 4
  %call.i = tail call i32 @comedi_nsamples_left(ptr noundef %s, i32 noundef %9) #6
  %ao_buffer.i = getelementptr inbounds %struct.cb_pcidas_private, ptr %5, i32 0, i32 9
  %call1.i = tail call i32 @comedi_buf_read_samples(ptr noundef %s, ptr noundef %ao_buffer.i, i32 noundef %call.i) #6
  %subdev_flags.i.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 4
  %10 = ptrtoint ptr %subdev_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %subdev_flags.i.i.i, align 4
  %and.i.i.i = and i32 %11, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 1, i32 2
  %shr.i.i = lshr i32 %call1.i, %cond.i.i.i
  %pcibar4.i = getelementptr inbounds %struct.cb_pcidas_private, ptr %5, i32 0, i32 4
  %12 = ptrtoint ptr %pcibar4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pcibar4.i, align 4
  %and.i = and i32 %13, 1048575
  %add3.i = or i32 %and.i, -18874368
  %14 = inttoptr i32 %add3.i to ptr
  tail call void @__raw_writesw(ptr noundef nonnull %14, ptr noundef %ao_buffer.i, i32 noundef %shr.i.i) #6
  %spinlock = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  %ctrl = getelementptr inbounds %struct.cb_pcidas_private, ptr %5, i32 0, i32 5
  %15 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ctrl, align 4
  %or = or i32 %16, 4104
  store i32 %or, ptr %ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !150
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ctrl, align 4
  %19 = trunc i32 %18 to i16
  %conv14 = or i16 %19, 16416
  %20 = tail call i16 @llvm.bswap.i16(i16 %conv14)
  %pcibar1 = getelementptr inbounds %struct.cb_pcidas_private, ptr %5, i32 0, i32 2
  %21 = ptrtoint ptr %pcibar1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pcibar1, align 4
  %and = and i32 %22, 1048575
  %add15 = or i32 %and, -18874368
  %23 = inttoptr i32 %add15 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %23, i16 %20) #6, !srcloc !110
  %ao_ctrl = getelementptr inbounds %struct.cb_pcidas_private, ptr %5, i32 0, i32 7
  %24 = ptrtoint ptr %ao_ctrl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ao_ctrl, align 4
  %or17 = or i32 %25, 7
  store i32 %or17, ptr %ao_ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !151
  tail call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %ao_ctrl to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ao_ctrl, align 4
  %conv22 = trunc i32 %27 to i16
  %28 = tail call i16 @llvm.bswap.i16(i16 %conv22)
  %29 = ptrtoint ptr %pcibar1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pcibar1, align 4
  %add24 = add i32 %30, 8
  %and25 = and i32 %add24, 1048575
  %add26 = or i32 %and25, -18874368
  %31 = inttoptr i32 %add26 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %31, i16 %28) #6, !srcloc !110
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call5) #6
  %inttrig = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 20
  %32 = ptrtoint ptr %inttrig to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %inttrig, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cb_pcidas_eeprom_ready(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %amcc = getelementptr inbounds %struct.cb_pcidas_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %amcc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %amcc, align 4
  %add = add i32 %3, 63
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #6, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !152
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp = icmp sgt i8 %5, -1
  %. = select i1 %cmp, i32 0, i32 -16
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cb_pcidas_pci_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %call = tail call i32 @comedi_pci_auto_config(ptr noundef %dev, ptr noundef nonnull @cb_pcidas_driver, i32 noundef %1) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_auto_unconfig(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_auto_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #4

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !40, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !71, !73, !74, !75, !77, !78, !79, !80, !82}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @__initcall__kmod_cb_pcidas__240_1494_cb_pcidas_driver_init6, !1, !"__initcall__kmod_cb_pcidas__240_1494_cb_pcidas_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/cb_pcidas.c", i32 1494, i32 1}
!2 = !{ptr @__exitcall_cb_pcidas_driver_exit, !1, !"__exitcall_cb_pcidas_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author241, !4, !"__UNIQUE_ID_author241", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/cb_pcidas.c", i32 1496, i32 1}
!5 = !{ptr @__UNIQUE_ID_description242, !6, !"__UNIQUE_ID_description242", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/cb_pcidas.c", i32 1497, i32 1}
!7 = !{ptr @__UNIQUE_ID_file243, !8, !"__UNIQUE_ID_file243", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/cb_pcidas.c", i32 1498, i32 1}
!9 = !{ptr @__UNIQUE_ID_license244, !8, !"__UNIQUE_ID_license244", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/cb_pcidas.c", i32 1462, i32 17}
!12 = !{ptr @cb_pcidas_driver, !13, !"cb_pcidas_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/cb_pcidas.c", i32 1461, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/cb_pcidas.c", i32 1285, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @cb_pcidas_auto_attach.__UNIQUE_ID_ddebug239, !15, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/comedi/drivers/cb_pcidas.c", i32 232, i32 12}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/comedi/drivers/cb_pcidas.c", i32 244, i32 12}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/comedi/drivers/cb_pcidas.c", i32 250, i32 12}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/comedi/drivers/cb_pcidas.c", i32 259, i32 12}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/comedi/drivers/cb_pcidas.c", i32 264, i32 12}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/comedi/drivers/cb_pcidas.c", i32 273, i32 12}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/comedi/drivers/cb_pcidas.c", i32 278, i32 12}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/comedi/drivers/cb_pcidas.c", i32 285, i32 12}
!35 = !{ptr @cb_pcidas_boards, !36, !"cb_pcidas_boards", i1 false, i1 false}
!36 = !{!"../drivers/comedi/drivers/cb_pcidas.c", i32 230, i32 37}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/comedi/drivers/cb_pcidas.c", i32 1121, i32 5}
!39 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @cb_pcidas_ao_interrupt._entry, !38, !"_entry", i1 false, i1 false}
!43 = !{ptr @cb_pcidas_ao_interrupt._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/comedi/drivers/cb_pcidas.c", i32 1185, i32 3}
!46 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @cb_pcidas_ai_interrupt._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @cb_pcidas_ai_interrupt._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/comedi/drivers/cb_pcidas.c", i32 1193, i32 3}
!51 = !{ptr @cb_pcidas_ai_interrupt._entry.18, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @cb_pcidas_ai_interrupt._entry_ptr.20, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @cb_pcidas_alt_ranges, !54, !"cb_pcidas_alt_ranges", i1 false, i1 false}
!54 = !{!"../drivers/comedi/drivers/cb_pcidas.c", i32 182, i32 35}
!55 = !{ptr @cb_pcidas_ranges, !56, !"cb_pcidas_ranges", i1 false, i1 false}
!56 = !{!"../drivers/comedi/drivers/cb_pcidas.c", i32 168, i32 35}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/comedi/drivers/cb_pcidas.c", i32 388, i32 4}
!59 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @cb_pcidas_ai_insn_config._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @cb_pcidas_ai_insn_config._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/comedi/drivers/cb_pcidas.c", i32 660, i32 4}
!64 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @cb_pcidas_ai_check_chanlist.__UNIQUE_ID_ddebug236, !63, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/comedi/drivers/cb_pcidas.c", i32 666, i32 4}
!68 = !{ptr @cb_pcidas_ai_check_chanlist.__UNIQUE_ID_ddebug237, !67, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!69 = !{ptr @cb_pcidas_ao_ranges, !70, !"cb_pcidas_ao_ranges", i1 false, i1 false}
!70 = !{!"../drivers/comedi/drivers/cb_pcidas.c", i32 196, i32 35}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/comedi/drivers/cb_pcidas.c", i32 879, i32 4}
!73 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @cb_pcidas_ao_check_chanlist.__UNIQUE_ID_ddebug238, !72, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/comedi/drivers/cb_pcidas.c", i32 1074, i32 3}
!77 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @cb_pcidas_ao_cmd._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @cb_pcidas_ao_cmd._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @cb_pcidas_pci_driver, !81, !"cb_pcidas_pci_driver", i1 false, i1 false}
!81 = !{!"../drivers/comedi/drivers/cb_pcidas.c", i32 1488, i32 26}
!82 = !{ptr @cb_pcidas_pci_table, !83, !"cb_pcidas_pci_table", i1 false, i1 false}
!83 = !{!"../drivers/comedi/drivers/cb_pcidas.c", i32 1475, i32 35}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{i64 2154646553}
!94 = !{i64 4664854}
!95 = !{i64 2154642142}
!96 = !{i64 2148994601, i64 2148994606, i64 2148994619, i64 2148994663, i64 2148994697, i64 2148994718}
!97 = !{i64 4665272}
!98 = !{i64 2154645654}
!99 = !{i64 2154646001}
!100 = !{i64 2154638277}
!101 = !{i64 2152200330}
!102 = !{i64 2154638594}
!103 = !{i64 4664434}
!104 = !{i64 2154639579}
!105 = !{i64 2154629922}
!106 = !{!"auto-init"}
!107 = !{i64 2154633091}
!108 = !{i64 2154633882}
!109 = !{i64 2154640961}
!110 = !{i64 4664234}
!111 = !{i64 2154586440}
!112 = !{i64 2154586932}
!113 = !{i64 2154587418}
!114 = !{i64 2154588348}
!115 = !{i64 2154611136}
!116 = !{i64 2154611681}
!117 = !{i64 2154612205}
!118 = !{i64 2154613234}
!119 = !{i64 2154614723}
!120 = !{i64 2154615952}
!121 = !{i32 0, i32 33}
!122 = !{i64 2154619764}
!123 = !{i64 2154620333}
!124 = !{i64 2154620918}
!125 = !{i64 2154592182}
!126 = !{i64 2154593774}
!127 = !{i64 2154594292}
!128 = !{i64 2154591051}
!129 = !{i64 2154591607}
!130 = !{i64 2154624451}
!131 = !{i64 2154624967}
!132 = !{i64 2154628147}
!133 = !{i64 2154628794}
!134 = !{i64 2154595187}
!135 = !{i64 4664657}
!136 = !{i64 2154595587}
!137 = !{i64 2154595997}
!138 = !{i64 2154596404}
!139 = !{i64 2154596814}
!140 = !{i64 4665052}
!141 = !{i64 2154597293}
!142 = !{i64 2154597770}
!143 = !{i64 2154598987}
!144 = !{i64 2154600271}
!145 = !{i64 2154601380}
!146 = !{i64 2154602039}
!147 = !{i64 2154603182}
!148 = !{i64 2154604272}
!149 = !{i64 2154584385}
!150 = !{i64 2154622415}
!151 = !{i64 2154623308}
!152 = !{i64 2154594862}
