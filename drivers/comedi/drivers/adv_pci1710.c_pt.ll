; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/adv_pci1710.c_pt.bc'
source_filename = "../drivers/comedi/drivers/adv_pci1710.c"
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
%struct.boardtype = type { ptr, ptr, i8 }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.pci1710_private = type { i32, i32, i32, i32, i8, [32 x i32], i8, i8, i8 }
%struct.comedi_8254 = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x i8], ptr }
%struct.comedi_async = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.comedi_cmd, %struct.wait_queue_head, i32, ptr }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }

@__initcall__kmod_adv_pci1710__240_958_adv_pci1710_driver_init6 = internal global ptr @adv_pci1710_driver_init, section ".initcall6.init", align 4
@adv_pci1710_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr null, ptr @comedi_pci_detach, ptr @pci1710_auto_attach, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@adv_pci1710_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @adv_pci1710_pci_table, ptr @adv_pci1710_pci_probe, ptr @comedi_pci_auto_unconfig, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_adv_pci1710_driver_exit = internal global ptr @adv_pci1710_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author241 = internal constant [49 x i8] c"adv_pci1710.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [82 x i8] c"adv_pci1710.description=Comedi: Advantech PCI-1710 Series Multifunction DAS Cards\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [52 x i8] c"adv_pci1710.file=drivers/comedi/drivers/adv_pci1710\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [24 x i8] c"adv_pci1710.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adv_pci1710\00", [20 x i8] zeroinitializer }, align 32
@boardtypes = internal constant { [5 x %struct.boardtype], [36 x i8] } { [5 x %struct.boardtype] [%struct.boardtype { ptr @.str.1, ptr @pci1710_ai_range, i8 32 }, %struct.boardtype { ptr @.str.2, ptr @pci1710hg_ai_range, i8 32 }, %struct.boardtype { ptr @.str.3, ptr @pci1711_ai_range, i8 -96 }, %struct.boardtype { ptr @.str.4, ptr @pci1710_ai_range, i8 64 }, %struct.boardtype { ptr @.str.5, ptr @pci1711_ai_range, i8 -128 }], [36 x i8] zeroinitializer }, align 32
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pci1710\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pci1710hg\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pci1711\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pci1713\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pci1731\00", [24 x i8] zeroinitializer }, align 32
@pci1710_ai_range = internal constant { { i32, [9 x %struct.comedi_krange] }, [48 x i8] } { { i32, [9 x %struct.comedi_krange] } { i32 9, [9 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }, %struct.comedi_krange { i32 -625000, i32 625000, i32 0 }, %struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 2500000, i32 0 }, %struct.comedi_krange { i32 0, i32 1250000, i32 0 }] }, [48 x i8] zeroinitializer }, align 32
@pci1710hg_ai_range = internal constant { { i32, [12 x %struct.comedi_krange] }, [44 x i8] } { { i32, [12 x %struct.comedi_krange] } { i32 12, [12 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -500000, i32 500000, i32 0 }, %struct.comedi_krange { i32 -50000, i32 50000, i32 0 }, %struct.comedi_krange { i32 -5000, i32 5000, i32 0 }, %struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -1000000, i32 1000000, i32 0 }, %struct.comedi_krange { i32 -100000, i32 100000, i32 0 }, %struct.comedi_krange { i32 -10000, i32 10000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 1000000, i32 0 }, %struct.comedi_krange { i32 0, i32 100000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@pci1711_ai_range = internal constant { { i32, [5 x %struct.comedi_krange] }, [32 x i8] } { { i32, [5 x %struct.comedi_krange] } { i32 5, [5 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }, %struct.comedi_krange { i32 -625000, i32 625000, i32 0 }] }, [32 x i8] zeroinitializer }, align 32
@pci1710_handle_every_sample.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 0, i8 100, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pci1710_handle_every_sample\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/comedi/drivers/adv_pci1710.c\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"A/D FIFO empty (%4x)\0A\00", [42 x i8] zeroinitializer }, align 32
@pci1710_handle_every_sample.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.10, ptr @.str.12, i8 0, i8 102, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"A/D FIFO Full status (Fatal Error!) (%4x)\0A\00", [53 x i8] zeroinitializer }, align 32
@pci1710_ai_read_sample._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.10, i32 320, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"A/D data dropout: received from channel %d, expected %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pci1710_ai_read_sample\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pci1710_ai_read_sample._entry_ptr = internal global ptr @pci1710_ai_read_sample._entry, section ".printk_index", align 4
@pci1710_handle_fifo.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.10, ptr @.str.18, i8 0, i8 111, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pci1710_handle_fifo\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"A/D FIFO not half full!\0A\00", [39 x i8] zeroinitializer }, align 32
@pci1710_handle_fifo.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.10, ptr @.str.19, i8 0, i8 112, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"A/D FIFO Full status (Fatal Error!)\0A\00", [59 x i8] zeroinitializer }, align 32
@pci1710_ai_check_chanlist._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.10, i32 209, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Odd channel cannot be differential input!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pci1710_ai_check_chanlist\00", [38 x i8] zeroinitializer }, align 32
@pci1710_ai_check_chanlist._entry_ptr = internal global ptr @pci1710_ai_check_chanlist._entry, section ".printk_index", align 4
@pci1710_ai_check_chanlist._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.10, i32 218, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"channel list must be continuous! chanlist[%i]=%d but must be %d or %d!\0A\00", [56 x i8] zeroinitializer }, align 32
@pci1710_ai_check_chanlist._entry_ptr.24 = internal global ptr @pci1710_ai_check_chanlist._entry.22, section ".printk_index", align 4
@pci1710_ai_check_chanlist._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.10, i32 237, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"bad channel, reference or range number! chanlist[%i]=%d,%d,%d and not %d,%d,%d!\0A\00", [47 x i8] zeroinitializer }, align 32
@pci1710_ai_check_chanlist._entry_ptr.27 = internal global ptr @pci1710_ai_check_chanlist._entry.25, section ".printk_index", align 4
@pci171x_ao_range = internal constant { { i32, [3 x %struct.comedi_krange] }, [56 x i8] } { { i32, [3 x %struct.comedi_krange] } { i32 3, [3 x %struct.comedi_krange] [%struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 1000000, i32 256 }] }, [56 x i8] zeroinitializer }, align 32
@adv_pci1710_pci_table = internal constant { [17 x %struct.pci_device_id], [128 x i8] } { [17 x %struct.pci_device_id] [%struct.pci_device_id { i32 5118, i32 5904, i32 4277, i32 36944, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5118, i32 5904, i32 5118, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5118, i32 5904, i32 5118, i32 45312, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5118, i32 5904, i32 5118, i32 45568, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5118, i32 5904, i32 5118, i32 49408, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5118, i32 5904, i32 5118, i32 49664, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5118, i32 5904, i32 4096, i32 53504, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5118, i32 5904, i32 5118, i32 2, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 5118, i32 5904, i32 5118, i32 45314, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 5118, i32 5904, i32 5118, i32 45570, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 5118, i32 5904, i32 5118, i32 49410, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 5118, i32 5904, i32 5118, i32 49666, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 5118, i32 5904, i32 4096, i32 53506, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 5118, i32 5905, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 5118, i32 5907, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 5118, i32 5937, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id zeroinitializer], [128 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2003, i64 2004]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.30 = private unnamed_addr constant [19 x i8] c"adv_pci1710_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 879, i32 29 }
@___asan_gen_.33 = private unnamed_addr constant [23 x i8] c"adv_pci1710_pci_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 952, i32 26 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 880, i32 17 }
@___asan_gen_.39 = private unnamed_addr constant [11 x i8] c"boardtypes\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 139, i32 31 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 141, i32 12 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 146, i32 12 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 151, i32 12 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 157, i32 12 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 162, i32 12 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"pci1710_ai_range\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 74, i32 35 }
@___asan_gen_.60 = private unnamed_addr constant [19 x i8] c"pci1710hg_ai_range\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 88, i32 35 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"pci1711_ai_range\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 105, i32 35 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 402, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 407, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 318, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 445, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 450, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 208, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 216, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 230, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c"pci171x_ao_range\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 115, i32 35 }
@___asan_gen_.126 = private unnamed_addr constant [22 x i8] c"adv_pci1710_pci_table\00", align 1
@___asan_gen_.127 = private constant [40 x i8] c"../drivers/comedi/drivers/adv_pci1710.c\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 893, i32 35 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__exitcall_adv_pci1710_driver_exit, ptr @__initcall__kmod_adv_pci1710__240_958_adv_pci1710_driver_init6, ptr @adv_pci1710_driver_exit, ptr @pci1710_ai_check_chanlist._entry, ptr @pci1710_ai_check_chanlist._entry.22, ptr @pci1710_ai_check_chanlist._entry.25, ptr @pci1710_ai_check_chanlist._entry_ptr, ptr @pci1710_ai_check_chanlist._entry_ptr.24, ptr @pci1710_ai_check_chanlist._entry_ptr.27, ptr @pci1710_ai_read_sample._entry, ptr @pci1710_ai_read_sample._entry_ptr, ptr @adv_pci1710_driver, ptr @adv_pci1710_pci_driver, ptr @.str, ptr @boardtypes, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @pci1710_ai_range, ptr @pci1710hg_ai_range, ptr @pci1711_ai_range, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @pci171x_ao_range, ptr @adv_pci1710_pci_table], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv_pci1710_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv_pci1710_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boardtypes to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci1710_ai_range to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci1710hg_ai_range to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci1711_ai_range to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci1710_ai_read_sample._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci1710_ai_check_chanlist._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci1710_ai_check_chanlist._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci1710_ai_check_chanlist._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci171x_ao_range to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv_pci1710_pci_table to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adv_pci1710_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_pci_driver_register(ptr noundef nonnull @adv_pci1710_driver, ptr noundef nonnull @adv_pci1710_pci_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adv_pci1710_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @comedi_pci_driver_unregister(ptr noundef nonnull @adv_pci1710_driver, ptr noundef nonnull @adv_pci1710_pci_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_driver_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_detach(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci1710_auto_attach(ptr noundef %dev, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_pci_dev(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %context)
  %cmp = icmp ugt i32 %context, 4
  %arrayidx = getelementptr [5 x %struct.boardtype], ptr @boardtypes, i32 0, i32 %context
  %tobool.not228 = icmp eq ptr %arrayidx, null
  %tobool.not = or i1 %cmp, %tobool.not228
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
  %call3 = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 152) #6
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
  %arrayidx11 = getelementptr %struct.pci_dev, ptr %call, i32 0, i32 47, i32 2
  %4 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx11, align 8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %iobase, align 4
  %add = add i32 %5, 24
  %call13 = tail call ptr @comedi_8254_init(i32 noundef %add, i32 noundef 100, i32 noundef 2, i32 noundef 0) #6
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %7 = ptrtoint ptr %pacer to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call13, ptr %pacer, align 4
  %tobool15.not = icmp eq ptr %call13, null
  br i1 %tobool15.not, label %if.end10.cleanup_crit_edge, label %if.end17

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %8 = add nsw i32 %context, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %9 = icmp ult i32 %8, 2
  %spec.select227 = select i1 %9, i32 1, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %context)
  %tobool25.not.not = icmp eq i32 %context, 3
  %add27 = add nuw nsw i32 %spec.select227, 3
  %n_subdevices.1 = select i1 %tobool25.not.not, i32 %spec.select227, i32 %add27
  %call29 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef %n_subdevices.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end32:                                         ; preds = %if.end17
  %10 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %board_ptr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iobase, align 4
  %add.i = add i32 %13, 6
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %14 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %14, i16 0) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iobase, align 4
  %add6.i = add i32 %16, 9
  %and7.i = and i32 %add6.i, 1048575
  %add8.i = or i32 %and7.i, -18874368
  %17 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 0) #6, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iobase, align 4
  %add14.i = add i32 %19, 8
  %and15.i = and i32 %add14.i, 1048575
  %add16.i = or i32 %and15.i, -18874368
  %20 = inttoptr i32 %add16.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 0) #6, !srcloc !85
  %has_ao.i = getelementptr inbounds %struct.boardtype, ptr %11, i32 0, i32 2
  %21 = ptrtoint ptr %has_ao.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load.i = load i8, ptr %has_ao.i, align 4
  %22 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %if.end32.pci1710_reset.exit_crit_edge, label %do.body18.i

if.end32.pci1710_reset.exit_crit_edge:            ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci1710_reset.exit

do.body18.i:                                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %23 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iobase, align 4
  %add22.i = add i32 %24, 14
  %and23.i = and i32 %add22.i, 1048575
  %add24.i = or i32 %and23.i, -18874368
  %25 = inttoptr i32 %add24.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 0) #6, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %iobase, align 4
  %add30.i = add i32 %27, 10
  %and31.i = and i32 %add30.i, 1048575
  %add32.i = or i32 %and31.i, -18874368
  %28 = inttoptr i32 %add32.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %28, i16 0) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %29 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %iobase, align 4
  %add38.i = add i32 %30, 12
  %and39.i = and i32 %add38.i, 1048575
  %add40.i = or i32 %and39.i, -18874368
  %31 = inttoptr i32 %add40.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %31, i16 0) #6, !srcloc !83
  br label %pci1710_reset.exit

pci1710_reset.exit:                               ; preds = %do.body18.i, %if.end32.pci1710_reset.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  tail call void @arm_heavy_mb() #6
  %32 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %iobase, align 4
  %add46.i = add i32 %33, 16
  %and47.i = and i32 %add46.i, 1048575
  %add48.i = or i32 %and47.i, -18874368
  %34 = inttoptr i32 %add48.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %34, i16 0) #6, !srcloc !83
  %irq = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 46
  %35 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool33.not = icmp eq i32 %36, 0
  br i1 %tobool33.not, label %pci1710_reset.exit.if.end43_crit_edge, label %if.then34

pci1710_reset.exit.if.end43_crit_edge:            ; preds = %pci1710_reset.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then34:                                        ; preds = %pci1710_reset.exit
  %37 = ptrtoint ptr %board_name to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %board_name, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %36, ptr noundef nonnull @pci1710_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef %38, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp38 = icmp eq i32 %call.i, 0
  br i1 %cmp38, label %if.then39, label %if.then34.if.end43_crit_edge

if.then34.if.end43_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then39:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq, align 4
  %irq41 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %41 = ptrtoint ptr %irq41 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %irq41, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %if.then34.if.end43_crit_edge, %pci1710_reset.exit.if.end43_crit_edge
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %42 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %43, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %context)
  %45 = icmp ne i32 %context, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %context)
  %46 = icmp ne i32 %context, 4
  %tobool49.not = and i1 %45, %46
  %spec.store.select = select i1 %tobool49.not, i32 5308416, i32 1114112
  %47 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %spec.store.select, ptr %subdev_flags, align 4
  %cond = select i1 %tobool25.not.not, i32 32, i32 16
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %43, i32 0, i32 3
  %48 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %cond, ptr %n_chan, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %43, i32 0, i32 13
  %49 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 4095, ptr %maxdata, align 4
  %ai_range = getelementptr [5 x %struct.boardtype], ptr @boardtypes, i32 0, i32 %context, i32 1
  %50 = ptrtoint ptr %ai_range to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ai_range, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %43, i32 0, i32 15
  %52 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %range_table, align 4
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, ptr %43, i32 0, i32 18
  %53 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @pci1710_ai_insn_read, ptr %insn_read, align 4
  %irq59 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %54 = ptrtoint ptr %irq59 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %irq59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool60.not = icmp eq i32 %55, 0
  br i1 %tobool60.not, label %if.end43.if.end65_crit_edge, label %if.then61

if.end43.if.end65_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.then61:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %56 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %43, ptr %read_subdev, align 4
  %57 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %subdev_flags, align 4
  %or63 = or i32 %58, 32768
  store i32 %or63, ptr %subdev_flags, align 4
  %59 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %n_chan, align 4
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, ptr %43, i32 0, i32 5
  %61 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %len_chanlist, align 4
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, ptr %43, i32 0, i32 23
  %62 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @pci1710_ai_cmdtest, ptr %do_cmdtest, align 4
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, ptr %43, i32 0, i32 22
  %63 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @pci1710_ai_cmd, ptr %do_cmd, align 4
  %cancel = getelementptr inbounds %struct.comedi_subdevice, ptr %43, i32 0, i32 25
  %64 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @pci1710_ai_cancel, ptr %cancel, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then61, %if.end43.if.end65_crit_edge
  %65 = ptrtoint ptr %range_table to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %range_table, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp67230 = icmp sgt i32 %68, 0
  br i1 %cmp67230, label %if.end65.for.body_crit_edge, label %if.end65.for.end_crit_edge

if.end65.for.end_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end65.for.body_crit_edge:                      ; preds = %if.end65
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end65.for.body_crit_edge
  %i.0231 = phi i32 [ %inc71, %for.inc.for.body_crit_edge ], [ 0, %if.end65.for.body_crit_edge ]
  %arrayidx.i = getelementptr %struct.comedi_lrange, ptr %66, i32 0, i32 1, i32 %i.0231
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %70)
  %cmp.i = icmp sgt i32 %70, -1
  br i1 %cmp.i, label %if.then69, label %for.inc

if.then69:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %conv = trunc i32 %i.0231 to i8
  %unipolar_gain = getelementptr inbounds %struct.pci1710_private, ptr %call3, i32 0, i32 8
  %71 = ptrtoint ptr %unipolar_gain to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv, ptr %unipolar_gain, align 2
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc71 = add nuw nsw i32 %i.0231, 1
  %exitcond.not = icmp eq i32 %inc71, %68
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then69, %if.end65.for.end_crit_edge
  br i1 %9, label %for.end.if.end91_crit_edge, label %if.then78

for.end.if.end91_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end91

if.then78:                                        ; preds = %for.end
  %72 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %subdevices, align 4
  %arrayidx81 = getelementptr %struct.comedi_subdevice, ptr %73, i32 1
  %type82 = getelementptr %struct.comedi_subdevice, ptr %73, i32 1, i32 2
  %74 = ptrtoint ptr %type82 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 2, ptr %type82, align 4
  %subdev_flags83 = getelementptr %struct.comedi_subdevice, ptr %73, i32 1, i32 4
  %75 = ptrtoint ptr %subdev_flags83 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1179648, ptr %subdev_flags83, align 4
  %n_chan84 = getelementptr %struct.comedi_subdevice, ptr %73, i32 1, i32 3
  %76 = ptrtoint ptr %n_chan84 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 2, ptr %n_chan84, align 4
  %maxdata85 = getelementptr %struct.comedi_subdevice, ptr %73, i32 1, i32 13
  %77 = ptrtoint ptr %maxdata85 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 4095, ptr %maxdata85, align 4
  %range_table86 = getelementptr %struct.comedi_subdevice, ptr %73, i32 1, i32 15
  %78 = ptrtoint ptr %range_table86 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @pci171x_ao_range, ptr %range_table86, align 4
  %insn_write = getelementptr %struct.comedi_subdevice, ptr %73, i32 1, i32 19
  %79 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @pci1710_ao_insn_write, ptr %insn_write, align 4
  %call87 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx81) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.then78.if.end91_crit_edge, label %if.then78.cleanup_crit_edge

if.then78.cleanup_crit_edge:                      ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then78.if.end91_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end91

if.end91:                                         ; preds = %if.then78.if.end91_crit_edge, %for.end.if.end91_crit_edge
  %subdev.0 = phi i32 [ 2, %if.then78.if.end91_crit_edge ], [ 1, %for.end.if.end91_crit_edge ]
  br i1 %tobool25.not.not, label %if.end91.if.end123_crit_edge, label %if.then98

if.end91.if.end123_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123

if.then98:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  %80 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %subdevices, align 4
  %inc100 = add nuw nsw i32 %subdev.0, 1
  %type102 = getelementptr %struct.comedi_subdevice, ptr %81, i32 %subdev.0, i32 2
  %82 = ptrtoint ptr %type102 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 3, ptr %type102, align 4
  %subdev_flags103 = getelementptr %struct.comedi_subdevice, ptr %81, i32 %subdev.0, i32 4
  %83 = ptrtoint ptr %subdev_flags103 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 65536, ptr %subdev_flags103, align 4
  %n_chan104 = getelementptr %struct.comedi_subdevice, ptr %81, i32 %subdev.0, i32 3
  %84 = ptrtoint ptr %n_chan104 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 16, ptr %n_chan104, align 4
  %maxdata105 = getelementptr %struct.comedi_subdevice, ptr %81, i32 %subdev.0, i32 13
  %85 = ptrtoint ptr %maxdata105 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1, ptr %maxdata105, align 4
  %range_table106 = getelementptr %struct.comedi_subdevice, ptr %81, i32 %subdev.0, i32 15
  %86 = ptrtoint ptr %range_table106 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @range_unipolar5, ptr %range_table106, align 4
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %81, i32 %subdev.0, i32 20
  %87 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @pci1710_di_insn_bits, ptr %insn_bits, align 4
  %88 = load ptr, ptr %subdevices, align 4
  %inc108 = add nuw nsw i32 %subdev.0, 2
  %type110 = getelementptr %struct.comedi_subdevice, ptr %88, i32 %inc100, i32 2
  %89 = ptrtoint ptr %type110 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 4, ptr %type110, align 4
  %subdev_flags111 = getelementptr %struct.comedi_subdevice, ptr %88, i32 %inc100, i32 4
  %90 = ptrtoint ptr %subdev_flags111 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 131072, ptr %subdev_flags111, align 4
  %n_chan112 = getelementptr %struct.comedi_subdevice, ptr %88, i32 %inc100, i32 3
  %91 = ptrtoint ptr %n_chan112 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 16, ptr %n_chan112, align 4
  %maxdata113 = getelementptr %struct.comedi_subdevice, ptr %88, i32 %inc100, i32 13
  %92 = ptrtoint ptr %maxdata113 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 1, ptr %maxdata113, align 4
  %range_table114 = getelementptr %struct.comedi_subdevice, ptr %88, i32 %inc100, i32 15
  %93 = ptrtoint ptr %range_table114 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @range_unipolar5, ptr %range_table114, align 4
  %insn_bits115 = getelementptr %struct.comedi_subdevice, ptr %88, i32 %inc100, i32 20
  %94 = ptrtoint ptr %insn_bits115 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @pci1710_do_insn_bits, ptr %insn_bits115, align 4
  %95 = load ptr, ptr %subdevices, align 4
  %arrayidx118 = getelementptr %struct.comedi_subdevice, ptr %95, i32 %inc108
  %96 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pacer, align 4
  tail call void @comedi_8254_subdevice_init(ptr noundef %arrayidx118, ptr noundef %97) #6
  %98 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pacer, align 4
  %insn_config = getelementptr inbounds %struct.comedi_8254, ptr %99, i32 0, i32 14
  %100 = ptrtoint ptr %insn_config to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @pci1710_counter_insn_config, ptr %insn_config, align 4
  %101 = load ptr, ptr %pacer, align 4
  tail call void @comedi_8254_set_busy(ptr noundef %101, i32 noundef 1, i1 noundef zeroext true) #6
  %102 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pacer, align 4
  tail call void @comedi_8254_set_busy(ptr noundef %103, i32 noundef 2, i1 noundef zeroext true) #6
  br label %if.end123

if.end123:                                        ; preds = %if.then98, %if.end91.if.end123_crit_edge
  %cond129 = select i1 %tobool49.not, i32 2048, i32 512
  %104 = ptrtoint ptr %call3 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %cond129, ptr %call3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end123, %if.then78.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end123 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end2.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ], [ %call29, %if.end17.cleanup_crit_edge ], [ %call87, %if.then78.cleanup_crit_edge ]
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
declare dso_local ptr @comedi_8254_init(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci1710_irq_handler(i32 noundef %irq, ptr noundef %d) #2 align 64 {
entry:
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
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 21
  %3 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read_subdev, align 4
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %async, align 4
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 18
  %7 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase, align 4
  %add = add i32 %8, 6
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %9 = inttoptr i32 %add2 to ptr
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %9) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %11 = and i16 %10, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool5.not = icmp eq i16 %11, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %ai_et = getelementptr inbounds %struct.pci1710_private, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %ai_et to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ai_et, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool8.not = icmp eq i8 %13, 0
  br i1 %tobool8.not, label %if.end56, label %if.then9

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %ai_et to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %ai_et, align 4
  %ctrl = getelementptr inbounds %struct.pci1710_private, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ctrl, align 4
  %and11 = and i32 %16, 64
  %or = or i32 %and11, 1
  store i32 %or, ptr %ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ctrl, align 4
  %conv14 = trunc i32 %18 to i16
  %19 = tail call i16 @llvm.bswap.i16(i16 %conv14)
  %20 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iobase, align 4
  %add16 = add i32 %21, 6
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %22 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %22, i16 %19) #6, !srcloc !83
  %ctrl_ext = getelementptr inbounds %struct.pci1710_private, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %ctrl_ext to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ctrl_ext, align 4
  %25 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %iobase, align 4
  %add25 = add i32 %27, 9
  %and26 = and i32 %add25, 1048575
  %add27 = or i32 %and26, -18874368
  %28 = inttoptr i32 %add27 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 0) #6, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @arm_heavy_mb() #6
  %29 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %iobase, align 4
  %add33 = add i32 %30, 8
  %and34 = and i32 %add33, 1048575
  %add35 = or i32 %and34, -18874368
  %31 = inttoptr i32 %add35 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 0) #6, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void @arm_heavy_mb() #6
  %mux_scan = getelementptr inbounds %struct.pci1710_private, ptr %1, i32 0, i32 3
  %32 = ptrtoint ptr %mux_scan to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mux_scan, align 4
  %conv40 = trunc i32 %33 to i16
  %34 = tail call i16 @llvm.bswap.i16(i16 %conv40)
  %35 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %iobase, align 4
  %add42 = add i32 %36, 4
  %and43 = and i32 %add42, 1048575
  %add44 = or i32 %and43, -18874368
  %37 = inttoptr i32 %add44 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %37, i16 %34) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %38 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ctrl, align 4
  %conv50 = trunc i32 %39 to i16
  %40 = tail call i16 @llvm.bswap.i16(i16 %conv50)
  %41 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %iobase, align 4
  %add52 = add i32 %42, 6
  %and53 = and i32 %add52, 1048575
  %add54 = or i32 %and53, -18874368
  %43 = inttoptr i32 %add54 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %43, i16 %40) #6, !srcloc !83
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 2
  %44 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pacer, align 4
  tail call void @comedi_8254_pacer_enable(ptr noundef %45, i32 noundef 1, i32 noundef 2, i1 noundef zeroext true) #6
  br label %cleanup

if.end56:                                         ; preds = %if.end7
  %flags = getelementptr inbounds %struct.comedi_async, ptr %6, i32 0, i32 17, i32 1
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags, align 4
  %and57 = and i32 %47, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.else, label %if.then59

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @pci1710_handle_every_sample(ptr noundef %d, ptr noundef %4)
  br label %if.end60

if.else:                                          ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @pci1710_handle_fifo(ptr noundef %d, ptr noundef %4)
  br label %if.end60

if.end60:                                         ; preds = %if.else, %if.then59
  %call61 = tail call i32 @comedi_handle_events(ptr noundef %d, ptr noundef %4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then9 ], [ 1, %if.end60 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci1710_ai_insn_read(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %ctrl = getelementptr inbounds %struct.pci1710_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctrl, align 4
  %or = or i32 %3, 1
  store i32 %or, ptr %ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctrl, align 4
  %conv = trunc i32 %5 to i16
  %6 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %7 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase, align 4
  %add = add i32 %8, 6
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %9 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 %6) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iobase, align 4
  %add7 = add i32 %11, 9
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %12 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 0) #6, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iobase, align 4
  %add15 = add i32 %14, 8
  %and16 = and i32 %add15, 1048575
  %add17 = or i32 %and16, -18874368
  %15 = inttoptr i32 %add17 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 0) #6, !srcloc !85
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  tail call fastcc void @pci1710_ai_setup_chanlist(ptr noundef %dev, ptr noundef %s, ptr noundef %chanspec, i32 noundef 1, i32 noundef 1)
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %16 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp101.not = icmp eq i32 %17, 0
  br i1 %cmp101.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %board_ptr.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %maxdata.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0102 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iobase, align 4
  %and25 = and i32 %19, 1048575
  %add26 = or i32 %and25, -18874368
  %20 = inttoptr i32 %add26 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %20, i16 0) #6, !srcloc !83
  %call28 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @pci1710_ai_eoc, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool.not = icmp eq i32 %call28, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end:                                           ; preds = %for.body
  %21 = ptrtoint ptr %board_ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %board_ptr.i, align 4
  %23 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %private, align 4
  %25 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iobase, align 4
  %and.i = and i32 %26, 1048575
  %add1.i = or i32 %and.i, -18874368
  %27 = inttoptr i32 %add1.i to ptr
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %27) #6, !srcloc !91
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  %is_pci1713.i = getelementptr inbounds %struct.boardtype, ptr %22, i32 0, i32 2
  %30 = ptrtoint ptr %is_pci1713.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load.i = load i8, ptr %is_pci1713.i, align 4
  %31 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then.i:                                        ; preds = %if.end
  %32 = lshr i16 %29, 12
  %33 = zext i16 %32 to i32
  %arrayidx.i = getelementptr %struct.pci1710_private, ptr %24, i32 0, i32 5, i32 0
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %33)
  %cmp.not.i = icmp eq i32 %35, %33
  br i1 %cmp.not.i, label %if.then.i.for.inc_crit_edge, label %pci1710_ai_read_sample.exit

if.then.i.for.inc_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

pci1710_ai_read_sample.exit:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %36 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %class_dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.13, i32 noundef %33, i32 noundef %35) #9
  br label %for.end

for.inc:                                          ; preds = %if.then.i.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %38 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %maxdata.i, align 4
  %40 = trunc i32 %39 to i16
  %conv10.i = and i16 %29, %40
  %conv33 = zext i16 %conv10.i to i32
  %arrayidx = getelementptr i32, ptr %data, i32 %i.0102
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv33, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.0102, 1
  %42 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %43
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %pci1710_ai_read_sample.exit, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.2 = phi i32 [ -61, %pci1710_ai_read_sample.exit ], [ 0, %entry.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ], [ %call28, %for.body.for.end_crit_edge ]
  %44 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ctrl, align 4
  %and35 = and i32 %45, -2
  store i32 %and35, ptr %ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  tail call void @arm_heavy_mb() #6
  %46 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ctrl, align 4
  %conv40 = trunc i32 %47 to i16
  %48 = tail call i16 @llvm.bswap.i16(i16 %conv40)
  %49 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %iobase, align 4
  %add42 = add i32 %50, 6
  %and43 = and i32 %add42, 1048575
  %add44 = or i32 %and43, -18874368
  %51 = inttoptr i32 %add44 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %51, i16 %48) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  tail call void @arm_heavy_mb() #6
  %52 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %iobase, align 4
  %add50 = add i32 %53, 9
  %and51 = and i32 %add50, 1048575
  %add52 = or i32 %and51, -18874368
  %54 = inttoptr i32 %add52 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 0) #6, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %55 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %iobase, align 4
  %add58 = add i32 %56, 8
  %and59 = and i32 %add58, 1048575
  %add60 = or i32 %and59, -18874368
  %57 = inttoptr i32 %add60 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %57, i8 0) #6, !srcloc !85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %tobool62.not = icmp eq i32 %ret.2, 0
  br i1 %tobool62.not, label %cond.false, label %for.end.cond.end_crit_edge

for.end.cond.end_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %n, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %for.end.cond.end_crit_edge
  %cond = phi i32 [ %59, %cond.false ], [ %ret.2, %for.end.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci1710_ai_cmdtest(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef %cmd) #2 align 64 {
entry:
  %chansegment.i = alloca [32 x i32], align 4
  %arg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
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
  %and.i108 = and i32 %3, 4
  store i32 %and.i108, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i108)
  %cmp.i109 = icmp ne i32 %and.i108, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i108, i32 %3)
  %cmp1.not.i110 = icmp eq i32 %and.i108, %3
  %or.cond.i111 = and i1 %cmp.i109, %cmp1.not.i110
  %4 = select i1 %or.cond.i, i1 %or.cond.i111, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %5 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %convert_src, align 4
  %and.i113 = and i32 %6, 80
  store i32 %and.i113, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i113)
  %cmp.i114 = icmp ne i32 %and.i113, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i113, i32 %6)
  %cmp1.not.i115 = icmp eq i32 %and.i113, %6
  %or.cond.i116 = and i1 %cmp.i114, %cmp1.not.i115
  %7 = select i1 %4, i1 %or.cond.i116, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %8 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_end_src, align 4
  %and.i118 = and i32 %9, 32
  store i32 %and.i118, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i118)
  %cmp.i119 = icmp ne i32 %and.i118, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i118, i32 %9)
  %cmp1.not.i120 = icmp eq i32 %and.i118, %9
  %or.cond.i121 = and i1 %cmp.i119, %cmp1.not.i120
  %10 = select i1 %7, i1 %or.cond.i121, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %11 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stop_src, align 4
  %and.i123 = and i32 %12, 33
  store i32 %and.i123, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i123)
  %cmp.i124 = icmp ne i32 %and.i123, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i123, i32 %12)
  %cmp1.not.i125 = icmp eq i32 %and.i123, %12
  %or.cond.i126 = and i1 %cmp.i124, %cmp1.not.i125
  %13 = select i1 %10, i1 %or.cond.i126, i1 false
  br i1 %13, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = tail call i32 @llvm.ctpop.i32(i32 %1) #6, !range !106
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.not.i = icmp ult i32 %14, 2
  %15 = tail call i32 @llvm.ctpop.i32(i32 %6) #6, !range !106
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.not.i128 = icmp ult i32 %15, 2
  %16 = select i1 %cmp.not.i, i1 %cmp.not.i128, i1 false
  %17 = tail call i32 @llvm.ctpop.i32(i32 %12) #6, !range !106
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.not.i130 = icmp ult i32 %17, 2
  %18 = select i1 %16, i1 %cmp.not.i130, i1 false
  br i1 %18, label %if.end20, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.end
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %19 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.not.i132 = icmp eq i32 %20, 0
  br i1 %cmp.not.i132, label %if.end20.comedi_check_trigger_arg_is.exit_crit_edge, label %if.then.i

if.end20.comedi_check_trigger_arg_is.exit_crit_edge: ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit

if.then.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %start_arg, align 4
  br label %comedi_check_trigger_arg_is.exit

comedi_check_trigger_arg_is.exit:                 ; preds = %if.then.i, %if.end20.comedi_check_trigger_arg_is.exit_crit_edge
  %retval.0.i133 = phi i32 [ -22, %if.then.i ], [ 0, %if.end20.comedi_check_trigger_arg_is.exit_crit_edge ]
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %22 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.not.i134 = icmp eq i32 %23, 0
  br i1 %cmp.not.i134, label %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit137_crit_edge, label %if.then.i135

comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit137_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit137

if.then.i135:                                     ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %scan_begin_arg, align 4
  br label %comedi_check_trigger_arg_is.exit137

comedi_check_trigger_arg_is.exit137:              ; preds = %if.then.i135, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit137_crit_edge
  %retval.0.i136 = phi i32 [ -22, %if.then.i135 ], [ 0, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit137_crit_edge ]
  %or24 = or i32 %retval.0.i136, %retval.0.i133
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %6)
  %cmp = icmp eq i32 %6, 16
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %25 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %convert_arg, align 4
  br i1 %cmp, label %if.then26, label %if.else

if.then26:                                        ; preds = %comedi_check_trigger_arg_is.exit137
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %26)
  %cmp.i138 = icmp ult i32 %26, 10000
  br i1 %cmp.i138, label %if.then26.if.end32.sink.split_crit_edge, label %if.then26.if.end32_crit_edge

if.then26.if.end32_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then26.if.end32.sink.split_crit_edge:          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.sink.split

if.else:                                          ; preds = %comedi_check_trigger_arg_is.exit137
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.not.i141 = icmp eq i32 %26, 0
  br i1 %cmp.not.i141, label %if.else.if.end32_crit_edge, label %if.else.if.end32.sink.split_crit_edge

if.else.if.end32.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.sink.split

if.else.if.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.end32.sink.split:                              ; preds = %if.else.if.end32.sink.split_crit_edge, %if.then26.if.end32.sink.split_crit_edge
  %.sink = phi i32 [ 10000, %if.then26.if.end32.sink.split_crit_edge ], [ 0, %if.else.if.end32.sink.split_crit_edge ]
  %27 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.sink, ptr %convert_arg, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.end32.sink.split, %if.else.if.end32_crit_edge, %if.then26.if.end32_crit_edge
  %call27.pn = phi i32 [ 0, %if.then26.if.end32_crit_edge ], [ 0, %if.else.if.end32_crit_edge ], [ -22, %if.end32.sink.split ]
  %err.0 = or i32 %or24, %call27.pn
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %28 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %chanlist_len, align 4
  %30 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %29)
  %cmp.not.i145 = icmp eq i32 %31, %29
  br i1 %cmp.not.i145, label %if.end32.comedi_check_trigger_arg_is.exit148_crit_edge, label %if.then.i146

if.end32.comedi_check_trigger_arg_is.exit148_crit_edge: ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit148

if.then.i146:                                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %29, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit148

comedi_check_trigger_arg_is.exit148:              ; preds = %if.then.i146, %if.end32.comedi_check_trigger_arg_is.exit148_crit_edge
  %retval.0.i147 = phi i32 [ -22, %if.then.i146 ], [ 0, %if.end32.comedi_check_trigger_arg_is.exit148_crit_edge ]
  %or34 = or i32 %err.0, %retval.0.i147
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %12)
  %cmp36 = icmp eq i32 %12, 32
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %33 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i149 = icmp eq i32 %34, 0
  br i1 %cmp36, label %if.then37, label %if.else40

if.then37:                                        ; preds = %comedi_check_trigger_arg_is.exit148
  br i1 %cmp.i149, label %if.then37.if.end44.sink.split_crit_edge, label %if.then37.if.end44_crit_edge

if.then37.if.end44_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then37.if.end44.sink.split_crit_edge:          ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44.sink.split

if.else40:                                        ; preds = %comedi_check_trigger_arg_is.exit148
  br i1 %cmp.i149, label %if.else40.if.end44_crit_edge, label %if.else40.if.end44.sink.split_crit_edge

if.else40.if.end44.sink.split_crit_edge:          ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44.sink.split

if.else40.if.end44_crit_edge:                     ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.end44.sink.split:                              ; preds = %if.else40.if.end44.sink.split_crit_edge, %if.then37.if.end44.sink.split_crit_edge
  %.sink193 = phi i32 [ 1, %if.then37.if.end44.sink.split_crit_edge ], [ 0, %if.else40.if.end44.sink.split_crit_edge ]
  %35 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink193, ptr %stop_arg, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.end44.sink.split, %if.else40.if.end44_crit_edge, %if.then37.if.end44_crit_edge
  %call38.pn = phi i32 [ 0, %if.then37.if.end44_crit_edge ], [ 0, %if.else40.if.end44_crit_edge ], [ -22, %if.end44.sink.split ]
  %err.1 = or i32 %or34, %call38.pn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool45.not = icmp eq i32 %err.1, 0
  br i1 %tobool45.not, label %if.end47, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end47:                                         ; preds = %if.end44
  br i1 %cmp, label %if.then50, label %if.end47.if.end58_crit_edge

if.end47.if.end58_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.then50:                                        ; preds = %if.end47
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg) #6
  %convert_arg51 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %36 = ptrtoint ptr %convert_arg51 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %convert_arg51, align 4
  %38 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arg, align 4
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %39 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pacer, align 4
  %flags = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 1
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags, align 4
  call void @comedi_8254_cascade_ns_to_timer(ptr noundef %40, ptr noundef nonnull %arg, i32 noundef %42) #6
  %43 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arg, align 4
  %45 = ptrtoint ptr %convert_arg51 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %convert_arg51, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %44)
  %cmp.not.i157 = icmp eq i32 %46, %44
  br i1 %cmp.not.i157, label %comedi_check_trigger_arg_is.exit160.thread, label %comedi_check_trigger_arg_is.exit160

comedi_check_trigger_arg_is.exit160.thread:       ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #6
  br label %if.end58

comedi_check_trigger_arg_is.exit160:              ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %convert_arg51 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %44, ptr %convert_arg51, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #6
  br label %cleanup

if.end58:                                         ; preds = %comedi_check_trigger_arg_is.exit160.thread, %if.end47.if.end58_crit_edge
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %48 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %private.i, align 4
  %chanlist.i = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %50 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %chanlist.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %and.i161 = and i32 %53, 65535
  %n_chan.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 3
  %54 = ptrtoint ptr %n_chan.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %n_chan.i, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %chansegment.i) #6
  %56 = getelementptr inbounds i8, ptr %chansegment.i, i32 4
  %57 = call ptr @memset(ptr %56, i32 255, i32 124)
  %58 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp.i162 = icmp eq i32 %59, 1
  br i1 %cmp.i162, label %if.end58.if.then.i163_crit_edge, label %if.end.i

if.end58.if.then.i163_crit_edge:                  ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i163

if.end.i:                                         ; preds = %if.end58
  %60 = ptrtoint ptr %chansegment.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %53, ptr %chansegment.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp9163.i.not = icmp eq i32 %59, 0
  br i1 %cmp9163.i.not, label %if.end.i.for.end90.i_crit_edge, label %for.body.lr.ph.i

if.end.i.for.end90.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end90.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %shr.i = lshr i32 %53, 24
  %and3.i = and i32 %shr.i, 3
  %add.i = add nuw nsw i32 %and.i161, 1
  %rem.i = urem i32 %add.i, %55
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0166.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %next_chan.0165.i = phi i32 [ %rem.i, %for.body.lr.ph.i ], [ %and13.i, %for.inc.i.for.body.i_crit_edge ]
  %last_aref.0164.i = phi i32 [ %and3.i, %for.body.lr.ph.i ], [ %and17.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx12.i = getelementptr i32, ptr %51, i32 %i.0166.i
  %61 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx12.i, align 4
  %and13.i = and i32 %62, 65535
  %shr16.i = lshr i32 %62, 24
  %and17.i = and i32 %shr16.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %62)
  %cmp22.i = icmp eq i32 %53, %62
  br i1 %cmp22.i, label %for.body.i.for.end.i_crit_edge, label %if.end25.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.end25.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and17.i)
  %cmp26.i = icmp ne i32 %and17.i, 2
  %and28.i = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool.not.i = icmp eq i32 %and28.i, 0
  %or.cond.i164 = select i1 %cmp26.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i164, label %if.end30.i, label %do.end.i

do.end.i:                                         ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %63 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %class_dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.20) #9
  br label %pci1710_ai_check_chanlist.exit.thread

if.end30.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %last_aref.0164.i)
  %cmp31.i = icmp eq i32 %last_aref.0164.i, 2
  br i1 %cmp31.i, label %if.then33.i, label %if.end30.i.if.end37.i_crit_edge

if.end30.i.if.end37.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i

if.then33.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  %add34.i = add nuw nsw i32 %next_chan.0165.i, 1
  %rem36.i = urem i32 %add34.i, %55
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then33.i, %if.end30.i.if.end37.i_crit_edge
  %next_chan.1.i = phi i32 [ %rem36.i, %if.then33.i ], [ %next_chan.0165.i, %if.end30.i.if.end37.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %and13.i, i32 %next_chan.1.i)
  %cmp38.not.i = icmp eq i32 %and13.i, %next_chan.1.i
  br i1 %cmp38.not.i, label %for.inc.i, label %do.end43.i

do.end43.i:                                       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev44.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %65 = ptrtoint ptr %class_dev44.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %class_dev44.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.23, i32 noundef %i.0166.i, i32 noundef %and13.i, i32 noundef %next_chan.1.i, i32 noundef %and.i161) #9
  br label %pci1710_ai_check_chanlist.exit.thread

for.inc.i:                                        ; preds = %if.end37.i
  %arrayidx48.i = getelementptr [32 x i32], ptr %chansegment.i, i32 0, i32 %i.0166.i
  %67 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %62, ptr %arrayidx48.i, align 4
  %inc.i = add nuw i32 %i.0166.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %59
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ %i.0166.i, %for.body.i.for.end.i_crit_edge ], [ %59, %for.inc.i.for.end.i_crit_edge ]
  br label %for.body54.i

for.body54.i:                                     ; preds = %for.inc88.i.for.body54.i_crit_edge, %for.end.i
  %i.1169.i = phi i32 [ %inc89.i, %for.inc88.i.for.body54.i_crit_edge ], [ 0, %for.end.i ]
  %arrayidx56.i = getelementptr i32, ptr %51, i32 %i.1169.i
  %68 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx56.i, align 4
  %rem57.i = urem i32 %i.1169.i, %i.0.lcssa.i
  %arrayidx58.i = getelementptr [32 x i32], ptr %chansegment.i, i32 0, i32 %rem57.i
  %70 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx58.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %71)
  %cmp59.not.i = icmp eq i32 %69, %71
  br i1 %cmp59.not.i, label %for.inc88.i, label %do.end64.i

do.end64.i:                                       ; preds = %for.body54.i
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev65.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %72 = ptrtoint ptr %class_dev65.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %class_dev65.i, align 4
  %arrayidx66.i = getelementptr [32 x i32], ptr %chansegment.i, i32 0, i32 %i.1169.i
  %74 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx66.i, align 4
  %and67.i = and i32 %75, 65535
  %shr69.i = lshr i32 %75, 16
  %and70.i = and i32 %shr69.i, 255
  %shr72.i = lshr i32 %75, 24
  %and73.i = and i32 %shr72.i, 3
  %arrayidx76.i = getelementptr i32, ptr %51, i32 %rem57.i
  %76 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx76.i, align 4
  %and77.i = and i32 %77, 65535
  %shr81.i = lshr i32 %77, 16
  %and82.i = and i32 %shr81.i, 255
  %shr85.i = lshr i32 %71, 24
  %and86.i = and i32 %shr85.i, 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.26, i32 noundef %i.1169.i, i32 noundef %and67.i, i32 noundef %and70.i, i32 noundef %and73.i, i32 noundef %and77.i, i32 noundef %and82.i, i32 noundef %and86.i) #9
  br label %pci1710_ai_check_chanlist.exit.thread

for.inc88.i:                                      ; preds = %for.body54.i
  %inc89.i = add nuw i32 %i.1169.i, 1
  %exitcond177.not.i = icmp eq i32 %inc89.i, %59
  br i1 %exitcond177.not.i, label %for.inc88.i.for.end90.i_crit_edge, label %for.inc88.i.for.body54.i_crit_edge

for.inc88.i.for.body54.i_crit_edge:               ; preds = %for.inc88.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body54.i

for.inc88.i.for.end90.i_crit_edge:                ; preds = %for.inc88.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end90.i

for.end90.i:                                      ; preds = %for.inc88.i.for.end90.i_crit_edge, %if.end.i.for.end90.i_crit_edge
  %i.0.lcssa.i169 = phi i32 [ 1, %if.end.i.for.end90.i_crit_edge ], [ %i.0.lcssa.i, %for.inc88.i.for.end90.i_crit_edge ]
  %conv91.i = trunc i32 %i.0.lcssa.i169 to i8
  br label %if.then.i163

pci1710_ai_check_chanlist.exit.thread:            ; preds = %do.end64.i, %do.end43.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %chansegment.i) #6
  br label %cleanup

if.then.i163:                                     ; preds = %for.end90.i, %if.end58.if.then.i163_crit_edge
  %conv91.i.sink = phi i8 [ %conv91.i, %for.end90.i ], [ 1, %if.end58.if.then.i163_crit_edge ]
  %saved_seglen92.i = getelementptr inbounds %struct.pci1710_private, ptr %49, i32 0, i32 6
  %78 = ptrtoint ptr %saved_seglen92.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv91.i.sink, ptr %saved_seglen92.i, align 4
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %chansegment.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i163, %pci1710_ai_check_chanlist.exit.thread, %comedi_check_trigger_arg_is.exit160, %if.end44.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ], [ 3, %if.end44.cleanup_crit_edge ], [ 4, %comedi_check_trigger_arg_is.exit160 ], [ 0, %if.then.i163 ], [ 5, %pci1710_ai_check_chanlist.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci1710_ai_cmd(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %2 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %async, align 4
  %chanlist = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 12
  %4 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chanlist, align 4
  %chanlist_len = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 13
  %6 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chanlist_len, align 4
  %saved_seglen = getelementptr inbounds %struct.pci1710_private, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %saved_seglen to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %saved_seglen, align 4
  %conv = zext i8 %9 to i32
  tail call fastcc void @pci1710_ai_setup_chanlist(ptr noundef %dev, ptr noundef %s, ptr noundef %5, i32 noundef %7, i32 noundef %conv)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  tail call void @arm_heavy_mb() #6
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %10 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iobase, align 4
  %add = add i32 %11, 9
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %12 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 0) #6, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iobase, align 4
  %add7 = add i32 %14, 8
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %15 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 0) #6, !srcloc !85
  %ctrl = getelementptr inbounds %struct.pci1710_private, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ctrl, align 4
  %and11 = and i32 %17, 64
  store i32 %and11, ptr %ctrl, align 4
  %flags = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 1
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %and12 = and i32 %19, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %cmp = icmp eq i32 %and12, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %and11, 32
  %20 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or, ptr %ctrl, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %convert_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 6
  %21 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %22)
  %cmp15 = icmp eq i32 %22, 16
  br i1 %cmp15, label %if.then17, label %if.else46

if.then17:                                        ; preds = %if.end
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %23 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pacer, align 4
  tail call void @comedi_8254_update_divisors(ptr noundef %24) #6
  %25 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ctrl, align 4
  %or19 = or i32 %26, 18
  store i32 %or19, ptr %ctrl, align 4
  %start_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 2
  %27 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %28)
  %cmp20 = icmp eq i32 %28, 64
  br i1 %cmp20, label %if.then22, label %if.then17.do.body30_crit_edge

if.then17.do.body30_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body30

if.then22:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  %ctrl_ext = getelementptr inbounds %struct.pci1710_private, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %ctrl_ext to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or19, ptr %ctrl_ext, align 4
  %and25 = and i32 %or19, -47
  %or27 = or i32 %and25, 4
  %30 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or27, ptr %ctrl, align 4
  br label %do.body30

do.body30:                                        ; preds = %if.then22, %if.then17.do.body30_crit_edge
  %.sink = phi i8 [ 1, %if.then22 ], [ 0, %if.then17.do.body30_crit_edge ]
  %31 = getelementptr inbounds %struct.pci1710_private, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %.sink, ptr %31, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  tail call void @arm_heavy_mb() #6
  %33 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ctrl, align 4
  %conv34 = trunc i32 %34 to i16
  %35 = tail call i16 @llvm.bswap.i16(i16 %conv34)
  %36 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %iobase, align 4
  %add36 = add i32 %37, 6
  %and37 = and i32 %add36, 1048575
  %add38 = or i32 %and37, -18874368
  %38 = inttoptr i32 %add38 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %38, i16 %35) #6, !srcloc !83
  %39 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %cmp41 = icmp eq i32 %40, 2
  br i1 %cmp41, label %if.then43, label %do.body30.if.end59_crit_edge

do.body30.if.end59_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.then43:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pacer, align 4
  tail call void @comedi_8254_pacer_enable(ptr noundef %42, i32 noundef 1, i32 noundef 2, i1 noundef zeroext true) #6
  br label %if.end59

if.else46:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ctrl, align 4
  %or48 = or i32 %44, 20
  store i32 %or48, ptr %ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %45 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ctrl, align 4
  %conv53 = trunc i32 %46 to i16
  %47 = tail call i16 @llvm.bswap.i16(i16 %conv53)
  %48 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %iobase, align 4
  %add55 = add i32 %49, 6
  %and56 = and i32 %add55, 1048575
  %add57 = or i32 %and56, -18874368
  %50 = inttoptr i32 %add57 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %50, i16 %47) #6, !srcloc !83
  br label %if.end59

if.end59:                                         ; preds = %if.else46, %if.then43, %do.body30.if.end59_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci1710_ai_cancel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %ctrl = getelementptr inbounds %struct.pci1710_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctrl, align 4
  %and = and i32 %3, 64
  store i32 %and, ptr %ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctrl, align 4
  %conv = trunc i32 %5 to i16
  %6 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %7 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase, align 4
  %add = add i32 %8, 6
  %and2 = and i32 %add, 1048575
  %add3 = or i32 %and2, -18874368
  %9 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 %6) #6, !srcloc !83
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %10 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pacer, align 4
  tail call void @comedi_8254_pacer_enable(ptr noundef %11, i32 noundef 1, i32 noundef 2, i1 noundef zeroext false) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iobase, align 4
  %add8 = add i32 %13, 9
  %and9 = and i32 %add8, 1048575
  %add10 = or i32 %and9, -18874368
  %14 = inttoptr i32 %add10 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 0) #6, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iobase, align 4
  %add16 = add i32 %16, 8
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %17 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 0) #6, !srcloc !85
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci1710_ao_insn_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
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
  %mul = shl nuw nsw i32 %and, 1
  %shl = shl i32 3, %mul
  %da_ranges = getelementptr inbounds %struct.pci1710_private, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %da_ranges to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %da_ranges, align 1
  %10 = trunc i32 %shl to i8
  %11 = xor i8 %10, -1
  %conv4 = and i8 %9, %11
  %and5 = and i32 %shr, 3
  %shl7 = shl i32 %and5, %mul
  %12 = trunc i32 %shl7 to i8
  %conv10 = or i8 %conv4, %12
  store i8 %conv10, ptr %da_ranges, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %da_ranges to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %da_ranges, align 1
  %conv12 = zext i8 %14 to i16
  %15 = shl nuw i16 %conv12, 8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %16 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iobase, align 4
  %add = add i32 %17, 14
  %and13 = and i32 %add, 1048575
  %add14 = or i32 %and13, -18874368
  %18 = inttoptr i32 %add14 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %18, i16 %15) #6, !srcloc !83
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %19 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp46.not = icmp eq i32 %20, 0
  br i1 %cmp46.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %add23 = add nuw nsw i32 %mul, 10
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.047 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx16 = getelementptr i32, ptr %data, i32 %i.047
  %21 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx16, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  %conv20 = trunc i32 %22 to i16
  %23 = tail call i16 @llvm.bswap.i16(i16 %conv20)
  %24 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %iobase, align 4
  %add24 = add i32 %add23, %25
  %and25 = and i32 %add24, 1048575
  %add26 = or i32 %and25, -18874368
  %26 = inttoptr i32 %add26 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %26, i16 %23) #6, !srcloc !83
  %inc = add nuw i32 %i.047, 1
  %27 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %28
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

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
  %arrayidx29 = getelementptr i32, ptr %30, i32 %and
  %31 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %val.0.lcssa, ptr %arrayidx29, align 4
  %32 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %n, align 4
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci1710_di_insn_bits(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 16
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %2) #6, !srcloc !91
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  %conv = zext i16 %4 to i32
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %6 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n, align 4
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci1710_do_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %conv = trunc i32 %1 to i16
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %3 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iobase, align 4
  %add = add i32 %4, 16
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %5 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %5, i16 %2) #6, !srcloc !83
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %state3 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %6 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state3, align 4
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %9 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n, align 4
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_subdevice_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci1710_counter_insn_config(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef %data) #2 align 64 {
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
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 2003, label %sw.bb
    i32 2004, label %sw.bb8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %arrayidx1 = getelementptr i32, ptr %data, i32 1
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx1, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %6, label %sw.bb.cleanup_crit_edge [
    i32 0, label %sw.bb2
    i32 1, label %sw.bb3
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb2:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %ctrl_ext = getelementptr inbounds %struct.pci1710_private, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %ctrl_ext to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ctrl_ext, align 4
  %and = and i32 %9, -65
  store i32 %and, ptr %ctrl_ext, align 4
  br label %do.body

sw.bb3:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %ctrl_ext4 = getelementptr inbounds %struct.pci1710_private, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %ctrl_ext4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctrl_ext4, align 4
  %or = or i32 %11, 64
  store i32 %or, ptr %ctrl_ext4, align 4
  br label %do.body

do.body:                                          ; preds = %sw.bb3, %sw.bb2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  tail call void @arm_heavy_mb() #6
  %ctrl_ext5 = getelementptr inbounds %struct.pci1710_private, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %ctrl_ext5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ctrl_ext5, align 4
  %conv = trunc i32 %13 to i16
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %15 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iobase, align 4
  %add = add i32 %16, 6
  %and6 = and i32 %add, 1048575
  %add7 = or i32 %and6, -18874368
  %17 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %17, i16 %14) #6, !srcloc !83
  br label %sw.epilog16

sw.bb8:                                           ; preds = %entry
  %ctrl_ext9 = getelementptr inbounds %struct.pci1710_private, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %ctrl_ext9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ctrl_ext9, align 4
  %and10 = and i32 %19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool.not = icmp eq i32 %and10, 0
  %arrayidx13 = getelementptr i32, ptr %data, i32 1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %arrayidx13, align 4
  %arrayidx12 = getelementptr i32, ptr %data, i32 2
  %21 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %arrayidx12, align 4
  br label %sw.epilog16

if.else:                                          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %arrayidx13, align 4
  %arrayidx14 = getelementptr i32, ptr %data, i32 2
  %23 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1000, ptr %arrayidx14, align 4
  br label %sw.epilog16

sw.epilog16:                                      ; preds = %if.else, %if.then, %do.body
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %24 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog16, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %25, %sw.epilog16 ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_set_busy(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_pacer_enable(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pci1710_handle_every_sample(ptr nocapture noundef readonly %dev, ptr noundef %s) unnamed_addr #2 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %0 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %async, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %val, align 2, !annotation !119
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %3 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iobase, align 4
  %add = add i32 %4, 6
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %5 = inttoptr i32 %add2 to ptr
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %5) #6, !srcloc !91
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  %conv = zext i16 %7 to i32
  %and4 = and i32 %conv, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %if.end13, label %do.body

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pci1710_handle_every_sample.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pci1710_handle_every_sample, %do.end)) #6
          to label %if.then11 [label %do.end], !srcloc !121

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %8 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pci1710_handle_every_sample.__UNIQUE_ID_ddebug236, ptr noundef %9, ptr noundef nonnull @.str.11, i32 noundef %conv) #6
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %10 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %async, align 4
  %events = getelementptr inbounds %struct.comedi_async, ptr %11, i32 0, i32 16
  %12 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %events, align 4
  %or = or i32 %13, 16
  store i32 %or, ptr %events, align 4
  br label %cleanup

if.end13:                                         ; preds = %entry
  %and14 = and i32 %conv, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %do.body40, label %do.body17

do.body17:                                        ; preds = %if.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pci1710_handle_every_sample.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pci1710_handle_every_sample, %do.end35)) #6
          to label %if.then31 [label %do.end35], !srcloc !121

if.then31:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev32 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %14 = ptrtoint ptr %class_dev32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %class_dev32, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pci1710_handle_every_sample.__UNIQUE_ID_ddebug237, ptr noundef %15, ptr noundef nonnull @.str.12, i32 noundef %conv) #6
  br label %do.end35

do.end35:                                         ; preds = %if.then31, %do.body17
  %16 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %async, align 4
  %events37 = getelementptr inbounds %struct.comedi_async, ptr %17, i32 0, i32 16
  %18 = ptrtoint ptr %events37 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %events37, align 4
  %or38 = or i32 %19, 16
  store i32 %or38, ptr %events37, align 4
  br label %cleanup

do.body40:                                        ; preds = %if.end13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iobase, align 4
  %add44 = add i32 %21, 8
  %and45 = and i32 %add44, 1048575
  %add46 = or i32 %and45, -18874368
  %22 = inttoptr i32 %add46 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 0) #6, !srcloc !85
  %23 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iobase, align 4
  %add50118 = add i32 %24, 6
  %and51119 = and i32 %add50118, 1048575
  %add52120 = or i32 %and51119, -18874368
  %25 = inttoptr i32 %add52120 to ptr
  %26 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %25) #6, !srcloc !91
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  %27 = and i16 %26, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool58.not121 = icmp eq i16 %27, 0
  br i1 %tobool58.not121, label %for.body.lr.ph, label %do.body40.do.body79_crit_edge

do.body40.do.body79_crit_edge:                    ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body79

for.body.lr.ph:                                   ; preds = %do.body40
  %board_ptr.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %maxdata.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  %stop_src = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 17, i32 10
  %stop_arg = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 17, i32 11
  br label %for.body

for.body:                                         ; preds = %if.end78.for.body_crit_edge, %for.body.lr.ph
  %28 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %async, align 4
  %cur_chan = getelementptr inbounds %struct.comedi_async, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cur_chan, align 4
  %32 = ptrtoint ptr %board_ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %board_ptr.i, align 4
  %34 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %private.i, align 4
  %36 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %iobase, align 4
  %and.i = and i32 %37, 1048575
  %add1.i = or i32 %and.i, -18874368
  %38 = inttoptr i32 %add1.i to ptr
  %39 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %38) #6, !srcloc !91
  %40 = call i16 @llvm.bswap.i16(i16 %39) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  %is_pci1713.i = getelementptr inbounds %struct.boardtype, ptr %33, i32 0, i32 2
  %41 = ptrtoint ptr %is_pci1713.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load.i = load i8, ptr %is_pci1713.i, align 4
  %42 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i = icmp eq i8 %42, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.body.if.end68_crit_edge

for.body.if.end68_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

if.then.i:                                        ; preds = %for.body
  %43 = lshr i16 %40, 12
  %44 = zext i16 %43 to i32
  %arrayidx.i = getelementptr %struct.pci1710_private, ptr %35, i32 0, i32 5, i32 %31
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %44)
  %cmp.not.i = icmp eq i32 %46, %44
  br i1 %cmp.not.i, label %if.then.i.if.end68_crit_edge, label %if.then64

if.then.i.if.end68_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

if.then64:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %47 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %class_dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.13, i32 noundef %44, i32 noundef %46) #9
  %49 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %async, align 4
  br label %do.body79.sink.split

if.end68:                                         ; preds = %if.then.i.if.end68_crit_edge, %for.body.if.end68_crit_edge
  %51 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %maxdata.i, align 4
  %53 = trunc i32 %52 to i16
  %conv10.i = and i16 %40, %53
  %54 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv10.i, ptr %val, align 2
  %call69 = call i32 @comedi_buf_write_samples(ptr noundef %s, ptr noundef nonnull %val, i32 noundef 1) #6
  %55 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %56)
  %cmp = icmp eq i32 %56, 32
  br i1 %cmp, label %land.lhs.true, label %if.end68.if.end78_crit_edge

if.end68.if.end78_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

land.lhs.true:                                    ; preds = %if.end68
  %57 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %async, align 4
  %scans_done = getelementptr inbounds %struct.comedi_async, ptr %58, i32 0, i32 11
  %59 = ptrtoint ptr %scans_done to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %scans_done, align 4
  %61 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp72.not = icmp ult i32 %60, %62
  br i1 %cmp72.not, label %land.lhs.true.if.end78_crit_edge, label %land.lhs.true.do.body79.sink.split_crit_edge

land.lhs.true.do.body79.sink.split_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body79.sink.split

land.lhs.true.if.end78_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

if.end78:                                         ; preds = %land.lhs.true.if.end78_crit_edge, %if.end68.if.end78_crit_edge
  %63 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %iobase, align 4
  %add50 = add i32 %64, 6
  %and51 = and i32 %add50, 1048575
  %add52 = or i32 %and51, -18874368
  %65 = inttoptr i32 %add52 to ptr
  %66 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %65) #6, !srcloc !91
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  %67 = and i16 %66, 1
  %tobool58.not = icmp eq i16 %67, 0
  br i1 %tobool58.not, label %if.end78.for.body_crit_edge, label %if.end78.do.body79_crit_edge

if.end78.do.body79_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body79

if.end78.for.body_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body79.sink.split:                             ; preds = %land.lhs.true.do.body79.sink.split_crit_edge, %if.then64
  %.lcssa125.sink = phi ptr [ %50, %if.then64 ], [ %58, %land.lhs.true.do.body79.sink.split_crit_edge ]
  %.sink126 = phi i32 [ 16, %if.then64 ], [ 2, %land.lhs.true.do.body79.sink.split_crit_edge ]
  %events76 = getelementptr inbounds %struct.comedi_async, ptr %.lcssa125.sink, i32 0, i32 16
  %68 = ptrtoint ptr %events76 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %events76, align 4
  %or67 = or i32 %69, %.sink126
  store i32 %or67, ptr %events76, align 4
  br label %do.body79

do.body79:                                        ; preds = %do.body79.sink.split, %if.end78.do.body79_crit_edge, %do.body40.do.body79_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  call void @arm_heavy_mb() #6
  %70 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %iobase, align 4
  %add83 = add i32 %71, 8
  %and84 = and i32 %add83, 1048575
  %add85 = or i32 %and84, -18874368
  %72 = inttoptr i32 %add85 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %72, i8 0) #6, !srcloc !85
  br label %cleanup

cleanup:                                          ; preds = %do.body79, %do.end35, %do.end
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pci1710_handle_fifo(ptr nocapture noundef readonly %dev, ptr noundef %s) unnamed_addr #2 align 64 {
entry:
  %val = alloca i16, align 2
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
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase, align 4
  %add = add i32 %5, 6
  %and = and i32 %add, 1048575
  %add3 = or i32 %and, -18874368
  %6 = inttoptr i32 %add3 to ptr
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %6) #6, !srcloc !91
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  %conv = zext i16 %8 to i32
  %and5 = and i32 %conv, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %do.body, label %if.end13

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pci1710_handle_fifo.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pci1710_handle_fifo, %do.end)) #6
          to label %if.then12 [label %do.end], !srcloc !121

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %9 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pci1710_handle_fifo.__UNIQUE_ID_ddebug238, ptr noundef %10, ptr noundef nonnull @.str.18) #6
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  %events = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 16
  %11 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %events, align 4
  %or = or i32 %12, 16
  store i32 %or, ptr %events, align 4
  br label %cleanup69

if.end13:                                         ; preds = %entry
  %and14 = and i32 %conv, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %for.cond.preheader, label %do.body17

for.cond.preheader:                               ; preds = %if.end13
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp103.not = icmp eq i32 %14, 0
  br i1 %cmp103.not, label %for.cond.preheader.do.body61_crit_edge, label %for.body.lr.ph

for.cond.preheader.do.body61_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body61

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %board_ptr.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %maxdata.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  %stop_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 10
  %scans_done = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 11
  %stop_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 11
  br label %for.body

do.body17:                                        ; preds = %if.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pci1710_handle_fifo.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pci1710_handle_fifo, %do.end35)) #6
          to label %if.then31 [label %do.end35], !srcloc !121

if.then31:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev32 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %15 = ptrtoint ptr %class_dev32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %class_dev32, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pci1710_handle_fifo.__UNIQUE_ID_ddebug239, ptr noundef %16, ptr noundef nonnull @.str.19) #6
  br label %do.end35

do.end35:                                         ; preds = %if.then31, %do.body17
  %events36 = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 16
  %17 = ptrtoint ptr %events36 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %events36, align 4
  %or37 = or i32 %18, 16
  store i32 %or37, ptr %events36, align 4
  br label %cleanup69

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0104 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #6
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -1, ptr %val, align 2, !annotation !119
  %20 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %async1, align 4
  %cur_chan = getelementptr inbounds %struct.comedi_async, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cur_chan, align 4
  %24 = ptrtoint ptr %board_ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %board_ptr.i, align 4
  %26 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %private, align 4
  %28 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iobase, align 4
  %and.i = and i32 %29, 1048575
  %add1.i = or i32 %and.i, -18874368
  %30 = inttoptr i32 %add1.i to ptr
  %31 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %30) #6, !srcloc !91
  %32 = call i16 @llvm.bswap.i16(i16 %31) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  %is_pci1713.i = getelementptr inbounds %struct.boardtype, ptr %25, i32 0, i32 2
  %33 = ptrtoint ptr %is_pci1713.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load.i = load i8, ptr %is_pci1713.i, align 4
  %34 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.body.if.end47_crit_edge

for.body.if.end47_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then.i:                                        ; preds = %for.body
  %35 = lshr i16 %32, 12
  %36 = zext i16 %35 to i32
  %arrayidx.i = getelementptr %struct.pci1710_private, ptr %27, i32 0, i32 5, i32 %23
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %36)
  %cmp.not.i = icmp eq i32 %38, %36
  br i1 %cmp.not.i, label %if.then.i.if.end47_crit_edge, label %if.then43

if.then.i.if.end47_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then43:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %39 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %class_dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.13, i32 noundef %36, i32 noundef %38) #9
  %41 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %async1, align 4
  br label %cleanup.thread.sink.split

if.end47:                                         ; preds = %if.then.i.if.end47_crit_edge, %for.body.if.end47_crit_edge
  %43 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %maxdata.i, align 4
  %45 = trunc i32 %44 to i16
  %conv10.i = and i16 %32, %45
  %46 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv10.i, ptr %val, align 2
  %call48 = call i32 @comedi_buf_write_samples(ptr noundef %s, ptr noundef nonnull %val, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end47.cleanup.thread_crit_edge, label %if.end51

if.end47.cleanup.thread_crit_edge:                ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.end51:                                         ; preds = %if.end47
  %47 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %48)
  %cmp52 = icmp eq i32 %48, 32
  br i1 %cmp52, label %land.lhs.true, label %if.end51.for.inc_crit_edge

if.end51.for.inc_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end51
  %49 = ptrtoint ptr %scans_done to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %scans_done, align 4
  %51 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %cmp54.not = icmp ult i32 %50, %52
  br i1 %cmp54.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.cleanup.thread.sink.split_crit_edge

land.lhs.true.cleanup.thread.sink.split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread.sink.split

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

cleanup.thread.sink.split:                        ; preds = %land.lhs.true.cleanup.thread.sink.split_crit_edge, %if.then43
  %.sink = phi ptr [ %42, %if.then43 ], [ %3, %land.lhs.true.cleanup.thread.sink.split_crit_edge ]
  %.sink107 = phi i32 [ 16, %if.then43 ], [ 2, %land.lhs.true.cleanup.thread.sink.split_crit_edge ]
  %events57 = getelementptr inbounds %struct.comedi_async, ptr %.sink, i32 0, i32 16
  %53 = ptrtoint ptr %events57 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %events57, align 4
  %or46 = or i32 %54, %.sink107
  store i32 %or46, ptr %events57, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %cleanup.thread.sink.split, %if.end47.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #6
  br label %do.body61

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.end51.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #6
  %inc = add nuw i32 %i.0104, 1
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %1, align 4
  %cmp = icmp ult i32 %inc, %56
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.do.body61_crit_edge

for.inc.do.body61_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body61

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body61:                                        ; preds = %for.inc.do.body61_crit_edge, %cleanup.thread, %for.cond.preheader.do.body61_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !126
  call void @arm_heavy_mb() #6
  %57 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %iobase, align 4
  %add65 = add i32 %58, 8
  %and66 = and i32 %add65, 1048575
  %add67 = or i32 %and66, -18874368
  %59 = inttoptr i32 %add67 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %59, i8 0) #6, !srcloc !85
  br label %cleanup69

cleanup69:                                        ; preds = %do.body61, %do.end35, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_handle_events(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pci1710_ai_setup_chanlist(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %chanlist, i32 noundef %n_chan, i32 noundef %seglen) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanlist, align 4
  %sub = add i32 %seglen, -1
  %arrayidx1 = getelementptr i32, ptr %chanlist, i32 %sub
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %seglen)
  %cmp91.not = icmp eq i32 %seglen, 0
  br i1 %cmp91.not, label %entry.for.cond36.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond36.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond36.preheader

for.body.lr.ph:                                   ; preds = %entry
  %range_table.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 15
  %unipolar_gain = getelementptr inbounds %struct.pci1710_private, ptr %1, i32 0, i32 8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  br label %for.body

for.cond36.preheader:                             ; preds = %if.end14.for.cond36.preheader_crit_edge, %entry.for.cond36.preheader_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %seglen, i32 %n_chan)
  %cmp3793 = icmp ult i32 %seglen, %n_chan
  br i1 %cmp3793, label %for.cond36.preheader.for.body39_crit_edge, label %for.cond36.preheader.for.end46_crit_edge

for.cond36.preheader.for.end46_crit_edge:         ; preds = %for.cond36.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end46

for.cond36.preheader.for.body39_crit_edge:        ; preds = %for.cond36.preheader
  br label %for.body39

for.body:                                         ; preds = %if.end14.for.body_crit_edge, %for.body.lr.ph
  %i.092 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end14.for.body_crit_edge ]
  %arrayidx3 = getelementptr i32, ptr %chanlist, i32 %i.092
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  %and4 = and i32 %7, 65535
  %shr = lshr i32 %7, 16
  %and6 = and i32 %shr, 255
  %8 = and i32 %7, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %8)
  %cmp10 = icmp eq i32 %8, 33554432
  %spec.select = select i1 %cmp10, i32 32, i32 0
  %9 = ptrtoint ptr %range_table.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %range_table.i, align 4
  %arrayidx.i = getelementptr %struct.comedi_lrange, ptr %10, i32 0, i32 1, i32 %and6
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp.i = icmp sgt i32 %12, -1
  br i1 %cmp.i, label %if.then11, label %for.body.if.end14_crit_edge

for.body.if.end14_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %or12 = or i32 %spec.select, 16
  %13 = ptrtoint ptr %unipolar_gain to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %unipolar_gain, align 2
  %conv = zext i8 %14 to i32
  %sub13 = sub nsw i32 %and6, %conv
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %for.body.if.end14_crit_edge
  %range.0 = phi i32 [ %sub13, %if.then11 ], [ %and6, %for.body.if.end14_crit_edge ]
  %rangeval.1 = phi i32 [ %or12, %if.then11 ], [ %spec.select, %for.body.if.end14_crit_edge ]
  %and15 = and i32 %range.0, 7
  %or16 = or i32 %rangeval.1, %and15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !127
  tail call void @arm_heavy_mb() #6
  %15 = trunc i32 %7 to i16
  %16 = and i16 %15, 255
  %conv22 = mul nuw i16 %16, 257
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv22)
  %18 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iobase, align 4
  %add = add i32 %19, 4
  %and23 = and i32 %add, 1048575
  %add24 = or i32 %and23, -18874368
  %20 = inttoptr i32 %add24 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %20, i16 %17) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  tail call void @arm_heavy_mb() #6
  %conv29 = trunc i32 %or16 to i16
  %21 = tail call i16 @llvm.bswap.i16(i16 %conv29)
  %22 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iobase, align 4
  %add31 = add i32 %23, 2
  %and32 = and i32 %add31, 1048575
  %add33 = or i32 %and32, -18874368
  %24 = inttoptr i32 %add33 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %24, i16 %21) #6, !srcloc !83
  %arrayidx35 = getelementptr %struct.pci1710_private, ptr %1, i32 0, i32 5, i32 %i.092
  %25 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and4, ptr %arrayidx35, align 4
  %inc = add nuw i32 %i.092, 1
  %exitcond.not = icmp eq i32 %inc, %seglen
  br i1 %exitcond.not, label %if.end14.for.cond36.preheader_crit_edge, label %if.end14.for.body_crit_edge

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end14.for.cond36.preheader_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond36.preheader

for.body39:                                       ; preds = %for.body39.for.body39_crit_edge, %for.cond36.preheader.for.body39_crit_edge
  %i.194 = phi i32 [ %inc45, %for.body39.for.body39_crit_edge ], [ %seglen, %for.cond36.preheader.for.body39_crit_edge ]
  %arrayidx40 = getelementptr i32, ptr %chanlist, i32 %i.194
  %26 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx40, align 4
  %and41 = and i32 %27, 65535
  %arrayidx43 = getelementptr %struct.pci1710_private, ptr %1, i32 0, i32 5, i32 %i.194
  %28 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and41, ptr %arrayidx43, align 4
  %inc45 = add nuw i32 %i.194, 1
  %exitcond95.not = icmp eq i32 %inc45, %n_chan
  br i1 %exitcond95.not, label %for.body39.for.end46_crit_edge, label %for.body39.for.body39_crit_edge

for.body39.for.body39_crit_edge:                  ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body39

for.body39.for.end46_crit_edge:                   ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end46

for.end46:                                        ; preds = %for.body39.for.end46_crit_edge, %for.cond36.preheader.for.end46_crit_edge
  %and47 = and i32 %3, 255
  %and49 = shl i32 %5, 8
  %shl50 = and i32 %and49, 65280
  %or51 = or i32 %shl50, %and47
  %mux_scan = getelementptr inbounds %struct.pci1710_private, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %mux_scan to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or51, ptr %mux_scan, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  tail call void @arm_heavy_mb() #6
  %30 = ptrtoint ptr %mux_scan to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mux_scan, align 4
  %conv56 = trunc i32 %31 to i16
  %32 = tail call i16 @llvm.bswap.i16(i16 %conv56)
  %iobase57 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %33 = ptrtoint ptr %iobase57 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %iobase57, align 4
  %add58 = add i32 %34, 4
  %and59 = and i32 %add58, 1048575
  %add60 = or i32 %and59, -18874368
  %35 = inttoptr i32 %add60 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %35, i16 %32) #6, !srcloc !83
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_timeout(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci1710_ai_eoc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 6
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %2) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !130
  %4 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp = icmp eq i16 %4, 0
  %. = select i1 %cmp, i32 0, i32 -16
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_cascade_ns_to_timer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_update_divisors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv_pci1710_pci_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %call = tail call i32 @comedi_pci_auto_config(ptr noundef %dev, ptr noundef nonnull @adv_pci1710_driver, i32 noundef %1) #6
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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !39, !40, !42, !43, !44, !45, !46, !47, !49, !50, !51, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !71}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__initcall__kmod_adv_pci1710__240_958_adv_pci1710_driver_init6, !1, !"__initcall__kmod_adv_pci1710__240_958_adv_pci1710_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/adv_pci1710.c", i32 958, i32 1}
!2 = !{ptr @__exitcall_adv_pci1710_driver_exit, !1, !"__exitcall_adv_pci1710_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author241, !4, !"__UNIQUE_ID_author241", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/adv_pci1710.c", i32 960, i32 1}
!5 = !{ptr @__UNIQUE_ID_description242, !6, !"__UNIQUE_ID_description242", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/adv_pci1710.c", i32 961, i32 1}
!7 = !{ptr @__UNIQUE_ID_file243, !8, !"__UNIQUE_ID_file243", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/adv_pci1710.c", i32 962, i32 1}
!9 = !{ptr @__UNIQUE_ID_license244, !8, !"__UNIQUE_ID_license244", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/adv_pci1710.c", i32 880, i32 17}
!12 = !{ptr @adv_pci1710_driver, !13, !"adv_pci1710_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/adv_pci1710.c", i32 879, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/adv_pci1710.c", i32 141, i32 12}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/comedi/drivers/adv_pci1710.c", i32 146, i32 12}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/comedi/drivers/adv_pci1710.c", i32 151, i32 12}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/comedi/drivers/adv_pci1710.c", i32 157, i32 12}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/comedi/drivers/adv_pci1710.c", i32 162, i32 12}
!24 = !{ptr @boardtypes, !25, !"boardtypes", i1 false, i1 false}
!25 = !{!"../drivers/comedi/drivers/adv_pci1710.c", i32 139, i32 31}
!26 = !{ptr @pci1710_ai_range, !27, !"pci1710_ai_range", i1 false, i1 false}
!27 = !{!"../drivers/comedi/drivers/adv_pci1710.c", i32 74, i32 35}
!28 = !{ptr @pci1710hg_ai_range, !29, !"pci1710hg_ai_range", i1 false, i1 false}
!29 = !{!"../drivers/comedi/drivers/adv_pci1710.c", i32 88, i32 35}
!30 = !{ptr @pci1711_ai_range, !31, !"pci1711_ai_range", i1 false, i1 false}
!31 = !{!"../drivers/comedi/drivers/adv_pci1710.c", i32 105, i32 35}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/comedi/drivers/adv_pci1710.c", i32 402, i32 3}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @pci1710_handle_every_sample.__UNIQUE_ID_ddebug236, !33, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/comedi/drivers/adv_pci1710.c", i32 407, i32 3}
!39 = !{ptr @pci1710_handle_every_sample.__UNIQUE_ID_ddebug237, !38, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/comedi/drivers/adv_pci1710.c", i32 318, i32 4}
!42 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @pci1710_ai_read_sample._entry, !41, !"_entry", i1 false, i1 false}
!46 = !{ptr @pci1710_ai_read_sample._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/comedi/drivers/adv_pci1710.c", i32 445, i32 3}
!49 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @pci1710_handle_fifo.__UNIQUE_ID_ddebug238, !48, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/comedi/drivers/adv_pci1710.c", i32 450, i32 3}
!53 = !{ptr @pci1710_handle_fifo.__UNIQUE_ID_ddebug239, !52, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/comedi/drivers/adv_pci1710.c", i32 208, i32 4}
!56 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @pci1710_ai_check_chanlist._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @pci1710_ai_check_chanlist._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/comedi/drivers/adv_pci1710.c", i32 216, i32 4}
!61 = !{ptr @pci1710_ai_check_chanlist._entry.22, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @pci1710_ai_check_chanlist._entry_ptr.24, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/comedi/drivers/adv_pci1710.c", i32 230, i32 4}
!65 = !{ptr @pci1710_ai_check_chanlist._entry.25, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @pci1710_ai_check_chanlist._entry_ptr.27, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @pci171x_ao_range, !68, !"pci171x_ao_range", i1 false, i1 false}
!68 = !{!"../drivers/comedi/drivers/adv_pci1710.c", i32 115, i32 35}
!69 = !{ptr @adv_pci1710_pci_driver, !70, !"adv_pci1710_pci_driver", i1 false, i1 false}
!70 = !{!"../drivers/comedi/drivers/adv_pci1710.c", i32 952, i32 26}
!71 = !{ptr @adv_pci1710_pci_table, !72, !"adv_pci1710_pci_table", i1 false, i1 false}
!72 = !{!"../drivers/comedi/drivers/adv_pci1710.c", i32 893, i32 35}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{i64 2154598145}
!83 = !{i64 4640329}
!84 = !{i64 2154598585}
!85 = !{i64 4640752}
!86 = !{i64 2154598934}
!87 = !{i64 2154599283}
!88 = !{i64 2154599700}
!89 = !{i64 2154600224}
!90 = !{i64 2154600716}
!91 = !{i64 4640529}
!92 = !{i64 2154589471}
!93 = !{i64 2154589989}
!94 = !{i64 2154590453}
!95 = !{i64 2154590802}
!96 = !{i64 2154591203}
!97 = !{i64 2154591723}
!98 = !{i64 2154571713}
!99 = !{i64 2154572177}
!100 = !{i64 2154572526}
!101 = !{i64 2154572911}
!102 = !{i64 2154569373}
!103 = !{i64 2154573481}
!104 = !{i64 2154573945}
!105 = !{i64 2154574294}
!106 = !{i32 0, i32 33}
!107 = !{i64 2154592198}
!108 = !{i64 2154592547}
!109 = !{i64 2154593633}
!110 = !{i64 2154594320}
!111 = !{i64 2154574773}
!112 = !{i64 2154575237}
!113 = !{i64 2154575586}
!114 = !{i64 2154595131}
!115 = !{i64 2154595681}
!116 = !{i64 2154596609}
!117 = !{i64 2154596874}
!118 = !{i64 2154597547}
!119 = !{!"auto-init"}
!120 = !{i64 2154576400}
!121 = !{i64 2148978444, i64 2148978449, i64 2148978462, i64 2148978506, i64 2148978540, i64 2148978561}
!122 = !{i64 2154581597}
!123 = !{i64 2154582411}
!124 = !{i64 2154582726}
!125 = !{i64 2154583540}
!126 = !{i64 2154588657}
!127 = !{i64 2154566479}
!128 = !{i64 2154567070}
!129 = !{i64 2154567664}
!130 = !{i64 2154568601}
