; ModuleID = '/llk/IR_all_yes/drivers/parport/parport_serial.c_pt.bc'
source_filename = "../drivers/parport/parport_serial.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.parport_pc_pci = type { i32, [4 x %struct.anon.73], ptr, ptr }
%struct.anon.73 = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pciserial_board = type { i32, i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.parport_serial_private = type { ptr, i32, [16 x ptr], %struct.parport_pc_pci }

@__initcall__kmod_parport_serial__238_718_parport_serial_pci_driver_init6 = internal global ptr @parport_serial_pci_driver_init, section ".initcall6.init", align 4
@parport_serial_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @parport_serial_pci_tbl, ptr @parport_serial_pci_probe, ptr @parport_serial_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @parport_serial_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_parport_serial_pci_driver_exit = internal global ptr @parport_serial_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author239 = internal constant [52 x i8] c"parport_serial.author=Tim Waugh <twaugh@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [81 x i8] c"parport_serial.description=Driver for common parallel+serial multi-I/O PCI cards\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [51 x i8] c"parport_serial.file=drivers/parport/parport_serial\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [27 x i8] c"parport_serial.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"parport_serial\00", [17 x i8] zeroinitializer }, align 32
@parport_serial_pci_tbl = internal global { [65 x %struct.pci_device_id], [512 x i8] } { [65 x %struct.pci_device_id] [%struct.pci_device_id { i32 5330, i32 32785, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5330, i32 32801, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 38672, i32 38709, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 38672, i32 38725, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 38672, i32 38965, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 38672, i32 38981, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 38672, i32 38997, i32 4096, i32 32, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 38672, i32 38997, i32 4096, i32 34, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 38672, i32 38997, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 38672, i32 39168, i32 40960, i32 12305, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 38672, i32 39168, i32 40960, i32 12306, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 38672, i32 39168, i32 40960, i32 12320, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 38672, i32 39186, i32 40960, i32 8192, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 5339, i32 8464, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 5339, i32 8465, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 5339, i32 8466, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 5339, i32 8512, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 5339, i32 8513, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 5339, i32 8514, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 5339, i32 8544, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 5339, i32 8545, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 5339, i32 8546, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4895, i32 4112, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4895, i32 4113, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4895, i32 4114, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4895, i32 4148, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 4895, i32 4149, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 4895, i32 4150, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 4895, i32 8256, i32 -1, i32 -1, i32 0, i32 0, i32 13, i32 0 }, %struct.pci_device_id { i32 4895, i32 8257, i32 -1, i32 -1, i32 0, i32 0, i32 13, i32 0 }, %struct.pci_device_id { i32 4895, i32 8258, i32 -1, i32 -1, i32 0, i32 0, i32 13, i32 0 }, %struct.pci_device_id { i32 4895, i32 8208, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 4895, i32 8209, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 4895, i32 8210, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 4895, i32 8288, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 4895, i32 8289, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 4895, i32 8290, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 5129, i32 29032, i32 5129, i32 16504, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 5129, i32 29032, i32 5129, i32 16505, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 5129, i32 29032, i32 5129, i32 16517, i32 0, i32 0, i32 18, i32 0 }, %struct.pci_device_id { i32 5129, i32 29032, i32 5129, i32 16520, i32 0, i32 0, i32 19, i32 0 }, %struct.pci_device_id { i32 5129, i32 29032, i32 5129, i32 16521, i32 0, i32 0, i32 20, i32 0 }, %struct.pci_device_id { i32 5129, i32 29032, i32 5129, i32 16533, i32 0, i32 0, i32 21, i32 0 }, %struct.pci_device_id { i32 5129, i32 29032, i32 5129, i32 16534, i32 0, i32 0, i32 22, i32 0 }, %struct.pci_device_id { i32 5129, i32 29032, i32 5129, i32 20600, i32 0, i32 0, i32 23, i32 0 }, %struct.pci_device_id { i32 5129, i32 29032, i32 5129, i32 20601, i32 0, i32 0, i32 24, i32 0 }, %struct.pci_device_id { i32 5129, i32 29032, i32 5129, i32 20613, i32 0, i32 0, i32 25, i32 0 }, %struct.pci_device_id { i32 5129, i32 29032, i32 5129, i32 24697, i32 0, i32 0, i32 26, i32 0 }, %struct.pci_device_id { i32 5129, i32 29032, i32 5129, i32 28793, i32 0, i32 0, i32 27, i32 0 }, %struct.pci_device_id { i32 5129, i32 29032, i32 5129, i32 32889, i32 0, i32 0, i32 28, i32 0 }, %struct.pci_device_id { i32 5129, i32 29032, i32 5129, i32 36985, i32 0, i32 0, i32 29, i32 0 }, %struct.pci_device_id { i32 5129, i32 29032, i32 5129, i32 41081, i32 0, i32 0, i32 30, i32 0 }, %struct.pci_device_id { i32 5129, i32 29032, i32 5129, i32 45177, i32 0, i32 0, i32 31, i32 0 }, %struct.pci_device_id { i32 5129, i32 29032, i32 5129, i32 49273, i32 0, i32 0, i32 32, i32 0 }, %struct.pci_device_id { i32 5129, i32 29032, i32 5129, i32 53369, i32 0, i32 0, i32 33, i32 0 }, %struct.pci_device_id { i32 17224, i32 20563, i32 -1, i32 -1, i32 0, i32 0, i32 34, i32 0 }, %struct.pci_device_id { i32 17224, i32 28755, i32 17224, i32 12883, i32 0, i32 0, i32 35, i32 0 }, %struct.pci_device_id { i32 7168, i32 12368, i32 7168, i32 12368, i32 0, i32 0, i32 36, i32 0 }, %struct.pci_device_id { i32 7168, i32 12880, i32 7168, i32 12880, i32 0, i32 0, i32 37, i32 0 }, %struct.pci_device_id { i32 4954, i32 16640, i32 -1, i32 -1, i32 0, i32 0, i32 38, i32 0 }, %struct.pci_device_id { i32 8148, i32 6553, i32 8148, i32 256, i32 0, i32 0, i32 39, i32 0 }, %struct.pci_device_id { i32 8148, i32 6553, i32 8148, i32 257, i32 0, i32 0, i32 40, i32 0 }, %struct.pci_device_id { i32 8148, i32 6553, i32 8148, i32 258, i32 0, i32 0, i32 41, i32 0 }, %struct.pci_device_id { i32 8148, i32 6553, i32 8148, i32 260, i32 0, i32 0, i32 42, i32 0 }, %struct.pci_device_id zeroinitializer], [512 x i8] zeroinitializer }, align 32
@parport_serial_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @parport_serial_pci_suspend, ptr @parport_serial_pci_resume, ptr @parport_serial_pci_suspend, ptr @parport_serial_pci_resume, ptr @parport_serial_pci_suspend, ptr @parport_serial_pci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@cards = internal constant { [43 x %struct.parport_pc_pci], [476 x i8] } { [43 x %struct.parport_pc_pci] [%struct.parport_pc_pci { i32 1, [4 x %struct.anon.73] [%struct.anon.73 { i32 3, i32 -1 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.73] [%struct.anon.73 { i32 3, i32 -1 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.73] [%struct.anon.73 { i32 2, i32 -1 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer], ptr @netmos_parallel_init, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.73] [%struct.anon.73 { i32 0, i32 -1 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer], ptr @netmos_parallel_init, ptr null }, %struct.parport_pc_pci { i32 2, [4 x %struct.anon.73] [%struct.anon.73 { i32 0, i32 -1 }, %struct.anon.73 { i32 2, i32 -1 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.73] [%struct.anon.73 { i32 3, i32 4 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer], ptr @netmos_parallel_init, ptr null }, %struct.parport_pc_pci { i32 2, [4 x %struct.anon.73] [%struct.anon.73 { i32 0, i32 1 }, %struct.anon.73 { i32 3, i32 4 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.73] [%struct.anon.73 { i32 0, i32 1 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.73] [%struct.anon.73 { i32 1, i32 2 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 2, [4 x %struct.anon.73] [%struct.anon.73 { i32 1, i32 2 }, %struct.anon.73 { i32 3, i32 4 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.73] [%struct.anon.73 { i32 2, i32 3 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.73] [%struct.anon.73 { i32 3, i32 4 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.73] [%struct.anon.73 { i32 4, i32 5 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 2, [4 x %struct.anon.73] [%struct.anon.73 { i32 1, i32 2 }, %struct.anon.73 { i32 3, i32 4 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.73] [%struct.anon.73 { i32 1, i32 2 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.73] [%struct.anon.73 { i32 2, i32 3 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.73] [%struct.anon.73 { i32 2, i32 -1 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.73] [%struct.anon.73 { i32 2, i32 3 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 2, [4 x %struct.anon.73] [%struct.anon.73 { i32 2, i32 -1 }, %struct.anon.73 { i32 4, i32 -1 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 2, [4 x %struct.anon.73] [%struct.anon.73 { i32 2, i32 3 }, %struct.anon.73 { i32 4, i32 5 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 2, [4 x %struct.anon.73] [%struct.anon.73 { i32 2, i32 3 }, %struct.anon.73 { i32 4, i32 5 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 2, [4 x %struct.anon.73] [%struct.anon.73 { i32 2, i32 3 }, %struct.anon.73 { i32 4, i32 5 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 2, [4 x %struct.anon.73] [%struct.anon.73 { i32 2, i32 3 }, %struct.anon.73 { i32 4, i32 5 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.73] [%struct.anon.73 { i32 2, i32 -1 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.73] [%struct.anon.73 { i32 2, i32 3 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 2, [4 x %struct.anon.73] [%struct.anon.73 { i32 2, i32 -1 }, %struct.anon.73 { i32 4, i32 -1 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.73] [%struct.anon.73 { i32 2, i32 3 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.73] [%struct.anon.73 { i32 2, i32 3 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.73] [%struct.anon.73 { i32 2, i32 3 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.73] [%struct.anon.73 { i32 2, i32 3 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.73] [%struct.anon.73 { i32 2, i32 3 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.73] [%struct.anon.73 { i32 2, i32 3 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.73] [%struct.anon.73 { i32 2, i32 3 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.73] [%struct.anon.73 { i32 2, i32 3 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.73] [%struct.anon.73 { i32 1, i32 -1 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.73] [%struct.anon.73 { i32 2, i32 -1 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.73] [%struct.anon.73 { i32 2, i32 -1 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.73] [%struct.anon.73 { i32 2, i32 -1 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.73] [%struct.anon.73 { i32 3, i32 -1 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.73] [%struct.anon.73 { i32 1, i32 2 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.73] [%struct.anon.73 { i32 1, i32 2 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.73] [%struct.anon.73 { i32 1, i32 2 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.73] [%struct.anon.73 { i32 1, i32 2 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer], ptr null, ptr null }], [476 x i8] zeroinitializer }, align 32
@parport_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 596, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"only %zu parallel ports supported (%d reported)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"parport_register\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/parport/parport_serial.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@parport_register._entry_ptr = internal global ptr @parport_register._entry, section ".printk_index", align 4
@parport_register.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.6, i8 0, i8 -102, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"PCI parallel port detected: I/O at %#lx(%#lx)\0A\00", [49 x i8] zeroinitializer }, align 32
@parport_register.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 0, i8 -101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"PCI parallel port detected: I/O at %#lx(%#lx), IRQ %d\0A\00", [41 x i8] zeroinitializer }, align 32
@pci_parport_serial_boards = internal global { [43 x %struct.pciserial_board], [280 x i8] } { [43 x %struct.pciserial_board] [%struct.pciserial_board { i32 9, i32 1, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 9, i32 2, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 1, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 10, i32 1, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 12, i32 1, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 1, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 0, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 0, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 1, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 1, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 2, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 2, i32 1, i32 460800, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 2, i32 1, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 1, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 1, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 1, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 1, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 1, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 1, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 1, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 1, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 1, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 1, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 1, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 1, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 1, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 1, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 1, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 1, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 1, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 1, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 1, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 1, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 1, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 1, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 2, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 0, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 2, i32 115200, i32 8, i32 0, i32 192 }, %struct.pciserial_board { i32 2, i32 5, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board zeroinitializer, %struct.pciserial_board { i32 0, i32 1, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 2, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 4, i32 921600, i32 8, i32 0, i32 0 }], [280 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 38965, i64 39186]
@___asan_gen_.8 = private unnamed_addr constant [26 x i8] c"parport_serial_pci_driver\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 709, i32 26 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 718, i32 1 }
@___asan_gen_.14 = private unnamed_addr constant [23 x i8] c"parport_serial_pci_tbl\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 163, i32 29 }
@___asan_gen_.17 = private unnamed_addr constant [22 x i8] c"parport_serial_pm_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 706, i32 8 }
@___asan_gen_.20 = private unnamed_addr constant [6 x i8] c"cards\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 117, i32 30 }
@___asan_gen_.23 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 594, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 615, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 619, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant [26 x i8] c"pci_parport_serial_boards\00", align 1
@___asan_gen_.48 = private constant [36 x i8] c"../drivers/parport/parport_serial.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 291, i32 31 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__exitcall_parport_serial_pci_driver_exit, ptr @__initcall__kmod_parport_serial__238_718_parport_serial_pci_driver_init6, ptr @parport_register._entry, ptr @parport_register._entry_ptr, ptr @parport_serial_pci_driver_exit, ptr @parport_serial_pci_driver, ptr @.str, ptr @parport_serial_pci_tbl, ptr @parport_serial_pm_ops, ptr @cards, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @pci_parport_serial_boards], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_serial_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_serial_pci_tbl to i32), i32 2080, i32 2592, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_serial_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cards to i32), i32 1892, i32 2368, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_parport_serial_boards to i32), i32 1032, i32 1312, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @parport_serial_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @parport_serial_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @parport_serial_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @parport_serial_pci_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parport_serial_pci_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 116, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @pcim_enable_device(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call fastcc i32 @parport_register(ptr noundef %dev, ptr noundef %id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_data.i, align 4
  %num_ports.i = getelementptr [43 x %struct.pciserial_board], ptr @pci_parport_serial_boards, i32 0, i32 %4, i32 1
  %5 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp eq i32 %6, 0
  br i1 %cmp.i, label %if.end9.cleanup_crit_edge, label %if.end.i

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end9
  %arrayidx.i = getelementptr [43 x %struct.pciserial_board], ptr @pci_parport_serial_boards, i32 0, i32 %4
  %call1.i = tail call ptr @pciserial_init_ports(ptr noundef %dev, ptr noundef %arrayidx.i) #6
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %serial_register.exit, label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call1.i, ptr %2, align 4
  br label %cleanup

serial_register.exit:                             ; preds = %if.end.i
  %8 = ptrtoint ptr %call1.i to i32
  %num_par = getelementptr inbounds %struct.parport_serial_private, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %num_par to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_par, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp32 = icmp sgt i32 %10, 0
  br i1 %cmp32, label %serial_register.exit.for.body_crit_edge, label %serial_register.exit.cleanup_crit_edge

serial_register.exit.cleanup_crit_edge:           ; preds = %serial_register.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

serial_register.exit.for.body_crit_edge:          ; preds = %serial_register.exit
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %serial_register.exit.for.body_crit_edge
  %i.033 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %serial_register.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.parport_serial_private, ptr %call.i, i32 0, i32 2, i32 %i.033
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  tail call void @parport_pc_unregister_port(ptr noundef %12) #6
  %inc = add nuw nsw i32 %i.033, 1
  %13 = ptrtoint ptr %num_par to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_par, align 4
  %cmp = icmp slt i32 %inc, %14
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %serial_register.exit.cleanup_crit_edge, %if.end5.i, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ 0, %if.end5.i ], [ 0, %if.end9.cleanup_crit_edge ], [ %8, %serial_register.exit.cleanup_crit_edge ], [ %8, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parport_serial_pci_remove(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pciserial_remove_ports(ptr noundef nonnull %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %num_par = getelementptr inbounds %struct.parport_serial_private, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %num_par to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_par, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp7 = icmp sgt i32 %5, 0
  br i1 %cmp7, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.parport_serial_private, ptr %1, i32 0, i32 2, i32 %i.08
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void @parport_pc_unregister_port(ptr noundef %7) #6
  %inc = add nuw nsw i32 %i.08, 1
  %8 = ptrtoint ptr %num_par to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_par, align 4
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parport_register(ptr noundef %dev, ptr nocapture noundef readonly %id) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %par = getelementptr inbounds %struct.parport_serial_private, ptr %1, i32 0, i32 3
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [43 x %struct.parport_pc_pci], ptr @cards, i32 0, i32 %3
  %4 = call ptr @memcpy(ptr %par, ptr %arrayidx, i32 44)
  %preinit_hook = getelementptr inbounds %struct.parport_serial_private, ptr %1, i32 0, i32 3, i32 2
  %5 = ptrtoint ptr %preinit_hook to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %preinit_hook, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 %6(ptr noundef %dev, ptr noundef %par, i32 noundef -1, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup86_crit_edge

land.lhs.true.cleanup86_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup86

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %par, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp152 = icmp sgt i32 %8, 0
  br i1 %cmp152, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %num_par = getelementptr inbounds %struct.parport_serial_private, ptr %1, i32 0, i32 1
  %dev60 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %9 = ptrtoint ptr %num_par to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_par, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %10)
  %cmp10171 = icmp eq i32 %10, 16
  br i1 %cmp10171, label %for.body.lr.ph.cleanup_crit_edge, label %if.end14.lr.ph

for.body.lr.ph.cleanup_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14.lr.ph:                                   ; preds = %for.body.lr.ph
  %hi9170 = getelementptr %struct.parport_serial_private, ptr %1, i32 0, i32 3, i32 1, i32 0, i32 1
  br label %if.end14

for.body:                                         ; preds = %for.inc
  %hi9 = getelementptr %struct.parport_serial_private, ptr %1, i32 0, i32 3, i32 1, i32 %inc78, i32 1
  %11 = ptrtoint ptr %num_par to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_par, align 4
  %cmp10 = icmp eq i32 %12, 16
  br i1 %cmp10, label %for.body.cleanup_crit_edge, label %for.body.if.end14_crit_edge

for.body.if.end14_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %for.body.if.end14_crit_edge, %if.end14.lr.ph
  %.in = phi ptr [ %hi9170, %if.end14.lr.ph ], [ %hi9, %for.body.if.end14_crit_edge ]
  %success.0153173 = phi i32 [ 0, %if.end14.lr.ph ], [ %success.2.ph, %for.body.if.end14_crit_edge ]
  %n.0154172 = phi i32 [ 0, %if.end14.lr.ph ], [ %inc78, %for.body.if.end14_crit_edge ]
  %13 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %.in, align 4
  %arrayidx5 = getelementptr %struct.parport_serial_private, ptr %1, i32 0, i32 3, i32 1, i32 %n.0154172
  %15 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx5, align 4
  %arrayidx15 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 %16
  %17 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx15, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %14)
  %19 = icmp ult i32 %14, 7
  br i1 %19, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx21 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 %14
  %20 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx21, align 8
  br label %if.end26

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %14)
  %cmp23 = icmp sgt i32 %14, 6
  %add = select i1 %cmp23, i32 %14, i32 0
  %spec.select = add i32 %18, %add
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then19
  %io_lo.0 = phi i32 [ %18, %if.then19 ], [ %spec.select, %if.else ]
  %io_hi.0 = phi i32 [ %21, %if.then19 ], [ 0, %if.else ]
  %call27 = tail call i32 @pci_irq_vector(ptr noundef %dev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end26.cleanup86_crit_edge, label %if.end30

if.end26.cleanup86_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup86

if.end30:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp31 = icmp eq i32 %call27, 0
  %spec.store.select = select i1 %cmp31, i32 -1, i32 %call27
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spec.store.select)
  %cmp34 = icmp eq i32 %spec.store.select, -1
  br i1 %cmp34, label %do.body36, label %do.body47

do.body36:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parport_register.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parport_register, %if.then41)) #6
          to label %if.end64 [label %if.then41], !srcloc !44

if.then41:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @parport_register.__UNIQUE_ID_ddebug236, ptr noundef %dev60, ptr noundef nonnull @.str.6, i32 noundef %io_lo.0, i32 noundef %io_hi.0) #6
  br label %if.end64

do.body47:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parport_register.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parport_register, %if.then59)) #6
          to label %if.end64 [label %if.then59], !srcloc !44

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @parport_register.__UNIQUE_ID_ddebug237, ptr noundef %dev60, ptr noundef nonnull @.str.7, i32 noundef %io_lo.0, i32 noundef %io_hi.0, i32 noundef %spec.store.select) #6
  br label %if.end64

if.end64:                                         ; preds = %if.then59, %do.body47, %if.then41, %do.body36
  %call66 = tail call ptr @parport_pc_probe_port(i32 noundef %io_lo.0, i32 noundef %io_hi.0, i32 noundef %spec.store.select, i32 noundef -1, ptr noundef %dev60, i32 noundef 128) #6
  %tobool67.not = icmp eq ptr %call66, null
  br i1 %tobool67.not, label %if.end64.for.inc_crit_edge, label %if.then68

if.end64.for.inc_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then68:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %num_par to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_par, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %num_par, align 4
  %arrayidx71 = getelementptr %struct.parport_serial_private, ptr %1, i32 0, i32 2, i32 %23
  %24 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call66, ptr %arrayidx71, align 4
  br label %for.inc

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.body.lr.ph.cleanup_crit_edge
  %.lcssa = phi i32 [ %8, %for.body.lr.ph.cleanup_crit_edge ], [ %26, %for.body.cleanup_crit_edge ]
  %success.0153.lcssa = phi i32 [ 0, %for.body.lr.ph.cleanup_crit_edge ], [ %success.2.ph, %for.body.cleanup_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev60, ptr noundef nonnull @.str.1, i32 noundef 16, i32 noundef %.lcssa) #9
  br label %for.end

for.inc:                                          ; preds = %if.then68, %if.end64.for.inc_crit_edge
  %success.2.ph = phi i32 [ %success.0153173, %if.end64.for.inc_crit_edge ], [ 1, %if.then68 ]
  %inc78 = add nuw nsw i32 %n.0154172, 1
  %25 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %par, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc78, i32 %26)
  %cmp = icmp slt i32 %inc78, %26
  br i1 %cmp, label %for.body, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup, %if.end.for.end_crit_edge
  %success.0151 = phi i32 [ %success.0153.lcssa, %cleanup ], [ 0, %if.end.for.end_crit_edge ], [ %success.2.ph, %for.inc.for.end_crit_edge ]
  %postinit_hook = getelementptr inbounds %struct.parport_serial_private, ptr %1, i32 0, i32 3, i32 3
  %27 = ptrtoint ptr %postinit_hook to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %postinit_hook, align 4
  %tobool79.not = icmp eq ptr %28, null
  br i1 %tobool79.not, label %for.end.cleanup86_crit_edge, label %if.then80

for.end.cleanup86_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup86

if.then80:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %success.0151)
  %tobool82.not = icmp eq i32 %success.0151, 0
  %lnot.ext84 = zext i1 %tobool82.not to i32
  tail call void %28(ptr noundef %dev, ptr noundef %par, i32 noundef %lnot.ext84) #6
  br label %cleanup86

cleanup86:                                        ; preds = %if.then80, %for.end.cleanup86_crit_edge, %if.end26.cleanup86_crit_edge, %land.lhs.true.cleanup86_crit_edge
  %retval.2 = phi i32 [ -19, %land.lhs.true.cleanup86_crit_edge ], [ 0, %if.then80 ], [ 0, %for.end.cleanup86_crit_edge ], [ %call27, %if.end26.cleanup86_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_pc_unregister_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @parport_pc_probe_port(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @netmos_parallel_init(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %par, i32 noundef %autoirq, i32 noundef %autodma) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %device, align 2
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i16 %1, label %entry.if.else_crit_edge [
    i16 -26571, label %land.lhs.true
    i16 -26350, label %entry.return.sink.split_crit_edge
  ]

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 9
  %3 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %subsystem_vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4116, i16 %4)
  %cmp3 = icmp eq i16 %4, 4116
  br i1 %cmp3, label %land.lhs.true5, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true5:                                   ; preds = %land.lhs.true
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 10
  %5 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %subsystem_device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 665, i16 %6)
  %cmp7 = icmp eq i16 %6, 665
  br i1 %cmp7, label %land.lhs.true5.return_crit_edge, label %land.lhs.true5.if.else_crit_edge

land.lhs.true5.if.else_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true5.return_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.else:                                          ; preds = %land.lhs.true5.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %subsystem_device14 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 10
  %7 = ptrtoint ptr %subsystem_device14 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %subsystem_device14, align 2
  %9 = lshr i16 %8, 4
  %10 = and i16 %9, 15
  %11 = tail call i16 @llvm.umin.i16(i16 %10, i16 4)
  %spec.store.select = zext i16 %11 to i32
  br label %return.sink.split

return.sink.split:                                ; preds = %if.else, %entry.return.sink.split_crit_edge
  %spec.store.select.sink = phi i32 [ %spec.store.select, %if.else ], [ 1, %entry.return.sink.split_crit_edge ]
  %12 = ptrtoint ptr %par to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %spec.store.select.sink, ptr %par, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %land.lhs.true5.return_crit_edge
  %retval.0 = phi i32 [ -19, %land.lhs.true5.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pciserial_init_ports(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pciserial_remove_ports(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parport_serial_pci_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pciserial_suspend_ports(ptr noundef nonnull %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parport_serial_pci_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pciserial_resume_ports(ptr noundef nonnull %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pciserial_suspend_ports(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pciserial_resume_ports(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !28, !29, !31, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__initcall__kmod_parport_serial__238_718_parport_serial_pci_driver_init6, !1, !"__initcall__kmod_parport_serial__238_718_parport_serial_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/parport/parport_serial.c", i32 718, i32 1}
!2 = !{ptr @__exitcall_parport_serial_pci_driver_exit, !1, !"__exitcall_parport_serial_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author239, !4, !"__UNIQUE_ID_author239", i1 false, i1 false}
!4 = !{!"../drivers/parport/parport_serial.c", i32 720, i32 1}
!5 = !{ptr @__UNIQUE_ID_description240, !6, !"__UNIQUE_ID_description240", i1 false, i1 false}
!6 = !{!"../drivers/parport/parport_serial.c", i32 721, i32 1}
!7 = !{ptr @__UNIQUE_ID_file241, !8, !"__UNIQUE_ID_file241", i1 false, i1 false}
!8 = !{!"../drivers/parport/parport_serial.c", i32 722, i32 1}
!9 = !{ptr @__UNIQUE_ID_license242, !8, !"__UNIQUE_ID_license242", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @parport_serial_pci_driver, !12, !"parport_serial_pci_driver", i1 false, i1 false}
!12 = !{!"../drivers/parport/parport_serial.c", i32 709, i32 26}
!13 = !{ptr @parport_serial_pci_tbl, !14, !"parport_serial_pci_tbl", i1 false, i1 false}
!14 = !{!"../drivers/parport/parport_serial.c", i32 163, i32 29}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/parport/parport_serial.c", i32 594, i32 4}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @parport_register._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @parport_register._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/parport/parport_serial.c", i32 615, i32 4}
!25 = !{ptr @parport_register.__UNIQUE_ID_ddebug236, !24, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/parport/parport_serial.c", i32 619, i32 4}
!28 = !{ptr @parport_register.__UNIQUE_ID_ddebug237, !27, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!29 = !{ptr @cards, !30, !"cards", i1 false, i1 false}
!30 = !{!"../drivers/parport/parport_serial.c", i32 117, i32 30}
!31 = !{ptr @pci_parport_serial_boards, !32, !"pci_parport_serial_boards", i1 false, i1 false}
!32 = !{!"../drivers/parport/parport_serial.c", i32 291, i32 31}
!33 = !{ptr @parport_serial_pm_ops, !34, !"parport_serial_pm_ops", i1 false, i1 false}
!34 = !{!"../drivers/parport/parport_serial.c", i32 706, i32 8}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{i64 2148736091, i64 2148736096, i64 2148736109, i64 2148736153, i64 2148736187, i64 2148736208}
