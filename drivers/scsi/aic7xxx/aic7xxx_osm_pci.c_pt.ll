; ModuleID = '/llk/IR_all_yes/drivers/scsi/aic7xxx/aic7xxx_osm_pci.c_pt.bc'
source_filename = "../drivers/scsi/aic7xxx/aic7xxx_osm_pci.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.ahc_softc = type { i32, %union.bus_space_handle_t, ptr, ptr, %struct.anon.92, i32, [16 x %struct.scb_tailq], %union.ahc_bus_softc, ptr, ptr, ptr, ptr, ptr, [16 x ptr], ptr, ptr, i32, i32, i32, i32, ptr, i8, i8, i8, i8, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, ptr, i8, i8, i8, i32, [12 x i8], [12 x i8], i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i16, i16 }
%union.bus_space_handle_t = type { i32 }
%struct.anon.92 = type { ptr }
%struct.scb_tailq = type { ptr, ptr }
%union.ahc_bus_softc = type { %struct.ahc_pci_softc }
%struct.ahc_pci_softc = type { i32, i16, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.ahc_platform_data = type { [16 x ptr], %struct.spinlock, i32, ptr, ptr, i32, i32, i32 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ahc_pci_read_config: Read size too big\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ahc_pci_write_config: Write size too big\00", [55 x i8] zeroinitializer }, align 32
@aic7xxx_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.2, ptr @ahc_linux_pci_id_table, ptr @ahc_linux_pci_dev_probe, ptr @ahc_linux_pci_dev_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahc_linux_pci_dev_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"aic7xxx\00", [24 x i8] zeroinitializer }, align 32
@ahc_pci_map_registers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"aic7xxx: PCI Device %d:%d:%d failed memory mapped test.  Using PIO.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ahc_pci_map_registers\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/scsi/aic7xxx/aic7xxx_osm_pci.c\00", [57 x i8] zeroinitializer }, align 32
@ahc_pci_map_registers._entry_ptr = internal global ptr @ahc_pci_map_registers._entry, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@ahc_pci_map_registers._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"aic7xxx: PCI%d:%d:%d MEM region 0x%llx unavailable. Cannot memory map device.\0A\00", [49 x i8] zeroinitializer }, align 32
@ahc_pci_map_registers._entry_ptr.8 = internal global ptr @ahc_pci_map_registers._entry.6, section ".printk_index", align 4
@ahc_pci_map_registers._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"aic7xxx: PCI%d:%d:%d IO region 0x%llx[0..255] unavailable. Cannot map device.\0A\00", [49 x i8] zeroinitializer }, align 32
@ahc_pci_map_registers._entry_ptr.11 = internal global ptr @ahc_pci_map_registers._entry.9, section ".printk_index", align 4
@ahc_linux_pci_id_table = internal constant { [136 x %struct.pci_device_id], [1088 x i8] } { [136 x %struct.pci_device_id] [%struct.pci_device_id { i32 36868, i32 20600, i32 36868, i32 30800, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36868, i32 14432, i32 36868, i32 14441, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36868, i32 24693, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36868, i32 24952, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36868, i32 8568, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36868, i32 24632, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36868, i32 29048, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36868, i32 29304, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36868, i32 29560, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36868, i32 29816, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36868, i32 30072, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36868, i32 30328, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36868, i32 33144, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36868, i32 33400, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36868, i32 33912, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36868, i32 34168, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36868, i32 33656, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36868, i32 34424, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36868, i32 34936, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36868, i32 34680, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36868, i32 120, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 17, i32 36869, i32 385, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 16, i32 36869, i32 41216, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 16, i32 36869, i32 8576, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 16, i32 36869, i32 41344, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 16, i32 36869, i32 57600, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 16, i32 36869, i32 15, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 17, i32 36869, i32 15, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 18, i32 36869, i32 15, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 19, i32 36869, i32 15, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 20, i32 36869, i32 15, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 21, i32 36869, i32 15, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 22, i32 36869, i32 15, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 23, i32 36869, i32 15, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 24, i32 36869, i32 15, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 25, i32 36869, i32 15, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 26, i32 36869, i32 15, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 27, i32 36869, i32 15, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 28, i32 36869, i32 15, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 29, i32 36869, i32 15, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 30, i32 36869, i32 15, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 31, i32 36869, i32 15, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 19, i32 36869, i32 3, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 128, i32 36869, i32 58016, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 128, i32 3601, i32 58016, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 128, i32 36869, i32 25248, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 128, i32 36869, i32 25120, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 128, i32 36869, i32 57888, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 129, i32 36869, i32 25249, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 131, i32 36869, i32 65535, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36868, i32 30869, i32 36868, i32 30865, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36868, i32 30869, i32 36868, i32 30866, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36868, i32 30869, i32 36868, i32 30868, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36868, i32 30864, i32 36868, i32 30867, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 80, i32 36869, i32 65535, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 80, i32 36869, i32 62720, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 81, i32 36869, i32 65535, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 81, i32 36869, i32 46336, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 83, i32 36869, i32 65535, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 192, i32 36869, i32 63008, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 192, i32 3601, i32 63008, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 195, i32 36869, i32 65535, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36868, i32 20600, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36868, i32 21880, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36868, i32 14432, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36868, i32 24696, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36868, i32 28792, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36868, i32 32888, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 16, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 17, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 18, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 19, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 20, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 21, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 22, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 23, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 24, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 25, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 26, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 27, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 28, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 29, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 30, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 31, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 128, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 129, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 130, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 131, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 132, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 133, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 134, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 135, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 136, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 137, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 138, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 139, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 140, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 141, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 142, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 143, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36868, i32 30869, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 80, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 81, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 82, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 83, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 84, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 85, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 86, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 87, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 88, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 89, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 90, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 91, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 92, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 93, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 94, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 95, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 192, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 193, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 194, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 195, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 196, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 197, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 198, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 199, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 200, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 201, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 202, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 203, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 204, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 205, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 206, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 207, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36868, i32 4216, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36868, i32 30741, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [1088 x i8] zeroinitializer }, align 32
@ahc_linux_pci_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ahc_linux_pci_dev_suspend, ptr @ahc_linux_pci_dev_resume, ptr @ahc_linux_pci_dev_suspend, ptr @ahc_linux_pci_dev_resume, ptr @ahc_linux_pci_dev_suspend, ptr @ahc_linux_pci_dev_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ahc_pci:%d:%d:%d\00", [47 x i8] zeroinitializer }, align 32
@ahc_linux_pci_dev_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.5, i32 224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014aic7xxx: No suitable DMA available.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ahc_linux_pci_dev_probe\00", [40 x i8] zeroinitializer }, align 32
@ahc_linux_pci_dev_probe._entry_ptr = internal global ptr @ahc_linux_pci_dev_probe._entry, section ".printk_index", align 4
@aic7xxx_driver_template = external dso_local global %struct.scsi_host_template, align 8
@ahc_linux_pci_inherit_flags._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.5, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013aic7xxx: no multichannel peer found!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ahc_linux_pci_inherit_flags\00", [36 x i8] zeroinitializer }, align 32
@ahc_linux_pci_inherit_flags._entry_ptr = internal global ptr @ahc_linux_pci_inherit_flags._entry, section ".printk_index", align 4
@aic7xxx_allow_memio = external dso_local local_unnamed_addr global i32, align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 273, i32 9 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 293, i32 9 }
@___asan_gen_.24 = private unnamed_addr constant [19 x i8] c"aic7xxx_pci_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 302, i32 26 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 313, i32 9 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 391, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 404, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 423, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant [23 x i8] c"ahc_linux_pci_id_table\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 49, i32 35 }
@___asan_gen_.57 = private unnamed_addr constant [25 x i8] c"ahc_linux_pci_dev_pm_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 298, i32 8 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 200, i32 15 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 224, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private constant [42 x i8] c"../drivers/scsi/aic7xxx/aic7xxx_osm_pci.c\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 173, i32 4 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @ahc_linux_pci_dev_probe._entry, ptr @ahc_linux_pci_dev_probe._entry_ptr, ptr @ahc_linux_pci_inherit_flags._entry, ptr @ahc_linux_pci_inherit_flags._entry_ptr, ptr @ahc_pci_map_registers._entry, ptr @ahc_pci_map_registers._entry.6, ptr @ahc_pci_map_registers._entry.9, ptr @ahc_pci_map_registers._entry_ptr, ptr @ahc_pci_map_registers._entry_ptr.11, ptr @ahc_pci_map_registers._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @aic7xxx_pci_driver, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @ahc_linux_pci_id_table, ptr @ahc_linux_pci_dev_pm_ops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic7xxx_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_pci_map_registers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_pci_map_registers._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_pci_map_registers._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_linux_pci_id_table to i32), i32 4352, i32 5440, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_linux_pci_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_linux_pci_dev_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_linux_pci_inherit_flags._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahc_pci_read_config(ptr noundef %pci, i32 noundef %reg, i32 noundef %width) local_unnamed_addr #0 align 64 {
entry:
  %retval1 = alloca i8, align 1
  %retval3 = alloca i16, align 2
  %retval7 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %width to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %width, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 4, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retval1) #6
  %1 = ptrtoint ptr %retval1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %retval1, align 1, !annotation !47
  %call = call i32 @pci_read_config_byte(ptr noundef %pci, i32 noundef %reg, ptr noundef nonnull %retval1) #6
  %2 = ptrtoint ptr %retval1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %retval1, align 1
  %conv = zext i8 %3 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retval1) #6
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %retval3) #6
  %4 = ptrtoint ptr %retval3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %retval3, align 2, !annotation !47
  %call4 = call i32 @pci_read_config_word(ptr noundef %pci, i32 noundef %reg, ptr noundef nonnull %retval3) #6
  %5 = ptrtoint ptr %retval3 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %retval3, align 2
  %conv5 = zext i16 %6 to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %retval3) #6
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval7) #6
  %7 = ptrtoint ptr %retval7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %retval7, align 4, !annotation !47
  %call8 = call i32 @pci_read_config_dword(ptr noundef %pci, i32 noundef %reg, ptr noundef nonnull %retval7) #6
  %8 = ptrtoint ptr %retval7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %retval7, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval7) #6
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str) #9
  unreachable

return:                                           ; preds = %sw.bb6, %sw.bb2, %sw.bb
  %retval.0 = phi i32 [ %9, %sw.bb6 ], [ %conv5, %sw.bb2 ], [ %conv, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ahc_pci_write_config(ptr noundef %pci, i32 noundef %reg, i32 noundef %value, i32 noundef %width) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %width to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %width, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 4, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = trunc i32 %value to i8
  %call = tail call i32 @pci_write_config_byte(ptr noundef %pci, i32 noundef %reg, i8 noundef zeroext %conv) #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv2 = trunc i32 %value to i16
  %call3 = tail call i32 @pci_write_config_word(ptr noundef %pci, i32 noundef %reg, i16 noundef zeroext %conv2) #6
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 @pci_write_config_dword(ptr noundef %pci, i32 noundef %reg, i32 noundef %value) #6
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.1) #9
  unreachable

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahc_linux_pci_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @aic7xxx_pci_driver, ptr noundef null, ptr noundef nonnull @.str.2) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ahc_linux_pci_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pci_unregister_driver(ptr noundef nonnull @aic7xxx_pci_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahc_pci_map_registers(ptr noundef %ahc) local_unnamed_addr #0 align 64 {
entry:
  %retval7.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_softc = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 9
  %0 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_softc, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval7.i) #6
  %2 = ptrtoint ptr %retval7.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %retval7.i, align 4, !annotation !47
  %call8.i = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef 4, ptr noundef nonnull %retval7.i) #6
  %3 = ptrtoint ptr %retval7.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %retval7.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval7.i) #6
  %and = and i32 %4, -4
  %5 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_softc, align 4
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 1
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 0
  br i1 %cmp.not.i, label %entry.do.end20_crit_edge, label %if.then.i

entry.do.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end20

if.then.i:                                        ; preds = %entry
  %call.i = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %8, i32 noundef 4096, ptr noundef nonnull @.str.2, i32 noundef 0) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i.do.end20_crit_edge, label %if.then4.i

if.then.i.do.end20_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end20

if.then4.i:                                       ; preds = %if.then.i
  %call5.i = call ptr @ioremap(i32 noundef %8, i32 noundef 256) #6
  %cmp6.i = icmp eq ptr %call5.i, null
  br i1 %cmp6.i, label %if.then7.i, label %if.then

if.then7.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %8, i32 noundef 4096) #6
  br label %do.end20

if.then:                                          ; preds = %if.then4.i
  %platform_data = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 8
  %9 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %platform_data, align 4
  %mem_busaddr = getelementptr inbounds %struct.ahc_platform_data, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %mem_busaddr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %8, ptr %mem_busaddr, align 4
  %12 = ptrtoint ptr %ahc to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %ahc, align 4
  %bsh = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 1
  %13 = ptrtoint ptr %bsh to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call5.i, ptr %bsh, align 4
  %14 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_softc, align 4
  %or = or i32 %and, 2
  %call5.i83 = call i32 @pci_write_config_dword(ptr noundef %15, i32 noundef 4, i32 noundef %or) #6
  %call3 = call i32 @ahc_pci_test_register_access(ptr noundef %ahc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 0
  br i1 %cmp4.not, label %if.then.if.end54_crit_edge, label %do.end

if.then.if.end54_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_softc, align 4
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i, align 8
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %number.i, align 4
  %conv.i = zext i8 %21 to i32
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 6
  %22 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %devfn.i, align 4
  %shr.i = lshr i32 %23, 3
  %and.i = and i32 %shr.i, 31
  %and.i85 = and i32 %23, 7
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %conv.i, i32 noundef %and.i, i32 noundef %and.i85) #10
  call void @iounmap(ptr noundef nonnull %call5.i) #6
  %24 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %platform_data, align 4
  %mem_busaddr14 = getelementptr inbounds %struct.ahc_platform_data, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %mem_busaddr14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mem_busaddr14, align 4
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %27, i32 noundef 4096) #6
  %28 = ptrtoint ptr %bsh to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %bsh, align 4
  br label %if.then32

do.end20:                                         ; preds = %if.then7.i, %if.then.i.do.end20_crit_edge, %entry.do.end20_crit_edge
  %29 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_softc, align 4
  %bus.i86 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %bus.i86 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus.i86, align 8
  %number.i87 = getelementptr inbounds %struct.pci_bus, ptr %32, i32 0, i32 12
  %33 = ptrtoint ptr %number.i87 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %number.i87, align 4
  %conv.i88 = zext i8 %34 to i32
  %devfn.i89 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 6
  %35 = ptrtoint ptr %devfn.i89 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %devfn.i89, align 4
  %shr.i90 = lshr i32 %36, 3
  %and.i91 = and i32 %shr.i90, 31
  %and.i93 = and i32 %36, 7
  %conv = zext i32 %8 to i64
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv.i88, i32 noundef %and.i91, i32 noundef %and.i93, i64 noundef %conv) #10
  br label %if.then32

if.then32:                                        ; preds = %do.end20, %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aic7xxx_allow_memio to i32))
  %37 = load i32, ptr @aic7xxx_allow_memio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i = icmp eq i32 %37, 0
  br i1 %cmp.i, label %if.then32.do.end43_crit_edge, label %if.end.i

if.then32.do.end43_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end43

if.end.i:                                         ; preds = %if.then32
  %38 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_softc, align 4
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 47
  %40 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %resource.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp1.i = icmp eq i32 %41, 0
  br i1 %cmp1.i, label %if.end.i.do.end43_crit_edge, label %if.end3.i

if.end.i.do.end43_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end43

if.end3.i:                                        ; preds = %if.end.i
  %call.i95 = call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %41, i32 noundef 256, ptr noundef nonnull @.str.2, i32 noundef 0) #6
  %tobool.not.i96 = icmp eq ptr %call.i95, null
  br i1 %tobool.not.i96, label %if.end3.i.do.end43_crit_edge, label %if.then36

if.end3.i.do.end43_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end43

if.then36:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %ahc to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %ahc, align 4
  %bsh38 = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 1
  %43 = ptrtoint ptr %bsh38 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %41, ptr %bsh38, align 4
  %or39 = or i32 %and, 1
  br label %if.end54

do.end43:                                         ; preds = %if.end3.i.do.end43_crit_edge, %if.end.i.do.end43_crit_edge, %if.then32.do.end43_crit_edge
  %base.1.ph = phi i32 [ 0, %if.end.i.do.end43_crit_edge ], [ %8, %if.then32.do.end43_crit_edge ], [ %41, %if.end3.i.do.end43_crit_edge ]
  %44 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_softc, align 4
  %bus.i97 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %bus.i97 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bus.i97, align 8
  %number.i98 = getelementptr inbounds %struct.pci_bus, ptr %47, i32 0, i32 12
  %48 = ptrtoint ptr %number.i98 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %number.i98, align 4
  %conv.i99 = zext i8 %49 to i32
  %devfn.i100 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 6
  %50 = ptrtoint ptr %devfn.i100 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %devfn.i100, align 4
  %shr.i101 = lshr i32 %51, 3
  %and.i102 = and i32 %shr.i101, 31
  %and.i104 = and i32 %51, 7
  %conv51 = zext i32 %base.1.ph to i64
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %conv.i99, i32 noundef %and.i102, i32 noundef %and.i104, i64 noundef %conv51) #10
  br label %if.end54

if.end54:                                         ; preds = %do.end43, %if.then36, %if.then.if.end54_crit_edge
  %error.0 = phi i32 [ 0, %if.then36 ], [ 12, %do.end43 ], [ 0, %if.then.if.end54_crit_edge ]
  %command.1 = phi i32 [ %or39, %if.then36 ], [ %and, %do.end43 ], [ %or, %if.then.if.end54_crit_edge ]
  %52 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev_softc, align 4
  %call5.i105 = call i32 @pci_write_config_dword(ptr noundef %53, i32 noundef 4, i32 noundef %command.1) #6
  ret i32 %error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahc_pci_test_register_access(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahc_pci_map_int(ptr noundef %ahc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_softc = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 9
  %0 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_softc, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %3, ptr noundef nonnull @ahc_linux_isr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.2, ptr noundef %ahc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_softc, align 4
  %irq2 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 46
  %6 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq2, align 4
  %platform_data = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 8
  %8 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_data, align 4
  %irq3 = getelementptr inbounds %struct.ahc_platform_data, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %irq3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %irq3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sub = sub i32 0, %call.i
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahc_linux_isr(i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahc_linux_pci_dev_probe(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #0 align 64 {
entry:
  %buf = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %buf) #6
  %0 = call ptr @memset(ptr %buf, i32 255, i32 80)
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call = tail call ptr @ahc_find_pci_device(ptr noundef %pdev) #6
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 1
  %1 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus.i, align 8
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %2, i32 0, i32 12
  %3 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %number.i, align 4
  %conv.i = zext i8 %4 to i32
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 6
  %5 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %devfn.i, align 4
  %shr.i = lshr i32 %6, 3
  %and.i = and i32 %shr.i, 31
  %and.i67 = and i32 %6, 7
  %call6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.12, i32 noundef %conv.i, i32 noundef %and.i, i32 noundef %and.i67)
  %call8 = call noalias ptr @kstrdup(ptr noundef nonnull %buf, i32 noundef 2592) #6
  %cmp9 = icmp eq ptr %call8, null
  br i1 %cmp9, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = call ptr @ahc_alloc(ptr noundef null, ptr noundef nonnull %call8) #6
  %cmp13 = icmp eq ptr %call12, null
  br i1 %cmp13, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %call16 = call i32 @pci_enable_device(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  call void @ahc_free(ptr noundef nonnull %call12) #6
  br label %cleanup

if.end18:                                         ; preds = %if.end15
  call void @pci_set_master(ptr noundef %pdev) #6
  %call19 = call i32 @dma_set_mask(ptr noundef %dev2, i64 noundef 4294967295) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  call void @ahc_free(ptr noundef nonnull %call12) #6
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #10
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %dev_softc = getelementptr inbounds %struct.ahc_softc, ptr %call12, i32 0, i32 9
  %7 = ptrtoint ptr %dev_softc to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pdev, ptr %dev_softc, align 4
  %dev25 = getelementptr inbounds %struct.ahc_softc, ptr %call12, i32 0, i32 10
  %8 = ptrtoint ptr %dev25 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev2, ptr %dev25, align 4
  %call26 = call i32 @ahc_pci_config(ptr noundef nonnull %call12, ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27.not = icmp eq i32 %call26, 0
  br i1 %cmp27.not, label %if.end29, label %if.then28

if.then28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  call void @ahc_free(ptr noundef nonnull %call12) #6
  %sub = sub i32 0, %call26
  br label %cleanup

if.end29:                                         ; preds = %if.end23
  %features = getelementptr inbounds %struct.ahc_softc, ptr %call12, i32 0, i32 17
  %9 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %features, align 4
  %and = and i32 %10, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %if.end29.if.end34_crit_edge, label %land.lhs.true

if.end29.if.end34_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

land.lhs.true:                                    ; preds = %if.end29
  %11 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %devfn.i, align 4
  %and31 = and i32 %12, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %cmp32.not = icmp eq i32 %and31, 0
  br i1 %cmp32.not, label %land.lhs.true.if.end34_crit_edge, label %if.then33

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then33:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @ahc_linux_pci_inherit_flags(ptr noundef nonnull %call12)
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %land.lhs.true.if.end34_crit_edge, %if.end29.if.end34_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call12, ptr %driver_data.i.i, align 4
  %call35 = call i32 @ahc_linux_register_host(ptr noundef nonnull %call12, ptr noundef nonnull @aic7xxx_driver_template) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.then28, %if.then21, %if.then17, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.then17 ], [ -19, %if.then21 ], [ %sub, %if.then28 ], [ 0, %if.end34 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ahc_linux_pci_dev_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %platform_data = getelementptr inbounds %struct.ahc_softc, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %host = getelementptr inbounds %struct.ahc_platform_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @scsi_remove_host(ptr noundef nonnull %5) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data, align 4
  %spin_lock.i = getelementptr inbounds %struct.ahc_platform_data, ptr %7, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i) #6
  tail call void @ahc_intr_enable(ptr noundef %1, i32 noundef 0) #6
  %8 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_data, align 4
  %spin_lock.i13 = getelementptr inbounds %struct.ahc_platform_data, ptr %9, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i13, i32 noundef %call2.i) #6
  tail call void @ahc_free(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ahc_find_pci_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ahc_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahc_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahc_pci_config(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ahc_linux_pci_inherit_flags(ptr nocapture noundef %ahc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_softc = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 9
  %0 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_softc, align 4
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %devfn, align 4
  %and = and i32 %3, 248
  %bus = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 8
  %call = tail call ptr @pci_get_slot(ptr noundef %5, i32 noundef %and) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end17_crit_edge, label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then:                                          ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 44, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %do.end, label %if.then4

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %flags = getelementptr inbounds %struct.ahc_softc, ptr %ahc, i32 0, i32 19
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and5 = and i32 %9, -524289
  store i32 %and5, ptr %flags, align 4
  %flags6 = getelementptr inbounds %struct.ahc_softc, ptr %7, i32 0, i32 19
  %10 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags6, align 4
  %and7 = and i32 %11, 524288
  %and5.masked = and i32 %9, -524292
  %and11 = or i32 %and7, %and5.masked
  store i32 %and11, ptr %flags, align 4
  %12 = load i32, ptr %flags6, align 4
  %and13 = and i32 %12, 3
  %or15 = or i32 %and13, %and11
  store i32 %or15, ptr %flags, align 4
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  tail call void @pci_dev_put(ptr noundef nonnull %call) #6
  br label %if.end17

if.end17:                                         ; preds = %if.end, %entry.if.end17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahc_linux_register_host(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_slot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahc_intr_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahc_linux_pci_dev_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @ahc_suspend(ptr noundef %1) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahc_linux_pci_dev_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @ahc_pci_resume(ptr noundef %1) #6
  %call1 = tail call i32 @ahc_resume(ptr noundef %1) #6
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahc_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahc_pci_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahc_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold noreturn nounwind }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !24, !26, !28, !29, !30, !31, !33, !34, !35, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm_pci.c", i32 273, i32 9}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm_pci.c", i32 293, i32 9}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm_pci.c", i32 313, i32 9}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm_pci.c", i32 391, i32 4}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @ahc_pci_map_registers._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @ahc_pci_map_registers._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm_pci.c", i32 404, i32 3}
!14 = !{ptr @ahc_pci_map_registers._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @ahc_pci_map_registers._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm_pci.c", i32 423, i32 4}
!18 = !{ptr @ahc_pci_map_registers._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @ahc_pci_map_registers._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @aic7xxx_pci_driver, !21, !"aic7xxx_pci_driver", i1 false, i1 false}
!21 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm_pci.c", i32 302, i32 26}
!22 = !{ptr @ahc_linux_pci_id_table, !23, !"ahc_linux_pci_id_table", i1 false, i1 false}
!23 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm_pci.c", i32 49, i32 35}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm_pci.c", i32 200, i32 15}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm_pci.c", i32 224, i32 4}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ahc_linux_pci_dev_probe._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @ahc_linux_pci_dev_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm_pci.c", i32 173, i32 4}
!33 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ahc_linux_pci_inherit_flags._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @ahc_linux_pci_inherit_flags._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @ahc_linux_pci_dev_pm_ops, !37, !"ahc_linux_pci_dev_pm_ops", i1 false, i1 false}
!37 = !{!"../drivers/scsi/aic7xxx/aic7xxx_osm_pci.c", i32 298, i32 8}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{!"auto-init"}
