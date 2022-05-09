; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/addi_apci_3xxx.c_pt.bc'
source_filename = "../drivers/comedi/drivers/addi_apci_3xxx.c"
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
%struct.apci3xxx_boardinfo = type { ptr, i32, i32, i32, i8, i32, i8 }
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
%struct.apci3xxx_private = type { i32, i8 }

@__initcall__kmod_addi_apci_3xxx__236_956_apci3xxx_driver_init6 = internal global ptr @apci3xxx_driver_init, section ".initcall6.init", align 4
@apci3xxx_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr null, ptr @apci3xxx_detach, ptr @apci3xxx_auto_attach, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@apci3xxx_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @apci3xxx_pci_table, ptr @apci3xxx_pci_probe, ptr @comedi_pci_auto_unconfig, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_apci3xxx_driver_exit = internal global ptr @apci3xxx_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [52 x i8] c"addi_apci_3xxx.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [51 x i8] c"addi_apci_3xxx.description=Comedi low-level driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [58 x i8] c"addi_apci_3xxx.file=drivers/comedi/drivers/addi_apci_3xxx\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [27 x i8] c"addi_apci_3xxx.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"addi_apci_3xxx\00", [17 x i8] zeroinitializer }, align 32
@apci3xxx_boardtypes = internal constant { [25 x %struct.apci3xxx_boardinfo], [164 x i8] } { [25 x %struct.apci3xxx_boardinfo] [%struct.apci3xxx_boardinfo { ptr @.str.1, i32 7340032, i32 16, i32 4095, i8 6, i32 10000, i8 16 }, %struct.apci3xxx_boardinfo { ptr @.str.2, i32 7340032, i32 8, i32 4095, i8 6, i32 10000, i8 16 }, %struct.apci3xxx_boardinfo { ptr @.str.3, i32 7340032, i32 4, i32 4095, i8 6, i32 10000, i8 16 }, %struct.apci3xxx_boardinfo { ptr @.str.4, i32 7340032, i32 16, i32 65535, i8 6, i32 10000, i8 16 }, %struct.apci3xxx_boardinfo { ptr @.str.5, i32 7340032, i32 8, i32 65535, i8 6, i32 10000, i8 16 }, %struct.apci3xxx_boardinfo { ptr @.str.6, i32 7340032, i32 4, i32 65535, i8 6, i32 10000, i8 16 }, %struct.apci3xxx_boardinfo { ptr @.str.7, i32 7340032, i32 16, i32 4095, i8 6, i32 5000, i8 112 }, %struct.apci3xxx_boardinfo { ptr @.str.8, i32 7340032, i32 8, i32 4095, i8 6, i32 5000, i8 112 }, %struct.apci3xxx_boardinfo { ptr @.str.9, i32 7340032, i32 4, i32 4095, i8 6, i32 5000, i8 112 }, %struct.apci3xxx_boardinfo { ptr @.str.10, i32 7340032, i32 16, i32 65535, i8 6, i32 5000, i8 112 }, %struct.apci3xxx_boardinfo { ptr @.str.11, i32 7340032, i32 8, i32 65535, i8 6, i32 5000, i8 112 }, %struct.apci3xxx_boardinfo { ptr @.str.12, i32 7340032, i32 4, i32 65535, i8 6, i32 5000, i8 112 }, %struct.apci3xxx_boardinfo { ptr @.str.13, i32 7340032, i32 16, i32 4095, i8 6, i32 10000, i8 -112 }, %struct.apci3xxx_boardinfo { ptr @.str.14, i32 7340032, i32 8, i32 4095, i8 6, i32 10000, i8 -112 }, %struct.apci3xxx_boardinfo { ptr @.str.15, i32 7340032, i32 16, i32 65535, i8 6, i32 10000, i8 -112 }, %struct.apci3xxx_boardinfo { ptr @.str.16, i32 7340032, i32 8, i32 65535, i8 6, i32 10000, i8 -112 }, %struct.apci3xxx_boardinfo { ptr @.str.17, i32 7340032, i32 16, i32 4095, i8 6, i32 5000, i8 -16 }, %struct.apci3xxx_boardinfo { ptr @.str.18, i32 7340032, i32 8, i32 4095, i8 6, i32 5000, i8 -16 }, %struct.apci3xxx_boardinfo { ptr @.str.19, i32 7340032, i32 16, i32 65535, i8 6, i32 5000, i8 -16 }, %struct.apci3xxx_boardinfo { ptr @.str.20, i32 7340032, i32 8, i32 65535, i8 6, i32 5000, i8 -16 }, %struct.apci3xxx_boardinfo { ptr @.str.21, i32 4194304, i32 4, i32 65535, i8 7, i32 2500, i8 96 }, %struct.apci3xxx_boardinfo { ptr @.str.22, i32 4194304, i32 16, i32 65535, i8 6, i32 5000, i8 96 }, %struct.apci3xxx_boardinfo { ptr @.str.23, i32 4194304, i32 8, i32 65535, i8 6, i32 5000, i8 96 }, %struct.apci3xxx_boardinfo { ptr @.str.24, i32 4194304, i32 4, i32 65535, i8 6, i32 5000, i8 96 }, %struct.apci3xxx_boardinfo { ptr @.str.25, i32 0, i32 0, i32 0, i8 0, i32 0, i8 -112 }], [164 x i8] zeroinitializer }, align 32
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"apci3000-16\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"apci3000-8\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"apci3000-4\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"apci3006-16\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"apci3006-8\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"apci3006-4\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"apci3010-16\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"apci3010-8\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"apci3010-4\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"apci3016-16\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"apci3016-8\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"apci3016-4\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"apci3100-16-4\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"apci3100-8-4\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"apci3106-16-4\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"apci3106-8-4\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"apci3110-16-4\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"apci3110-8-4\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"apci3116-16-4\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"apci3116-8-4\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apci3003\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"apci3002-16\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"apci3002-8\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"apci3002-4\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apci3500\00", [23 x i8] zeroinitializer }, align 32
@apci3xxx_ai_range = internal constant { { i32, [8 x %struct.comedi_krange] }, [60 x i8] } { { i32, [8 x %struct.comedi_krange] } { i32 8, [8 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2000000, i32 2000000, i32 0 }, %struct.comedi_krange { i32 -1000000, i32 1000000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 2000000, i32 0 }, %struct.comedi_krange { i32 0, i32 1000000, i32 0 }] }, [60 x i8] zeroinitializer }, align 32
@apci3xxx_ao_range = internal constant { { i32, [2 x %struct.comedi_krange] }, [36 x i8] } { { i32, [2 x %struct.comedi_krange] } { i32 2, [2 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }] }, [36 x i8] zeroinitializer }, align 32
@apci3xxx_pci_table = internal constant { [26 x %struct.pci_device_id], [192 x i8] } { [26 x %struct.pci_device_id] [%struct.pci_device_id { i32 5560, i32 12304, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5560, i32 12303, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 5560, i32 12302, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 5560, i32 12307, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 5560, i32 12308, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 5560, i32 12309, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 5560, i32 12310, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 5560, i32 12311, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 5560, i32 12312, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 5560, i32 12313, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 5560, i32 12314, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 5560, i32 12315, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 5560, i32 12316, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 5560, i32 12317, i32 -1, i32 -1, i32 0, i32 0, i32 13, i32 0 }, %struct.pci_device_id { i32 5560, i32 12318, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 5560, i32 12319, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 5560, i32 12320, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 5560, i32 12321, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 5560, i32 12322, i32 -1, i32 -1, i32 0, i32 0, i32 18, i32 0 }, %struct.pci_device_id { i32 5560, i32 12323, i32 -1, i32 -1, i32 0, i32 0, i32 19, i32 0 }, %struct.pci_device_id { i32 5560, i32 12299, i32 -1, i32 -1, i32 0, i32 0, i32 20, i32 0 }, %struct.pci_device_id { i32 5560, i32 12290, i32 -1, i32 -1, i32 0, i32 0, i32 21, i32 0 }, %struct.pci_device_id { i32 5560, i32 12291, i32 -1, i32 -1, i32 0, i32 0, i32 22, i32 0 }, %struct.pci_device_id { i32 5560, i32 12292, i32 -1, i32 -1, i32 0, i32 0, i32 23, i32 0 }, %struct.pci_device_id { i32 5560, i32 12324, i32 -1, i32 -1, i32 0, i32 0, i32 24, i32 0 }, %struct.pci_device_id zeroinitializer], [192 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@___asan_gen_.29 = private unnamed_addr constant [16 x i8] c"apci3xxx_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 907, i32 29 }
@___asan_gen_.32 = private unnamed_addr constant [20 x i8] c"apci3xxx_pci_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 950, i32 26 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 908, i32 17 }
@___asan_gen_.38 = private unnamed_addr constant [20 x i8] c"apci3xxx_boardtypes\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 85, i32 40 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 87, i32 13 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 96, i32 13 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 105, i32 13 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 114, i32 13 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 123, i32 13 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 132, i32 13 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 141, i32 13 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 152, i32 13 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 163, i32 13 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 174, i32 13 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 185, i32 13 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 196, i32 13 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 207, i32 13 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 217, i32 13 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 227, i32 13 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 237, i32 13 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 247, i32 13 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 259, i32 13 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 271, i32 13 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 283, i32 13 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 295, i32 13 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 306, i32 13 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 316, i32 13 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 326, i32 13 }
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 336, i32 13 }
@___asan_gen_.116 = private unnamed_addr constant [18 x i8] c"apci3xxx_ai_range\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 24, i32 35 }
@___asan_gen_.119 = private unnamed_addr constant [18 x i8] c"apci3xxx_ao_range\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 37, i32 35 }
@___asan_gen_.122 = private unnamed_addr constant [19 x i8] c"apci3xxx_pci_table\00", align 1
@___asan_gen_.123 = private constant [43 x i8] c"../drivers/comedi/drivers/addi_apci_3xxx.c\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 920, i32 35 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_apci3xxx_driver_exit, ptr @__initcall__kmod_addi_apci_3xxx__236_956_apci3xxx_driver_init6, ptr @apci3xxx_driver_exit, ptr @apci3xxx_driver, ptr @apci3xxx_pci_driver, ptr @.str, ptr @apci3xxx_boardtypes, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @apci3xxx_ai_range, ptr @apci3xxx_ao_range, ptr @apci3xxx_pci_table], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apci3xxx_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apci3xxx_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apci3xxx_boardtypes to i32), i32 700, i32 864, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apci3xxx_ai_range to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apci3xxx_ao_range to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apci3xxx_pci_table to i32), i32 832, i32 1024, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @apci3xxx_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_pci_driver_register(ptr noundef nonnull @apci3xxx_driver, ptr noundef nonnull @apci3xxx_pci_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @apci3xxx_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @comedi_pci_driver_unregister(ptr noundef nonnull @apci3xxx_driver, ptr noundef nonnull @apci3xxx_pci_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_driver_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @apci3xxx_detach(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @apci3xxx_reset(ptr noundef %dev)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @comedi_pci_detach(ptr noundef %dev) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci3xxx_auto_attach(ptr noundef %dev, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_pci_dev(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %context)
  %cmp = icmp ugt i32 %context, 24
  %arrayidx = getelementptr [25 x %struct.apci3xxx_boardinfo], ptr @apci3xxx_boardtypes, i32 0, i32 %context
  %tobool.not227 = icmp eq ptr %arrayidx, null
  %tobool.not = or i1 %cmp, %tobool.not227
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
  %call3 = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 8) #7
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end2.cleanup_crit_edge, label %if.end6

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %call7 = tail call i32 @comedi_pci_enable(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
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
  %call12 = tail call ptr @pci_ioremap_bar(ptr noundef %call, i32 noundef 3) #7
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %7 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call12, ptr %mmio, align 4
  %tobool14.not = icmp eq ptr %call12, null
  br i1 %tobool14.not, label %if.end10.cleanup_crit_edge, label %if.end16

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %irq = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 46
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp17.not = icmp eq i32 %9, 0
  br i1 %cmp17.not, label %if.end16.if.end27_crit_edge, label %if.then18

if.end16.if.end27_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then18:                                        ; preds = %if.end16
  %10 = ptrtoint ptr %board_name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %board_name, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %9, ptr noundef nonnull @apci3xxx_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef %11, ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp22 = icmp eq i32 %call.i, 0
  br i1 %cmp22, label %if.then23, label %if.then18.if.end27_crit_edge

if.then18.if.end27_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then23:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  %irq25 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %14 = ptrtoint ptr %irq25 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %irq25, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.then18.if.end27_crit_edge, %if.end16.if.end27_crit_edge
  %ai_n_chan = getelementptr [25 x %struct.apci3xxx_boardinfo], ptr @apci3xxx_boardtypes, i32 0, i32 %context, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %context)
  %tobool28.not = icmp eq i32 %context, 24
  %cond = zext i1 %tobool28.not to i32
  %has_ao = getelementptr [25 x %struct.apci3xxx_boardinfo], ptr @apci3xxx_boardtypes, i32 0, i32 %context, i32 6
  %15 = ptrtoint ptr %has_ao to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %has_ao, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = zext i8 %bf.lshr to i32
  %add = add nuw nsw i32 %bf.cast, %cond
  %bf.lshr30 = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr30, 1
  %bf.cast31 = zext i8 %bf.clear to i32
  %add32 = add nuw nsw i32 %add, %bf.cast31
  %bf.lshr34 = lshr i8 %bf.load, 5
  %bf.clear35 = and i8 %bf.lshr34, 1
  %bf.cast36 = zext i8 %bf.clear35 to i32
  %add37 = add nuw nsw i32 %add32, %bf.cast36
  %bf.lshr39 = lshr i8 %bf.load, 4
  %bf.clear40 = and i8 %bf.lshr39, 1
  %bf.cast41 = zext i8 %bf.clear40 to i32
  %add42 = add nuw nsw i32 %add37, %bf.cast41
  %call43 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef %add42) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end46:                                         ; preds = %if.end27
  br i1 %tobool28.not, label %if.end46.if.end58_crit_edge, label %if.then49

if.end46.if.end58_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then49:                                        ; preds = %if.end46
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %16 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %type, align 4
  %ai_subdev_flags = getelementptr [25 x %struct.apci3xxx_boardinfo], ptr @apci3xxx_boardtypes, i32 0, i32 %context, i32 1
  %19 = ptrtoint ptr %ai_subdev_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ai_subdev_flags, align 4
  %or = or i32 %20, 65536
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %17, i32 0, i32 4
  %21 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or, ptr %subdev_flags, align 4
  %22 = ptrtoint ptr %ai_n_chan to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ai_n_chan, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %17, i32 0, i32 3
  %24 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %n_chan, align 4
  %ai_maxdata = getelementptr [25 x %struct.apci3xxx_boardinfo], ptr @apci3xxx_boardtypes, i32 0, i32 %context, i32 3
  %25 = ptrtoint ptr %ai_maxdata to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ai_maxdata, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %17, i32 0, i32 13
  %27 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %maxdata, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %17, i32 0, i32 15
  %28 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @apci3xxx_ai_range, ptr %range_table, align 4
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, ptr %17, i32 0, i32 18
  %29 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @apci3xxx_ai_insn_read, ptr %insn_read, align 4
  %irq52 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %30 = ptrtoint ptr %irq52 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool53.not = icmp eq i32 %31, 0
  br i1 %tobool53.not, label %if.then49.if.end58_crit_edge, label %if.then54

if.then49.if.end58_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then54:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %32 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %17, ptr %read_subdev, align 4
  %33 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %subdev_flags, align 4
  %or56 = or i32 %34, 32768
  store i32 %or56, ptr %subdev_flags, align 4
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, ptr %17, i32 0, i32 5
  %35 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %len_chanlist, align 4
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, ptr %17, i32 0, i32 23
  %36 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @apci3xxx_ai_cmdtest, ptr %do_cmdtest, align 4
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, ptr %17, i32 0, i32 22
  %37 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @apci3xxx_ai_cmd, ptr %do_cmd, align 4
  %cancel = getelementptr inbounds %struct.comedi_subdevice, ptr %17, i32 0, i32 25
  %38 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @apci3xxx_ai_cancel, ptr %cancel, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then54, %if.then49.if.end58_crit_edge, %if.end46.if.end58_crit_edge
  %subdev.0 = phi i32 [ 0, %if.end46.if.end58_crit_edge ], [ 1, %if.then54 ], [ 1, %if.then49.if.end58_crit_edge ]
  %39 = lshr i32 15732735, %context
  %40 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool63.not.not = icmp eq i32 %40, 0
  br i1 %tobool63.not.not, label %if.then64, label %if.end58.if.end77_crit_edge

if.end58.if.end77_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.then64:                                        ; preds = %if.end58
  %subdevices65 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %41 = ptrtoint ptr %subdevices65 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %subdevices65, align 4
  %arrayidx66 = getelementptr %struct.comedi_subdevice, ptr %42, i32 %subdev.0
  %type67 = getelementptr %struct.comedi_subdevice, ptr %42, i32 %subdev.0, i32 2
  %43 = ptrtoint ptr %type67 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2, ptr %type67, align 4
  %subdev_flags68 = getelementptr %struct.comedi_subdevice, ptr %42, i32 %subdev.0, i32 4
  %44 = ptrtoint ptr %subdev_flags68 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 3276800, ptr %subdev_flags68, align 4
  %n_chan69 = getelementptr %struct.comedi_subdevice, ptr %42, i32 %subdev.0, i32 3
  %45 = ptrtoint ptr %n_chan69 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 4, ptr %n_chan69, align 4
  %maxdata70 = getelementptr %struct.comedi_subdevice, ptr %42, i32 %subdev.0, i32 13
  %46 = ptrtoint ptr %maxdata70 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 4095, ptr %maxdata70, align 4
  %range_table71 = getelementptr %struct.comedi_subdevice, ptr %42, i32 %subdev.0, i32 15
  %47 = ptrtoint ptr %range_table71 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @apci3xxx_ao_range, ptr %range_table71, align 4
  %insn_write = getelementptr %struct.comedi_subdevice, ptr %42, i32 %subdev.0, i32 19
  %48 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @apci3xxx_ao_insn_write, ptr %insn_write, align 4
  %call72 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx66) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.then64.cleanup_crit_edge

if.then64.cleanup_crit_edge:                      ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end75:                                         ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  %inc76 = add nuw nsw i32 %subdev.0, 1
  br label %if.end77

if.end77:                                         ; preds = %if.end75, %if.end58.if.end77_crit_edge
  %subdev.1 = phi i32 [ %inc76, %if.end75 ], [ %subdev.0, %if.end58.if.end77_crit_edge ]
  %49 = lshr i32 16838719, %context
  %50 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool83.not.not = icmp eq i32 %50, 0
  br i1 %tobool83.not.not, label %if.then100, label %if.end77.if.end110_crit_edge

if.end77.if.end110_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110

if.then100:                                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  %subdevices85 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %51 = ptrtoint ptr %subdevices85 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %subdevices85, align 4
  %type87 = getelementptr %struct.comedi_subdevice, ptr %52, i32 %subdev.1, i32 2
  %53 = ptrtoint ptr %type87 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 3, ptr %type87, align 4
  %subdev_flags88 = getelementptr %struct.comedi_subdevice, ptr %52, i32 %subdev.1, i32 4
  %54 = ptrtoint ptr %subdev_flags88 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 65536, ptr %subdev_flags88, align 4
  %n_chan89 = getelementptr %struct.comedi_subdevice, ptr %52, i32 %subdev.1, i32 3
  %55 = ptrtoint ptr %n_chan89 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 4, ptr %n_chan89, align 4
  %maxdata90 = getelementptr %struct.comedi_subdevice, ptr %52, i32 %subdev.1, i32 13
  %56 = ptrtoint ptr %maxdata90 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %maxdata90, align 4
  %range_table91 = getelementptr %struct.comedi_subdevice, ptr %52, i32 %subdev.1, i32 15
  %57 = ptrtoint ptr %range_table91 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @range_unipolar5, ptr %range_table91, align 4
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %52, i32 %subdev.1, i32 20
  %58 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @apci3xxx_di_insn_bits, ptr %insn_bits, align 4
  %inc92 = add nuw nsw i32 %subdev.1, 1
  %subdevices101 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %59 = ptrtoint ptr %subdevices101 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %subdevices101, align 4
  %type103 = getelementptr %struct.comedi_subdevice, ptr %60, i32 %inc92, i32 2
  %61 = ptrtoint ptr %type103 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 4, ptr %type103, align 4
  %subdev_flags104 = getelementptr %struct.comedi_subdevice, ptr %60, i32 %inc92, i32 4
  %62 = ptrtoint ptr %subdev_flags104 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 131072, ptr %subdev_flags104, align 4
  %n_chan105 = getelementptr %struct.comedi_subdevice, ptr %60, i32 %inc92, i32 3
  %63 = ptrtoint ptr %n_chan105 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 4, ptr %n_chan105, align 4
  %maxdata106 = getelementptr %struct.comedi_subdevice, ptr %60, i32 %inc92, i32 13
  %64 = ptrtoint ptr %maxdata106 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %maxdata106, align 4
  %range_table107 = getelementptr %struct.comedi_subdevice, ptr %60, i32 %inc92, i32 15
  %65 = ptrtoint ptr %range_table107 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @range_unipolar5, ptr %range_table107, align 4
  %insn_bits108 = getelementptr %struct.comedi_subdevice, ptr %60, i32 %inc92, i32 20
  %66 = ptrtoint ptr %insn_bits108 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @apci3xxx_do_insn_bits, ptr %insn_bits108, align 4
  %inc109 = add nuw nsw i32 %subdev.1, 2
  br label %if.end110

if.end110:                                        ; preds = %if.then100, %if.end77.if.end110_crit_edge
  %subdev.3 = phi i32 [ %inc109, %if.then100 ], [ %subdev.1, %if.end77.if.end110_crit_edge ]
  %67 = and i32 %context, 1073741820
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %67)
  %tobool116.not = icmp eq i32 %67, 20
  br i1 %tobool116.not, label %if.end110.if.end127_crit_edge, label %if.then117

if.end110.if.end127_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end127

if.then117:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  %subdevices118 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %68 = ptrtoint ptr %subdevices118 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %subdevices118, align 4
  %type120 = getelementptr %struct.comedi_subdevice, ptr %69, i32 %subdev.3, i32 2
  %70 = ptrtoint ptr %type120 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 5, ptr %type120, align 4
  %subdev_flags121 = getelementptr %struct.comedi_subdevice, ptr %69, i32 %subdev.3, i32 4
  %71 = ptrtoint ptr %subdev_flags121 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 196608, ptr %subdev_flags121, align 4
  %n_chan122 = getelementptr %struct.comedi_subdevice, ptr %69, i32 %subdev.3, i32 3
  %72 = ptrtoint ptr %n_chan122 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 24, ptr %n_chan122, align 4
  %maxdata123 = getelementptr %struct.comedi_subdevice, ptr %69, i32 %subdev.3, i32 13
  %73 = ptrtoint ptr %maxdata123 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %maxdata123, align 4
  %io_bits = getelementptr %struct.comedi_subdevice, ptr %69, i32 %subdev.3, i32 12
  %74 = ptrtoint ptr %io_bits to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 255, ptr %io_bits, align 4
  %range_table124 = getelementptr %struct.comedi_subdevice, ptr %69, i32 %subdev.3, i32 15
  %75 = ptrtoint ptr %range_table124 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @range_unipolar5, ptr %range_table124, align 4
  %insn_config = getelementptr %struct.comedi_subdevice, ptr %69, i32 %subdev.3, i32 21
  %76 = ptrtoint ptr %insn_config to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @apci3xxx_dio_insn_config, ptr %insn_config, align 4
  %insn_bits125 = getelementptr %struct.comedi_subdevice, ptr %69, i32 %subdev.3, i32 20
  %77 = ptrtoint ptr %insn_bits125 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @apci3xxx_dio_insn_bits, ptr %insn_bits125, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.then117, %if.end110.if.end127_crit_edge
  tail call fastcc void @apci3xxx_reset(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end127, %if.then64.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end127 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end2.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ], [ %call43, %if.end27.cleanup_crit_edge ], [ %call72, %if.then64.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @apci3xxx_reset(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %1) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !84
  %4 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio, align 4
  %add.ptr2 = getelementptr i8, ptr %5, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #7, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void @arm_heavy_mb() #7
  %7 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio, align 4
  %add.ptr8 = getelementptr i8, ptr %8, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %6) #7, !srcloc !84
  %9 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio, align 4
  %add.ptr12 = getelementptr i8, ptr %10, i32 20
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #7, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  %12 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio, align 4
  %add.ptr19 = getelementptr i8, ptr %13, i32 28
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #7, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  %15 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio, align 4
  %add.ptr19.1 = getelementptr i8, ptr %16, i32 28
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.1) #7, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  %18 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio, align 4
  %add.ptr19.2 = getelementptr i8, ptr %19, i32 28
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.2) #7, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  %21 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio, align 4
  %add.ptr19.3 = getelementptr i8, ptr %22, i32 28
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.3) #7, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  %24 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio, align 4
  %add.ptr19.4 = getelementptr i8, ptr %25, i32 28
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.4) #7, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  %27 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio, align 4
  %add.ptr19.5 = getelementptr i8, ptr %28, i32 28
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.5) #7, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  %30 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio, align 4
  %add.ptr19.6 = getelementptr i8, ptr %31, i32 28
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.6) #7, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  %33 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio, align 4
  %add.ptr19.7 = getelementptr i8, ptr %34, i32 28
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.7) #7, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  %36 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio, align 4
  %add.ptr19.8 = getelementptr i8, ptr %37, i32 28
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.8) #7, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  %39 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmio, align 4
  %add.ptr19.9 = getelementptr i8, ptr %40, i32 28
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.9) #7, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  %42 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mmio, align 4
  %add.ptr19.10 = getelementptr i8, ptr %43, i32 28
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.10) #7, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  %45 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mmio, align 4
  %add.ptr19.11 = getelementptr i8, ptr %46, i32 28
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.11) #7, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  %48 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mmio, align 4
  %add.ptr19.12 = getelementptr i8, ptr %49, i32 28
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.12) #7, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  %51 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mmio, align 4
  %add.ptr19.13 = getelementptr i8, ptr %52, i32 28
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.13) #7, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  %54 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mmio, align 4
  %add.ptr19.14 = getelementptr i8, ptr %55, i32 28
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.14) #7, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  %57 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mmio, align 4
  %add.ptr19.15 = getelementptr i8, ptr %58, i32 28
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.15) #7, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  %60 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %61) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_to_pci_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci3xxx_irq_handler(i32 noundef %irq, ptr noundef %d) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 21
  %0 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_subdev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 17
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %5 = and i32 %4, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio, align 4
  %add.ptr3 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %4) #7, !srcloc !84
  %8 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio, align 4
  %add.ptr7 = getelementptr i8, ptr %9, i32 28
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #7, !srcloc !85
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !92
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %val, align 4
  %call11 = call i32 @comedi_buf_write_samples(ptr noundef %1, ptr noundef nonnull %val, i32 noundef 1) #7
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %async, align 4
  %events = getelementptr inbounds %struct.comedi_async, ptr %14, i32 0, i32 16
  %15 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %events, align 4
  %or = or i32 %16, 2
  store i32 %or, ptr %events, align 4
  %call12 = call i32 @comedi_handle_events(ptr noundef %d, ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci3xxx_ai_insn_read(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %call = tail call fastcc i32 @apci3xxx_ai_setup(ptr noundef %dev, i32 noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %2 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp22.not = icmp eq i32 %3, 0
  br i1 %cmp22.not, label %for.cond.preheader.cleanup_crit_edge, label %do.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body.lr.ph:                                    ; preds = %for.cond.preheader
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  br label %do.body

do.body:                                          ; preds = %if.end4.do.body_crit_edge, %do.body.lr.ph
  %i.023 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %if.end4.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 2048) #7, !srcloc !84
  %call1 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @apci3xxx_ai_eoc, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %do.body
  %6 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio, align 4
  %add.ptr6 = getelementptr i8, ptr %7, i32 28
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !85
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  %arrayidx = getelementptr i32, ptr %data, i32 %i.023
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.023, 1
  %11 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %12
  br i1 %cmp, label %if.end4.do.body_crit_edge, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4.do.body_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

cleanup:                                          ; preds = %if.end4.cleanup_crit_edge, %do.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %call1, %do.body.cleanup_crit_edge ], [ %12, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @apci3xxx_ai_cmdtest(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef %cmd) #5 align 64 {
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
  %and.i79 = and i32 %5, 4
  store i32 %and.i79, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i79)
  %cmp.i80 = icmp ne i32 %and.i79, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i79, i32 %5)
  %cmp1.not.i81 = icmp eq i32 %and.i79, %5
  %or.cond.i82 = and i1 %cmp.i80, %cmp1.not.i81
  %6 = select i1 %or.cond.i, i1 %or.cond.i82, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %7 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %convert_src, align 4
  %and.i84 = and i32 %8, 16
  store i32 %and.i84, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i84)
  %cmp.i85 = icmp ne i32 %and.i84, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i84, i32 %8)
  %cmp1.not.i86 = icmp eq i32 %and.i84, %8
  %or.cond.i87 = and i1 %cmp.i85, %cmp1.not.i86
  %9 = select i1 %6, i1 %or.cond.i87, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %10 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %scan_end_src, align 4
  %and.i89 = and i32 %11, 32
  store i32 %and.i89, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i89)
  %cmp.i90 = icmp ne i32 %and.i89, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i89, i32 %11)
  %cmp1.not.i91 = icmp eq i32 %and.i89, %11
  %or.cond.i92 = and i1 %cmp.i90, %cmp1.not.i91
  %12 = select i1 %9, i1 %or.cond.i92, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %13 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stop_src, align 4
  %and.i94 = and i32 %14, 33
  store i32 %and.i94, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i94)
  %cmp.i95 = icmp ne i32 %and.i94, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i94, i32 %14)
  %cmp1.not.i96 = icmp eq i32 %and.i94, %14
  %or.cond.i97 = and i1 %cmp.i95, %cmp1.not.i96
  %15 = select i1 %12, i1 %or.cond.i97, i1 false
  br i1 %15, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = tail call i32 @llvm.ctpop.i32(i32 %14) #7, !range !95
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp.not.i = icmp ult i32 %16, 2
  br i1 %cmp.not.i, label %if.end14, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %17 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not.i99 = icmp eq i32 %18, 0
  br i1 %cmp.not.i99, label %if.end14.comedi_check_trigger_arg_is.exit_crit_edge, label %if.then.i

if.end14.comedi_check_trigger_arg_is.exit_crit_edge: ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %start_arg, align 4
  br label %comedi_check_trigger_arg_is.exit

comedi_check_trigger_arg_is.exit:                 ; preds = %if.then.i, %if.end14.comedi_check_trigger_arg_is.exit_crit_edge
  %retval.0.i100 = phi i32 [ -22, %if.then.i ], [ 0, %if.end14.comedi_check_trigger_arg_is.exit_crit_edge ]
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %20 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not.i101 = icmp eq i32 %21, 0
  br i1 %cmp.not.i101, label %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit104_crit_edge, label %if.then.i102

comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit104_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit104

if.then.i102:                                     ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %scan_begin_arg, align 4
  br label %comedi_check_trigger_arg_is.exit104

comedi_check_trigger_arg_is.exit104:              ; preds = %if.then.i102, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit104_crit_edge
  %retval.0.i103 = phi i32 [ -22, %if.then.i102 ], [ 0, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit104_crit_edge ]
  %or18 = or i32 %retval.0.i103, %retval.0.i100
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %ai_min_acq_ns = getelementptr inbounds %struct.apci3xxx_boardinfo, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %ai_min_acq_ns to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ai_min_acq_ns, align 4
  %25 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %convert_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %24)
  %cmp.i105 = icmp ult i32 %26, %24
  br i1 %cmp.i105, label %if.then.i106, label %comedi_check_trigger_arg_is.exit104.comedi_check_trigger_arg_min.exit_crit_edge

comedi_check_trigger_arg_is.exit104.comedi_check_trigger_arg_min.exit_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit104
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_min.exit

if.then.i106:                                     ; preds = %comedi_check_trigger_arg_is.exit104
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %24, ptr %convert_arg, align 4
  br label %comedi_check_trigger_arg_min.exit

comedi_check_trigger_arg_min.exit:                ; preds = %if.then.i106, %comedi_check_trigger_arg_is.exit104.comedi_check_trigger_arg_min.exit_crit_edge
  %retval.0.i107 = phi i32 [ -22, %if.then.i106 ], [ 0, %comedi_check_trigger_arg_is.exit104.comedi_check_trigger_arg_min.exit_crit_edge ]
  %or20 = or i32 %or18, %retval.0.i107
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %28 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %chanlist_len, align 4
  %30 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %29)
  %cmp.not.i108 = icmp eq i32 %31, %29
  br i1 %cmp.not.i108, label %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_is.exit111_crit_edge, label %if.then.i109

comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_is.exit111_crit_edge: ; preds = %comedi_check_trigger_arg_min.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit111

if.then.i109:                                     ; preds = %comedi_check_trigger_arg_min.exit
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %29, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit111

comedi_check_trigger_arg_is.exit111:              ; preds = %if.then.i109, %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_is.exit111_crit_edge
  %retval.0.i110 = phi i32 [ -22, %if.then.i109 ], [ 0, %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_is.exit111_crit_edge ]
  %or22 = or i32 %or20, %retval.0.i110
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %14)
  %cmp = icmp eq i32 %14, 32
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %33 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i112 = icmp eq i32 %34, 0
  br i1 %cmp, label %if.then24, label %if.else

if.then24:                                        ; preds = %comedi_check_trigger_arg_is.exit111
  br i1 %cmp.i112, label %if.then24.if.end30.sink.split_crit_edge, label %if.then24.if.end30_crit_edge

if.then24.if.end30_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then24.if.end30.sink.split_crit_edge:          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.sink.split

if.else:                                          ; preds = %comedi_check_trigger_arg_is.exit111
  br i1 %cmp.i112, label %if.else.if.end30_crit_edge, label %if.else.if.end30.sink.split_crit_edge

if.else.if.end30.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.sink.split

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.end30.sink.split:                              ; preds = %if.else.if.end30.sink.split_crit_edge, %if.then24.if.end30.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then24.if.end30.sink.split_crit_edge ], [ 0, %if.else.if.end30.sink.split_crit_edge ]
  %35 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink, ptr %stop_arg, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end30.sink.split, %if.else.if.end30_crit_edge, %if.then24.if.end30_crit_edge
  %call25.pn = phi i32 [ 0, %if.then24.if.end30_crit_edge ], [ 0, %if.else.if.end30_crit_edge ], [ -22, %if.end30.sink.split ]
  %err.0 = or i32 %or22, %call25.pn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool31.not = icmp eq i32 %err.0, 0
  br i1 %tobool31.not, label %if.end33, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end33:                                         ; preds = %if.end30
  %36 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %convert_arg, align 4
  %flags = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 1
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags, align 4
  %40 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %board_ptr, align 4
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %42 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %private.i, align 4
  %ai_conv_units.i = getelementptr inbounds %struct.apci3xxx_boardinfo, ptr %41, i32 0, i32 4
  %44 = ptrtoint ptr %ai_conv_units.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ai_conv_units.i, align 4
  %conv.i = zext i8 %45 to i32
  %and3.i = and i32 %39, 196608
  %and.i120 = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i120)
  %tobool.not.i = icmp ne i32 %and.i120, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %37)
  %cmp12.i = icmp ult i32 %37, 65536
  %or.cond = select i1 %tobool.not.i, i1 %cmp12.i, i1 false
  br i1 %or.cond, label %if.end33.if.then14.i_crit_edge, label %for.inc.i

if.end33.if.then14.i_crit_edge:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14.i

if.then14.i:                                      ; preds = %sw.epilog11.2.i, %sw.epilog11.1.i.if.then14.i_crit_edge, %if.end33.if.then14.i_crit_edge
  %time_base.040.lcssa.i = phi i32 [ 1, %sw.epilog11.1.i.if.then14.i_crit_edge ], [ 2, %sw.epilog11.2.i ], [ 0, %if.end33.if.then14.i_crit_edge ]
  %timer.0.lcssa.i = phi i32 [ %timer.0.1.i, %sw.epilog11.1.i.if.then14.i_crit_edge ], [ %timer.0.2.i, %sw.epilog11.2.i ], [ %37, %if.end33.if.then14.i_crit_edge ]
  %conv15.i = trunc i32 %time_base.040.lcssa.i to i8
  %ai_time_base.i = getelementptr inbounds %struct.apci3xxx_private, ptr %43, i32 0, i32 1
  %46 = ptrtoint ptr %ai_time_base.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv15.i, ptr %ai_time_base.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %timer.0.lcssa.i, ptr %43, align 4
  %mul.i = mul nuw nsw i32 %timer.0.lcssa.i, %time_base.040.lcssa.i
  br label %apci3xxx_ai_ns_to_timer.exit

for.inc.i:                                        ; preds = %if.end33
  %and.1.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %sw.epilog.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

sw.epilog.1.i:                                    ; preds = %for.inc.i
  %48 = zext i32 %and3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and3.i, label %sw.default.1.i [
    i32 131072, label %sw.bb8.1.i
    i32 65536, label %sw.epilog.1.i.sw.epilog11.1.i_crit_edge
  ]

sw.epilog.1.i.sw.epilog11.1.i_crit_edge:          ; preds = %sw.epilog.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog11.1.i

sw.bb8.1.i:                                       ; preds = %sw.epilog.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.1.i = add i32 %37, 999
  br label %sw.epilog11.1.i

sw.default.1.i:                                   ; preds = %sw.epilog.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.1.i = add i32 %37, 500
  br label %sw.epilog11.1.i

sw.epilog11.1.i:                                  ; preds = %sw.default.1.i, %sw.bb8.1.i, %sw.epilog.1.i.sw.epilog11.1.i_crit_edge
  %add.pn.1.i = phi i32 [ %add.1.i, %sw.default.1.i ], [ %sub.1.i, %sw.bb8.1.i ], [ %37, %sw.epilog.1.i.sw.epilog11.1.i_crit_edge ]
  %timer.0.1.i = udiv i32 %add.pn.1.i, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536000, i32 %add.pn.1.i)
  %cmp12.1.i = icmp ult i32 %add.pn.1.i, 65536000
  br i1 %cmp12.1.i, label %sw.epilog11.1.i.if.then14.i_crit_edge, label %sw.epilog11.1.i.for.inc.1.i_crit_edge

sw.epilog11.1.i.for.inc.1.i_crit_edge:            ; preds = %sw.epilog11.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

sw.epilog11.1.i.if.then14.i_crit_edge:            ; preds = %sw.epilog11.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14.i

for.inc.1.i:                                      ; preds = %sw.epilog11.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %and.2.i = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.apci3xxx_ai_ns_to_timer.exit_crit_edge, label %sw.epilog.2.i

for.inc.1.i.apci3xxx_ai_ns_to_timer.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %apci3xxx_ai_ns_to_timer.exit

sw.epilog.2.i:                                    ; preds = %for.inc.1.i
  %49 = zext i32 %and3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %and3.i, label %sw.default.2.i [
    i32 131072, label %sw.bb8.2.i
    i32 65536, label %sw.epilog.2.i.sw.epilog11.2.i_crit_edge
  ]

sw.epilog.2.i.sw.epilog11.2.i_crit_edge:          ; preds = %sw.epilog.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog11.2.i

sw.bb8.2.i:                                       ; preds = %sw.epilog.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.2.i = add i32 %37, 999999
  br label %sw.epilog11.2.i

sw.default.2.i:                                   ; preds = %sw.epilog.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.2.i = add i32 %37, 500000
  br label %sw.epilog11.2.i

sw.epilog11.2.i:                                  ; preds = %sw.default.2.i, %sw.bb8.2.i, %sw.epilog.2.i.sw.epilog11.2.i_crit_edge
  %add.pn.2.i = phi i32 [ %add.2.i, %sw.default.2.i ], [ %sub.2.i, %sw.bb8.2.i ], [ %37, %sw.epilog.2.i.sw.epilog11.2.i_crit_edge ]
  %timer.0.2.i = udiv i32 %add.pn.2.i, 1000000
  br label %if.then14.i

apci3xxx_ai_ns_to_timer.exit:                     ; preds = %for.inc.1.i.apci3xxx_ai_ns_to_timer.exit_crit_edge, %if.then14.i
  %arg.0 = phi i32 [ %37, %for.inc.1.i.apci3xxx_ai_ns_to_timer.exit_crit_edge ], [ %mul.i, %if.then14.i ]
  %retval.0.i121 = phi i32 [ -22, %for.inc.1.i.apci3xxx_ai_ns_to_timer.exit_crit_edge ], [ 0, %if.then14.i ]
  %50 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %convert_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %arg.0)
  %cmp.not.i122 = icmp eq i32 %51, %arg.0
  br i1 %cmp.not.i122, label %apci3xxx_ai_ns_to_timer.exit.comedi_check_trigger_arg_is.exit125_crit_edge, label %if.then.i123

apci3xxx_ai_ns_to_timer.exit.comedi_check_trigger_arg_is.exit125_crit_edge: ; preds = %apci3xxx_ai_ns_to_timer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit125

if.then.i123:                                     ; preds = %apci3xxx_ai_ns_to_timer.exit
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %arg.0, ptr %convert_arg, align 4
  br label %comedi_check_trigger_arg_is.exit125

comedi_check_trigger_arg_is.exit125:              ; preds = %if.then.i123, %apci3xxx_ai_ns_to_timer.exit.comedi_check_trigger_arg_is.exit125_crit_edge
  %retval.0.i124 = phi i32 [ -22, %if.then.i123 ], [ 0, %apci3xxx_ai_ns_to_timer.exit.comedi_check_trigger_arg_is.exit125_crit_edge ]
  %or39 = or i32 %retval.0.i124, %retval.0.i121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or39)
  %tobool40.not = icmp eq i32 %or39, 0
  %. = select i1 %tobool40.not, i32 0, i32 4
  br label %cleanup

cleanup:                                          ; preds = %comedi_check_trigger_arg_is.exit125, %if.end30.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ], [ 3, %if.end30.cleanup_crit_edge ], [ %., %comedi_check_trigger_arg_is.exit125 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci3xxx_ai_cmd(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s) #2 align 64 {
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
  %chanlist = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 12
  %4 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chanlist, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %call = tail call fastcc i32 @apci3xxx_ai_setup(ptr noundef %dev, i32 noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  tail call void @arm_heavy_mb() #7
  %ai_time_base = getelementptr inbounds %struct.apci3xxx_private, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %ai_time_base to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ai_time_base, align 4
  %conv = zext i8 %9 to i32
  %10 = shl nuw i32 %conv, 24
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %11 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio, align 4
  %add.ptr6 = getelementptr i8, ptr %17, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %15) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio, align 4
  %add.ptr11 = getelementptr i8, ptr %19, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 6144) #7, !srcloc !84
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @apci3xxx_ai_cancel(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %s) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci3xxx_ao_insn_write(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef readonly %data) #2 align 64 {
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
  %cmp28.not = icmp eq i32 %3, 0
  br i1 %cmp28.not, label %entry.cleanup10_crit_edge, label %for.body.lr.ph

entry.cleanup10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup10

for.body.lr.ph:                                   ; preds = %entry
  %4 = shl i32 %1, 8
  %and2 = and i32 %4, -16777216
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %data, i32 %i.029
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !99
  tail call void @arm_heavy_mb() #7
  %7 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %and2) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  tail call void @arm_heavy_mb() #7
  %shl = shl i32 %6, 8
  %or = or i32 %shl, %and
  %9 = tail call i32 @llvm.bswap.i32(i32 %or)
  %10 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio, align 4
  %add.ptr7 = getelementptr i8, ptr %11, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %9) #7, !srcloc !84
  %call = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @apci3xxx_ao_eoc, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %for.body.cleanup10_crit_edge

for.body.cleanup10_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup10

for.inc:                                          ; preds = %for.body
  %12 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %readback, align 4
  %arrayidx8 = getelementptr i32, ptr %13, i32 %and
  %14 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %6, ptr %arrayidx8, align 4
  %inc = add nuw i32 %i.029, 1
  %15 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %16
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup10_crit_edge

for.inc.cleanup10_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup10

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup10:                                        ; preds = %for.inc.cleanup10_crit_edge, %for.body.cleanup10_crit_edge, %entry.cleanup10_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup10_crit_edge ], [ %call, %for.body.cleanup10_crit_edge ], [ %16, %for.inc.cleanup10_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci3xxx_di_insn_bits(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 32
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #7, !srcloc !85
  %4 = lshr i32 %3, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  %and3 = and i32 %4, 15
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and3, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %6 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n, align 4
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci3xxx_do_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 48
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #7, !srcloc !85
  %4 = lshr i32 %3, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  %and3 = and i32 %4, 15
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and3, ptr %state, align 4
  %call4 = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase, align 4
  %add7 = add i32 %10, 48
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %11 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %11, i32 %8) #7, !srcloc !84
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state, align 4
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %15 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n, align 4
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci3xxx_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %1)
  %cmp.not = icmp eq i32 %1, 28
  br i1 %cmp.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then:                                          ; preds = %entry
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %and = and i32 %3, 65520
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %if.then.cleanup_crit_edge, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %mask.0 = phi i32 [ 0, %entry.if.end3_crit_edge ], [ 16711680, %if.then.if.end3_crit_edge ]
  %call = tail call i32 @comedi_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data, i32 noundef %mask.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  tail call void @arm_heavy_mb() #7
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 12
  %4 = ptrtoint ptr %io_bits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_bits, align 4
  %6 = and i32 %5, -16777216
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %7 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase, align 4
  %add = add i32 %8, 224
  %and7 = and i32 %add, 1048575
  %add8 = or i32 %and7, -18874368
  %9 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %9, i32 %6) #7, !srcloc !84
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %10 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end3.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %do.body ], [ -22, %if.then.cleanup_crit_edge ], [ %call, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci3xxx_dio_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end21_crit_edge, label %if.then

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then:                                          ; preds = %entry
  %and = and i32 %call, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %do.body

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  tail call void @arm_heavy_mb() #7
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %and3 = shl i32 %1, 24
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase, align 4
  %add = add i32 %3, 80
  %and4 = and i32 %add, 1048575
  %add5 = or i32 %and4, -18874368
  %4 = inttoptr i32 %add5 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %4, i32 %and3) #7, !srcloc !84
  br label %if.end

if.end:                                           ; preds = %do.body, %if.then.if.end_crit_edge
  %and7 = and i32 %call, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end.if.end21_crit_edge, label %do.body10

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

do.body10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  tail call void @arm_heavy_mb() #7
  %state13 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %5 = ptrtoint ptr %state13 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state13, align 4
  %7 = shl i32 %6, 8
  %and14 = and i32 %7, -16777216
  %iobase15 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %8 = ptrtoint ptr %iobase15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iobase15, align 4
  %add16 = add i32 %9, 112
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %10 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %10, i32 %and14) #7, !srcloc !84
  br label %if.end21

if.end21:                                         ; preds = %do.body10, %if.end.if.end21_crit_edge, %entry.if.end21_crit_edge
  %iobase22 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %11 = ptrtoint ptr %iobase22 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase22, align 4
  %add23 = add i32 %12, 80
  %and24 = and i32 %add23, 1048575
  %add25 = or i32 %and24, -18874368
  %13 = inttoptr i32 %add25 to ptr
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %13) #7, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !107
  %15 = ptrtoint ptr %iobase22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iobase22, align 4
  %add30 = add i32 %16, 64
  %and31 = and i32 %add30, 1048575
  %add32 = or i32 %and31, -18874368
  %17 = inttoptr i32 %add32 to ptr
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %17) #7, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !108
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 12
  %19 = ptrtoint ptr %io_bits to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %io_bits, align 4
  %and36 = and i32 %20, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  %21 = ptrtoint ptr %iobase22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iobase22, align 4
  br i1 %tobool37.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %add41 = add i32 %22, 112
  %and42 = and i32 %add41, 1048575
  %add43 = or i32 %and42, -18874368
  %23 = inttoptr i32 %add43 to ptr
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %23) #7, !srcloc !85
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  br label %if.end59

if.else:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %add51 = add i32 %22, 96
  %and52 = and i32 %add51, 1048575
  %add53 = or i32 %and52, -18874368
  %26 = inttoptr i32 %add53 to ptr
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %26) #7, !srcloc !85
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  br label %if.end59

if.end59:                                         ; preds = %if.else, %if.then38
  %shl47.pn.in = phi i32 [ %25, %if.then38 ], [ %28, %if.else ]
  %29 = tail call i32 @llvm.bswap.i32(i32 %14)
  %30 = tail call i32 @llvm.bswap.i32(i32 %18)
  %shl = shl i32 %30, 8
  %or = or i32 %shl, %29
  %shl47.pn = shl i32 %shl47.pn.in, 16
  %val.0 = or i32 %or, %shl47.pn
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %val.0, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %32 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %n, align 4
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_handle_events(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @apci3xxx_ai_setup(ptr nocapture noundef readonly %dev, i32 noundef %chanspec) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  %3 = and i32 %2, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %shr = lshr i32 %chanspec, 16
  %and = and i32 %chanspec, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 256) #7, !srcloc !84
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  %add.ptr5 = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #7, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  %9 = and i32 %8, -251723777
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i, align 4
  %add.ptr13 = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %9) #7, !srcloc !84
  %and14 = and i32 %shr, 3
  %12 = lshr i32 %chanspec, 12
  %shl = and i32 %12, 4032
  %or = or i32 %and14, %shl
  %13 = and i32 %chanspec, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %13)
  %cmp = icmp eq i32 %13, 33554432
  %shl16 = select i1 %cmp, i32 128, i32 0
  %or17 = or i32 %or, %shl16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %or17)
  %15 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  %17 = or i32 %9, 65536
  %18 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i, align 4
  %add.ptr28 = getelementptr i8, ptr %19, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %17) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  %20 = tail call i32 @llvm.bswap.i32(i32 %and)
  %21 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %23 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio.i, align 4
  %add.ptr38 = getelementptr i8, ptr %24, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %9) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %25 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio.i, align 4
  %add.ptr43 = getelementptr i8, ptr %26, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 16777216) #7, !srcloc !84
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_timeout(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci3xxx_ai_eoc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %. = select i1 %tobool.not, i32 -16, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci3xxx_ao_eoc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 96
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  %3 = and i32 %2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %. = select i1 %tobool.not, i32 -16, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_insn_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci3xxx_pci_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %call = tail call i32 @comedi_pci_auto_config(ptr noundef %dev, ptr noundef nonnull @apci3xxx_driver, i32 noundef %1) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_auto_unconfig(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_auto_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__initcall__kmod_addi_apci_3xxx__236_956_apci3xxx_driver_init6, !1, !"__initcall__kmod_addi_apci_3xxx__236_956_apci3xxx_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/addi_apci_3xxx.c", i32 956, i32 1}
!2 = !{ptr @__exitcall_apci3xxx_driver_exit, !1, !"__exitcall_apci3xxx_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author237, !4, !"__UNIQUE_ID_author237", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/addi_apci_3xxx.c", i32 958, i32 1}
!5 = !{ptr @__UNIQUE_ID_description238, !6, !"__UNIQUE_ID_description238", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/addi_apci_3xxx.c", i32 959, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/addi_apci_3xxx.c", i32 960, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/addi_apci_3xxx.c", i32 908, i32 17}
!12 = !{ptr @apci3xxx_driver, !13, !"apci3xxx_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/addi_apci_3xxx.c", i32 907, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/addi_apci_3xxx.c", i32 87, i32 13}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/comedi/drivers/addi_apci_3xxx.c", i32 96, i32 13}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/comedi/drivers/addi_apci_3xxx.c", i32 105, i32 13}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/comedi/drivers/addi_apci_3xxx.c", i32 114, i32 13}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/comedi/drivers/addi_apci_3xxx.c", i32 123, i32 13}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/comedi/drivers/addi_apci_3xxx.c", i32 132, i32 13}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/comedi/drivers/addi_apci_3xxx.c", i32 141, i32 13}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/comedi/drivers/addi_apci_3xxx.c", i32 152, i32 13}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/comedi/drivers/addi_apci_3xxx.c", i32 163, i32 13}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/comedi/drivers/addi_apci_3xxx.c", i32 174, i32 13}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/comedi/drivers/addi_apci_3xxx.c", i32 185, i32 13}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/comedi/drivers/addi_apci_3xxx.c", i32 196, i32 13}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/comedi/drivers/addi_apci_3xxx.c", i32 207, i32 13}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/comedi/drivers/addi_apci_3xxx.c", i32 217, i32 13}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/comedi/drivers/addi_apci_3xxx.c", i32 227, i32 13}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/comedi/drivers/addi_apci_3xxx.c", i32 237, i32 13}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/comedi/drivers/addi_apci_3xxx.c", i32 247, i32 13}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/comedi/drivers/addi_apci_3xxx.c", i32 259, i32 13}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/comedi/drivers/addi_apci_3xxx.c", i32 271, i32 13}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/comedi/drivers/addi_apci_3xxx.c", i32 283, i32 13}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/comedi/drivers/addi_apci_3xxx.c", i32 295, i32 13}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/comedi/drivers/addi_apci_3xxx.c", i32 306, i32 13}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/comedi/drivers/addi_apci_3xxx.c", i32 316, i32 13}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/comedi/drivers/addi_apci_3xxx.c", i32 326, i32 13}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/comedi/drivers/addi_apci_3xxx.c", i32 336, i32 13}
!64 = !{ptr @apci3xxx_boardtypes, !65, !"apci3xxx_boardtypes", i1 false, i1 false}
!65 = !{!"../drivers/comedi/drivers/addi_apci_3xxx.c", i32 85, i32 40}
!66 = !{ptr @apci3xxx_ai_range, !67, !"apci3xxx_ai_range", i1 false, i1 false}
!67 = !{!"../drivers/comedi/drivers/addi_apci_3xxx.c", i32 24, i32 35}
!68 = !{ptr @apci3xxx_ao_range, !69, !"apci3xxx_ao_range", i1 false, i1 false}
!69 = !{!"../drivers/comedi/drivers/addi_apci_3xxx.c", i32 37, i32 35}
!70 = !{ptr @apci3xxx_pci_driver, !71, !"apci3xxx_pci_driver", i1 false, i1 false}
!71 = !{!"../drivers/comedi/drivers/addi_apci_3xxx.c", i32 950, i32 26}
!72 = !{ptr @apci3xxx_pci_table, !73, !"apci3xxx_pci_table", i1 false, i1 false}
!73 = !{!"../drivers/comedi/drivers/addi_apci_3xxx.c", i32 920, i32 35}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{i64 2154564429}
!84 = !{i64 4637443}
!85 = !{i64 4637861}
!86 = !{i64 2154565068}
!87 = !{i64 2154565279}
!88 = !{i64 2154565925}
!89 = !{i64 2154566399}
!90 = !{i64 2154548872}
!91 = !{i64 2154549086}
!92 = !{i64 2154549741}
!93 = !{i64 2154554263}
!94 = !{i64 2154554920}
!95 = !{i32 0, i32 33}
!96 = !{i64 2154555626}
!97 = !{i64 2154556077}
!98 = !{i64 2154556506}
!99 = !{i64 2154557448}
!100 = !{i64 2154557852}
!101 = !{i64 2154558741}
!102 = !{i64 2154559415}
!103 = !{i64 2154559673}
!104 = !{i64 2154560212}
!105 = !{i64 2154560742}
!106 = !{i64 2154561260}
!107 = !{i64 2154562195}
!108 = !{i64 2154562869}
!109 = !{i64 2154563547}
!110 = !{i64 2154564221}
!111 = !{i64 2154550211}
!112 = !{i64 2154550513}
!113 = !{i64 2154551167}
!114 = !{i64 2154551384}
!115 = !{i64 2154551791}
!116 = !{i64 2154552187}
!117 = !{i64 2154552614}
!118 = !{i64 2154553005}
!119 = !{i64 2154553406}
!120 = !{i64 2154554046}
!121 = !{i64 2154557166}
