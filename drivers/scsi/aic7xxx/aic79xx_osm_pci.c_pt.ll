; ModuleID = '/llk/IR_all_yes/drivers/scsi/aic7xxx/aic79xx_osm_pci.c_pt.bc'
source_filename = "../drivers/scsi/aic7xxx/aic79xx_osm_pci.c"
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
%struct.ahd_softc = type { [2 x i32], [2 x %union.bus_space_handle_t], %struct.scb_data, ptr, ptr, %struct.anon.100, i32, i32, i32, i32, ptr, ptr, ptr, [16 x ptr], ptr, ptr, %struct.timer_list, i32, [4 x i32], i32, i32, i32, i32, i32, ptr, ptr, i16, i16, i16, [512 x i16], i16, i8, i8, ptr, i32, ptr, %struct.anon.101, i8, i8, ptr, i8, i8, i8, i32, i32, [12 x i8], [12 x i8], i32, i32, i32, ptr, ptr, %struct.map_node, %struct.ahd_suspend_state, i32, i32, i32, [4 x i8], i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i16, i16 }
%union.bus_space_handle_t = type { i32 }
%struct.scb_data = type { %struct.scb_tailq, [1024 x %struct.scb_list], %struct.scb_list, [512 x ptr], ptr, ptr, ptr, %struct.anon.97, %struct.anon.98, %struct.anon.99, i32, i32, i32, i16, i16, i8 }
%struct.scb_tailq = type { ptr, ptr }
%struct.scb_list = type { ptr }
%struct.anon.97 = type { ptr }
%struct.anon.98 = type { ptr }
%struct.anon.99 = type { ptr }
%struct.anon.100 = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.101 = type { ptr, ptr }
%struct.map_node = type { i32, i32, ptr, %struct.anon.96 }
%struct.anon.96 = type { ptr }
%struct.ahd_suspend_state = type { [2 x %struct.ahd_suspend_channel_state], %struct.ahd_suspend_pci_state, i8, i8, i8, i8, i8, i8, ptr, ptr }
%struct.ahd_suspend_channel_state = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.ahd_suspend_pci_state = type { i32, i8, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.ahd_platform_data = type { [16 x ptr], %struct.spinlock, ptr, ptr, i32, i32, i32 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@aic79xx_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @ahd_linux_pci_id_table, ptr @ahd_linux_pci_dev_probe, ptr @ahd_linux_pci_dev_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahd_linux_pci_dev_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"aic79xx\00", [24 x i8] zeroinitializer }, align 32
@ahd_pci_map_registers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"aic79xx: PCI Device %d:%d:%d failed memory mapped test.  Using PIO.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ahd_pci_map_registers\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/scsi/aic7xxx/aic79xx_osm_pci.c\00", [57 x i8] zeroinitializer }, align 32
@ahd_pci_map_registers._entry_ptr = internal global ptr @ahd_pci_map_registers._entry, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@aic79xx_verbose = external dso_local local_unnamed_addr global i32, align 4
@ahd_pci_map_registers._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"aic79xx: PCI%d:%d:%d MEM region 0x%llx unavailable. Cannot memory map device.\0A\00", [49 x i8] zeroinitializer }, align 32
@ahd_pci_map_registers._entry_ptr.6 = internal global ptr @ahd_pci_map_registers._entry.4, section ".printk_index", align 4
@ahd_pci_map_registers._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"aic79xx: PCI%d:%d:%d IO regions 0x%llx and 0x%llx unavailable. Cannot map device.\0A\00", [45 x i8] zeroinitializer }, align 32
@ahd_pci_map_registers._entry_ptr.9 = internal global ptr @ahd_pci_map_registers._entry.7, section ".printk_index", align 4
@ahd_linux_pci_id_table = internal constant { [185 x %struct.pci_device_id], [1472 x i8] } { [185 x %struct.pci_device_id] [%struct.pci_device_id { i32 36869, i32 32768, i32 36869, i32 96, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32768, i32 36869, i32 96, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32896, i32 36869, i32 96, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32896, i32 36869, i32 96, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32791, i32 36869, i32 68, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32791, i32 36869, i32 68, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32919, i32 36869, i32 68, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32919, i32 36869, i32 68, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32791, i32 36869, i32 69, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32791, i32 36869, i32 69, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32919, i32 36869, i32 69, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32919, i32 36869, i32 69, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32786, i32 36869, i32 66, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32786, i32 36869, i32 66, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32914, i32 36869, i32 66, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32914, i32 36869, i32 66, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32787, i32 36869, i32 67, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32787, i32 36869, i32 67, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32915, i32 36869, i32 67, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32915, i32 36869, i32 67, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32788, i32 36869, i32 68, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32788, i32 36869, i32 68, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32916, i32 36869, i32 68, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32916, i32 36869, i32 68, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32784, i32 36869, i32 64, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32784, i32 36869, i32 64, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32912, i32 36869, i32 64, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32912, i32 36869, i32 64, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32789, i32 36869, i32 64, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32789, i32 36869, i32 64, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32917, i32 36869, i32 64, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32917, i32 36869, i32 64, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32790, i32 36869, i32 64, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32790, i32 36869, i32 64, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32918, i32 36869, i32 64, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32918, i32 36869, i32 64, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32785, i32 36869, i32 65, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32785, i32 36869, i32 65, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32913, i32 36869, i32 65, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32913, i32 36869, i32 65, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32785, i32 3601, i32 172, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32785, i32 3601, i32 172, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32913, i32 3601, i32 172, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32913, i32 3601, i32 172, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32796, i32 36869, i32 65, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32796, i32 36869, i32 65, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32924, i32 36869, i32 65, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32924, i32 36869, i32 65, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32796, i32 3601, i32 172, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32796, i32 3601, i32 172, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32924, i32 3601, i32 172, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32924, i32 3601, i32 172, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32768, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32768, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32896, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32896, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32769, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32769, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32897, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32897, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32770, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32770, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32898, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32898, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32771, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32771, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32899, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32899, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32772, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32772, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32900, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32900, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32773, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32773, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32901, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32901, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32774, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32774, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32902, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32902, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32775, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32775, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32903, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32903, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32776, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32776, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32904, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32904, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32777, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32777, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32905, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32905, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32778, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32778, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32906, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32906, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32779, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32779, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32907, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32907, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32780, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32780, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32908, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32908, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32781, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32781, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32909, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32909, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32782, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32782, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32910, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32910, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32783, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32783, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32911, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32911, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32798, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32798, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32926, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32926, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32784, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32784, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32912, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32912, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32785, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32785, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32913, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32913, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32786, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32786, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32914, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32914, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32787, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32787, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32915, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32915, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32788, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32788, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32916, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32916, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32789, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32789, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32917, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32917, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32790, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32790, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32918, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32918, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32791, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32791, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32919, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32919, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32792, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32792, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32920, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32920, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32793, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32793, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32921, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32921, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32794, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32794, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32922, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32922, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32795, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32795, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32923, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32923, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32796, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32796, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32924, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32924, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32797, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32797, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32925, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32925, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32798, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32798, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32926, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32926, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32799, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32799, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32927, i32 -1, i32 -1, i32 65536, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 36869, i32 32927, i32 -1, i32 -1, i32 66560, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [1472 x i8] zeroinitializer }, align 32
@ahd_linux_pci_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ahd_linux_pci_dev_suspend, ptr @ahd_linux_pci_dev_resume, ptr @ahd_linux_pci_dev_suspend, ptr @ahd_linux_pci_dev_resume, ptr @ahd_linux_pci_dev_suspend, ptr @ahd_linux_pci_dev_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ahd_pci:%d:%d:%d\00", [47 x i8] zeroinitializer }, align 32
@aic79xx_driver_template = external dso_local global %struct.scsi_host_template, align 8
@ahd_linux_pci_inherit_flags._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013aic79xx: no multichannel peer found!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ahd_linux_pci_inherit_flags\00", [36 x i8] zeroinitializer }, align 32
@ahd_linux_pci_inherit_flags._entry_ptr = internal global ptr @ahd_linux_pci_inherit_flags._entry, section ".printk_index", align 4
@aic79xx_allow_memio = external dso_local local_unnamed_addr global i32, align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@___asan_gen_.13 = private unnamed_addr constant [19 x i8] c"aic79xx_pci_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 211, i32 26 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 222, i32 9 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 316, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 329, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 348, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant [23 x i8] c"ahd_linux_pci_id_table\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 52, i32 35 }
@___asan_gen_.46 = private unnamed_addr constant [25 x i8] c"ahd_linux_pci_dev_pm_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 207, i32 8 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 157, i32 15 }
@___asan_gen_.52 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private constant [42 x i8] c"../drivers/scsi/aic7xxx/aic79xx_osm_pci.c\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 131, i32 4 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @ahd_linux_pci_inherit_flags._entry, ptr @ahd_linux_pci_inherit_flags._entry_ptr, ptr @ahd_pci_map_registers._entry, ptr @ahd_pci_map_registers._entry.4, ptr @ahd_pci_map_registers._entry.7, ptr @ahd_pci_map_registers._entry_ptr, ptr @ahd_pci_map_registers._entry_ptr.6, ptr @ahd_pci_map_registers._entry_ptr.9, ptr @aic79xx_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @ahd_linux_pci_id_table, ptr @ahd_linux_pci_dev_pm_ops, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic79xx_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_pci_map_registers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_pci_map_registers._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_pci_map_registers._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_pci_id_table to i32), i32 5920, i32 7392, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_pci_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahd_linux_pci_inherit_flags._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahd_linux_pci_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @aic79xx_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ahd_linux_pci_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pci_unregister_driver(ptr noundef nonnull @aic79xx_pci_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahd_pci_map_registers(ptr noundef %ahd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_softc = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_softc, align 4
  %call = tail call i32 @ahd_pci_read_config(ptr noundef %1, i32 noundef 4, i32 noundef 4) #5
  %and = and i32 %call, -4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aic79xx_allow_memio to i32))
  %2 = load i32, ptr @aic79xx_allow_memio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i = icmp eq i32 %2, 0
  br i1 %cmp.i, label %entry.if.else23_crit_edge, label %if.end.i

entry.if.else23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else23

if.end.i:                                         ; preds = %entry
  %bugs.i = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 22
  %3 = ptrtoint ptr %bugs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bugs.i, align 4
  %and.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp1.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp1.not.i, label %if.end3.i, label %if.end.i.if.else23_crit_edge

if.end.i.if.else23_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else23

if.end3.i:                                        ; preds = %if.end.i
  %5 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_softc, align 4
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 1
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 8
  %and5.i = and i32 %8, -4096
  %sub.i = and i32 %8, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp6.not.i = icmp eq i32 %8, 0
  br i1 %cmp6.not.i, label %if.end3.i.if.else23_crit_edge, label %if.then7.i

if.end3.i.if.else23_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else23

if.then7.i:                                       ; preds = %if.end3.i
  %call.i = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %8, i32 noundef 4096, ptr noundef nonnull @.str, i32 noundef 0) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then7.i.if.else23_crit_edge, label %if.then11.i

if.then7.i.if.else23_crit_edge:                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else23

if.then11.i:                                      ; preds = %if.then7.i
  %add.i = add nuw nsw i32 %sub.i, 512
  %call12.i = tail call ptr @ioremap(i32 noundef %and5.i, i32 noundef %add.i) #5
  %cmp13.i = icmp eq ptr %call12.i, null
  br i1 %cmp13.i, label %if.then14.i, label %if.then

if.then14.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %8, i32 noundef 4096) #5
  br label %if.else23

if.then:                                          ; preds = %if.then11.i
  %add.ptr.i = getelementptr i8, ptr %call12.i, i32 %sub.i
  %platform_data = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 10
  %9 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %platform_data, align 4
  %mem_busaddr = getelementptr inbounds %struct.ahd_platform_data, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %mem_busaddr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %8, ptr %mem_busaddr, align 4
  %12 = ptrtoint ptr %ahd to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %ahd, align 4
  %bshs = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 1
  %13 = ptrtoint ptr %bshs to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr.i, ptr %bshs, align 4
  %arrayidx4 = getelementptr [2 x i32], ptr %ahd, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %arrayidx4, align 4
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 256
  %arrayidx6 = getelementptr %struct.ahd_softc, ptr %ahd, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr, ptr %arrayidx6, align 4
  %16 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_softc, align 4
  %or = or i32 %and, 2
  tail call void @ahd_pci_write_config(ptr noundef %17, i32 noundef 4, i32 noundef %or, i32 noundef 4) #5
  %call8 = tail call i32 @ahd_pci_test_register_access(ptr noundef %ahd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9.not = icmp eq i32 %call8, 0
  br i1 %cmp9.not, label %if.end37, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_softc, align 4
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i, align 8
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %number.i, align 4
  %conv.i = zext i8 %23 to i32
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 6
  %24 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %devfn.i, align 4
  %shr.i = lshr i32 %25, 3
  %and.i102 = and i32 %shr.i, 31
  %and.i104 = and i32 %25, 7
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %conv.i, i32 noundef %and.i102, i32 noundef %and.i104) #8
  tail call void @iounmap(ptr noundef %add.ptr.i) #5
  %26 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %platform_data, align 4
  %mem_busaddr19 = getelementptr inbounds %struct.ahd_platform_data, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %mem_busaddr19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mem_busaddr19, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %29, i32 noundef 4096) #5
  %30 = ptrtoint ptr %bshs to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %bshs, align 4
  br label %if.then40

if.else23:                                        ; preds = %if.then14.i, %if.then7.i.if.else23_crit_edge, %if.end3.i.if.else23_crit_edge, %if.end.i.if.else23_crit_edge, %entry.if.else23_crit_edge
  %base.0.ph = phi i32 [ 0, %if.end.i.if.else23_crit_edge ], [ %8, %if.then14.i ], [ %8, %if.then7.i.if.else23_crit_edge ], [ 0, %if.end3.i.if.else23_crit_edge ], [ 0, %entry.if.else23_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aic79xx_verbose to i32))
  %31 = load i32, ptr @aic79xx_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not = icmp eq i32 %31, 0
  br i1 %tobool.not, label %if.else23.if.then40_crit_edge, label %do.end27

if.else23.if.then40_crit_edge:                    ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then40

do.end27:                                         ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev_softc, align 4
  %bus.i105 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %bus.i105 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bus.i105, align 8
  %number.i106 = getelementptr inbounds %struct.pci_bus, ptr %35, i32 0, i32 12
  %36 = ptrtoint ptr %number.i106 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %number.i106, align 4
  %conv.i107 = zext i8 %37 to i32
  %devfn.i108 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 6
  %38 = ptrtoint ptr %devfn.i108 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %devfn.i108, align 4
  %shr.i109 = lshr i32 %39, 3
  %and.i110 = and i32 %shr.i109, 31
  %and.i112 = and i32 %39, 7
  %conv = zext i32 %base.0.ph to i64
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %conv.i107, i32 noundef %and.i110, i32 noundef %and.i112, i64 noundef %conv) #8
  br label %if.then40

if.end37:                                         ; preds = %if.then
  %cmp38 = icmp eq ptr %add.ptr.i, null
  br i1 %cmp38, label %if.end37.if.then40_crit_edge, label %if.end37.if.end69_crit_edge

if.end37.if.end69_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.end37.if.then40_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then40

if.then40:                                        ; preds = %if.end37.if.then40_crit_edge, %do.end27, %if.else23.if.then40_crit_edge, %do.end
  %command.0148 = phi i32 [ %or, %if.end37.if.then40_crit_edge ], [ %and, %do.end ], [ %and, %if.else23.if.then40_crit_edge ], [ %and, %do.end27 ]
  %40 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_softc, align 4
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 47
  %42 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %resource.i, align 8
  %arrayidx3.i = getelementptr %struct.pci_dev, ptr %41, i32 0, i32 47, i32 3
  %44 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx3.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp.i114 = icmp eq i32 %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp5.i = icmp eq i32 %45, 0
  %or.cond.i = select i1 %cmp.i114, i1 true, i1 %cmp5.i
  br i1 %or.cond.i, label %if.then40.do.end57_crit_edge, label %if.end.i117

if.then40.do.end57_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end57

if.end.i117:                                      ; preds = %if.then40
  %call.i115 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %43, i32 noundef 256, ptr noundef nonnull @.str, i32 noundef 0) #5
  %tobool.not.i116 = icmp eq ptr %call.i115, null
  br i1 %tobool.not.i116, label %if.end.i117.do.end57_crit_edge, label %if.end7.i

if.end.i117.do.end57_crit_edge:                   ; preds = %if.end.i117
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end57

if.end7.i:                                        ; preds = %if.end.i117
  %call8.i = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %45, i32 noundef 256, ptr noundef nonnull @.str, i32 noundef 0) #5
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %if.then10.i, label %if.then44

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %43, i32 noundef 256) #5
  br label %do.end57

if.then44:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %ahd to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %ahd, align 4
  %arrayidx48 = getelementptr [2 x i32], ptr %ahd, i32 0, i32 1
  %47 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %arrayidx48, align 4
  %bshs49 = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 1
  %48 = ptrtoint ptr %bshs49 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %43, ptr %bshs49, align 4
  %arrayidx52 = getelementptr %struct.ahd_softc, ptr %ahd, i32 0, i32 1, i32 1
  %49 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %45, ptr %arrayidx52, align 4
  %or53 = or i32 %command.0148, 1
  br label %if.end69

do.end57:                                         ; preds = %if.then10.i, %if.end.i117.do.end57_crit_edge, %if.then40.do.end57_crit_edge
  %50 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev_softc, align 4
  %bus.i119 = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %bus.i119 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bus.i119, align 8
  %number.i120 = getelementptr inbounds %struct.pci_bus, ptr %53, i32 0, i32 12
  %54 = ptrtoint ptr %number.i120 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %number.i120, align 4
  %conv.i121 = zext i8 %55 to i32
  %devfn.i122 = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 6
  %56 = ptrtoint ptr %devfn.i122 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %devfn.i122, align 4
  %shr.i123 = lshr i32 %57, 3
  %and.i124 = and i32 %shr.i123, 31
  %and.i126 = and i32 %57, 7
  %conv65 = zext i32 %43 to i64
  %conv66 = zext i32 %45 to i64
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %conv.i121, i32 noundef %and.i124, i32 noundef %and.i126, i64 noundef %conv65, i64 noundef %conv66) #8
  br label %if.end69

if.end69:                                         ; preds = %do.end57, %if.then44, %if.end37.if.end69_crit_edge
  %error.0 = phi i32 [ 0, %if.end37.if.end69_crit_edge ], [ 0, %if.then44 ], [ 12, %do.end57 ]
  %command.2 = phi i32 [ %or, %if.end37.if.end69_crit_edge ], [ %or53, %if.then44 ], [ %command.0148, %do.end57 ]
  %58 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev_softc, align 4
  tail call void @ahd_pci_write_config(ptr noundef %59, i32 noundef 4, i32 noundef %command.2, i32 noundef 4) #5
  ret i32 %error.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahd_pci_read_config(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahd_pci_write_config(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahd_pci_test_register_access(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahd_pci_map_int(ptr noundef %ahd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_softc = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_softc, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %3, ptr noundef nonnull @ahd_linux_isr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %ahd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_softc, align 4
  %irq2 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 46
  %6 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq2, align 4
  %platform_data = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 10
  %8 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_data, align 4
  %irq3 = getelementptr inbounds %struct.ahd_platform_data, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %irq3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %irq3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sub = sub i32 0, %call.i
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahd_linux_isr(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ahd_power_state_change(ptr nocapture noundef readonly %ahd, i32 noundef %new_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_softc = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_softc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_softc, align 4
  %call = tail call i32 @pci_set_power_state(ptr noundef %1, i32 noundef %new_state) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahd_linux_pci_dev_probe(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #0 align 64 {
entry:
  %buf = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %buf) #5
  %0 = call ptr @memset(ptr %buf, i32 255, i32 80)
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call = tail call ptr @ahd_find_pci_device(ptr noundef %pdev) #5
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  %and.i57 = and i32 %6, 7
  %call6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.10, i32 noundef %conv.i, i32 noundef %and.i, i32 noundef %and.i57)
  %call8 = call noalias ptr @kstrdup(ptr noundef nonnull %buf, i32 noundef 2592) #5
  %cmp9 = icmp eq ptr %call8, null
  br i1 %cmp9, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = call ptr @ahd_alloc(ptr noundef null, ptr noundef nonnull %call8) #5
  %cmp13 = icmp eq ptr %call12, null
  br i1 %cmp13, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %call16 = call i32 @pci_enable_device(ptr noundef %pdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  call void @ahd_free(ptr noundef nonnull %call12) #5
  br label %cleanup

if.end18:                                         ; preds = %if.end15
  call void @pci_set_master(ptr noundef %pdev) #5
  %call19 = call i32 @dma_set_mask(ptr noundef %dev2, i64 noundef 4294967295) #5
  %dev_softc = getelementptr inbounds %struct.ahd_softc, ptr %call12, i32 0, i32 11
  %7 = ptrtoint ptr %dev_softc to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pdev, ptr %dev_softc, align 4
  %call20 = call i32 @ahd_pci_config(ptr noundef nonnull %call12, ptr noundef nonnull %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21.not = icmp eq i32 %call20, 0
  br i1 %cmp21.not, label %if.end23, label %if.then22

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  call void @ahd_free(ptr noundef nonnull %call12) #5
  %sub = sub i32 0, %call20
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %features = getelementptr inbounds %struct.ahd_softc, ptr %call12, i32 0, i32 21
  %8 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %features, align 4
  %and = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %if.end23.if.end28_crit_edge, label %land.lhs.true

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

land.lhs.true:                                    ; preds = %if.end23
  %10 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %devfn.i, align 4
  %and25 = and i32 %11, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %cmp26.not = icmp eq i32 %and25, 0
  br i1 %cmp26.not, label %land.lhs.true.if.end28_crit_edge, label %if.then27

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then27:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @ahd_linux_pci_inherit_flags(ptr noundef nonnull %call12)
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %land.lhs.true.if.end28_crit_edge, %if.end23.if.end28_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call12, ptr %driver_data.i.i, align 4
  %call29 = call i32 @ahd_linux_register_host(ptr noundef nonnull %call12, ptr noundef nonnull @aic79xx_driver_template) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then22, %if.then17, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.then17 ], [ %sub, %if.then22 ], [ 0, %if.end28 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %buf) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ahd_linux_pci_dev_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %platform_data = getelementptr inbounds %struct.ahd_softc, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %host = getelementptr inbounds %struct.ahd_platform_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @scsi_remove_host(ptr noundef nonnull %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data, align 4
  %spin_lock.i = getelementptr inbounds %struct.ahd_platform_data, ptr %7, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_lock.i) #5
  tail call void @ahd_intr_enable(ptr noundef %1, i32 noundef 0) #5
  %8 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_data, align 4
  %spin_lock.i13 = getelementptr inbounds %struct.ahd_platform_data, ptr %9, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_lock.i13, i32 noundef %call2.i) #5
  tail call void @ahd_free(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ahd_find_pci_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ahd_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahd_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahd_pci_config(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ahd_linux_pci_inherit_flags(ptr nocapture noundef %ahd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_softc = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 11
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
  %call = tail call ptr @pci_get_slot(ptr noundef %5, i32 noundef %and) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then:                                          ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 44, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %do.end, label %if.then4

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %flags = getelementptr inbounds %struct.ahd_softc, ptr %ahd, i32 0, i32 23
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and5 = and i32 %9, -16385
  store i32 %and5, ptr %flags, align 4
  %flags6 = getelementptr inbounds %struct.ahd_softc, ptr %7, i32 0, i32 23
  %10 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags6, align 4
  %and7 = and i32 %11, 16384
  %or9 = or i32 %and7, %and5
  store i32 %or9, ptr %flags, align 4
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  tail call void @pci_dev_put(ptr noundef nonnull %call) #5
  br label %if.end11

if.end11:                                         ; preds = %if.end, %entry.if.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahd_linux_register_host(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_slot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahd_intr_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahd_linux_pci_dev_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @ahd_suspend(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ahd_pci_suspend(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahd_linux_pci_dev_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @ahd_pci_resume(ptr noundef %1) #5
  tail call void @ahd_resume(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahd_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahd_pci_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahd_pci_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahd_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !20, !22, !24, !25, !26, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm_pci.c", i32 222, i32 9}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm_pci.c", i32 316, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ahd_pci_map_registers._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @ahd_pci_map_registers._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm_pci.c", i32 329, i32 3}
!10 = !{ptr @ahd_pci_map_registers._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @ahd_pci_map_registers._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm_pci.c", i32 348, i32 4}
!14 = !{ptr @ahd_pci_map_registers._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @ahd_pci_map_registers._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @aic79xx_pci_driver, !17, !"aic79xx_pci_driver", i1 false, i1 false}
!17 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm_pci.c", i32 211, i32 26}
!18 = !{ptr @ahd_linux_pci_id_table, !19, !"ahd_linux_pci_id_table", i1 false, i1 false}
!19 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm_pci.c", i32 52, i32 35}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm_pci.c", i32 157, i32 15}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm_pci.c", i32 131, i32 4}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ahd_linux_pci_inherit_flags._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @ahd_linux_pci_inherit_flags._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @ahd_linux_pci_dev_pm_ops, !28, !"ahd_linux_pci_dev_pm_ops", i1 false, i1 false}
!28 = !{!"../drivers/scsi/aic7xxx/aic79xx_osm_pci.c", i32 207, i32 8}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
