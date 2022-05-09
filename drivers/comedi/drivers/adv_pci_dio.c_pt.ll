; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/adv_pci_dio.c_pt.bc'
source_filename = "../drivers/comedi/drivers/adv_pci_dio.c"
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
%struct.dio_boardtype = type { ptr, i32, [2 x %struct.diosubd_data], [2 x %struct.diosubd_data], [2 x %struct.diosubd_data], [4 x %struct.dio_irq_subd_data], i32, i32, i8 }
%struct.diosubd_data = type { i32, i32 }
%struct.dio_irq_subd_data = type { i16, i32 }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.pci_dio_dev_private_data = type { i32, i32, i16, i16 }
%struct.pci_dio_sd_private_data = type { %struct.spinlock, i32, i16 }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.comedi_async = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.comedi_cmd, %struct.wait_queue_head, i32, ptr }

@__initcall__kmod_adv_pci_dio__236_795_adv_pci_dio_driver_init6 = internal global ptr @adv_pci_dio_driver_init, section ".initcall6.init", align 4
@adv_pci_dio_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr null, ptr @pci_dio_detach, ptr @pci_dio_auto_attach, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@adv_pci_dio_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @adv_pci_dio_pci_table, ptr @adv_pci_dio_pci_probe, ptr @comedi_pci_auto_unconfig, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_adv_pci_dio_driver_exit = internal global ptr @adv_pci_dio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [49 x i8] c"adv_pci_dio.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [70 x i8] c"adv_pci_dio.description=Comedi driver for Advantech Digital I/O Cards\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [52 x i8] c"adv_pci_dio.file=drivers/comedi/drivers/adv_pci_dio\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [24 x i8] c"adv_pci_dio.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adv_pci_dio\00", [20 x i8] zeroinitializer }, align 32
@boardtypes = internal constant { [15 x %struct.dio_boardtype], [356 x i8] } { [15 x %struct.dio_boardtype] [%struct.dio_boardtype { ptr @.str.2, i32 9, [2 x %struct.diosubd_data] [%struct.diosubd_data { i32 16, i32 2 }, %struct.diosubd_data { i32 16, i32 0 }], [2 x %struct.diosubd_data] [%struct.diosubd_data { i32 16, i32 2 }, %struct.diosubd_data { i32 16, i32 0 }], [2 x %struct.diosubd_data] zeroinitializer, [4 x %struct.dio_irq_subd_data] [%struct.dio_irq_subd_data { i16 4, i32 2 }, %struct.dio_irq_subd_data { i16 8, i32 2 }, %struct.dio_irq_subd_data { i16 1, i32 0 }, %struct.dio_irq_subd_data { i16 2, i32 0 }], i32 4, i32 0, i8 0 }, %struct.dio_boardtype { ptr @.str.3, i32 2, [2 x %struct.diosubd_data] [%struct.diosubd_data zeroinitializer, %struct.diosubd_data { i32 32, i32 0 }], [2 x %struct.diosubd_data] zeroinitializer, [2 x %struct.diosubd_data] zeroinitializer, [4 x %struct.dio_irq_subd_data] zeroinitializer, i32 4, i32 0, i8 0 }, %struct.dio_boardtype { ptr @.str.4, i32 2, [2 x %struct.diosubd_data] zeroinitializer, [2 x %struct.diosubd_data] [%struct.diosubd_data zeroinitializer, %struct.diosubd_data { i32 32, i32 0 }], [2 x %struct.diosubd_data] zeroinitializer, [4 x %struct.dio_irq_subd_data] zeroinitializer, i32 4, i32 0, i8 0 }, %struct.dio_boardtype { ptr @.str.5, i32 4, [2 x %struct.diosubd_data] [%struct.diosubd_data { i32 32, i32 0 }, %struct.diosubd_data zeroinitializer], [2 x %struct.diosubd_data] [%struct.diosubd_data { i32 32, i32 0 }, %struct.diosubd_data zeroinitializer], [2 x %struct.diosubd_data] zeroinitializer, [4 x %struct.dio_irq_subd_data] zeroinitializer, i32 8, i32 4, i8 0 }, %struct.dio_boardtype { ptr @.str.6, i32 3, [2 x %struct.diosubd_data] [%struct.diosubd_data zeroinitializer, %struct.diosubd_data { i32 16, i32 0 }], [2 x %struct.diosubd_data] [%struct.diosubd_data zeroinitializer, %struct.diosubd_data { i32 16, i32 0 }], [2 x %struct.diosubd_data] zeroinitializer, [4 x %struct.dio_irq_subd_data] zeroinitializer, i32 4, i32 0, i8 0 }, %struct.dio_boardtype { ptr @.str.7, i32 3, [2 x %struct.diosubd_data] zeroinitializer, [2 x %struct.diosubd_data] zeroinitializer, [2 x %struct.diosubd_data] [%struct.diosubd_data { i32 2, i32 0 }, %struct.diosubd_data zeroinitializer], [4 x %struct.dio_irq_subd_data] zeroinitializer, i32 8, i32 0, i8 0 }, %struct.dio_boardtype { ptr @.str.8, i32 2, [2 x %struct.diosubd_data] [%struct.diosubd_data zeroinitializer, %struct.diosubd_data { i32 16, i32 0 }], [2 x %struct.diosubd_data] [%struct.diosubd_data zeroinitializer, %struct.diosubd_data { i32 16, i32 0 }], [2 x %struct.diosubd_data] zeroinitializer, [4 x %struct.dio_irq_subd_data] zeroinitializer, i32 0, i32 0, i8 0 }, %struct.dio_boardtype { ptr @.str.9, i32 3, [2 x %struct.diosubd_data] zeroinitializer, [2 x %struct.diosubd_data] zeroinitializer, [2 x %struct.diosubd_data] [%struct.diosubd_data { i32 2, i32 0 }, %struct.diosubd_data zeroinitializer], [4 x %struct.dio_irq_subd_data] zeroinitializer, i32 0, i32 24, i8 0 }, %struct.dio_boardtype { ptr @.str.10, i32 3, [2 x %struct.diosubd_data] zeroinitializer, [2 x %struct.diosubd_data] [%struct.diosubd_data { i32 32, i32 0 }, %struct.diosubd_data { i32 32, i32 4 }], [2 x %struct.diosubd_data] zeroinitializer, [4 x %struct.dio_irq_subd_data] zeroinitializer, i32 16, i32 0, i8 -128 }, %struct.dio_boardtype { ptr @.str.11, i32 4, [2 x %struct.diosubd_data] zeroinitializer, [2 x %struct.diosubd_data] zeroinitializer, [2 x %struct.diosubd_data] [%struct.diosubd_data { i32 4, i32 0 }, %struct.diosubd_data zeroinitializer], [4 x %struct.dio_irq_subd_data] zeroinitializer, i32 0, i32 0, i8 0 }, %struct.dio_boardtype { ptr @.str.12, i32 8, [2 x %struct.diosubd_data] zeroinitializer, [2 x %struct.diosubd_data] zeroinitializer, [2 x %struct.diosubd_data] [%struct.diosubd_data { i32 4, i32 0 }, %struct.diosubd_data { i32 4, i32 32 }], [4 x %struct.dio_irq_subd_data] zeroinitializer, i32 0, i32 0, i8 0 }, %struct.dio_boardtype { ptr @.str.13, i32 3, [2 x %struct.diosubd_data] [%struct.diosubd_data { i32 32, i32 0 }, %struct.diosubd_data { i32 32, i32 4 }], [2 x %struct.diosubd_data] zeroinitializer, [2 x %struct.diosubd_data] zeroinitializer, [4 x %struct.dio_irq_subd_data] zeroinitializer, i32 16, i32 0, i8 -128 }, %struct.dio_boardtype { ptr @.str.14, i32 3, [2 x %struct.diosubd_data] [%struct.diosubd_data zeroinitializer, %struct.diosubd_data { i32 32, i32 0 }], [2 x %struct.diosubd_data] [%struct.diosubd_data zeroinitializer, %struct.diosubd_data { i32 32, i32 4 }], [2 x %struct.diosubd_data] zeroinitializer, [4 x %struct.dio_irq_subd_data] zeroinitializer, i32 16, i32 0, i8 -128 }, %struct.dio_boardtype { ptr @.str.15, i32 3, [2 x %struct.diosubd_data] [%struct.diosubd_data zeroinitializer, %struct.diosubd_data { i32 8, i32 1 }], [2 x %struct.diosubd_data] [%struct.diosubd_data zeroinitializer, %struct.diosubd_data { i32 8, i32 0 }], [2 x %struct.diosubd_data] zeroinitializer, [4 x %struct.dio_irq_subd_data] zeroinitializer, i32 2, i32 0, i8 0 }, %struct.dio_boardtype { ptr @.str.16, i32 3, [2 x %struct.diosubd_data] [%struct.diosubd_data zeroinitializer, %struct.diosubd_data { i32 16, i32 2 }], [2 x %struct.diosubd_data] [%struct.diosubd_data zeroinitializer, %struct.diosubd_data { i32 16, i32 0 }], [2 x %struct.diosubd_data] zeroinitializer, [4 x %struct.dio_irq_subd_data] zeroinitializer, i32 4, i32 0, i8 -128 }], [356 x i8] zeroinitializer }, align 32
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@pci_dio_auto_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&sd_priv->subd_slock\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pci1730\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pci1733\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pci1734\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pci1735\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pci1736\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pci1739\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pci1750\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pci1751\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pci1752\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pci1753\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pci1753e\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pci1754\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pci1756\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pci1761\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pci1762\00", [24 x i8] zeroinitializer }, align 32
@adv_pci_dio_pci_table = internal constant { [15 x %struct.pci_device_id], [96 x i8] } { [15 x %struct.pci_device_id] [%struct.pci_device_id { i32 5118, i32 5936, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5118, i32 5939, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 5118, i32 5940, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 5118, i32 5941, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 5118, i32 5942, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 5118, i32 5945, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 5118, i32 5968, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 5118, i32 5969, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 5118, i32 5970, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 5118, i32 5971, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 5118, i32 5972, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 5118, i32 5974, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 5118, i32 5985, i32 -1, i32 -1, i32 0, i32 0, i32 13, i32 0 }, %struct.pci_device_id { i32 5118, i32 5986, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id zeroinitializer], [96 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 1, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.17 = internal global [6 x i64] [i64 4, i64 32, i64 9, i64 10, i64 11, i64 12]
@___asan_gen_.18 = private unnamed_addr constant [19 x i8] c"adv_pci_dio_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 722, i32 29 }
@___asan_gen_.21 = private unnamed_addr constant [23 x i8] c"adv_pci_dio_pci_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 789, i32 26 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 723, i32 17 }
@___asan_gen_.27 = private unnamed_addr constant [11 x i8] c"boardtypes\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 112, i32 35 }
@___asan_gen_.30 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 693, i32 4 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 114, i32 12 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 128, i32 12 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 134, i32 12 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 140, i32 12 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 148, i32 12 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 155, i32 12 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 161, i32 12 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 167, i32 12 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 173, i32 12 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 181, i32 12 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 186, i32 12 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 192, i32 12 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 200, i32 12 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 208, i32 12 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 215, i32 12 }
@___asan_gen_.81 = private unnamed_addr constant [22 x i8] c"adv_pci_dio_pci_table\00", align 1
@___asan_gen_.82 = private constant [40 x i8] c"../drivers/comedi/drivers/adv_pci_dio.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 770, i32 35 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_adv_pci_dio_driver_exit, ptr @__initcall__kmod_adv_pci_dio__236_795_adv_pci_dio_driver_init6, ptr @adv_pci_dio_driver_exit, ptr @adv_pci_dio_driver, ptr @adv_pci_dio_pci_driver, ptr @.str, ptr @boardtypes, ptr @pci_dio_auto_attach.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @adv_pci_dio_pci_table], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv_pci_dio_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv_pci_dio_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boardtypes to i32), i32 1500, i32 1856, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_dio_auto_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv_pci_dio_pci_table to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adv_pci_dio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_pci_driver_register(ptr noundef nonnull @adv_pci_dio_driver, ptr noundef nonnull @adv_pci_dio_pci_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adv_pci_dio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @comedi_pci_driver_unregister(ptr noundef nonnull @adv_pci_dio_driver, ptr noundef nonnull @adv_pci_dio_pci_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_driver_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci_dio_detach(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  tail call fastcc void @pci_dio_reset(ptr noundef %dev, i32 noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @comedi_pci_detach(ptr noundef %dev) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_dio_auto_attach(ptr noundef %dev, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_pci_dev(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %context)
  %cmp = icmp ugt i32 %context, 14
  %arrayidx = getelementptr [15 x %struct.dio_boardtype], ptr @boardtypes, i32 0, i32 %context
  %tobool.not421 = icmp eq ptr %arrayidx, null
  %tobool.not = or i1 %cmp, %tobool.not421
  br i1 %tobool.not, label %entry.cleanup263_crit_edge, label %if.end2

entry.cleanup263_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup263

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
  br i1 %tobool4.not, label %if.end2.cleanup263_crit_edge, label %if.end6

if.end2.cleanup263_crit_edge:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup263

if.end6:                                          ; preds = %if.end2
  %call7 = tail call i32 @comedi_pci_enable(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup263_crit_edge

if.end6.cleanup263_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup263

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %context)
  %cmp11 = icmp eq i32 %context, 4
  %resource = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 47
  %arrayidx15 = getelementptr %struct.pci_dev, ptr %call, i32 0, i32 47, i32 2
  %.sink.in = select i1 %cmp11, ptr %resource, ptr %arrayidx15
  %4 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.sink = load i32, ptr %.sink.in, align 8
  %5 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink, ptr %5, align 4
  %7 = ptrtoint ptr %call3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %context, ptr %call3, align 4
  tail call fastcc void @pci_dio_reset(ptr noundef %dev, i32 noundef %context)
  %sdirq = getelementptr [15 x %struct.dio_boardtype], ptr @boardtypes, i32 0, i32 %context, i32 5
  %8 = ptrtoint ptr %sdirq to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %sdirq, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool21.not = icmp eq i16 %9, 0
  br i1 %tobool21.not, label %if.end10.if.end33_crit_edge, label %land.lhs.true

if.end10.if.end33_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

land.lhs.true:                                    ; preds = %if.end10
  %irq = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 46
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool22.not = icmp eq i32 %11, 0
  br i1 %tobool22.not, label %land.lhs.true.if.end33_crit_edge, label %if.then23

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then23:                                        ; preds = %land.lhs.true
  %12 = ptrtoint ptr %board_name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %board_name, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %11, ptr noundef nonnull @pci_dio_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %13, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp27 = icmp eq i32 %call.i, 0
  br i1 %cmp27, label %if.then29, label %if.then23.if.end33_crit_edge

if.then23.if.end33_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then29:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  %irq31 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %16 = ptrtoint ptr %irq31 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %irq31, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.then23.if.end33_crit_edge, %land.lhs.true.if.end33_crit_edge, %if.end10.if.end33_crit_edge
  %nsubdevs = getelementptr [15 x %struct.dio_boardtype], ptr @boardtypes, i32 0, i32 %context, i32 1
  %17 = ptrtoint ptr %nsubdevs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nsubdevs, align 4
  %call34 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef %18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %for.cond.preheader, label %if.end33.cleanup263_crit_edge

if.end33.cleanup263_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup263

for.cond.preheader:                               ; preds = %if.end33
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %19 = lshr i32 9983, %context
  %20 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool45.not.not = icmp eq i32 %20, 0
  %cond = select i1 %tobool45.not.not, ptr @pci_dio_insn_bits_di_w, ptr @pci_dio_insn_bits_di_b
  %arrayidx40 = getelementptr [15 x %struct.dio_boardtype], ptr @boardtypes, i32 0, i32 %context, i32 2, i32 0
  %21 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool41.not = icmp eq i32 %22, 0
  br i1 %tobool41.not, label %for.cond.preheader.if.end46_crit_edge, label %if.then42

for.cond.preheader.if.end46_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then42:                                        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %subdevices, align 4
  %type = getelementptr %struct.comedi_subdevice, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 3, ptr %type, align 4
  %subdev_flags = getelementptr %struct.comedi_subdevice, ptr %24, i32 0, i32 4
  %26 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 65536, ptr %subdev_flags, align 4
  %27 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx40, align 4
  %n_chan = getelementptr %struct.comedi_subdevice, ptr %24, i32 0, i32 3
  %29 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %n_chan, align 4
  %maxdata = getelementptr %struct.comedi_subdevice, ptr %24, i32 0, i32 13
  %30 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %maxdata, align 4
  %range_table = getelementptr %struct.comedi_subdevice, ptr %24, i32 0, i32 15
  %31 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @range_unipolar5, ptr %range_table, align 4
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %24, i32 0, i32 20
  %32 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %cond, ptr %insn_bits, align 4
  %addr = getelementptr [15 x %struct.dio_boardtype], ptr @boardtypes, i32 0, i32 %context, i32 2, i32 0, i32 1
  %33 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %addr, align 4
  %35 = inttoptr i32 %34 to ptr
  %private = getelementptr %struct.comedi_subdevice, ptr %24, i32 0, i32 6
  %36 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %private, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %for.cond.preheader.if.end46_crit_edge
  %subdev.1 = phi i32 [ 1, %if.then42 ], [ 0, %for.cond.preheader.if.end46_crit_edge ]
  %arrayidx40.1 = getelementptr [15 x %struct.dio_boardtype], ptr @boardtypes, i32 0, i32 %context, i32 2, i32 1
  %37 = ptrtoint ptr %arrayidx40.1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx40.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool41.not.1 = icmp eq i32 %38, 0
  br i1 %tobool41.not.1, label %if.end46.if.end46.1_crit_edge, label %if.then42.1

if.end46.if.end46.1_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46.1

if.then42.1:                                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %subdevices, align 4
  %inc.1 = add nuw nsw i32 %subdev.1, 1
  %type.1 = getelementptr %struct.comedi_subdevice, ptr %40, i32 %subdev.1, i32 2
  %41 = ptrtoint ptr %type.1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 3, ptr %type.1, align 4
  %subdev_flags.1 = getelementptr %struct.comedi_subdevice, ptr %40, i32 %subdev.1, i32 4
  %42 = ptrtoint ptr %subdev_flags.1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 65536, ptr %subdev_flags.1, align 4
  %43 = ptrtoint ptr %arrayidx40.1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx40.1, align 4
  %n_chan.1 = getelementptr %struct.comedi_subdevice, ptr %40, i32 %subdev.1, i32 3
  %45 = ptrtoint ptr %n_chan.1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %n_chan.1, align 4
  %maxdata.1 = getelementptr %struct.comedi_subdevice, ptr %40, i32 %subdev.1, i32 13
  %46 = ptrtoint ptr %maxdata.1 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %maxdata.1, align 4
  %range_table.1 = getelementptr %struct.comedi_subdevice, ptr %40, i32 %subdev.1, i32 15
  %47 = ptrtoint ptr %range_table.1 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @range_unipolar5, ptr %range_table.1, align 4
  %insn_bits.1 = getelementptr %struct.comedi_subdevice, ptr %40, i32 %subdev.1, i32 20
  %48 = ptrtoint ptr %insn_bits.1 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %cond, ptr %insn_bits.1, align 4
  %addr.1 = getelementptr [15 x %struct.dio_boardtype], ptr @boardtypes, i32 0, i32 %context, i32 2, i32 1, i32 1
  %49 = ptrtoint ptr %addr.1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %addr.1, align 4
  %51 = inttoptr i32 %50 to ptr
  %private.1 = getelementptr %struct.comedi_subdevice, ptr %40, i32 %subdev.1, i32 6
  %52 = ptrtoint ptr %private.1 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %private.1, align 4
  br label %if.end46.1

if.end46.1:                                       ; preds = %if.then42.1, %if.end46.if.end46.1_crit_edge
  %subdev.1.1 = phi i32 [ %inc.1, %if.then42.1 ], [ %subdev.1, %if.end46.if.end46.1_crit_edge ]
  %cond71 = select i1 %tobool45.not.not, ptr @pci_dio_insn_bits_do_w, ptr @pci_dio_insn_bits_do_b
  br label %for.body51

for.cond160.preheader:                            ; preds = %if.end156
  %arrayidx165 = getelementptr [15 x %struct.dio_boardtype], ptr @boardtypes, i32 0, i32 %context, i32 4, i32 0
  %53 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx165, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp168431 = icmp sgt i32 %54, 0
  br i1 %cmp168431, label %for.body170.lr.ph, label %for.cond160.preheader.for.inc183_crit_edge

for.cond160.preheader.for.inc183_crit_edge:       ; preds = %for.cond160.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc183

for.body51:                                       ; preds = %if.end156.for.body51_crit_edge, %if.end46.1
  %cmp49 = phi i1 [ true, %if.end46.1 ], [ false, %if.end156.for.body51_crit_edge ]
  %i.1429 = phi i32 [ 0, %if.end46.1 ], [ 1, %if.end156.for.body51_crit_edge ]
  %subdev.2428 = phi i32 [ %subdev.1.1, %if.end46.1 ], [ %subdev.3, %if.end156.for.body51_crit_edge ]
  %arrayidx53 = getelementptr [15 x %struct.dio_boardtype], ptr @boardtypes, i32 0, i32 %context, i32 3, i32 %i.1429
  %55 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool55.not = icmp eq i32 %56, 0
  br i1 %tobool55.not, label %for.body51.if.end156_crit_edge, label %if.then56

for.body51.if.end156_crit_edge:                   ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end156

if.then56:                                        ; preds = %for.body51
  %57 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %subdevices, align 4
  %inc58 = add i32 %subdev.2428, 1
  %type60 = getelementptr %struct.comedi_subdevice, ptr %58, i32 %subdev.2428, i32 2
  %59 = ptrtoint ptr %type60 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 4, ptr %type60, align 4
  %subdev_flags61 = getelementptr %struct.comedi_subdevice, ptr %58, i32 %subdev.2428, i32 4
  %60 = ptrtoint ptr %subdev_flags61 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 131072, ptr %subdev_flags61, align 4
  %61 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx53, align 4
  %n_chan63 = getelementptr %struct.comedi_subdevice, ptr %58, i32 %subdev.2428, i32 3
  %63 = ptrtoint ptr %n_chan63 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %n_chan63, align 4
  %maxdata64 = getelementptr %struct.comedi_subdevice, ptr %58, i32 %subdev.2428, i32 13
  %64 = ptrtoint ptr %maxdata64 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %maxdata64, align 4
  %range_table65 = getelementptr %struct.comedi_subdevice, ptr %58, i32 %subdev.2428, i32 15
  %65 = ptrtoint ptr %range_table65 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @range_unipolar5, ptr %range_table65, align 4
  %insn_bits72 = getelementptr %struct.comedi_subdevice, ptr %58, i32 %subdev.2428, i32 20
  %66 = ptrtoint ptr %insn_bits72 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %cond71, ptr %insn_bits72, align 4
  %addr73 = getelementptr [15 x %struct.dio_boardtype], ptr @boardtypes, i32 0, i32 %context, i32 3, i32 %i.1429, i32 1
  %67 = ptrtoint ptr %addr73 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %addr73, align 4
  %69 = inttoptr i32 %68 to ptr
  %private74 = getelementptr %struct.comedi_subdevice, ptr %58, i32 %subdev.2428, i32 6
  %70 = ptrtoint ptr %private74 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %private74, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %71 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %5, align 4
  %73 = ptrtoint ptr %addr73 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %addr73, align 4
  %add = add i32 %74, %72
  %and = and i32 %add, 1048575
  %add83 = or i32 %and, -18874368
  %75 = inttoptr i32 %add83 to ptr
  br i1 %tobool45.not.not, label %do.body, label %do.body101

do.body:                                          ; preds = %if.then56
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %75, i16 0) #6, !srcloc !62
  %76 = ptrtoint ptr %n_chan63 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %n_chan63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %77)
  %cmp86 = icmp sgt i32 %77, 16
  br i1 %cmp86, label %do.body89, label %do.body.if.end156_crit_edge

do.body.if.end156_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end156

do.body89:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %78 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %5, align 4
  %80 = ptrtoint ptr %addr73 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %addr73, align 4
  %add94 = add i32 %79, 2
  %add95 = add i32 %add94, %81
  %and96 = and i32 %add95, 1048575
  %add97 = or i32 %and96, -18874368
  %82 = inttoptr i32 %add97 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %82, i16 0) #6, !srcloc !62
  br label %if.end156

do.body101:                                       ; preds = %if.then56
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %75, i8 0) #6, !srcloc !64
  %83 = ptrtoint ptr %n_chan63 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %n_chan63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %84)
  %cmp111 = icmp sgt i32 %84, 8
  br i1 %cmp111, label %if.end124, label %do.body101.if.end156_crit_edge

do.body101.if.end156_crit_edge:                   ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end156

if.end124:                                        ; preds = %do.body101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  tail call void @arm_heavy_mb() #6
  %85 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %5, align 4
  %87 = ptrtoint ptr %addr73 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %addr73, align 4
  %add119 = add i32 %86, 1
  %add120 = add i32 %add119, %88
  %and121 = and i32 %add120, 1048575
  %add122 = or i32 %and121, -18874368
  %89 = inttoptr i32 %add122 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %89, i8 0) #6, !srcloc !64
  %90 = ptrtoint ptr %n_chan63 to i32
  call void @__asan_load4_noabort(i32 %90)
  %.pr = load i32, ptr %n_chan63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %.pr)
  %cmp126 = icmp sgt i32 %.pr, 16
  br i1 %cmp126, label %if.end139, label %if.end124.if.end156_crit_edge

if.end124.if.end156_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end156

if.end139:                                        ; preds = %if.end124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %91 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %5, align 4
  %93 = ptrtoint ptr %addr73 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %addr73, align 4
  %add134 = add i32 %92, 2
  %add135 = add i32 %add134, %94
  %and136 = and i32 %add135, 1048575
  %add137 = or i32 %and136, -18874368
  %95 = inttoptr i32 %add137 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %95, i8 0) #6, !srcloc !64
  %96 = ptrtoint ptr %n_chan63 to i32
  call void @__asan_load4_noabort(i32 %96)
  %.pr412 = load i32, ptr %n_chan63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %.pr412)
  %cmp141 = icmp sgt i32 %.pr412, 24
  br i1 %cmp141, label %do.body144, label %if.end139.if.end156_crit_edge

if.end139.if.end156_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end156

do.body144:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %97 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %5, align 4
  %99 = ptrtoint ptr %addr73 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %addr73, align 4
  %add149 = add i32 %98, 3
  %add150 = add i32 %add149, %100
  %and151 = and i32 %add150, 1048575
  %add152 = or i32 %and151, -18874368
  %101 = inttoptr i32 %add152 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %101, i8 0) #6, !srcloc !64
  br label %if.end156

if.end156:                                        ; preds = %do.body144, %if.end139.if.end156_crit_edge, %if.end124.if.end156_crit_edge, %do.body101.if.end156_crit_edge, %do.body89, %do.body.if.end156_crit_edge, %for.body51.if.end156_crit_edge
  %subdev.3 = phi i32 [ %inc58, %do.body89 ], [ %inc58, %do.body.if.end156_crit_edge ], [ %inc58, %do.body144 ], [ %inc58, %if.end139.if.end156_crit_edge ], [ %subdev.2428, %for.body51.if.end156_crit_edge ], [ %inc58, %if.end124.if.end156_crit_edge ], [ %inc58, %do.body101.if.end156_crit_edge ]
  br i1 %cmp49, label %if.end156.for.body51_crit_edge, label %for.cond160.preheader

if.end156.for.body51_crit_edge:                   ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body51

for.body170.lr.ph:                                ; preds = %for.cond160.preheader
  %addr174 = getelementptr [15 x %struct.dio_boardtype], ptr @boardtypes, i32 0, i32 %context, i32 4, i32 0, i32 1
  %102 = ptrtoint ptr %addr174 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %addr174, align 4
  br label %for.body170

for.body170:                                      ; preds = %for.inc180.for.body170_crit_edge, %for.body170.lr.ph
  %j.0433 = phi i32 [ 0, %for.body170.lr.ph ], [ %inc181, %for.inc180.for.body170_crit_edge ]
  %subdev.5432 = phi i32 [ %subdev.3, %for.body170.lr.ph ], [ %inc172, %for.inc180.for.body170_crit_edge ]
  %104 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %subdevices, align 4
  %arrayidx173 = getelementptr %struct.comedi_subdevice, ptr %105, i32 %subdev.5432
  %mul = shl i32 %j.0433, 2
  %add175 = add i32 %103, %mul
  %call176 = tail call i32 @subdev_8255_init(ptr noundef %dev, ptr noundef %arrayidx173, ptr noundef null, i32 noundef %add175) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %for.inc180, label %for.body170.cleanup263_crit_edge

for.body170.cleanup263_crit_edge:                 ; preds = %for.body170
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup263

for.inc180:                                       ; preds = %for.body170
  %inc172 = add i32 %subdev.5432, 1
  %inc181 = add nuw nsw i32 %j.0433, 1
  %exitcond.not = icmp eq i32 %inc181, %54
  br i1 %exitcond.not, label %for.inc180.for.inc183_crit_edge, label %for.inc180.for.body170_crit_edge

for.inc180.for.body170_crit_edge:                 ; preds = %for.inc180
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body170

for.inc180.for.inc183_crit_edge:                  ; preds = %for.inc180
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc183

for.inc183:                                       ; preds = %for.inc180.for.inc183_crit_edge, %for.cond160.preheader.for.inc183_crit_edge
  %subdev.5.lcssa = phi i32 [ %subdev.3, %for.cond160.preheader.for.inc183_crit_edge ], [ %inc172, %for.inc180.for.inc183_crit_edge ]
  %arrayidx165.1 = getelementptr [15 x %struct.dio_boardtype], ptr @boardtypes, i32 0, i32 %context, i32 4, i32 1
  %106 = ptrtoint ptr %arrayidx165.1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx165.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp168431.1 = icmp sgt i32 %107, 0
  br i1 %cmp168431.1, label %for.body170.lr.ph.1, label %for.inc183.for.inc183.1_crit_edge

for.inc183.for.inc183.1_crit_edge:                ; preds = %for.inc183
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc183.1

for.body170.lr.ph.1:                              ; preds = %for.inc183
  %addr174.1 = getelementptr [15 x %struct.dio_boardtype], ptr @boardtypes, i32 0, i32 %context, i32 4, i32 1, i32 1
  %108 = ptrtoint ptr %addr174.1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %addr174.1, align 4
  br label %for.body170.1

for.body170.1:                                    ; preds = %for.inc180.1.for.body170.1_crit_edge, %for.body170.lr.ph.1
  %j.0433.1 = phi i32 [ 0, %for.body170.lr.ph.1 ], [ %inc181.1, %for.inc180.1.for.body170.1_crit_edge ]
  %subdev.5432.1 = phi i32 [ %subdev.5.lcssa, %for.body170.lr.ph.1 ], [ %inc172.1, %for.inc180.1.for.body170.1_crit_edge ]
  %110 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %subdevices, align 4
  %arrayidx173.1 = getelementptr %struct.comedi_subdevice, ptr %111, i32 %subdev.5432.1
  %mul.1 = shl i32 %j.0433.1, 2
  %add175.1 = add i32 %109, %mul.1
  %call176.1 = tail call i32 @subdev_8255_init(ptr noundef %dev, ptr noundef %arrayidx173.1, ptr noundef null, i32 noundef %add175.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176.1)
  %tobool177.not.1 = icmp eq i32 %call176.1, 0
  br i1 %tobool177.not.1, label %for.inc180.1, label %for.body170.1.cleanup263_crit_edge

for.body170.1.cleanup263_crit_edge:               ; preds = %for.body170.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup263

for.inc180.1:                                     ; preds = %for.body170.1
  %inc172.1 = add i32 %subdev.5432.1, 1
  %inc181.1 = add nuw nsw i32 %j.0433.1, 1
  %exitcond.1.not = icmp eq i32 %inc181.1, %107
  br i1 %exitcond.1.not, label %for.inc180.1.for.inc183.1_crit_edge, label %for.inc180.1.for.body170.1_crit_edge

for.inc180.1.for.body170.1_crit_edge:             ; preds = %for.inc180.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body170.1

for.inc180.1.for.inc183.1_crit_edge:              ; preds = %for.inc180.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc183.1

for.inc183.1:                                     ; preds = %for.inc180.1.for.inc183.1_crit_edge, %for.inc183.for.inc183.1_crit_edge
  %subdev.5.lcssa.1 = phi i32 [ %subdev.5.lcssa, %for.inc183.for.inc183.1_crit_edge ], [ %inc172.1, %for.inc180.1.for.inc183.1_crit_edge ]
  %112 = lshr i32 1728, %context
  %113 = and i32 %112, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool186.not.not = icmp eq i32 %113, 0
  br i1 %tobool186.not.not, label %if.then187, label %for.inc183.1.if.end205_crit_edge

for.inc183.1.if.end205_crit_edge:                 ; preds = %for.inc183.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end205

if.then187:                                       ; preds = %for.inc183.1
  call void @__sanitizer_cov_trace_pc() #8
  %id_reg = getelementptr [15 x %struct.dio_boardtype], ptr @boardtypes, i32 0, i32 %context, i32 6
  %114 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %subdevices, align 4
  %inc189 = add i32 %subdev.5.lcssa.1, 1
  %type191 = getelementptr %struct.comedi_subdevice, ptr %115, i32 %subdev.5.lcssa.1, i32 2
  %116 = ptrtoint ptr %type191 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 3, ptr %type191, align 4
  %subdev_flags192 = getelementptr %struct.comedi_subdevice, ptr %115, i32 %subdev.5.lcssa.1, i32 4
  %117 = ptrtoint ptr %subdev_flags192 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 327680, ptr %subdev_flags192, align 4
  %n_chan193 = getelementptr %struct.comedi_subdevice, ptr %115, i32 %subdev.5.lcssa.1, i32 3
  %118 = ptrtoint ptr %n_chan193 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 4, ptr %n_chan193, align 4
  %maxdata194 = getelementptr %struct.comedi_subdevice, ptr %115, i32 %subdev.5.lcssa.1, i32 13
  %119 = ptrtoint ptr %maxdata194 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 1, ptr %maxdata194, align 4
  %range_table195 = getelementptr %struct.comedi_subdevice, ptr %115, i32 %subdev.5.lcssa.1, i32 15
  %120 = ptrtoint ptr %range_table195 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @range_unipolar5, ptr %range_table195, align 4
  %insn_bits202 = getelementptr %struct.comedi_subdevice, ptr %115, i32 %subdev.5.lcssa.1, i32 20
  %121 = ptrtoint ptr %insn_bits202 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %cond, ptr %insn_bits202, align 4
  %122 = ptrtoint ptr %id_reg to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %id_reg, align 4
  %124 = inttoptr i32 %123 to ptr
  %private204 = getelementptr %struct.comedi_subdevice, ptr %115, i32 %subdev.5.lcssa.1, i32 6
  %125 = ptrtoint ptr %private204 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %124, ptr %private204, align 4
  br label %if.end205

if.end205:                                        ; preds = %if.then187, %for.inc183.1.if.end205_crit_edge
  %subdev.7 = phi i32 [ %inc189, %if.then187 ], [ %subdev.5.lcssa.1, %for.inc183.1.if.end205_crit_edge ]
  %126 = and i32 %context, 1073741819
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %126)
  %.not = icmp eq i32 %126, 3
  br i1 %.not, label %if.then207, label %if.end205.if.end220_crit_edge

if.end205.if.end220_crit_edge:                    ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end220

if.then207:                                       ; preds = %if.end205
  %timer_regbase = getelementptr [15 x %struct.dio_boardtype], ptr @boardtypes, i32 0, i32 %context, i32 7
  %127 = ptrtoint ptr %timer_regbase to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %timer_regbase, align 4
  %129 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %subdevices, align 4
  %131 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %5, align 4
  %add213 = add i32 %132, %128
  %call214 = tail call ptr @comedi_8254_init(i32 noundef %add213, i32 noundef 0, i32 noundef 1, i32 noundef 0) #6
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %133 = ptrtoint ptr %pacer to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %call214, ptr %pacer, align 4
  %tobool216.not = icmp eq ptr %call214, null
  br i1 %tobool216.not, label %if.then207.cleanup263_crit_edge, label %if.end218

if.then207.cleanup263_crit_edge:                  ; preds = %if.then207
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup263

if.end218:                                        ; preds = %if.then207
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx210 = getelementptr %struct.comedi_subdevice, ptr %130, i32 %subdev.7
  %inc209 = add i32 %subdev.7, 1
  tail call void @comedi_8254_subdevice_init(ptr noundef %arrayidx210, ptr noundef nonnull %call214) #6
  br label %if.end220

if.end220:                                        ; preds = %if.end218, %if.end205.if.end220_crit_edge
  %subdev.8 = phi i32 [ %inc209, %if.end218 ], [ %subdev.7, %if.end205.if.end220_crit_edge ]
  %irq_subd = getelementptr inbounds %struct.pci_dio_dev_private_data, ptr %call3, i32 0, i32 1
  %134 = ptrtoint ptr %irq_subd to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %subdev.8, ptr %irq_subd, align 4
  %irq249 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  br label %for.body224

for.body224:                                      ; preds = %for.inc260.for.body224_crit_edge, %if.end220
  %i.3438 = phi i32 [ 0, %if.end220 ], [ %inc261, %for.inc260.for.body224_crit_edge ]
  %subdev.9437 = phi i32 [ %subdev.8, %if.end220 ], [ %subdev.11.ph, %for.inc260.for.body224_crit_edge ]
  %arrayidx227 = getelementptr [15 x %struct.dio_boardtype], ptr @boardtypes, i32 0, i32 %context, i32 5, i32 %i.3438
  %135 = ptrtoint ptr %arrayidx227 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %arrayidx227, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %136)
  %tobool229.not = icmp eq i16 %136, 0
  br i1 %tobool229.not, label %for.body224.for.inc260_crit_edge, label %if.then230

for.body224.for.inc260_crit_edge:                 ; preds = %for.body224
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc260

if.then230:                                       ; preds = %for.body224
  %137 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %subdevices, align 4
  %inc232 = add i32 %subdev.9437, 1
  %arrayidx233 = getelementptr %struct.comedi_subdevice, ptr %138, i32 %subdev.9437
  %type234 = getelementptr %struct.comedi_subdevice, ptr %138, i32 %subdev.9437, i32 2
  %139 = ptrtoint ptr %type234 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 3, ptr %type234, align 4
  %subdev_flags235 = getelementptr %struct.comedi_subdevice, ptr %138, i32 %subdev.9437, i32 4
  %140 = ptrtoint ptr %subdev_flags235 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 65536, ptr %subdev_flags235, align 4
  %n_chan236 = getelementptr %struct.comedi_subdevice, ptr %138, i32 %subdev.9437, i32 3
  %141 = ptrtoint ptr %n_chan236 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 1, ptr %n_chan236, align 4
  %maxdata237 = getelementptr %struct.comedi_subdevice, ptr %138, i32 %subdev.9437, i32 13
  %142 = ptrtoint ptr %maxdata237 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 1, ptr %maxdata237, align 4
  %range_table238 = getelementptr %struct.comedi_subdevice, ptr %138, i32 %subdev.9437, i32 15
  %143 = ptrtoint ptr %range_table238 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr @range_unipolar5, ptr %range_table238, align 4
  %insn_bits239 = getelementptr %struct.comedi_subdevice, ptr %138, i32 %subdev.9437, i32 20
  %144 = ptrtoint ptr %insn_bits239 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr @pci_dio_insn_bits_dirq_b, ptr %insn_bits239, align 4
  %call240 = tail call ptr @comedi_alloc_spriv(ptr noundef %arrayidx233, i32 noundef 52) #6
  %tobool241.not = icmp eq ptr %call240, null
  br i1 %tobool241.not, label %if.then230.cleanup263_crit_edge, label %do.body244

if.then230.cleanup263_crit_edge:                  ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup263

do.body244:                                       ; preds = %if.then230
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call240, ptr noundef nonnull @.str.1, ptr noundef nonnull @pci_dio_auto_attach.__key, i16 noundef signext 3) #6
  %addr248 = getelementptr [15 x %struct.dio_boardtype], ptr @boardtypes, i32 0, i32 %context, i32 5, i32 %i.3438, i32 1
  %145 = ptrtoint ptr %addr248 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %addr248, align 4
  %port_offset = getelementptr inbounds %struct.pci_dio_sd_private_data, ptr %call240, i32 0, i32 1
  %147 = ptrtoint ptr %port_offset to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %port_offset, align 4
  %cmd_running = getelementptr inbounds %struct.pci_dio_sd_private_data, ptr %call240, i32 0, i32 2
  %148 = ptrtoint ptr %cmd_running to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 0, ptr %cmd_running, align 4
  %149 = ptrtoint ptr %irq249 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %irq249, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool250.not = icmp eq i32 %150, 0
  br i1 %tobool250.not, label %do.body244.for.inc260_crit_edge, label %if.then251

do.body244.for.inc260_crit_edge:                  ; preds = %do.body244
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc260

if.then251:                                       ; preds = %do.body244
  call void @__sanitizer_cov_trace_pc() #8
  %151 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %arrayidx233, ptr %read_subdev, align 4
  %152 = ptrtoint ptr %type234 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 3, ptr %type234, align 4
  %153 = ptrtoint ptr %subdev_flags235 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 98304, ptr %subdev_flags235, align 4
  %len_chanlist = getelementptr %struct.comedi_subdevice, ptr %138, i32 %subdev.9437, i32 5
  %154 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 1, ptr %len_chanlist, align 4
  %do_cmdtest = getelementptr %struct.comedi_subdevice, ptr %138, i32 %subdev.9437, i32 23
  %155 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr @pci_dio_asy_cmdtest, ptr %do_cmdtest, align 4
  %do_cmd = getelementptr %struct.comedi_subdevice, ptr %138, i32 %subdev.9437, i32 22
  %156 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr @pci_dio_asy_cmd, ptr %do_cmd, align 4
  %cancel = getelementptr %struct.comedi_subdevice, ptr %138, i32 %subdev.9437, i32 25
  %157 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr @pci_dio_asy_cancel, ptr %cancel, align 4
  br label %for.inc260

for.inc260:                                       ; preds = %if.then251, %do.body244.for.inc260_crit_edge, %for.body224.for.inc260_crit_edge
  %subdev.11.ph = phi i32 [ %subdev.9437, %for.body224.for.inc260_crit_edge ], [ %inc232, %do.body244.for.inc260_crit_edge ], [ %inc232, %if.then251 ]
  %inc261 = add nuw nsw i32 %i.3438, 1
  %exitcond445.not = icmp eq i32 %inc261, 4
  br i1 %exitcond445.not, label %for.inc260.cleanup263_crit_edge, label %for.inc260.for.body224_crit_edge

for.inc260.for.body224_crit_edge:                 ; preds = %for.inc260
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body224

for.inc260.cleanup263_crit_edge:                  ; preds = %for.inc260
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup263

cleanup263:                                       ; preds = %for.inc260.cleanup263_crit_edge, %if.then230.cleanup263_crit_edge, %if.then207.cleanup263_crit_edge, %for.body170.1.cleanup263_crit_edge, %for.body170.cleanup263_crit_edge, %if.end33.cleanup263_crit_edge, %if.end6.cleanup263_crit_edge, %if.end2.cleanup263_crit_edge, %entry.cleanup263_crit_edge
  %retval.4 = phi i32 [ -19, %entry.cleanup263_crit_edge ], [ -12, %if.end2.cleanup263_crit_edge ], [ %call7, %if.end6.cleanup263_crit_edge ], [ %call34, %if.end33.cleanup263_crit_edge ], [ -12, %if.then207.cleanup263_crit_edge ], [ -12, %if.then230.cleanup263_crit_edge ], [ 0, %for.inc260.cleanup263_crit_edge ], [ %call176.1, %for.body170.1.cleanup263_crit_edge ], [ %call176, %for.body170.cleanup263_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pci_dio_reset(ptr nocapture noundef readonly %dev, i32 noundef %cardtype) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cardtype to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cardtype, label %entry.sw.epilog_crit_edge [
    i32 8, label %entry.do.body_crit_edge
    i32 12, label %entry.do.body_crit_edge1
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge2
    i32 4, label %entry.sw.bb_crit_edge3
    i32 5, label %entry.do.body31_crit_edge
    i32 6, label %entry.do.body31_crit_edge4
    i32 7, label %entry.do.body31_crit_edge5
    i32 9, label %entry.do.body40_crit_edge
    i32 10, label %entry.do.body40_crit_edge6
    i32 11, label %entry.do.body109_crit_edge
    i32 13, label %do.body146
    i32 14, label %do.body171
  ]

entry.do.body109_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body109

entry.do.body40_crit_edge6:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body40

entry.do.body40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body40

entry.do.body31_crit_edge5:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body31

entry.do.body31_crit_edge4:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body31

entry.do.body31_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body31

entry.sw.bb_crit_edge3:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge2:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.do.body_crit_edge1:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void @arm_heavy_mb() #6
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %1 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %iobase, align 4
  %add = add i32 %2, 18
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %3 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %3, i16 0) #6, !srcloc !62
  %4 = zext i32 %cardtype to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %cardtype, label %do.body.sw.epilog_crit_edge [
    i32 12, label %do.body.do.body109_crit_edge
    i32 11, label %do.body.do.body109_crit_edge7
    i32 10, label %do.body.do.body40_crit_edge
    i32 9, label %do.body.do.body40_crit_edge8
  ]

do.body.do.body40_crit_edge8:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body40

do.body.do.body40_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body40

do.body.do.body109_crit_edge7:                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body109

do.body.do.body109_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body109

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge2, %entry.sw.bb_crit_edge3
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %5 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private, align 4
  %int_ctrl = getelementptr inbounds %struct.pci_dio_dev_private_data, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %int_ctrl to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %int_ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %int_ctrl to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %int_ctrl, align 4
  %conv = trunc i16 %9 to i8
  %iobase7 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %10 = ptrtoint ptr %iobase7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iobase7, align 4
  %add8 = add i32 %11, 8
  %and9 = and i32 %add8, 1048575
  %add10 = or i32 %and9, -18874368
  %12 = inttoptr i32 %add10 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %conv) #6, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %iobase7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iobase7, align 4
  %add16 = add i32 %14, 16
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %15 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 15) #6, !srcloc !64
  %int_rf = getelementptr inbounds %struct.pci_dio_dev_private_data, ptr %6, i32 0, i32 3
  %16 = ptrtoint ptr %int_rf to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %int_rf, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %int_rf to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %int_rf, align 2
  %conv24 = trunc i16 %18 to i8
  %19 = ptrtoint ptr %iobase7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iobase7, align 4
  %add26 = add i32 %20, 12
  %and27 = and i32 %add26, 1048575
  %add28 = or i32 %and27, -18874368
  %21 = inttoptr i32 %add28 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 %conv24) #6, !srcloc !64
  br label %sw.epilog

do.body31:                                        ; preds = %entry.do.body31_crit_edge, %entry.do.body31_crit_edge4, %entry.do.body31_crit_edge5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  tail call void @arm_heavy_mb() #6
  %iobase34 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %22 = ptrtoint ptr %iobase34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iobase34, align 4
  %add35 = add i32 %23, 32
  %and36 = and i32 %add35, 1048575
  %add37 = or i32 %and36, -18874368
  %24 = inttoptr i32 %add37 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 -120) #6, !srcloc !64
  br label %sw.epilog

do.body40:                                        ; preds = %do.body.do.body40_crit_edge, %do.body.do.body40_crit_edge8, %entry.do.body40_crit_edge, %entry.do.body40_crit_edge6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %iobase43 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %25 = ptrtoint ptr %iobase43 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iobase43, align 4
  %add44 = add i32 %26, 16
  %and45 = and i32 %add44, 1048575
  %add46 = or i32 %and45, -18874368
  %27 = inttoptr i32 %add46 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 -120) #6, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void @arm_heavy_mb() #6
  %28 = ptrtoint ptr %iobase43 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iobase43, align 4
  %add52 = add i32 %29, 17
  %and53 = and i32 %add52, 1048575
  %add54 = or i32 %and53, -18874368
  %30 = inttoptr i32 %add54 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 -128) #6, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %31 = ptrtoint ptr %iobase43 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %iobase43, align 4
  %add60 = add i32 %32, 18
  %and61 = and i32 %add60, 1048575
  %add62 = or i32 %and61, -18874368
  %33 = inttoptr i32 %add62 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 -128) #6, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %34 = ptrtoint ptr %iobase43 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %iobase43, align 4
  %add68 = add i32 %35, 19
  %and69 = and i32 %add68, 1048575
  %add70 = or i32 %and69, -18874368
  %36 = inttoptr i32 %add70 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 -128) #6, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %cardtype)
  %cmp72 = icmp eq i32 %cardtype, 10
  br i1 %cmp72, label %do.body75, label %do.body40.sw.epilog_crit_edge

do.body40.sw.epilog_crit_edge:                    ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body75:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %37 = ptrtoint ptr %iobase43 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %iobase43, align 4
  %add79 = add i32 %38, 48
  %and80 = and i32 %add79, 1048575
  %add81 = or i32 %and80, -18874368
  %39 = inttoptr i32 %add81 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 -120) #6, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %40 = ptrtoint ptr %iobase43 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %iobase43, align 4
  %add87 = add i32 %41, 49
  %and88 = and i32 %add87, 1048575
  %add89 = or i32 %and88, -18874368
  %42 = inttoptr i32 %add89 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 -128) #6, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  %43 = ptrtoint ptr %iobase43 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %iobase43, align 4
  %add95 = add i32 %44, 50
  %and96 = and i32 %add95, 1048575
  %add97 = or i32 %and96, -18874368
  %45 = inttoptr i32 %add97 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %45, i8 -128) #6, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %46 = ptrtoint ptr %iobase43 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %iobase43, align 4
  %add103 = add i32 %47, 51
  %and104 = and i32 %add103, 1048575
  %add105 = or i32 %and104, -18874368
  %48 = inttoptr i32 %add105 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 -128) #6, !srcloc !64
  br label %sw.epilog

do.body109:                                       ; preds = %do.body.do.body109_crit_edge, %do.body.do.body109_crit_edge7, %entry.do.body109_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %iobase112 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %49 = ptrtoint ptr %iobase112 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %iobase112, align 4
  %add113 = add i32 %50, 8
  %and114 = and i32 %add113, 1048575
  %add115 = or i32 %and114, -18874368
  %51 = inttoptr i32 %add115 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %51, i16 2048) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %52 = ptrtoint ptr %iobase112 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %iobase112, align 4
  %add121 = add i32 %53, 10
  %and122 = and i32 %add121, 1048575
  %add123 = or i32 %and122, -18874368
  %54 = inttoptr i32 %add123 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %54, i16 2048) #6, !srcloc !62
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %cardtype)
  %cmp125 = icmp eq i32 %cardtype, 11
  br i1 %cmp125, label %do.body128, label %do.body109.sw.epilog_crit_edge

do.body109.sw.epilog_crit_edge:                   ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body128:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  %55 = ptrtoint ptr %iobase112 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %iobase112, align 4
  %add132 = add i32 %56, 12
  %and133 = and i32 %add132, 1048575
  %add134 = or i32 %and133, -18874368
  %57 = inttoptr i32 %add134 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %57, i16 2048) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %58 = ptrtoint ptr %iobase112 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %iobase112, align 4
  %add140 = add i32 %59, 14
  %and141 = and i32 %add140, 1048575
  %add142 = or i32 %and141, -18874368
  %60 = inttoptr i32 %add142 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %60, i16 2048) #6, !srcloc !62
  br label %sw.epilog

do.body146:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %iobase149 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %61 = ptrtoint ptr %iobase149 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %iobase149, align 4
  %add150 = add i32 %62, 3
  %and151 = and i32 %add150, 1048575
  %add152 = or i32 %and151, -18874368
  %63 = inttoptr i32 %add152 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %63, i8 0) #6, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  %64 = ptrtoint ptr %iobase149 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %iobase149, align 4
  %add158 = add i32 %65, 5
  %and159 = and i32 %add158, 1048575
  %add160 = or i32 %and159, -18874368
  %66 = inttoptr i32 %add160 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 -1) #6, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %67 = ptrtoint ptr %iobase149 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %iobase149, align 4
  %add166 = add i32 %68, 4
  %and167 = and i32 %add166, 1048575
  %add168 = or i32 %and167, -18874368
  %69 = inttoptr i32 %add168 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %69, i8 0) #6, !srcloc !64
  br label %sw.epilog

do.body171:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  %iobase174 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %70 = ptrtoint ptr %iobase174 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %iobase174, align 4
  %add175 = add i32 %71, 6
  %and176 = and i32 %add175, 1048575
  %add177 = or i32 %and176, -18874368
  %72 = inttoptr i32 %add177 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %72, i16 257) #6, !srcloc !62
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body171, %do.body146, %do.body128, %do.body109.sw.epilog_crit_edge, %do.body75, %do.body40.sw.epilog_crit_edge, %do.body31, %sw.bb, %do.body.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_to_pci_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_dio_interrupt(i32 noundef %irq, ptr noundef %p_device) #2 align 64 {
entry:
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %p_device, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %p_device, i32 0, i32 9
  %2 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %board_ptr, align 4
  %attached = getelementptr inbounds %struct.comedi_device, ptr %p_device, i32 0, i32 10
  %4 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %attached, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body1:                                         ; preds = %entry
  %spinlock = getelementptr inbounds %struct.comedi_device, ptr %p_device, i32 0, i32 11
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %p_device, i32 0, i32 18
  %5 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iobase, align 4
  %add = add i32 %6, 16
  %and = and i32 %add, 1048575
  %add5 = or i32 %and, -18874368
  %7 = inttoptr i32 %add5 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #6, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  %conv9 = zext i8 %8 to i32
  %and10 = and i32 %conv9, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.then12, label %do.body15

if.then12:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call2) #6
  br label %cleanup

do.body15:                                        ; preds = %do.body1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase, align 4
  %add19 = add i32 %10, 16
  %and20 = and i32 %add19, 1048575
  %add21 = or i32 %and20, -18874368
  %11 = inttoptr i32 %add21 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %8) #6, !srcloc !64
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call2) #6
  %irq_subd = getelementptr inbounds %struct.pci_dio_dev_private_data, ptr %1, i32 0, i32 1
  %subdevices.i = getelementptr inbounds %struct.comedi_device, ptr %p_device, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body15
  %i.053 = phi i32 [ 0, %do.body15 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dio_boardtype, ptr %3, i32 0, i32 5, i32 %i.053
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx, align 4
  %conv27 = zext i16 %13 to i32
  %and28 = and i32 %conv27, %conv9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %for.body.for.inc_crit_edge, label %if.then30

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then30:                                        ; preds = %for.body
  %14 = ptrtoint ptr %irq_subd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq_subd, align 4
  %add31 = add i32 %15, %i.053
  %16 = ptrtoint ptr %subdevices.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %subdevices.i, align 4
  %arrayidx.i = getelementptr %struct.comedi_subdevice, ptr %17, i32 %add31
  %private.i = getelementptr %struct.comedi_subdevice, ptr %17, i32 %add31, i32 6
  %18 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %private.i, align 4
  %async.i = getelementptr %struct.comedi_subdevice, ptr %17, i32 %add31, i32 7
  %20 = ptrtoint ptr %async.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %async.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.then30.for.inc_crit_edge, label %if.then.i

if.then30.for.inc_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then.i:                                        ; preds = %if.then30
  %port_offset.i = getelementptr inbounds %struct.pci_dio_sd_private_data, ptr %19, i32 0, i32 1
  %22 = ptrtoint ptr %port_offset.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port_offset.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #6
  %24 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %iobase, align 4
  %add.i = add i32 %25, %23
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %26 = inttoptr i32 %add1.i to ptr
  %27 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %26) #6, !srcloc !92
  %28 = call i16 @llvm.bswap.i16(i16 %27) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  %29 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %val.i, align 2
  call void @_raw_spin_lock(ptr noundef %19) #6
  %cmd_running.i = getelementptr inbounds %struct.pci_dio_sd_private_data, ptr %19, i32 0, i32 2
  %30 = ptrtoint ptr %cmd_running.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %cmd_running.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool3.not.i = icmp eq i16 %31, 0
  br i1 %tobool3.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then4.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i = call i32 @comedi_buf_write_samples(ptr noundef %arrayidx.i, ptr noundef nonnull %val.i, i32 noundef 1) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %if.then.i.if.end.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %19) #6
  %call7.i = call i32 @comedi_handle_events(ptr noundef %p_device, ptr noundef %arrayidx.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end.i, %if.then30.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.053, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then12 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_dio_insn_bits_di_w(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 6
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  %iobase1 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %3 = ptrtoint ptr %iobase1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iobase1, align 4
  %add = add i32 %4, %2
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %5 = inttoptr i32 %add2 to ptr
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %5) #6, !srcloc !92
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  %conv = zext i16 %7 to i32
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %arrayidx, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 3
  %9 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %10)
  %cmp = icmp sgt i32 %10, 16
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add6 = add i32 %add, 2
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %11 = inttoptr i32 %add8 to ptr
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %11) #6, !srcloc !92
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  %conv12 = zext i16 %13 to i32
  %shl = shl nuw i32 %conv12, 16
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %or = or i32 %shl, %15
  store i32 %or, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %16 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n, align 4
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_dio_insn_bits_di_b(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 6
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  %iobase1 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %3 = ptrtoint ptr %iobase1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iobase1, align 4
  %add = add i32 %4, %2
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %5 = inttoptr i32 %add2 to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #6, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %conv = zext i8 %6 to i32
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %arrayidx, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 3
  %8 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %9)
  %cmp = icmp sgt i32 %9, 8
  br i1 %cmp, label %if.end, label %entry.if.end45_crit_edge

entry.if.end45_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.end:                                           ; preds = %entry
  %add6 = add i32 %add, 1
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %10 = inttoptr i32 %add8 to ptr
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #6, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  %conv12 = zext i8 %11 to i32
  %shl = shl nuw nsw i32 %conv12, 8
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %or = or i32 %13, %shl
  store i32 %or, ptr %arrayidx, align 4
  %14 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %n_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %.pr)
  %cmp15 = icmp sgt i32 %.pr, 16
  br i1 %cmp15, label %if.end29, label %if.end.if.end45_crit_edge

if.end.if.end45_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.end29:                                         ; preds = %if.end
  %add19 = add i32 %add, 2
  %and20 = and i32 %add19, 1048575
  %add21 = or i32 %and20, -18874368
  %15 = inttoptr i32 %add21 to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #6, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  %conv25 = zext i8 %16 to i32
  %shl26 = shl nuw nsw i32 %conv25, 16
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %or28 = or i32 %18, %shl26
  store i32 %or28, ptr %arrayidx, align 4
  %19 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr56 = load i32, ptr %n_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %.pr56)
  %cmp31 = icmp sgt i32 %.pr56, 24
  br i1 %cmp31, label %if.then33, label %if.end29.if.end45_crit_edge

if.end29.if.end45_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %add35 = add i32 %add, 3
  %and36 = and i32 %add35, 1048575
  %add37 = or i32 %and36, -18874368
  %20 = inttoptr i32 %add37 to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #6, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  %conv41 = zext i8 %21 to i32
  %shl42 = shl nuw i32 %conv41, 24
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %or44 = or i32 %23, %shl42
  store i32 %or44, ptr %arrayidx, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then33, %if.end29.if.end45_crit_edge, %if.end.if.end45_crit_edge, %entry.if.end45_crit_edge
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %24 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %n, align 4
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_dio_insn_bits_do_w(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 6
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  %iobase1 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %3 = ptrtoint ptr %iobase1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iobase1, align 4
  %add = add i32 %4, %2
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end17_crit_edge, label %do.body

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  tail call void @arm_heavy_mb() #6
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  %conv = trunc i32 %6 to i16
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %and2 = and i32 %add, 1048575
  %add3 = or i32 %and2, -18874368
  %8 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %8, i16 %7) #6, !srcloc !62
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 3
  %9 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %10)
  %cmp = icmp sgt i32 %10, 16
  br i1 %cmp, label %do.body7, label %do.body.if.end17_crit_edge

do.body.if.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

do.body7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state, align 4
  %shr = lshr i32 %12, 16
  %conv12 = trunc i32 %shr to i16
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv12)
  %add13 = add i32 %add, 2
  %and14 = and i32 %add13, 1048575
  %add15 = or i32 %and14, -18874368
  %14 = inttoptr i32 %add15 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %14, i16 %13) #6, !srcloc !62
  br label %if.end17

if.end17:                                         ; preds = %do.body7, %do.body.if.end17_crit_edge, %entry.if.end17_crit_edge
  %state18 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %15 = ptrtoint ptr %state18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state18, align 4
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %18 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n, align 4
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_dio_insn_bits_do_b(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 6
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  %iobase1 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %3 = ptrtoint ptr %iobase1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iobase1, align 4
  %add = add i32 %4, %2
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end49_crit_edge, label %do.body

entry.if.end49_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  %conv = trunc i32 %6 to i8
  %and2 = and i32 %add, 1048575
  %add3 = or i32 %and2, -18874368
  %7 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %conv) #6, !srcloc !64
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 3
  %8 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %9)
  %cmp = icmp sgt i32 %9, 8
  br i1 %cmp, label %if.end, label %do.body.if.end49_crit_edge

do.body.if.end49_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.end:                                           ; preds = %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  %shr = lshr i32 %11, 8
  %conv12 = trunc i32 %shr to i8
  %add13 = add i32 %add, 1
  %and14 = and i32 %add13, 1048575
  %add15 = or i32 %and14, -18874368
  %12 = inttoptr i32 %add15 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %conv12) #6, !srcloc !64
  %13 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load i32, ptr %n_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %.pr)
  %cmp18 = icmp sgt i32 %.pr, 16
  br i1 %cmp18, label %if.end32, label %if.end.if.end49_crit_edge

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.end32:                                         ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state, align 4
  %shr25 = lshr i32 %15, 16
  %conv27 = trunc i32 %shr25 to i8
  %add28 = add i32 %add, 2
  %and29 = and i32 %add28, 1048575
  %add30 = or i32 %and29, -18874368
  %16 = inttoptr i32 %add30 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %conv27) #6, !srcloc !64
  %17 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr65 = load i32, ptr %n_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %.pr65)
  %cmp34 = icmp sgt i32 %.pr65, 24
  br i1 %cmp34, label %do.body37, label %if.end32.if.end49_crit_edge

if.end32.if.end49_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

do.body37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state, align 4
  %shr41 = lshr i32 %19, 24
  %conv43 = trunc i32 %shr41 to i8
  %add44 = add i32 %add, 3
  %and45 = and i32 %add44, 1048575
  %add46 = or i32 %and45, -18874368
  %20 = inttoptr i32 %add46 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %conv43) #6, !srcloc !64
  br label %if.end49

if.end49:                                         ; preds = %do.body37, %if.end32.if.end49_crit_edge, %if.end.if.end49_crit_edge, %do.body.if.end49_crit_edge, %entry.if.end49_crit_edge
  %state50 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %21 = ptrtoint ptr %state50 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state50, align 4
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %24 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %n, align 4
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @subdev_8255_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_8254_init(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_subdevice_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_dio_insn_bits_dirq_b(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 6
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %port_offset = getelementptr inbounds %struct.pci_dio_sd_private_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_offset, align 4
  %iobase1 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %4 = ptrtoint ptr %iobase1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase1, align 4
  %add = add i32 %5, %3
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %6 = inttoptr i32 %add2 to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #6, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  %conv = zext i8 %7 to i32
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %9 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n, align 4
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_spriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pci_dio_asy_cmdtest(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef %cmd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %and.i48 = and i32 %3, 64
  store i32 %and.i48, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i48)
  %cmp.i49 = icmp ne i32 %and.i48, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i48, i32 %3)
  %cmp1.not.i50 = icmp eq i32 %and.i48, %3
  %or.cond.i51 = and i1 %cmp.i49, %cmp1.not.i50
  %4 = select i1 %or.cond.i, i1 %or.cond.i51, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %5 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %convert_src, align 4
  %and.i53 = and i32 %6, 4
  store i32 %and.i53, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i53)
  %cmp.i54 = icmp ne i32 %and.i53, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i53, i32 %6)
  %cmp1.not.i55 = icmp eq i32 %and.i53, %6
  %or.cond.i56 = and i1 %cmp.i54, %cmp1.not.i55
  %7 = select i1 %4, i1 %or.cond.i56, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %8 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_end_src, align 4
  %and.i58 = and i32 %9, 32
  store i32 %and.i58, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i58)
  %cmp.i59 = icmp ne i32 %and.i58, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i58, i32 %9)
  %cmp1.not.i60 = icmp eq i32 %and.i58, %9
  %or.cond.i61 = and i1 %cmp.i59, %cmp1.not.i60
  %10 = select i1 %7, i1 %or.cond.i61, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %11 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stop_src, align 4
  %and.i63 = and i32 %12, 1
  store i32 %and.i63, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %13 = icmp eq i32 %12, 1
  %14 = select i1 %10, i1 %13, i1 false
  br i1 %14, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %15 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.not.i = icmp eq i32 %16, 0
  br i1 %cmp.not.i, label %if.end.comedi_check_trigger_arg_is.exit_crit_edge, label %if.then.i

if.end.comedi_check_trigger_arg_is.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %start_arg, align 4
  br label %comedi_check_trigger_arg_is.exit

comedi_check_trigger_arg_is.exit:                 ; preds = %if.then.i, %if.end.comedi_check_trigger_arg_is.exit_crit_edge
  %retval.0.i68 = phi i32 [ -22, %if.then.i ], [ 0, %if.end.comedi_check_trigger_arg_is.exit_crit_edge ]
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %18 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %scan_begin_arg, align 4
  %and = and i32 %19, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %comedi_check_trigger_arg_is.exit.if.end16_crit_edge, label %if.then12

comedi_check_trigger_arg_is.exit.if.end16_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then12:                                        ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #8
  %and14 = and i32 %19, -1073741824
  %20 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and14, ptr %scan_begin_arg, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %comedi_check_trigger_arg_is.exit.if.end16_crit_edge
  %err.0 = phi i32 [ -22, %if.then12 ], [ %retval.0.i68, %comedi_check_trigger_arg_is.exit.if.end16_crit_edge ]
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %21 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %convert_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.not.i69 = icmp eq i32 %22, 0
  br i1 %cmp.not.i69, label %if.end16.comedi_check_trigger_arg_is.exit72_crit_edge, label %if.then.i70

if.end16.comedi_check_trigger_arg_is.exit72_crit_edge: ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit72

if.then.i70:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %convert_arg, align 4
  br label %comedi_check_trigger_arg_is.exit72

comedi_check_trigger_arg_is.exit72:               ; preds = %if.then.i70, %if.end16.comedi_check_trigger_arg_is.exit72_crit_edge
  %retval.0.i71 = phi i32 [ -22, %if.then.i70 ], [ 0, %if.end16.comedi_check_trigger_arg_is.exit72_crit_edge ]
  %or18 = or i32 %retval.0.i71, %err.0
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %24 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %chanlist_len, align 4
  %26 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %25)
  %cmp.not.i73 = icmp eq i32 %27, %25
  br i1 %cmp.not.i73, label %comedi_check_trigger_arg_is.exit72.comedi_check_trigger_arg_is.exit76_crit_edge, label %if.then.i74

comedi_check_trigger_arg_is.exit72.comedi_check_trigger_arg_is.exit76_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit72
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit76

if.then.i74:                                      ; preds = %comedi_check_trigger_arg_is.exit72
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %25, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit76

comedi_check_trigger_arg_is.exit76:               ; preds = %if.then.i74, %comedi_check_trigger_arg_is.exit72.comedi_check_trigger_arg_is.exit76_crit_edge
  %retval.0.i75 = phi i32 [ -22, %if.then.i74 ], [ 0, %comedi_check_trigger_arg_is.exit72.comedi_check_trigger_arg_is.exit76_crit_edge ]
  %or20 = or i32 %or18, %retval.0.i75
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %29 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.not.i77 = icmp eq i32 %30, 0
  br i1 %cmp.not.i77, label %comedi_check_trigger_arg_is.exit76.comedi_check_trigger_arg_is.exit80_crit_edge, label %if.then.i78

comedi_check_trigger_arg_is.exit76.comedi_check_trigger_arg_is.exit80_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit76
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit80

if.then.i78:                                      ; preds = %comedi_check_trigger_arg_is.exit76
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %stop_arg, align 4
  br label %comedi_check_trigger_arg_is.exit80

comedi_check_trigger_arg_is.exit80:               ; preds = %if.then.i78, %comedi_check_trigger_arg_is.exit76.comedi_check_trigger_arg_is.exit80_crit_edge
  %retval.0.i79 = phi i32 [ -22, %if.then.i78 ], [ 0, %comedi_check_trigger_arg_is.exit76.comedi_check_trigger_arg_is.exit80_crit_edge ]
  %or22 = or i32 %or20, %retval.0.i79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or22)
  %tobool23.not = icmp eq i32 %or22, 0
  %. = select i1 %tobool23.not, i32 0, i32 3
  br label %cleanup

cleanup:                                          ; preds = %comedi_check_trigger_arg_is.exit80, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ %., %comedi_check_trigger_arg_is.exit80 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_dio_asy_cmd(ptr noundef %dev, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %private1 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 6
  %2 = ptrtoint ptr %private1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private1, align 4
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %4 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %board_ptr, align 4
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %6 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %async, align 4
  %index = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 1
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  %irq_subd = getelementptr inbounds %struct.pci_dio_dev_private_data, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %irq_subd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq_subd, align 4
  %sub = sub i32 %9, %11
  %arrayidx = getelementptr %struct.dio_boardtype, ptr %5, i32 0, i32 5, i32 %sub
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx, align 4
  %spinlock = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  %scan_begin_arg = getelementptr inbounds %struct.comedi_async, ptr %7, i32 0, i32 17, i32 5
  %14 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %tobool.not = icmp sgt i32 %15, -1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %int_rf = getelementptr inbounds %struct.pci_dio_dev_private_data, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %int_rf to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %int_rf, align 2
  %or71 = or i16 %17, %13
  store i16 %or71, ptr %int_rf, align 2
  br label %do.body16

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %neg = xor i16 %13, -1
  %int_rf12 = getelementptr inbounds %struct.pci_dio_dev_private_data, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %int_rf12 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %int_rf12, align 2
  %and14 = and i16 %19, %neg
  store i16 %and14, ptr %int_rf12, align 2
  br label %do.body16

do.body16:                                        ; preds = %if.else, %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  tail call void @arm_heavy_mb() #6
  %int_rf19 = getelementptr inbounds %struct.pci_dio_dev_private_data, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %int_rf19 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %int_rf19, align 2
  %conv20 = trunc i16 %21 to i8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %22 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iobase, align 4
  %add = add i32 %23, 12
  %and21 = and i32 %add, 1048575
  %add22 = or i32 %and21, -18874368
  %24 = inttoptr i32 %add22 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 %conv20) #6, !srcloc !64
  %int_ctrl = getelementptr inbounds %struct.pci_dio_dev_private_data, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %int_ctrl to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %int_ctrl, align 4
  %or2670 = or i16 %26, %13
  store i16 %or2670, ptr %int_ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  %27 = ptrtoint ptr %int_ctrl to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %int_ctrl, align 4
  %conv32 = trunc i16 %28 to i8
  %29 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %iobase, align 4
  %add34 = add i32 %30, 8
  %and35 = and i32 %add34, 1048575
  %add36 = or i32 %and35, -18874368
  %31 = inttoptr i32 %add36 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 %conv32) #6, !srcloc !64
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call5) #6
  %call47 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #6
  %cmd_running = getelementptr inbounds %struct.pci_dio_sd_private_data, ptr %3, i32 0, i32 2
  %32 = ptrtoint ptr %cmd_running to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %cmd_running, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call47) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_dio_asy_cancel(ptr noundef %dev, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %private1 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 6
  %2 = ptrtoint ptr %private1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private1, align 4
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %4 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %board_ptr, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #6
  %cmd_running = getelementptr inbounds %struct.pci_dio_sd_private_data, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %cmd_running to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %cmd_running, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call3) #6
  %index = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 1
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index, align 4
  %irq_subd = getelementptr inbounds %struct.pci_dio_dev_private_data, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %irq_subd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq_subd, align 4
  %sub = sub i32 %8, %10
  %arrayidx = getelementptr %struct.dio_boardtype, ptr %5, i32 0, i32 5, i32 %sub
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx, align 4
  %spinlock = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  %neg = xor i16 %12, -1
  %int_ctrl = getelementptr inbounds %struct.pci_dio_dev_private_data, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %int_ctrl to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %int_ctrl, align 4
  %and = and i16 %14, %neg
  store i16 %and, ptr %int_ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %int_ctrl to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %int_ctrl, align 4
  %conv28 = trunc i16 %16 to i8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %17 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iobase, align 4
  %add = add i32 %18, 8
  %and29 = and i32 %add, 1048575
  %add30 = or i32 %and29, -18874368
  %19 = inttoptr i32 %add30 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %conv28) #6, !srcloc !64
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call16) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_handle_events(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv_pci_dio_pci_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 9
  br i1 %cmp.not.i, label %if.end.i, label %entry.pci_dio_override_cardtype.exit_crit_edge

entry.pci_dio_override_cardtype.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_dio_override_cardtype.exit

if.end.i:                                         ; preds = %entry
  %call.i = tail call i32 @pci_enable_device(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %if.end.i.pci_dio_override_cardtype.exit_crit_edge, label %if.end3.i

if.end.i.pci_dio_override_cardtype.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_dio_override_cardtype.exit

if.end3.i:                                        ; preds = %if.end.i
  %call4.i = tail call i32 @pci_request_region(ptr noundef %dev, i32 noundef 2, ptr noundef nonnull @.str) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp eq i32 %call4.i, 0
  br i1 %cmp5.i, label %if.then6.i, label %if.end3.i.if.end36.i_crit_edge

if.end3.i.if.end36.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.i

if.then6.i:                                       ; preds = %if.end3.i
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 2
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 8
  %add.i = add i32 %3, 53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %and.i = and i32 %add.i, 1048575
  %add7.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 5) #6, !srcloc !64
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #6, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  %6 = and i8 %5, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp14.i = icmp eq i8 %6, 2
  br i1 %cmp14.i, label %do.body17.i, label %if.then6.i.if.end35.i_crit_edge

if.then6.i.if.end35.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35.i

do.body17.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 2) #6, !srcloc !64
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #6, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  %8 = and i8 %7, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %8)
  %cmp31.i = icmp eq i8 %8, 5
  %spec.select.i = select i1 %cmp31.i, i32 10, i32 9
  br label %if.end35.i

if.end35.i:                                       ; preds = %do.body17.i, %if.then6.i.if.end35.i_crit_edge
  %cardtype.addr.0.i = phi i32 [ 9, %if.then6.i.if.end35.i_crit_edge ], [ %spec.select.i, %do.body17.i ]
  tail call void @pci_release_region(ptr noundef %dev, i32 noundef 2) #6
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.end35.i, %if.end3.i.if.end36.i_crit_edge
  %cardtype.addr.1.i = phi i32 [ %cardtype.addr.0.i, %if.end35.i ], [ 9, %if.end3.i.if.end36.i_crit_edge ]
  tail call void @pci_disable_device(ptr noundef %dev) #6
  br label %pci_dio_override_cardtype.exit

pci_dio_override_cardtype.exit:                   ; preds = %if.end36.i, %if.end.i.pci_dio_override_cardtype.exit_crit_edge, %entry.pci_dio_override_cardtype.exit_crit_edge
  %retval.0.i = phi i32 [ %cardtype.addr.1.i, %if.end36.i ], [ %1, %entry.pci_dio_override_cardtype.exit_crit_edge ], [ 9, %if.end.i.pci_dio_override_cardtype.exit_crit_edge ]
  %call1 = tail call i32 @comedi_pci_auto_config(ptr noundef %dev, ptr noundef nonnull @adv_pci_dio_driver, i32 noundef %retval.0.i) #6
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_auto_unconfig(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_auto_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_region(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_region(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__initcall__kmod_adv_pci_dio__236_795_adv_pci_dio_driver_init6, !1, !"__initcall__kmod_adv_pci_dio__236_795_adv_pci_dio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/adv_pci_dio.c", i32 795, i32 1}
!2 = !{ptr @__exitcall_adv_pci_dio_driver_exit, !1, !"__exitcall_adv_pci_dio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author237, !4, !"__UNIQUE_ID_author237", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/adv_pci_dio.c", i32 797, i32 1}
!5 = !{ptr @__UNIQUE_ID_description238, !6, !"__UNIQUE_ID_description238", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/adv_pci_dio.c", i32 798, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/adv_pci_dio.c", i32 799, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/adv_pci_dio.c", i32 723, i32 17}
!12 = !{ptr @adv_pci_dio_driver, !13, !"adv_pci_dio_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/adv_pci_dio.c", i32 722, i32 29}
!14 = !{ptr @pci_dio_auto_attach.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/adv_pci_dio.c", i32 693, i32 4}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/comedi/drivers/adv_pci_dio.c", i32 114, i32 12}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/comedi/drivers/adv_pci_dio.c", i32 128, i32 12}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/comedi/drivers/adv_pci_dio.c", i32 134, i32 12}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/comedi/drivers/adv_pci_dio.c", i32 140, i32 12}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/comedi/drivers/adv_pci_dio.c", i32 148, i32 12}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/comedi/drivers/adv_pci_dio.c", i32 155, i32 12}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/comedi/drivers/adv_pci_dio.c", i32 161, i32 12}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/comedi/drivers/adv_pci_dio.c", i32 167, i32 12}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/comedi/drivers/adv_pci_dio.c", i32 173, i32 12}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/comedi/drivers/adv_pci_dio.c", i32 181, i32 12}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/comedi/drivers/adv_pci_dio.c", i32 186, i32 12}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/comedi/drivers/adv_pci_dio.c", i32 192, i32 12}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/comedi/drivers/adv_pci_dio.c", i32 200, i32 12}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/comedi/drivers/adv_pci_dio.c", i32 208, i32 12}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/comedi/drivers/adv_pci_dio.c", i32 215, i32 12}
!47 = !{ptr @boardtypes, !48, !"boardtypes", i1 false, i1 false}
!48 = !{!"../drivers/comedi/drivers/adv_pci_dio.c", i32 112, i32 35}
!49 = !{ptr @adv_pci_dio_pci_driver, !50, !"adv_pci_dio_pci_driver", i1 false, i1 false}
!50 = !{!"../drivers/comedi/drivers/adv_pci_dio.c", i32 789, i32 26}
!51 = !{ptr @adv_pci_dio_pci_table, !52, !"adv_pci_dio_pci_table", i1 false, i1 false}
!52 = !{!"../drivers/comedi/drivers/adv_pci_dio.c", i32 770, i32 35}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{i64 5009503}
!63 = !{i64 2154575491}
!64 = !{i64 5009926}
!65 = !{i64 2154576290}
!66 = !{i64 2154576648}
!67 = !{i64 2154577006}
!68 = !{i64 2154565838}
!69 = !{i64 2154566302}
!70 = !{i64 2154566660}
!71 = !{i64 2154567033}
!72 = !{i64 2154567387}
!73 = !{i64 2154567759}
!74 = !{i64 2154568141}
!75 = !{i64 2154568523}
!76 = !{i64 2154568905}
!77 = !{i64 2154569287}
!78 = !{i64 2154569669}
!79 = !{i64 2154570051}
!80 = !{i64 2154570433}
!81 = !{i64 2154570859}
!82 = !{i64 2154571386}
!83 = !{i64 2154571913}
!84 = !{i64 2154572440}
!85 = !{i64 2154572900}
!86 = !{i64 2154573252}
!87 = !{i64 2154573601}
!88 = !{i64 2154573991}
!89 = !{i64 5010321}
!90 = !{i64 2154557374}
!91 = !{i64 2154557607}
!92 = !{i64 5009703}
!93 = !{i64 2154556690}
!94 = !{i64 2154562525}
!95 = !{i64 2154563175}
!96 = !{i64 2154561048}
!97 = !{i64 2154561329}
!98 = !{i64 2154561610}
!99 = !{i64 2154561891}
!100 = !{i64 2154564815}
!101 = !{i64 2154565322}
!102 = !{i64 2154563394}
!103 = !{i64 2154563739}
!104 = !{i64 2154564089}
!105 = !{i64 2154564439}
!106 = !{i64 2154560775}
!107 = !{i64 2154558471}
!108 = !{i64 2154558846}
!109 = !{i64 2154560373}
!110 = !{i64 2154577742}
!111 = !{i64 2154578121}
!112 = !{i64 2154578326}
!113 = !{i64 2154578705}
