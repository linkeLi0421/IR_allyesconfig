; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/amplc_pci224.c_pt.bc'
source_filename = "../drivers/comedi/drivers/amplc_pci224.c"
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
%struct.pci224_board = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.pci224_private = type { i32, i32, %struct.spinlock, ptr, ptr, i32, i16, i16, i16, i8 }
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
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }
%struct.comedi_async = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.comedi_cmd, %struct.wait_queue_head, i32, ptr }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__initcall__kmod_amplc_pci224__238_1137_amplc_pci224_driver_init6 = internal global ptr @amplc_pci224_driver_init, section ".initcall6.init", align 4
@amplc_pci224_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr null, ptr @pci224_detach, ptr @pci224_auto_attach, i32 2, ptr @pci224_boards, i32 24 }, [60 x i8] zeroinitializer }, align 32
@amplc_pci224_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @amplc_pci224_pci_table, ptr @amplc_pci224_pci_probe, ptr @comedi_pci_auto_unconfig, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_amplc_pci224_driver_exit = internal global ptr @amplc_pci224_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author239 = internal constant [50 x i8] c"amplc_pci224.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [80 x i8] c"amplc_pci224.description=Comedi driver for Amplicon PCI224 and PCI234 AO boards\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [54 x i8] c"amplc_pci224.file=drivers/comedi/drivers/amplc_pci224\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [25 x i8] c"amplc_pci224.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"amplc_pci224\00", [19 x i8] zeroinitializer }, align 32
@pci224_boards = internal constant { [2 x %struct.pci224_board], [48 x i8] } { [2 x %struct.pci224_board] [%struct.pci224_board { ptr @.str.19, i32 16, i32 12, ptr @range_pci224, ptr @hwrange_pci224, ptr @range_check_pci224 }, %struct.pci224_board { ptr @.str.20, i32 4, i32 16, ptr @range_pci234, ptr @hwrange_pci234, ptr @range_check_pci234 }], [48 x i8] zeroinitializer }, align 32
@pci224_auto_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1003, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"amplc_pci224: BUG! cannot determine board type!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pci224_auto_attach\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/comedi/drivers/amplc_pci224.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pci224_auto_attach._entry_ptr = internal global ptr @pci224_auto_attach._entry, section ".printk_index", align 4
@pci224_auto_attach._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1010, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"amplc_pci224: attach pci %s - %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pci224_auto_attach._entry_ptr.9 = internal global ptr @pci224_auto_attach._entry.6, section ".printk_index", align 4
@pci224_auto_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&devpriv->ao_spinlock\00", [42 x i8] zeroinitializer }, align 32
@pci224_auto_attach._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 1087, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"error! unable to allocate irq %u\0A\00", [62 x i8] zeroinitializer }, align 32
@pci224_auto_attach._entry_ptr.13 = internal global ptr @pci224_auto_attach._entry.11, section ".printk_index", align 4
@pci224_ao_check_chanlist.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.3, ptr @.str.15, i8 0, i8 -98, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pci224_ao_check_chanlist\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s: entries in chanlist must contain no duplicate channels\0A\00", [36 x i8] zeroinitializer }, align 32
@pci224_ao_check_chanlist.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.3, ptr @.str.16, i8 0, i8 -95, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: entries in chanlist have incompatible ranges\0A\00", [46 x i8] zeroinitializer }, align 32
@pci224_ao_handle_fifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 540, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AO buffer underrun\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pci224_ao_handle_fifo\00", [42 x i8] zeroinitializer }, align 32
@pci224_ao_handle_fifo._entry_ptr = internal global ptr @pci224_ao_handle_fifo._entry, section ".printk_index", align 4
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pci224\00", [25 x i8] zeroinitializer }, align 32
@hwrange_pci224 = internal constant { [10 x i16], [44 x i8] } { [10 x i16] [i16 56, i16 40, i16 24, i16 8, i16 48, i16 32, i16 16, i16 0, i16 8, i16 0], [44 x i8] zeroinitializer }, align 32
@range_check_pci224 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\00\01\02\03\04\05\06\07\08\09", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pci234\00", [25 x i8] zeroinitializer }, align 32
@hwrange_pci234 = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 8, i16 8, i16 8, i16 8], [24 x i8] zeroinitializer }, align 32
@range_check_pci234 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\00\01\01", [28 x i8] zeroinitializer }, align 32
@range_pci224 = internal constant { { i32, [10 x %struct.comedi_krange] }, [36 x i8] } { { i32, [10 x %struct.comedi_krange] } { i32 10, [10 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 2500000, i32 0 }, %struct.comedi_krange { i32 0, i32 1250000, i32 0 }, %struct.comedi_krange { i32 -1000000, i32 1000000, i32 256 }, %struct.comedi_krange { i32 0, i32 1000000, i32 256 }] }, [36 x i8] zeroinitializer }, align 32
@range_pci234 = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2000000, i32 2000000, i32 256 }, %struct.comedi_krange { i32 -1000000, i32 1000000, i32 256 }] }, [44 x i8] zeroinitializer }, align 32
@amplc_pci224_pci_table = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 5340, i32 7, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5340, i32 8, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 64, i64 128]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 64]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 32, i64 64]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4096, i64 16384]
@___asan_gen_.26 = private unnamed_addr constant [20 x i8] c"amplc_pci224_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1107, i32 29 }
@___asan_gen_.29 = private unnamed_addr constant [24 x i8] c"amplc_pci224_pci_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1131, i32 26 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1108, i32 17 }
@___asan_gen_.35 = private unnamed_addr constant [14 x i8] c"pci224_boards\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 349, i32 34 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1002, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1009, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1020, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1086, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 633, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 642, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 540, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 351, i32 12 }
@___asan_gen_.98 = private unnamed_addr constant [15 x i8] c"hwrange_pci224\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 281, i32 29 }
@___asan_gen_.101 = private unnamed_addr constant [19 x i8] c"range_check_pci224\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 297, i32 28 }
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 359, i32 12 }
@___asan_gen_.107 = private unnamed_addr constant [15 x i8] c"hwrange_pci234\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 322, i32 29 }
@___asan_gen_.110 = private unnamed_addr constant [19 x i8] c"range_check_pci234\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 330, i32 28 }
@___asan_gen_.113 = private unnamed_addr constant [13 x i8] c"range_pci224\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 264, i32 35 }
@___asan_gen_.116 = private unnamed_addr constant [13 x i8] c"range_pci234\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 308, i32 35 }
@___asan_gen_.119 = private unnamed_addr constant [23 x i8] c"amplc_pci224_pci_table\00", align 1
@___asan_gen_.120 = private constant [41 x i8] c"../drivers/comedi/drivers/amplc_pci224.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1124, i32 35 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__exitcall_amplc_pci224_driver_exit, ptr @__initcall__kmod_amplc_pci224__238_1137_amplc_pci224_driver_init6, ptr @amplc_pci224_driver_exit, ptr @pci224_ao_handle_fifo._entry, ptr @pci224_ao_handle_fifo._entry_ptr, ptr @pci224_auto_attach._entry, ptr @pci224_auto_attach._entry.11, ptr @pci224_auto_attach._entry.6, ptr @pci224_auto_attach._entry_ptr, ptr @pci224_auto_attach._entry_ptr.13, ptr @pci224_auto_attach._entry_ptr.9, ptr @amplc_pci224_driver, ptr @amplc_pci224_pci_driver, ptr @.str, ptr @pci224_boards, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @pci224_auto_attach.__key, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @hwrange_pci224, ptr @range_check_pci224, ptr @.str.20, ptr @hwrange_pci234, ptr @range_check_pci234, ptr @range_pci224, ptr @range_pci234, ptr @amplc_pci224_pci_table], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amplc_pci224_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amplc_pci224_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci224_boards to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci224_auto_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci224_auto_attach._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci224_auto_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci224_auto_attach._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci224_ao_handle_fifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwrange_pci224 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_check_pci224 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwrange_pci234 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_check_pci234 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_pci224 to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_pci234 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amplc_pci224_pci_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @amplc_pci224_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_pci_driver_register(ptr noundef nonnull @amplc_pci224_driver, ptr noundef nonnull @amplc_pci224_pci_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @amplc_pci224_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @comedi_pci_driver_unregister(ptr noundef nonnull @amplc_pci224_driver, ptr noundef nonnull @amplc_pci224_pci_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_driver_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci224_detach(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  tail call void @comedi_pci_detach(ptr noundef %dev) #9
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ao_scan_vals = getelementptr inbounds %struct.pci224_private, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ao_scan_vals to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ao_scan_vals, align 4
  tail call void @kfree(ptr noundef %3) #9
  %ao_scan_order = getelementptr inbounds %struct.pci224_private, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %ao_scan_order to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ao_scan_order, align 4
  tail call void @kfree(ptr noundef %5) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci224_auto_attach(ptr noundef %dev, i32 noundef %context_model) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_pci_dev(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %context_model)
  %cmp = icmp ugt i32 %context_model, 1
  %arrayidx = getelementptr [2 x %struct.pci224_board], ptr @pci224_boards, i32 0, i32 %context_model
  %tobool.not231 = icmp eq ptr %arrayidx, null
  %tobool.not = or i1 %cmp, %tobool.not231
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.do.end_crit_edge, label %if.end3

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end3:                                          ; preds = %lor.lhs.false
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %4 = ptrtoint ptr %board_ptr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx, ptr %board_ptr, align 4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %board_name = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %7 = ptrtoint ptr %board_name to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %board_name, align 4
  %class_dev8 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %8 = ptrtoint ptr %class_dev8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %class_dev8, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 44, i32 3
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end3.pci_name.exit_crit_edge

if.end3.pci_name.exit_crit_edge:                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 44
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end3.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %if.end3.pci_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.7, ptr noundef %retval.0.i.i, ptr noundef %6) #12
  %call11 = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 72) #9
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %pci_name.exit.cleanup_crit_edge, label %if.end14

pci_name.exit.cleanup_crit_edge:                  ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %pci_name.exit
  %call15 = tail call i32 @comedi_pci_enable(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %do.body19, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body19:                                        ; preds = %if.end14
  %ao_spinlock = getelementptr inbounds %struct.pci224_private, ptr %call11, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %ao_spinlock, ptr noundef nonnull @.str.10, ptr noundef nonnull @pci224_auto_attach.__key, i16 noundef signext 3) #9
  %arrayidx23 = getelementptr %struct.pci_dev, ptr %call, i32 0, i32 47, i32 2
  %14 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx23, align 8
  %16 = ptrtoint ptr %call11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %call11, align 4
  %arrayidx25 = getelementptr %struct.pci_dev, ptr %call, i32 0, i32 47, i32 3
  %17 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx25, align 8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %19 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %iobase, align 4
  %irq27 = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 46
  %20 = ptrtoint ptr %irq27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq27, align 4
  %ao_chans = getelementptr [2 x %struct.pci224_board], ptr @pci224_boards, i32 0, i32 %context_model, i32 1
  %22 = ptrtoint ptr %ao_chans to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ao_chans, align 4
  %24 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %23, i32 2) #9
  %25 = extractvalue { i32, i1 } %24, 1
  br i1 %25, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !78

kmalloc_array.exit.thread:                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #11
  %ao_scan_vals218 = getelementptr inbounds %struct.pci224_private, ptr %call11, i32 0, i32 3
  %26 = ptrtoint ptr %ao_scan_vals218 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %ao_scan_vals218, align 4
  br label %cleanup

if.end7.i:                                        ; preds = %do.body19
  %27 = extractvalue { i32, i1 } %24, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %27, i32 noundef 3264) #13
  %ao_scan_vals = getelementptr inbounds %struct.pci224_private, ptr %call11, i32 0, i32 3
  %28 = ptrtoint ptr %ao_scan_vals to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call8.i, ptr %ao_scan_vals, align 4
  %tobool30.not = icmp eq ptr %call8.i, null
  br i1 %tobool30.not, label %if.end7.i.cleanup_crit_edge, label %if.end7.i214

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7.i214:                                     ; preds = %if.end7.i
  %29 = ptrtoint ptr %ao_chans to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ao_chans, align 4
  %call8.i213 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %30, i32 noundef 3264) #13
  %ao_scan_order = getelementptr inbounds %struct.pci224_private, ptr %call11, i32 0, i32 4
  %31 = ptrtoint ptr %ao_scan_order to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call8.i213, ptr %ao_scan_order, align 4
  %tobool36.not = icmp eq ptr %call8.i213, null
  br i1 %tobool36.not, label %if.end7.i214.cleanup_crit_edge, label %if.end38

if.end7.i214.cleanup_crit_edge:                   ; preds = %if.end7.i214
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end38:                                         ; preds = %if.end7.i214
  %intsce = getelementptr inbounds %struct.pci224_private, ptr %call11, i32 0, i32 9
  %32 = ptrtoint ptr %intsce to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %intsce, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !79
  tail call void @arm_heavy_mb() #9
  %33 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %call11, align 4
  %add = add i32 %34, 30
  %and = and i32 %add, 1048575
  %add43 = or i32 %and, -18874368
  %35 = inttoptr i32 %add43 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 0) #9, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !81
  tail call void @arm_heavy_mb() #9
  %36 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %iobase, align 4
  %add49 = add i32 %37, 2
  %and50 = and i32 %add49, 1048575
  %add51 = or i32 %and50, -18874368
  %38 = inttoptr i32 %add51 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %38, i16 32) #9, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  tail call void @arm_heavy_mb() #9
  %39 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %iobase, align 4
  %add57 = add i32 %40, 6
  %and58 = and i32 %add57, 1048575
  %add59 = or i32 %and58, -18874368
  %41 = inttoptr i32 %add59 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %41, i16 0) #9, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !84
  tail call void @arm_heavy_mb() #9
  %42 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %iobase, align 4
  %add65 = add i32 %43, 4
  %and66 = and i32 %add65, 1048575
  %add67 = or i32 %and66, -18874368
  %44 = inttoptr i32 %add67 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %44, i16 0) #9, !srcloc !82
  %daccon = getelementptr inbounds %struct.pci224_private, ptr %call11, i32 0, i32 7
  %45 = ptrtoint ptr %daccon to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 265, ptr %daccon, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !85
  tail call void @arm_heavy_mb() #9
  %46 = ptrtoint ptr %daccon to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %daccon, align 2
  %48 = or i16 %47, 4096
  %49 = tail call i16 @llvm.bswap.i16(i16 %48)
  %50 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %iobase, align 4
  %add75 = add i32 %51, 2
  %and76 = and i32 %add75, 1048575
  %add77 = or i32 %and76, -18874368
  %52 = inttoptr i32 %add77 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %52, i16 %49) #9, !srcloc !82
  %53 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %call11, align 4
  %add80 = add i32 %54, 20
  %call81 = tail call ptr @comedi_8254_init(i32 noundef %add80, i32 noundef 100, i32 noundef 1, i32 noundef 0) #9
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %55 = ptrtoint ptr %pacer to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call81, ptr %pacer, align 4
  %tobool83.not = icmp eq ptr %call81, null
  br i1 %tobool83.not, label %if.end38.cleanup_crit_edge, label %if.end85

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end85:                                         ; preds = %if.end38
  %call86 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end89, label %if.end85.cleanup_crit_edge

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end89:                                         ; preds = %if.end85
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %56 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 2, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %57, i32 0, i32 4
  %59 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1196032, ptr %subdev_flags, align 4
  %60 = ptrtoint ptr %ao_chans to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ao_chans, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %57, i32 0, i32 3
  %62 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %n_chan, align 4
  %ao_bits = getelementptr [2 x %struct.pci224_board], ptr @pci224_boards, i32 0, i32 %context_model, i32 2
  %63 = ptrtoint ptr %ao_bits to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ao_bits, align 4
  %notmask = shl nsw i32 -1, %64
  %sub = xor i32 %notmask, -1
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %57, i32 0, i32 13
  %65 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %sub, ptr %maxdata, align 4
  %ao_range = getelementptr [2 x %struct.pci224_board], ptr @pci224_boards, i32 0, i32 %context_model, i32 3
  %66 = ptrtoint ptr %ao_range to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ao_range, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %57, i32 0, i32 15
  %68 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %67, ptr %range_table, align 4
  %insn_write = getelementptr inbounds %struct.comedi_subdevice, ptr %57, i32 0, i32 19
  %69 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @pci224_ao_insn_write, ptr %insn_write, align 4
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, ptr %57, i32 0, i32 5
  %70 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %61, ptr %len_chanlist, align 4
  %write_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 22
  %71 = ptrtoint ptr %write_subdev to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %57, ptr %write_subdev, align 4
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, ptr %57, i32 0, i32 22
  %72 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @pci224_ao_cmd, ptr %do_cmd, align 4
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, ptr %57, i32 0, i32 23
  %73 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @pci224_ao_cmdtest, ptr %do_cmdtest, align 4
  %cancel = getelementptr inbounds %struct.comedi_subdevice, ptr %57, i32 0, i32 25
  %74 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @pci224_ao_cancel, ptr %cancel, align 4
  %munge = getelementptr inbounds %struct.comedi_subdevice, ptr %57, i32 0, i32 27
  %75 = ptrtoint ptr %munge to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @pci224_ao_munge, ptr %munge, align 4
  %call93 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %57) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end96, label %if.end89.cleanup_crit_edge

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end96:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool97.not = icmp eq i32 %21, 0
  br i1 %tobool97.not, label %if.end96.cleanup_crit_edge, label %if.then98

if.end96.cleanup_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then98:                                        ; preds = %if.end96
  %76 = ptrtoint ptr %board_name to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %board_name, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %21, ptr noundef nonnull @pci224_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %77, ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp101 = icmp slt i32 %call.i, 0
  br i1 %cmp101, label %do.end106, label %if.end108

do.end106:                                        ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %class_dev8 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %class_dev8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.12, i32 noundef %21) #12
  br label %cleanup

if.end108:                                        ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #11
  %irq109 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %80 = ptrtoint ptr %irq109 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %21, ptr %irq109, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end108, %do.end106, %if.end96.cleanup_crit_edge, %if.end89.cleanup_crit_edge, %if.end85.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.end7.i214.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %kmalloc_array.exit.thread, %if.end14.cleanup_crit_edge, %pci_name.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end106 ], [ -22, %do.end ], [ -12, %pci_name.exit.cleanup_crit_edge ], [ %call15, %if.end14.cleanup_crit_edge ], [ -12, %if.end7.i.cleanup_crit_edge ], [ -12, %if.end7.i214.cleanup_crit_edge ], [ -12, %if.end38.cleanup_crit_edge ], [ %call86, %if.end85.cleanup_crit_edge ], [ %call93, %if.end89.cleanup_crit_edge ], [ 0, %if.end108 ], [ 0, %if.end96.cleanup_crit_edge ], [ -12, %kmalloc_array.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_to_pci_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_8254_init(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci224_ao_insn_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %and = and i32 %1, 65535
  %shr = lshr i32 %1, 16
  %and2 = and i32 %shr, 255
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
  %cmp16.not = icmp eq i32 %7, 0
  br i1 %cmp16.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %board_ptr.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %shl.i = shl nuw i32 1, %and
  %conv.i = trunc i32 %shl.i to i16
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #9
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.017 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx3 = getelementptr i32, ptr %data, i32 %i.017
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx3, align 4
  %11 = ptrtoint ptr %board_ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %board_ptr.i, align 4
  %13 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !86
  tail call void @arm_heavy_mb() #9
  %15 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %16, 6
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %17 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %17, i16 %8) #9, !srcloc !82
  %daccon.i = getelementptr inbounds %struct.pci224_private, ptr %14, i32 0, i32 7
  %18 = ptrtoint ptr %daccon.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %daccon.i, align 2
  %20 = and i16 %19, -57
  %ao_hwrange.i = getelementptr inbounds %struct.pci224_board, ptr %12, i32 0, i32 4
  %21 = ptrtoint ptr %ao_hwrange.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ao_hwrange.i, align 4
  %arrayidx.i = getelementptr i16, ptr %22, i32 %and2
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx.i, align 2
  %25 = and i16 %24, 56
  %or54.i = or i16 %25, %20
  store i16 %or54.i, ptr %daccon.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !87
  tail call void @arm_heavy_mb() #9
  %26 = ptrtoint ptr %daccon.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %daccon.i, align 2
  %28 = or i16 %27, 4096
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #9
  %30 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %iobase.i, align 4
  %add16.i = add i32 %31, 2
  %and17.i = and i32 %add16.i, 1048575
  %add18.i = or i32 %and17.i, -18874368
  %32 = inttoptr i32 %add18.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %32, i16 %29) #9, !srcloc !82
  %ao_bits.i = getelementptr inbounds %struct.pci224_board, ptr %12, i32 0, i32 2
  %33 = ptrtoint ptr %ao_bits.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ao_bits.i, align 4
  %sub.i = sub i32 16, %34
  %shl22.i = shl i32 %10, %sub.i
  %conv23.i = trunc i32 %shl22.i to i16
  %35 = ptrtoint ptr %daccon.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %daccon.i, align 2
  %37 = and i16 %36, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %cmp.not.i = icmp eq i16 %37, 0
  %conv29.i = xor i16 %conv23.i, -32768
  %mangled.0.i = select i1 %cmp.not.i, i16 %conv23.i, i16 %conv29.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !88
  tail call void @arm_heavy_mb() #9
  %38 = tail call i16 @llvm.bswap.i16(i16 %mangled.0.i) #9
  %39 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %iobase.i, align 4
  %and35.i = and i32 %40, 1048575
  %add36.i = or i32 %and35.i, -18874368
  %41 = inttoptr i32 %add36.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %41, i16 %38) #9, !srcloc !82
  %42 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %iobase.i, align 4
  %and40.i = and i32 %43, 1048575
  %add41.i = or i32 %and40.i, -18874368
  %44 = inttoptr i32 %add41.i to ptr
  %45 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %44) #9, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  %inc = add nuw i32 %i.017, 1
  %46 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %47
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %val.0.lcssa = phi i32 [ %5, %entry.for.end_crit_edge ], [ %10, %for.body.for.end_crit_edge ]
  %48 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %readback, align 4
  %arrayidx5 = getelementptr i32, ptr %49, i32 %and
  %50 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %val.0.lcssa, ptr %arrayidx5, align 4
  %51 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %n, align 4
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci224_ao_cmd(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %4 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %async, align 4
  %chanlist = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 12
  %6 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chanlist, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %chanlist_len = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 13
  %8 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %ao_enab = getelementptr inbounds %struct.pci224_private, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %ao_enab to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %ao_enab, align 4
  %11 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp3129.not = icmp eq i32 %12, 0
  br i1 %cmp3129.not, label %if.end.do.body_crit_edge, label %for.body.lr.ph

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.body.lr.ph:                                   ; preds = %if.end
  %ao_scan_order = getelementptr inbounds %struct.pci224_private, ptr %3, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %i.0130 = phi i32 [ 0, %for.body.lr.ph ], [ %inc23, %for.end.for.body_crit_edge ]
  %13 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chanlist, align 4
  %arrayidx = getelementptr i32, ptr %14, i32 %i.0130
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %and = and i32 %16, 65535
  %shl = shl nuw i32 1, %and
  %17 = ptrtoint ptr %ao_enab to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %ao_enab, align 4
  %19 = trunc i32 %shl to i16
  %conv6 = or i16 %18, %19
  store i16 %conv6, ptr %ao_enab, align 4
  %20 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp9126.not = icmp eq i32 %21, 0
  br i1 %cmp9126.not, label %for.body.for.end_crit_edge, label %for.body11.lr.ph

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body11.lr.ph:                                 ; preds = %for.body
  %22 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chanlist, align 4
  br label %for.body11

for.body11:                                       ; preds = %for.body11.for.body11_crit_edge, %for.body11.lr.ph
  %rank.0128 = phi i32 [ 0, %for.body11.lr.ph ], [ %spec.select, %for.body11.for.body11_crit_edge ]
  %j.0127 = phi i32 [ 0, %for.body11.lr.ph ], [ %inc19, %for.body11.for.body11_crit_edge ]
  %arrayidx13 = getelementptr i32, ptr %23, i32 %j.0127
  %24 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx13, align 4
  %and14 = and i32 %25, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %and14, i32 %and)
  %cmp15 = icmp ult i32 %and14, %and
  %inc = zext i1 %cmp15 to i32
  %spec.select = add i32 %rank.0128, %inc
  %inc19 = add nuw i32 %j.0127, 1
  %exitcond.not = icmp eq i32 %inc19, %21
  br i1 %exitcond.not, label %for.body11.for.end_crit_edge, label %for.body11.for.body11_crit_edge

for.body11.for.body11_crit_edge:                  ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body11

for.body11.for.end_crit_edge:                     ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body11.for.end_crit_edge, %for.body.for.end_crit_edge
  %rank.0.lcssa = phi i32 [ 0, %for.body.for.end_crit_edge ], [ %spec.select, %for.body11.for.end_crit_edge ]
  %conv20 = trunc i32 %i.0130 to i8
  %26 = ptrtoint ptr %ao_scan_order to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ao_scan_order, align 4
  %arrayidx21 = getelementptr i8, ptr %27, i32 %rank.0.lcssa
  %28 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv20, ptr %arrayidx21, align 1
  %inc23 = add nuw i32 %i.0130, 1
  %29 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %chanlist_len, align 4
  %cmp3 = icmp ult i32 %inc23, %30
  br i1 %cmp3, label %for.end.for.body_crit_edge, label %for.end.do.body_crit_edge

for.end.do.body_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body:                                          ; preds = %for.end.do.body_crit_edge, %if.end.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !91
  tail call void @arm_heavy_mb() #9
  %31 = ptrtoint ptr %ao_enab to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %ao_enab, align 4
  %33 = tail call i16 @llvm.bswap.i16(i16 %32)
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %34 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %iobase, align 4
  %add = add i32 %35, 6
  %and26 = and i32 %add, 1048575
  %add27 = or i32 %and26, -18874368
  %36 = inttoptr i32 %add27 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %36, i16 %33) #9, !srcloc !82
  %37 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %chanlist, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %shr = lshr i32 %40, 16
  %and30 = and i32 %shr, 255
  %daccon = getelementptr inbounds %struct.pci224_private, ptr %3, i32 0, i32 7
  %41 = ptrtoint ptr %daccon to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %daccon, align 2
  %43 = and i16 %42, -3648
  %ao_hwrange = getelementptr inbounds %struct.pci224_board, ptr %1, i32 0, i32 4
  %44 = ptrtoint ptr %ao_hwrange to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ao_hwrange, align 4
  %arrayidx33 = getelementptr i16, ptr %45, i32 %and30
  %46 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx33, align 2
  %48 = and i16 %47, 2623
  %49 = or i16 %43, %48
  %or38125 = or i16 %49, 1024
  store i16 %or38125, ptr %daccon, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  tail call void @arm_heavy_mb() #9
  %50 = ptrtoint ptr %daccon to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %daccon, align 2
  %52 = or i16 %51, 4096
  %53 = tail call i16 @llvm.bswap.i16(i16 %52)
  %54 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %iobase, align 4
  %add49 = add i32 %55, 2
  %and50 = and i32 %add49, 1048575
  %add51 = or i32 %and50, -18874368
  %56 = inttoptr i32 %add51 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %56, i16 %53) #9, !srcloc !82
  %scan_begin_src = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 4
  %57 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %58)
  %cmp53 = icmp eq i32 %58, 16
  br i1 %cmp53, label %if.then55, label %do.body.do.body58_crit_edge

do.body.do.body58_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body58

if.then55:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %59 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pacer, align 4
  tail call void @comedi_8254_update_divisors(ptr noundef %60) #9
  %61 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void @arm_heavy_mb() #9
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 4
  %add.i = add i32 %64, 29
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %65 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %65, i8 0) #9, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !94
  tail call void @arm_heavy_mb() #9
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %62, align 4
  %add9.i = add i32 %67, 29
  %and10.i = and i32 %add9.i, 1048575
  %add11.i = or i32 %and10.i, -18874368
  %68 = inttoptr i32 %add11.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %68, i8 16) #9, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !95
  tail call void @arm_heavy_mb() #9
  %69 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %62, align 4
  %add19.i = add i32 %70, 26
  %and20.i = and i32 %add19.i, 1048575
  %add21.i = or i32 %and20.i, -18874368
  %71 = inttoptr i32 %add21.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %71, i8 17) #9, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  tail call void @arm_heavy_mb() #9
  %72 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %62, align 4
  %add29.i = add i32 %73, 26
  %and30.i = and i32 %add29.i, 1048575
  %add31.i = or i32 %and30.i, -18874368
  %74 = inttoptr i32 %add31.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %74, i8 6) #9, !srcloc !80
  %75 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pacer, align 4
  tail call void @comedi_8254_pacer_enable(ptr noundef %76, i32 noundef 2, i32 noundef 0, i1 noundef zeroext false) #9
  br label %do.body58

do.body58:                                        ; preds = %if.then55, %do.body.do.body58_crit_edge
  %ao_spinlock = getelementptr inbounds %struct.pci224_private, ptr %3, i32 0, i32 2
  %call62 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ao_spinlock) #9
  %start_src = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 2
  %77 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %78)
  %cmp67 = icmp eq i32 %78, 128
  br i1 %cmp67, label %if.then69, label %if.else

if.then69:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #11
  %79 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %async, align 4
  %inttrig = getelementptr inbounds %struct.comedi_async, ptr %80, i32 0, i32 20
  %81 = ptrtoint ptr %inttrig to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @pci224_ao_inttrig_start, ptr %inttrig, align 4
  br label %if.end82

if.else:                                          ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #11
  %intsce = getelementptr inbounds %struct.pci224_private, ptr %3, i32 0, i32 9
  %82 = ptrtoint ptr %intsce to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %intsce, align 2
  %84 = or i8 %83, 1
  store i8 %84, ptr %intsce, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  tail call void @arm_heavy_mb() #9
  %85 = ptrtoint ptr %intsce to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %intsce, align 2
  %87 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %3, align 4
  %add78 = add i32 %88, 30
  %and79 = and i32 %add78, 1048575
  %add80 = or i32 %and79, -18874368
  %89 = inttoptr i32 %add80 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %89, i8 %86) #9, !srcloc !80
  br label %if.end82

if.end82:                                         ; preds = %if.else, %if.then69
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ao_spinlock, i32 noundef %call62) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end82, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end82 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci224_ao_cmdtest(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef %cmd) #2 align 64 {
entry:
  %arg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg) #9
  %start_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 2
  %0 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %start_src, align 4
  %and.i = and i32 %1, 192
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
  %and.i234 = and i32 %3, 80
  store i32 %and.i234, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i234)
  %cmp.i235 = icmp ne i32 %and.i234, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i234, i32 %3)
  %cmp1.not.i236 = icmp eq i32 %and.i234, %3
  %or.cond.i237 = and i1 %cmp.i235, %cmp1.not.i236
  %4 = select i1 %or.cond.i, i1 %or.cond.i237, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %5 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %convert_src, align 4
  %and.i239 = and i32 %6, 2
  store i32 %and.i239, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i239)
  %cmp.i240 = icmp ne i32 %and.i239, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i239, i32 %6)
  %cmp1.not.i241 = icmp eq i32 %and.i239, %6
  %or.cond.i242 = and i1 %cmp.i240, %cmp1.not.i241
  %7 = select i1 %4, i1 %or.cond.i242, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %8 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_end_src, align 4
  %and.i244 = and i32 %9, 32
  store i32 %and.i244, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i244)
  %cmp.i245 = icmp ne i32 %and.i244, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i244, i32 %9)
  %cmp1.not.i246 = icmp eq i32 %and.i244, %9
  %or.cond.i247 = and i1 %cmp.i245, %cmp1.not.i246
  %10 = select i1 %7, i1 %or.cond.i247, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %11 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stop_src, align 4
  %and.i249 = and i32 %12, 97
  store i32 %and.i249, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i249)
  %cmp.i250 = icmp ne i32 %and.i249, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i249, i32 %12)
  %cmp1.not.i251 = icmp eq i32 %and.i249, %12
  %or.cond.i252 = and i1 %cmp.i250, %cmp1.not.i251
  %13 = select i1 %10, i1 %or.cond.i252, i1 false
  br i1 %13, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = tail call i32 @llvm.ctpop.i32(i32 %1) #9, !range !98
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.not.i = icmp ult i32 %14, 2
  %15 = tail call i32 @llvm.ctpop.i32(i32 %3) #9, !range !98
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.not.i254 = icmp ult i32 %15, 2
  %16 = tail call i32 @llvm.ctpop.i32(i32 %12) #9, !range !98
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp.not.i256 = icmp ult i32 %16, 2
  %and = lshr i32 %1, 6
  %and.lobit = and i32 %and, 1
  %and23 = lshr i32 %3, 6
  %and23.lobit = and i32 %and23, 1
  %spec.select = add nuw nsw i32 %and.lobit, %and23.lobit
  %17 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.select, ptr %arg, align 4
  %and29 = and i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end.if.end33_crit_edge, label %if.then31

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then31:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arg, align 4
  %inc32 = add i32 %19, 1
  store i32 %inc32, ptr %arg, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end.if.end33_crit_edge
  %20 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp = icmp ult i32 %21, 2
  %22 = select i1 %cmp, i1 %cmp.not.i, i1 false
  %23 = select i1 %22, i1 %cmp.not.i254, i1 false
  %tobool37.not = select i1 %23, i1 %cmp.not.i256, i1 false
  br i1 %tobool37.not, label %if.end39, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39:                                         ; preds = %if.end33
  %trunc = trunc i32 %1 to i8
  %24 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %if.end39.sw.epilog_crit_edge [
    i8 -128, label %sw.bb
    i8 64, label %sw.bb43
  ]

if.end39.sw.epilog_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end39
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %25 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.not.i258 = icmp eq i32 %26, 0
  br i1 %cmp.not.i258, label %sw.bb.sw.epilog_crit_edge, label %if.then.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %start_arg, align 4
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.end39
  %start_arg44 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %28 = ptrtoint ptr %start_arg44 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %start_arg44, align 4
  %and45 = and i32 %29, 67108863
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %sw.bb43.if.end53_crit_edge, label %if.then47

sw.bb43.if.end53_crit_edge:                       ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then47:                                        ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #11
  %and49 = and i32 %29, -67108864
  %30 = ptrtoint ptr %start_arg44 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and49, ptr %start_arg44, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then47, %sw.bb43.if.end53_crit_edge
  %err.1 = phi i32 [ -22, %if.then47 ], [ 0, %sw.bb43.if.end53_crit_edge ]
  %31 = ptrtoint ptr %start_arg44 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %start_arg44, align 4
  %and56 = and i32 %32, -1140850688
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end53.sw.epilog_crit_edge, label %if.then58

if.end53.sw.epilog_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then58:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %and60 = and i32 %32, 1140850687
  %33 = ptrtoint ptr %start_arg44 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and60, ptr %start_arg44, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then58, %if.end53.sw.epilog_crit_edge, %if.then.i, %sw.bb.sw.epilog_crit_edge, %if.end39.sw.epilog_crit_edge
  %err.2 = phi i32 [ 0, %if.end39.sw.epilog_crit_edge ], [ -22, %if.then58 ], [ %err.1, %if.end53.sw.epilog_crit_edge ], [ -22, %if.then.i ], [ 0, %sw.bb.sw.epilog_crit_edge ]
  %34 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %3, label %sw.epilog.sw.epilog97_crit_edge [
    i32 16, label %sw.bb66
    i32 64, label %sw.bb75
  ]

sw.epilog.sw.epilog97_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog97

sw.bb66:                                          ; preds = %sw.epilog
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %35 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %chanlist_len, align 4
  %mul = mul i32 %36, 625
  %37 = tail call i32 @llvm.umax.i32(i32 %mul, i32 2500)
  %38 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arg, align 4
  %39 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %37)
  %cmp.i260 = icmp ult i32 %40, %37
  br i1 %cmp.i260, label %if.then.i261, label %sw.bb66.comedi_check_trigger_arg_min.exit_crit_edge

sw.bb66.comedi_check_trigger_arg_min.exit_crit_edge: ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #11
  br label %comedi_check_trigger_arg_min.exit

if.then.i261:                                     ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %37, ptr %scan_begin_arg, align 4
  br label %comedi_check_trigger_arg_min.exit

comedi_check_trigger_arg_min.exit:                ; preds = %if.then.i261, %sw.bb66.comedi_check_trigger_arg_min.exit_crit_edge
  %retval.0.i262 = phi i32 [ -22, %if.then.i261 ], [ 0, %sw.bb66.comedi_check_trigger_arg_min.exit_crit_edge ]
  %or74 = or i32 %retval.0.i262, %err.2
  br label %sw.epilog97

sw.bb75:                                          ; preds = %sw.epilog
  %scan_begin_arg76 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %42 = ptrtoint ptr %scan_begin_arg76 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %scan_begin_arg76, align 4
  %and77 = and i32 %43, 67108863
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %sw.bb75.if.end85_crit_edge, label %if.then79

sw.bb75.if.end85_crit_edge:                       ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.then79:                                        ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #11
  %and81 = and i32 %43, -67108864
  %44 = ptrtoint ptr %scan_begin_arg76 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %and81, ptr %scan_begin_arg76, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then79, %sw.bb75.if.end85_crit_edge
  %err.3 = phi i32 [ -22, %if.then79 ], [ %err.2, %sw.bb75.if.end85_crit_edge ]
  %45 = ptrtoint ptr %scan_begin_arg76 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %scan_begin_arg76, align 4
  %and88 = and i32 %46, 1006632960
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.end85.sw.epilog97_crit_edge, label %if.then90

if.end85.sw.epilog97_crit_edge:                   ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog97

if.then90:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  %and92 = and i32 %46, -1006632961
  %47 = ptrtoint ptr %scan_begin_arg76 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %and92, ptr %scan_begin_arg76, align 4
  br label %sw.epilog97

sw.epilog97:                                      ; preds = %if.then90, %if.end85.sw.epilog97_crit_edge, %comedi_check_trigger_arg_min.exit, %sw.epilog.sw.epilog97_crit_edge
  %err.4 = phi i32 [ %err.2, %sw.epilog.sw.epilog97_crit_edge ], [ -22, %if.then90 ], [ %err.3, %if.end85.sw.epilog97_crit_edge ], [ %or74, %comedi_check_trigger_arg_min.exit ]
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %48 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %convert_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp.not.i263 = icmp eq i32 %49, 0
  br i1 %cmp.not.i263, label %sw.epilog97.comedi_check_trigger_arg_is.exit266_crit_edge, label %if.then.i264

sw.epilog97.comedi_check_trigger_arg_is.exit266_crit_edge: ; preds = %sw.epilog97
  call void @__sanitizer_cov_trace_pc() #11
  br label %comedi_check_trigger_arg_is.exit266

if.then.i264:                                     ; preds = %sw.epilog97
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %convert_arg, align 4
  br label %comedi_check_trigger_arg_is.exit266

comedi_check_trigger_arg_is.exit266:              ; preds = %if.then.i264, %sw.epilog97.comedi_check_trigger_arg_is.exit266_crit_edge
  %retval.0.i265 = phi i32 [ -22, %if.then.i264 ], [ 0, %sw.epilog97.comedi_check_trigger_arg_is.exit266_crit_edge ]
  %or99 = or i32 %retval.0.i265, %err.4
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %chanlist_len100 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %51 = ptrtoint ptr %chanlist_len100 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %chanlist_len100, align 4
  %53 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %52)
  %cmp.not.i267 = icmp eq i32 %54, %52
  br i1 %cmp.not.i267, label %comedi_check_trigger_arg_is.exit266.comedi_check_trigger_arg_is.exit270_crit_edge, label %if.then.i268

comedi_check_trigger_arg_is.exit266.comedi_check_trigger_arg_is.exit270_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit266
  call void @__sanitizer_cov_trace_pc() #11
  br label %comedi_check_trigger_arg_is.exit270

if.then.i268:                                     ; preds = %comedi_check_trigger_arg_is.exit266
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %52, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit270

comedi_check_trigger_arg_is.exit270:              ; preds = %if.then.i268, %comedi_check_trigger_arg_is.exit266.comedi_check_trigger_arg_is.exit270_crit_edge
  %retval.0.i269 = phi i32 [ -22, %if.then.i268 ], [ 0, %comedi_check_trigger_arg_is.exit266.comedi_check_trigger_arg_is.exit270_crit_edge ]
  %or102 = or i32 %or99, %retval.0.i269
  %56 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %12, label %comedi_check_trigger_arg_is.exit270.sw.epilog132_crit_edge [
    i32 32, label %sw.bb104
    i32 64, label %sw.bb107
    i32 1, label %sw.bb128
  ]

comedi_check_trigger_arg_is.exit270.sw.epilog132_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit270
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog132

sw.bb104:                                         ; preds = %comedi_check_trigger_arg_is.exit270
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %57 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp.i271 = icmp eq i32 %58, 0
  br i1 %cmp.i271, label %if.then.i272, label %sw.bb104.comedi_check_trigger_arg_min.exit274_crit_edge

sw.bb104.comedi_check_trigger_arg_min.exit274_crit_edge: ; preds = %sw.bb104
  call void @__sanitizer_cov_trace_pc() #11
  br label %comedi_check_trigger_arg_min.exit274

if.then.i272:                                     ; preds = %sw.bb104
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %stop_arg, align 4
  br label %comedi_check_trigger_arg_min.exit274

comedi_check_trigger_arg_min.exit274:             ; preds = %if.then.i272, %sw.bb104.comedi_check_trigger_arg_min.exit274_crit_edge
  %retval.0.i273 = phi i32 [ -22, %if.then.i272 ], [ 0, %sw.bb104.comedi_check_trigger_arg_min.exit274_crit_edge ]
  %or106 = or i32 %retval.0.i273, %or102
  br label %sw.epilog132

sw.bb107:                                         ; preds = %comedi_check_trigger_arg_is.exit270
  %stop_arg108 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %60 = ptrtoint ptr %stop_arg108 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %stop_arg108, align 4
  %and109 = and i32 %61, 67108863
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %sw.bb107.if.end117_crit_edge, label %if.then111

sw.bb107.if.end117_crit_edge:                     ; preds = %sw.bb107
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end117

if.then111:                                       ; preds = %sw.bb107
  call void @__sanitizer_cov_trace_pc() #11
  %and113 = and i32 %61, -67108864
  %62 = ptrtoint ptr %stop_arg108 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %and113, ptr %stop_arg108, align 4
  %or116 = or i32 %err.4, -22
  br label %if.end117

if.end117:                                        ; preds = %if.then111, %sw.bb107.if.end117_crit_edge
  %err.5 = phi i32 [ %or116, %if.then111 ], [ %or102, %sw.bb107.if.end117_crit_edge ]
  %63 = ptrtoint ptr %stop_arg108 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %stop_arg108, align 4
  %and120 = and i32 %64, -1140850688
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %if.end117.sw.epilog132_crit_edge, label %if.then122

if.end117.sw.epilog132_crit_edge:                 ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog132

if.then122:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  %and124 = and i32 %64, 1140850687
  %65 = ptrtoint ptr %stop_arg108 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %and124, ptr %stop_arg108, align 4
  br label %sw.epilog132

sw.bb128:                                         ; preds = %comedi_check_trigger_arg_is.exit270
  %stop_arg129 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %66 = ptrtoint ptr %stop_arg129 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %stop_arg129, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp.not.i275 = icmp eq i32 %67, 0
  br i1 %cmp.not.i275, label %sw.bb128.comedi_check_trigger_arg_is.exit278_crit_edge, label %if.then.i276

sw.bb128.comedi_check_trigger_arg_is.exit278_crit_edge: ; preds = %sw.bb128
  call void @__sanitizer_cov_trace_pc() #11
  br label %comedi_check_trigger_arg_is.exit278

if.then.i276:                                     ; preds = %sw.bb128
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %stop_arg129 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %stop_arg129, align 4
  br label %comedi_check_trigger_arg_is.exit278

comedi_check_trigger_arg_is.exit278:              ; preds = %if.then.i276, %sw.bb128.comedi_check_trigger_arg_is.exit278_crit_edge
  %retval.0.i277 = phi i32 [ -22, %if.then.i276 ], [ 0, %sw.bb128.comedi_check_trigger_arg_is.exit278_crit_edge ]
  %or131 = or i32 %retval.0.i277, %or102
  br label %sw.epilog132

sw.epilog132:                                     ; preds = %comedi_check_trigger_arg_is.exit278, %if.then122, %if.end117.sw.epilog132_crit_edge, %comedi_check_trigger_arg_min.exit274, %comedi_check_trigger_arg_is.exit270.sw.epilog132_crit_edge
  %err.6 = phi i32 [ %or102, %comedi_check_trigger_arg_is.exit270.sw.epilog132_crit_edge ], [ %or131, %comedi_check_trigger_arg_is.exit278 ], [ %err.5, %if.then122 ], [ %err.5, %if.end117.sw.epilog132_crit_edge ], [ %or106, %comedi_check_trigger_arg_min.exit274 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.6)
  %tobool133.not = icmp eq i32 %err.6, 0
  br i1 %tobool133.not, label %if.end135, label %sw.epilog132.cleanup_crit_edge

sw.epilog132.cleanup_crit_edge:                   ; preds = %sw.epilog132
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end135:                                        ; preds = %sw.epilog132
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp137 = icmp eq i32 %3, 16
  br i1 %cmp137, label %if.then138, label %if.end135.if.end146_crit_edge

if.end135.if.end146_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end146

if.then138:                                       ; preds = %if.end135
  %scan_begin_arg139 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %69 = ptrtoint ptr %scan_begin_arg139 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %scan_begin_arg139, align 4
  %71 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %arg, align 4
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %72 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pacer, align 4
  %flags = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 1
  %74 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %flags, align 4
  call void @comedi_8254_cascade_ns_to_timer(ptr noundef %73, ptr noundef nonnull %arg, i32 noundef %75) #9
  %76 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arg, align 4
  %78 = ptrtoint ptr %scan_begin_arg139 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %scan_begin_arg139, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %77)
  %cmp.not.i279 = icmp eq i32 %79, %77
  br i1 %cmp.not.i279, label %if.then138.if.end146_crit_edge, label %comedi_check_trigger_arg_is.exit282

if.then138.if.end146_crit_edge:                   ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end146

comedi_check_trigger_arg_is.exit282:              ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %scan_begin_arg139 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %77, ptr %scan_begin_arg139, align 4
  br label %cleanup

if.end146:                                        ; preds = %if.then138.if.end146_crit_edge, %if.end135.if.end146_crit_edge
  %chanlist = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %81 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %chanlist, align 4
  %tobool147.not = icmp eq ptr %82, null
  br i1 %tobool147.not, label %if.end146.if.end153.thread_crit_edge, label %land.lhs.true

if.end146.if.end153.thread_crit_edge:             ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end153.thread

land.lhs.true:                                    ; preds = %if.end146
  %83 = ptrtoint ptr %chanlist_len100 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %chanlist_len100, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp149.not = icmp eq i32 %84, 0
  br i1 %cmp149.not, label %land.lhs.true.if.end153.thread_crit_edge, label %if.end153

land.lhs.true.if.end153.thread_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end153.thread

if.end153:                                        ; preds = %land.lhs.true
  %call151 = call fastcc i32 @pci224_ao_check_chanlist(ptr noundef %dev, ptr noundef %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %phi.cmp233 = icmp eq i32 %call151, 0
  br i1 %phi.cmp233, label %if.end153.if.end153.thread_crit_edge, label %if.end153.cleanup_crit_edge

if.end153.cleanup_crit_edge:                      ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end153.if.end153.thread_crit_edge:             ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end153.thread

if.end153.thread:                                 ; preds = %if.end153.if.end153.thread_crit_edge, %land.lhs.true.if.end153.thread_crit_edge, %if.end146.if.end153.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end153.thread, %if.end153.cleanup_crit_edge, %comedi_check_trigger_arg_is.exit282, %sw.epilog132.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 2, %if.end33.cleanup_crit_edge ], [ 3, %sw.epilog132.cleanup_crit_edge ], [ 4, %comedi_check_trigger_arg_is.exit282 ], [ 0, %if.end153.thread ], [ 5, %if.end153.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci224_ao_cancel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @pci224_ao_stop(ptr noundef %dev)
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci224_ao_munge(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef %data, i32 noundef %num_bytes, i32 noundef %chan_index) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %2 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %async, align 4
  %ao_bits = getelementptr inbounds %struct.pci224_board, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ao_bits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ao_bits, align 4
  %sub = sub i32 16, %5
  %ao_hwrange = getelementptr inbounds %struct.pci224_board, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %ao_hwrange to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ao_hwrange, align 4
  %chanlist = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 12
  %8 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chanlist, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %shr = lshr i32 %11, 16
  %and = and i32 %shr, 255
  %arrayidx2 = getelementptr i16, ptr %7, i32 %and
  %12 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx2, align 2
  %14 = shl i16 %13, 12
  %15 = and i16 %14, -32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %num_bytes)
  %cmp518.not = icmp ult i32 %num_bytes, 2
  br i1 %cmp518.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %div17 = lshr i32 %num_bytes, 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.019 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx7 = getelementptr i16, ptr %data, i32 %i.019
  %16 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx7, align 2
  %conv8 = zext i16 %17 to i32
  %shl = shl i32 %conv8, %sub
  %18 = trunc i32 %shl to i16
  %conv10 = add i16 %15, %18
  store i16 %conv10, ptr %arrayidx7, align 2
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, %div17
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci224_interrupt(i32 noundef %irq, ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %write_subdev = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 22
  %2 = ptrtoint ptr %write_subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_subdev, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %add = add i32 %5, 30
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %6 = inttoptr i32 %add2 to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #9, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  %8 = and i8 %7, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %entry.if.end89_crit_edge, label %if.then

entry.if.end89_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

if.then:                                          ; preds = %entry
  %ao_spinlock = getelementptr inbounds %struct.pci224_private, ptr %1, i32 0, i32 2
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ao_spinlock) #9
  %intsce = getelementptr inbounds %struct.pci224_private, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %intsce to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %intsce, align 2
  %and15119 = and i8 %10, %8
  %neg = xor i8 %8, -1
  %and20 = and i8 %10, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  tail call void @arm_heavy_mb() #9
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  %add26 = add i32 %12, 30
  %and27 = and i32 %add26, 1048575
  %add28 = or i32 %and27, -18874368
  %13 = inttoptr i32 %add28 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %and20) #9, !srcloc !80
  %intr_running = getelementptr inbounds %struct.pci224_private, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %intr_running to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %intr_running, align 4
  %15 = tail call i32 @llvm.read_register.i32(metadata !68) #9
  %and.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu, align 4
  %intr_cpuid = getelementptr inbounds %struct.pci224_private, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %intr_cpuid to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %intr_cpuid, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ao_spinlock, i32 noundef %call10) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and15119)
  %tobool32.not = icmp eq i8 %and15119, 0
  br i1 %tobool32.not, label %if.then.do.body58_crit_edge, label %if.then33

if.then.do.body58_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body58

if.then33:                                        ; preds = %if.then
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 7
  %20 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %async, align 4
  %conv35 = zext i8 %and15119 to i32
  %and36 = and i32 %conv35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.then33.if.end50_crit_edge, label %if.then38

if.then33.if.end50_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then38:                                        ; preds = %if.then33
  %22 = ptrtoint ptr %intsce to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %intsce, align 2
  %24 = and i8 %23, -2
  store i8 %24, ptr %intsce, align 2
  %start_src = getelementptr inbounds %struct.comedi_async, ptr %21, i32 0, i32 17, i32 2
  %25 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %26)
  %cmp43 = icmp eq i32 %26, 64
  br i1 %cmp43, label %if.then45, label %if.else

if.then45:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %private, align 4
  %29 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %async, align 4
  %state.i = getelementptr inbounds %struct.pci224_private, ptr %28, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i) #9
  %ao_spinlock.i = getelementptr inbounds %struct.pci224_private, ptr %28, i32 0, i32 2
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ao_spinlock.i) #9
  %stop_src.i = getelementptr inbounds %struct.comedi_async, ptr %30, i32 0, i32 17, i32 10
  %31 = ptrtoint ptr %stop_src.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %stop_src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %32)
  %cmp6.i = icmp eq i32 %32, 64
  %spec.select.i = select i1 %cmp6.i, i8 5, i8 4
  %33 = getelementptr inbounds %struct.pci224_private, ptr %28, i32 0, i32 9
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %spec.select.i, ptr %33, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  %35 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %33, align 2
  %37 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %28, align 4
  %add.i = add i32 %38, 30
  %and.i120 = and i32 %add.i, 1048575
  %add13.i = or i32 %and.i120, -18874368
  %39 = inttoptr i32 %add13.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 %36) #9, !srcloc !80
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ao_spinlock.i, i32 noundef %call3.i) #9
  br label %if.end50

if.else:                                          ; preds = %if.then38
  %stop_src = getelementptr inbounds %struct.comedi_async, ptr %21, i32 0, i32 17, i32 10
  %40 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %41)
  %cmp46 = icmp eq i32 %41, 64
  br i1 %cmp46, label %if.then48, label %if.else.if.end50_crit_edge

if.else.if.end50_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then48:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @pci224_ao_stop(ptr noundef %d)
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.else.if.end50_crit_edge, %if.then45, %if.then33.if.end50_crit_edge
  %and52 = and i32 %conv35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end50.do.body58_crit_edge, label %if.then54

if.end50.do.body58_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body58

if.then54:                                        ; preds = %if.end50
  %42 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %private, align 4
  %44 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %async, align 4
  %call.i = tail call i32 @comedi_nscans_left(ptr noundef %3, i32 noundef 0) #9
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 18
  %46 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %iobase.i, align 4
  %add.i123 = add i32 %47, 2
  %and.i124 = and i32 %add.i123, 1048575
  %add2.i = or i32 %and.i124, -18874368
  %48 = inttoptr i32 %add2.i to ptr
  %49 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %48) #9, !srcloc !89
  %50 = shl i16 %49, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %51 = and i16 %50, 28672
  %and5.i = zext i16 %51 to i32
  %52 = zext i32 %and5.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %and5.i, label %sw.default.i [
    i32 4096, label %sw.bb.i
    i32 0, label %if.then54.sw.epilog.i_crit_edge
    i32 16384, label %if.then54.if.end24.i_crit_edge
  ]

if.then54.if.end24.i_crit_edge:                   ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

if.then54.sw.epilog.i_crit_edge:                  ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.then54
  %stop_src.i125 = getelementptr inbounds %struct.comedi_async, ptr %45, i32 0, i32 17, i32 10
  %53 = ptrtoint ptr %stop_src.i125 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %stop_src.i125, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %54)
  %cmp.i = icmp eq i32 %54, 32
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

land.lhs.true.i:                                  ; preds = %sw.bb.i
  %55 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %async, align 4
  %scans_done.i = getelementptr inbounds %struct.comedi_async, ptr %56, i32 0, i32 11
  %57 = ptrtoint ptr %scans_done.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %scans_done.i, align 4
  %stop_arg.i = getelementptr inbounds %struct.comedi_async, ptr %45, i32 0, i32 17, i32 11
  %59 = ptrtoint ptr %stop_arg.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %stop_arg.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp8.not.i = icmp ult i32 %58, %60
  br i1 %cmp8.not.i, label %land.lhs.true.i.sw.epilog.i_crit_edge, label %if.then.i

land.lhs.true.i.sw.epilog.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %events.i = getelementptr inbounds %struct.comedi_async, ptr %56, i32 0, i32 16
  %61 = ptrtoint ptr %events.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %events.i, align 4
  %or.i = or i32 %62, 2
  store i32 %or.i, ptr %events.i, align 4
  br label %pci224_ao_handle_fifo.exit

sw.default.i:                                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

sw.epilog.i:                                      ; preds = %land.lhs.true.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge, %if.then54.sw.epilog.i_crit_edge
  %room.0.i = phi i32 [ 4096, %sw.bb.i.sw.epilog.i_crit_edge ], [ 4096, %land.lhs.true.i.sw.epilog.i_crit_edge ], [ 2048, %if.then54.sw.epilog.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp17.i = icmp eq i32 %call.i, 0
  br i1 %cmp17.i, label %do.end.i, label %sw.epilog.i.if.end24.i_crit_edge

sw.epilog.i.if.end24.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

do.end.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev.i = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 4
  %63 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %class_dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.17) #12
  %65 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %async, align 4
  %events21.i = getelementptr inbounds %struct.comedi_async, ptr %66, i32 0, i32 16
  %67 = ptrtoint ptr %events21.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %events21.i, align 4
  %or22.i = or i32 %68, 32
  store i32 %or22.i, ptr %events21.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %do.end.i, %sw.epilog.i.if.end24.i_crit_edge, %sw.default.i, %if.then54.if.end24.i_crit_edge
  %room.0160.i = phi i32 [ %room.0.i, %do.end.i ], [ %room.0.i, %sw.epilog.i.if.end24.i_crit_edge ], [ 0, %sw.default.i ], [ 1, %if.then54.if.end24.i_crit_edge ]
  %chanlist_len.i = getelementptr inbounds %struct.comedi_async, ptr %45, i32 0, i32 17, i32 13
  %69 = ptrtoint ptr %chanlist_len.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %chanlist_len.i, align 4
  %div.i = udiv i32 %room.0160.i, %70
  %71 = tail call i32 @llvm.umin.i32(i32 %call.i, i32 %div.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp29163.not.i = icmp eq i32 %71, 0
  br i1 %cmp29163.not.i, label %if.end24.i.for.end51.i_crit_edge, label %for.body.lr.ph.i

if.end24.i.for.end51.i_crit_edge:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end51.i

for.body.lr.ph.i:                                 ; preds = %if.end24.i
  %ao_scan_vals.i = getelementptr inbounds %struct.pci224_private, ptr %43, i32 0, i32 3
  %ao_scan_order.i = getelementptr inbounds %struct.pci224_private, ptr %43, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc49.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %n.0164.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc50.i, %for.inc49.i.for.body.i_crit_edge ]
  %72 = ptrtoint ptr %ao_scan_vals.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ao_scan_vals.i, align 4
  %74 = ptrtoint ptr %chanlist_len.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %chanlist_len.i, align 4
  %call32.i = tail call i32 @comedi_buf_read_samples(ptr noundef %3, ptr noundef %73, i32 noundef %75) #9
  %76 = ptrtoint ptr %chanlist_len.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %chanlist_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp35161.not.i = icmp eq i32 %77, 0
  br i1 %cmp35161.not.i, label %for.body.i.for.inc49.i_crit_edge, label %for.body.i.do.body38.i_crit_edge

for.body.i.do.body38.i_crit_edge:                 ; preds = %for.body.i
  br label %do.body38.i

for.body.i.for.inc49.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc49.i

do.body38.i:                                      ; preds = %do.body38.i.do.body38.i_crit_edge, %for.body.i.do.body38.i_crit_edge
  %i.0162.i = phi i32 [ %inc.i, %do.body38.i.do.body38.i_crit_edge ], [ 0, %for.body.i.do.body38.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @arm_heavy_mb() #9
  %78 = ptrtoint ptr %ao_scan_vals.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ao_scan_vals.i, align 4
  %80 = ptrtoint ptr %ao_scan_order.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ao_scan_order.i, align 4
  %arrayidx42.i = getelementptr i8, ptr %81, i32 %i.0162.i
  %82 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx42.i, align 1
  %idxprom.i = zext i8 %83 to i32
  %arrayidx43.i = getelementptr i16, ptr %79, i32 %idxprom.i
  %84 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %arrayidx43.i, align 2
  %86 = tail call i16 @llvm.bswap.i16(i16 %85) #9
  %87 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %iobase.i, align 4
  %and46.i = and i32 %88, 1048575
  %add47.i = or i32 %and46.i, -18874368
  %89 = inttoptr i32 %add47.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %89, i16 %86) #9, !srcloc !82
  %inc.i = add nuw i32 %i.0162.i, 1
  %90 = ptrtoint ptr %chanlist_len.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %chanlist_len.i, align 4
  %cmp35.i = icmp ult i32 %inc.i, %91
  br i1 %cmp35.i, label %do.body38.i.do.body38.i_crit_edge, label %do.body38.i.for.inc49.i_crit_edge

do.body38.i.for.inc49.i_crit_edge:                ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc49.i

do.body38.i.do.body38.i_crit_edge:                ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body38.i

for.inc49.i:                                      ; preds = %do.body38.i.for.inc49.i_crit_edge, %for.body.i.for.inc49.i_crit_edge
  %inc50.i = add nuw nsw i32 %n.0164.i, 1
  %exitcond.not.i = icmp eq i32 %inc50.i, %71
  br i1 %exitcond.not.i, label %for.inc49.i.for.end51.i_crit_edge, label %for.inc49.i.for.body.i_crit_edge

for.inc49.i.for.body.i_crit_edge:                 ; preds = %for.inc49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc49.i.for.end51.i_crit_edge:                ; preds = %for.inc49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end51.i

for.end51.i:                                      ; preds = %for.inc49.i.for.end51.i_crit_edge, %if.end24.i.for.end51.i_crit_edge
  %stop_src52.i = getelementptr inbounds %struct.comedi_async, ptr %45, i32 0, i32 17, i32 10
  %92 = ptrtoint ptr %stop_src52.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %stop_src52.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %93)
  %cmp53.i = icmp eq i32 %93, 32
  br i1 %cmp53.i, label %land.lhs.true55.i, label %for.end51.i.if.end76.i_crit_edge

for.end51.i.if.end76.i_crit_edge:                 ; preds = %for.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76.i

land.lhs.true55.i:                                ; preds = %for.end51.i
  %94 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %async, align 4
  %scans_done57.i = getelementptr inbounds %struct.comedi_async, ptr %95, i32 0, i32 11
  %96 = ptrtoint ptr %scans_done57.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %scans_done57.i, align 4
  %stop_arg58.i = getelementptr inbounds %struct.comedi_async, ptr %45, i32 0, i32 17, i32 11
  %98 = ptrtoint ptr %stop_arg58.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %stop_arg58.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %99)
  %cmp59.not.i = icmp ult i32 %97, %99
  br i1 %cmp59.not.i, label %land.lhs.true55.i.if.end76.i_crit_edge, label %if.then61.i

land.lhs.true55.i.if.end76.i_crit_edge:           ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76.i

if.then61.i:                                      ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #11
  %daccon.i = getelementptr inbounds %struct.pci224_private, ptr %43, i32 0, i32 7
  %100 = ptrtoint ptr %daccon.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %daccon.i, align 2
  %102 = and i16 %101, -3585
  store i16 %102, ptr %daccon.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !105
  tail call void @arm_heavy_mb() #9
  %103 = ptrtoint ptr %daccon.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %daccon.i, align 2
  %105 = tail call i16 @llvm.bswap.i16(i16 %104) #9
  %106 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %iobase.i, align 4
  %add72.i = add i32 %107, 2
  %and73.i = and i32 %add72.i, 1048575
  %add74.i = or i32 %and73.i, -18874368
  %108 = inttoptr i32 %add74.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %108, i16 %105) #9, !srcloc !82
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.then61.i, %land.lhs.true55.i.if.end76.i_crit_edge, %for.end51.i.if.end76.i_crit_edge
  %daccon77.i = getelementptr inbounds %struct.pci224_private, ptr %43, i32 0, i32 7
  %109 = ptrtoint ptr %daccon77.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %daccon77.i, align 2
  %111 = and i16 %110, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %111)
  %cmp80.i = icmp eq i16 %111, 0
  br i1 %cmp80.i, label %if.then82.i, label %if.end76.i.pci224_ao_handle_fifo.exit_crit_edge

if.end76.i.pci224_ao_handle_fifo.exit_crit_edge:  ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci224_ao_handle_fifo.exit

if.then82.i:                                      ; preds = %if.end76.i
  %scan_begin_src.i = getelementptr inbounds %struct.comedi_async, ptr %45, i32 0, i32 17, i32 4
  %112 = ptrtoint ptr %scan_begin_src.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %scan_begin_src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %113)
  %cmp83.i = icmp eq i32 %113, 16
  br i1 %cmp83.i, label %if.then82.i.if.end90.i_crit_edge, label %if.else.i

if.then82.i.if.end90.i_crit_edge:                 ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90.i

if.else.i:                                        ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #11
  %scan_begin_arg.i = getelementptr inbounds %struct.comedi_async, ptr %45, i32 0, i32 17, i32 5
  %114 = ptrtoint ptr %scan_begin_arg.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %scan_begin_arg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %115)
  %tobool.not.i = icmp sgt i32 %115, -1
  %..i = select i1 %tobool.not.i, i16 2, i16 3
  br label %if.end90.i

if.end90.i:                                       ; preds = %if.else.i, %if.then82.i.if.end90.i_crit_edge
  %trig.0.i = phi i16 [ 4, %if.then82.i.if.end90.i_crit_edge ], [ %..i, %if.else.i ]
  %116 = and i16 %110, -8
  %or96.i = or i16 %trig.0.i, %116
  %117 = ptrtoint ptr %daccon77.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %or96.i, ptr %daccon77.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !106
  tail call void @arm_heavy_mb() #9
  %118 = ptrtoint ptr %daccon77.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %daccon77.i, align 2
  %120 = tail call i16 @llvm.bswap.i16(i16 %119) #9
  %121 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %iobase.i, align 4
  %add104.i = add i32 %122, 2
  %and105.i = and i32 %add104.i, 1048575
  %add106.i = or i32 %and105.i, -18874368
  %123 = inttoptr i32 %add106.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %123, i16 %120) #9, !srcloc !82
  br label %pci224_ao_handle_fifo.exit

pci224_ao_handle_fifo.exit:                       ; preds = %if.end90.i, %if.end76.i.pci224_ao_handle_fifo.exit_crit_edge, %if.then.i
  %call109.i = tail call i32 @comedi_handle_events(ptr noundef %d, ptr noundef %3) #9
  br label %do.body58

do.body58:                                        ; preds = %pci224_ao_handle_fifo.exit, %if.end50.do.body58_crit_edge, %if.then.do.body58_crit_edge
  %call66 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ao_spinlock) #9
  %124 = ptrtoint ptr %intsce to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %intsce, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %and20, i8 %125)
  %cmp74.not = icmp eq i8 %and20, %125
  br i1 %cmp74.not, label %do.body58.if.end86_crit_edge, label %do.body77

do.body58.if.end86_crit_edge:                     ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86

do.body77:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %126 = ptrtoint ptr %intsce to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %intsce, align 2
  %128 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %1, align 4
  %add82 = add i32 %129, 30
  %and83 = and i32 %add82, 1048575
  %add84 = or i32 %and83, -18874368
  %130 = inttoptr i32 %add84 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %130, i8 %127) #9, !srcloc !80
  br label %if.end86

if.end86:                                         ; preds = %do.body77, %do.body58.if.end86_crit_edge
  %131 = ptrtoint ptr %intr_running to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 0, ptr %intr_running, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ao_spinlock, i32 noundef %call66) #9
  br label %if.end89

if.end89:                                         ; preds = %if.end86, %entry.if.end89_crit_edge
  %not.tobool.not = xor i1 %tobool.not, true
  %cond = zext i1 %not.tobool.not to i32
  ret i32 %cond
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_update_divisors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci224_ao_inttrig_start(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, i32 noundef %trig_num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %0 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %async, align 4
  %start_arg = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 17, i32 3
  %2 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %trig_num)
  %cmp.not = icmp eq i32 %3, %trig_num
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %inttrig = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %inttrig to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %inttrig, align 4
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %5 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private.i, align 4
  %7 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %async, align 4
  %state.i = getelementptr inbounds %struct.pci224_private, ptr %6, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i) #9
  %ao_spinlock.i = getelementptr inbounds %struct.pci224_private, ptr %6, i32 0, i32 2
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ao_spinlock.i) #9
  %stop_src.i = getelementptr inbounds %struct.comedi_async, ptr %8, i32 0, i32 17, i32 10
  %9 = ptrtoint ptr %stop_src.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %stop_src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %10)
  %cmp6.i = icmp eq i32 %10, 64
  %spec.select.i = select i1 %cmp6.i, i8 5, i8 4
  %11 = getelementptr inbounds %struct.pci224_private, ptr %6, i32 0, i32 9
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %spec.select.i, ptr %11, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %11, align 2
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %6, align 4
  %add.i = add i32 %16, 30
  %and.i = and i32 %add.i, 1048575
  %add13.i = or i32 %and.i, -18874368
  %17 = inttoptr i32 %add13.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %14) #9, !srcloc !80
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ao_spinlock.i, i32 noundef %call3.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_pacer_enable(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_cascade_ns_to_timer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pci224_ao_check_chanlist(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %ao_range_check = getelementptr inbounds %struct.pci224_board, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ao_range_check to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ao_range_check, align 4
  %chanlist = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %4 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chanlist, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %shr = lshr i32 %7, 16
  %and = and i32 %shr, 255
  %arrayidx1 = getelementptr i8, ptr %3, i32 %and
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx1, align 1
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %10 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp8.not = icmp eq i32 %11, 0
  br i1 %cmp8.not, label %entry.cleanup44_crit_edge, label %for.body.lr.ph

entry.cleanup44_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup44

for.body.lr.ph:                                   ; preds = %entry
  %12 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chanlist, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %chan_mask.010 = phi i32 [ 0, %for.body.lr.ph ], [ %or, %for.inc.for.body_crit_edge ]
  %i.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx4 = getelementptr i32, ptr %13, i32 %i.09
  %14 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx4, align 4
  %and5 = and i32 %15, 65535
  %shl = shl nuw i32 1, %and5
  %and6 = and i32 %shl, %chan_mask.010
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %if.end12, label %do.body

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pci224_ao_check_chanlist.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pci224_ao_check_chanlist, %cleanup44)) #9
          to label %if.then11 [label %cleanup44], !srcloc !108

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %16 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pci224_ao_check_chanlist.__UNIQUE_ID_ddebug236, ptr noundef %17, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14) #9
  br label %cleanup44

if.end12:                                         ; preds = %for.body
  %18 = ptrtoint ptr %ao_range_check to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ao_range_check, align 4
  %shr17 = lshr i32 %15, 16
  %and18 = and i32 %shr17, 255
  %arrayidx19 = getelementptr i8, ptr %19, i32 %and18
  %20 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx19, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %9)
  %cmp21.not = icmp eq i8 %21, %9
  br i1 %cmp21.not, label %for.inc, label %do.body24

do.body24:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pci224_ao_check_chanlist.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pci224_ao_check_chanlist, %cleanup44)) #9
          to label %if.then38 [label %cleanup44], !srcloc !108

if.then38:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev39 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %22 = ptrtoint ptr %class_dev39 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %class_dev39, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pci224_ao_check_chanlist.__UNIQUE_ID_ddebug237, ptr noundef %23, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14) #9
  br label %cleanup44

for.inc:                                          ; preds = %if.end12
  %or = or i32 %shl, %chan_mask.010
  %inc = add nuw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, %11
  br i1 %exitcond.not, label %for.inc.cleanup44_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup44_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup44

cleanup44:                                        ; preds = %for.inc.cleanup44_crit_edge, %if.then38, %do.body24, %if.then11, %do.body, %entry.cleanup44_crit_edge
  %retval.2 = phi i32 [ -22, %if.then11 ], [ -22, %if.then38 ], [ -22, %do.body ], [ -22, %do.body24 ], [ 0, %entry.cleanup44_crit_edge ], [ 0, %for.inc.cleanup44_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pci224_ao_stop(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %state = getelementptr inbounds %struct.pci224_private, ptr %1, i32 0, i32 1
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %state) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body1:                                         ; preds = %entry
  %ao_spinlock = getelementptr inbounds %struct.pci224_private, ptr %1, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ao_spinlock) #9
  %intsce = getelementptr inbounds %struct.pci224_private, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %intsce to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %intsce, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %1, align 4
  %add = add i32 %4, 30
  %and = and i32 %add, 1048575
  %add9 = or i32 %and, -18874368
  %5 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 0) #9, !srcloc !80
  %intr_cpuid = getelementptr inbounds %struct.pci224_private, ptr %1, i32 0, i32 5
  %intr_running = getelementptr inbounds %struct.pci224_private, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %intr_running to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %intr_running, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool12.not1 = icmp eq i16 %7, 0
  br i1 %tobool12.not1, label %do.body1.while.end_crit_edge, label %do.body1.land.rhs_crit_edge

do.body1.land.rhs_crit_edge:                      ; preds = %do.body1
  br label %land.rhs

do.body1.while.end_crit_edge:                     ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %do.body1.land.rhs_crit_edge
  %flags.02 = phi i32 [ %call26, %while.body.land.rhs_crit_edge ], [ %call3, %do.body1.land.rhs_crit_edge ]
  %8 = ptrtoint ptr %intr_cpuid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %intr_cpuid, align 4
  %10 = tail call i32 @llvm.read_register.i32(metadata !68) #9
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %13)
  %cmp14.not = icmp eq i32 %9, %13
  br i1 %cmp14.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %land.rhs
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ao_spinlock, i32 noundef %flags.02) #9
  %call26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ao_spinlock) #9
  %14 = ptrtoint ptr %intr_running to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %intr_running, align 4
  %tobool12.not = icmp eq i16 %15, 0
  br i1 %tobool12.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %do.body1.while.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call3, %do.body1.while.end_crit_edge ], [ %call26, %while.body.while.end_crit_edge ], [ %flags.02, %land.rhs.while.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ao_spinlock, i32 noundef %flags.0.lcssa) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  tail call void @arm_heavy_mb() #9
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %16 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iobase, align 4
  %add35 = add i32 %17, 6
  %and36 = and i32 %add35, 1048575
  %add37 = or i32 %and36, -18874368
  %18 = inttoptr i32 %add37 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %18, i16 0) #9, !srcloc !82
  %daccon = getelementptr inbounds %struct.pci224_private, ptr %1, i32 0, i32 7
  %19 = ptrtoint ptr %daccon to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %daccon, align 2
  %21 = and i16 %20, -3592
  %22 = or i16 %21, 1
  store i16 %22, ptr %daccon, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !111
  tail call void @arm_heavy_mb() #9
  %23 = ptrtoint ptr %daccon to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %daccon, align 2
  %25 = or i16 %24, 4096
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  %27 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %iobase, align 4
  %add51 = add i32 %28, 2
  %and52 = and i32 %add51, 1048575
  %add53 = or i32 %and52, -18874368
  %29 = inttoptr i32 %add53 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %29, i16 %26) #9, !srcloc !82
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_nscans_left(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_handle_events(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_read_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amplc_pci224_pci_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %call = tail call i32 @comedi_pci_auto_config(ptr noundef %dev, ptr noundef nonnull @amplc_pci224_driver, i32 noundef %1) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_auto_unconfig(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_auto_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !43, !44, !45, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66}
!llvm.named.register.sp = !{!68}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @__initcall__kmod_amplc_pci224__238_1137_amplc_pci224_driver_init6, !1, !"__initcall__kmod_amplc_pci224__238_1137_amplc_pci224_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/amplc_pci224.c", i32 1137, i32 1}
!2 = !{ptr @__exitcall_amplc_pci224_driver_exit, !1, !"__exitcall_amplc_pci224_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author239, !4, !"__UNIQUE_ID_author239", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/amplc_pci224.c", i32 1139, i32 1}
!5 = !{ptr @__UNIQUE_ID_description240, !6, !"__UNIQUE_ID_description240", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/amplc_pci224.c", i32 1140, i32 1}
!7 = !{ptr @__UNIQUE_ID_file241, !8, !"__UNIQUE_ID_file241", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/amplc_pci224.c", i32 1141, i32 1}
!9 = !{ptr @__UNIQUE_ID_license242, !8, !"__UNIQUE_ID_license242", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/amplc_pci224.c", i32 1108, i32 17}
!12 = !{ptr @amplc_pci224_driver, !13, !"amplc_pci224_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/amplc_pci224.c", i32 1107, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/amplc_pci224.c", i32 1002, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @pci224_auto_attach._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @pci224_auto_attach._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/comedi/drivers/amplc_pci224.c", i32 1009, i32 2}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @pci224_auto_attach._entry.6, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @pci224_auto_attach._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @pci224_auto_attach.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/comedi/drivers/amplc_pci224.c", i32 1020, i32 2}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/comedi/drivers/amplc_pci224.c", i32 1086, i32 4}
!32 = !{ptr @pci224_auto_attach._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @pci224_auto_attach._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/comedi/drivers/amplc_pci224.c", i32 633, i32 4}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @pci224_ao_check_chanlist.__UNIQUE_ID_ddebug236, !35, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/comedi/drivers/amplc_pci224.c", i32 642, i32 4}
!40 = !{ptr @pci224_ao_check_chanlist.__UNIQUE_ID_ddebug237, !39, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/comedi/drivers/amplc_pci224.c", i32 540, i32 4}
!43 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @pci224_ao_handle_fifo._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @pci224_ao_handle_fifo._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/comedi/drivers/amplc_pci224.c", i32 351, i32 12}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/comedi/drivers/amplc_pci224.c", i32 359, i32 12}
!50 = !{ptr @pci224_boards, !51, !"pci224_boards", i1 false, i1 false}
!51 = !{!"../drivers/comedi/drivers/amplc_pci224.c", i32 349, i32 34}
!52 = !{ptr @range_pci224, !53, !"range_pci224", i1 false, i1 false}
!53 = !{!"../drivers/comedi/drivers/amplc_pci224.c", i32 264, i32 35}
!54 = !{ptr @hwrange_pci224, !55, !"hwrange_pci224", i1 false, i1 false}
!55 = !{!"../drivers/comedi/drivers/amplc_pci224.c", i32 281, i32 29}
!56 = !{ptr @range_check_pci224, !57, !"range_check_pci224", i1 false, i1 false}
!57 = !{!"../drivers/comedi/drivers/amplc_pci224.c", i32 297, i32 28}
!58 = !{ptr @range_pci234, !59, !"range_pci234", i1 false, i1 false}
!59 = !{!"../drivers/comedi/drivers/amplc_pci224.c", i32 308, i32 35}
!60 = !{ptr @hwrange_pci234, !61, !"hwrange_pci234", i1 false, i1 false}
!61 = !{!"../drivers/comedi/drivers/amplc_pci224.c", i32 322, i32 29}
!62 = !{ptr @range_check_pci234, !63, !"range_check_pci234", i1 false, i1 false}
!63 = !{!"../drivers/comedi/drivers/amplc_pci224.c", i32 330, i32 28}
!64 = !{ptr @amplc_pci224_pci_driver, !65, !"amplc_pci224_pci_driver", i1 false, i1 false}
!65 = !{!"../drivers/comedi/drivers/amplc_pci224.c", i32 1131, i32 26}
!66 = !{ptr @amplc_pci224_pci_table, !67, !"amplc_pci224_pci_table", i1 false, i1 false}
!67 = !{!"../drivers/comedi/drivers/amplc_pci224.c", i32 1124, i32 35}
!68 = !{!"sp"}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{!"branch_weights", i32 1, i32 2000}
!79 = !{i64 2154589308}
!80 = !{i64 4648246}
!81 = !{i64 2154589809}
!82 = !{i64 4647823}
!83 = !{i64 2154590339}
!84 = !{i64 2154590815}
!85 = !{i64 2154591636}
!86 = !{i64 2154560581}
!87 = !{i64 2154561457}
!88 = !{i64 2154562117}
!89 = !{i64 4648023}
!90 = !{i64 2154563034}
!91 = !{i64 2154579968}
!92 = !{i64 2154581214}
!93 = !{i64 2154578344}
!94 = !{i64 2154578728}
!95 = !{i64 2154579112}
!96 = !{i64 2154579496}
!97 = !{i64 2154582164}
!98 = !{i32 0, i32 33}
!99 = !{i64 4648641}
!100 = !{i64 2154582734}
!101 = !{i64 2154583341}
!102 = !{i64 2154566704}
!103 = !{i64 2154567523}
!104 = !{i64 2154569682}
!105 = !{i64 2154570489}
!106 = !{i64 2154571389}
!107 = !{i64 2154584218}
!108 = !{i64 2148985938, i64 2148985943, i64 2148985956, i64 2148986000, i64 2148986034, i64 2148986055}
!109 = !{i64 2154563830}
!110 = !{i64 2154564687}
!111 = !{i64 2154565659}
