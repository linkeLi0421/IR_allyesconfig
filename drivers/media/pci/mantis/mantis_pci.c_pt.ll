; ModuleID = '/llk/IR_all_yes/drivers/media/pci/mantis/mantis_pci.c_pt.bc'
source_filename = "../drivers/media/pci/mantis/mantis_pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mantis_pci_init\22, \22a\22\09"
module asm "\09.weak\09__crc_mantis_pci_init\09\09\09\09"
module asm "\09.long\09__crc_mantis_pci_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mantis_pci_init:\09\09\09\09\09"
module asm "\09.asciz \09\22mantis_pci_init\22\09\09\09\09\09"
module asm "__kstrtabns_mantis_pci_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mantis_pci_exit\22, \22a\22\09"
module asm "\09.weak\09__crc_mantis_pci_exit\09\09\09\09"
module asm "\09.long\09__crc_mantis_pci_exit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mantis_pci_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22mantis_pci_exit\22\09\09\09\09\09"
module asm "__kstrtabns_mantis_pci_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mantis_pci = type { i32, i16, i16, i16, i16, i8, ptr, i32, ptr, i8, i8, i32, i32, i32, ptr, i32, ptr, i32, %struct.tasklet_struct, %struct.spinlock, %struct.i2c_adapter, i32, %struct.wait_queue_head, %struct.mutex, %struct.dvb_adapter, ptr, %struct.dvb_demux, %struct.dmxdev, %struct.dmx_frontend, %struct.dmx_frontend, %struct.dvb_net, i8, ptr, i32, i32, [8 x i8], i32, i32, i32, i32, ptr, %struct.work_struct, ptr, [80 x i8], [80 x i8], ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.104, i32 }
%struct.atomic_t = type { i32 }
%union.anon.104 = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mantis_hwconfig = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr, i8, i8, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.103, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.103 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@mantis_pci_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"found a %s PCI %s device on (%02x:%02x.%x),\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mantis_pci_init\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/pci/mantis/mantis_pci.c\00", [58 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr = internal global ptr @mantis_pci_init._entry, section ".printk_index", align 4
@mantis_pci_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 54, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s (%d): ERROR: PCI enable failed <%i>\0A\00", [54 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.5 = internal global ptr @mantis_pci_init._entry.3, section ".printk_index", align 4
@mantis_pci_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 54, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015%s (%d): ERROR: PCI enable failed <%i>\0A\00", [54 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.8 = internal global ptr @mantis_pci_init._entry.6, section ".printk_index", align 4
@mantis_pci_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 54, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s (%d): ERROR: PCI enable failed <%i>\0A\00", [54 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.11 = internal global ptr @mantis_pci_init._entry.9, section ".printk_index", align 4
@mantis_pci_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 54, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s (%d): ERROR: PCI enable failed <%i>\0A\00", [54 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.14 = internal global ptr @mantis_pci_init._entry.12, section ".printk_index", align 4
@mantis_pci_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 54, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.16 = internal global ptr @mantis_pci_init._entry.15, section ".printk_index", align 4
@mantis_pci_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013%s (%d): ERROR: Unable to obtain 32 bit DMA <%i>\0A\00", [44 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.19 = internal global ptr @mantis_pci_init._entry.17, section ".printk_index", align 4
@mantis_pci_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.1, ptr @.str.2, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\015%s (%d): ERROR: Unable to obtain 32 bit DMA <%i>\0A\00", [44 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.22 = internal global ptr @mantis_pci_init._entry.20, section ".printk_index", align 4
@mantis_pci_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.1, ptr @.str.2, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016%s (%d): ERROR: Unable to obtain 32 bit DMA <%i>\0A\00", [44 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.25 = internal global ptr @mantis_pci_init._entry.23, section ".printk_index", align 4
@mantis_pci_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.1, ptr @.str.2, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017%s (%d): ERROR: Unable to obtain 32 bit DMA <%i>\0A\00", [44 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.28 = internal global ptr @mantis_pci_init._entry.26, section ".printk_index", align 4
@mantis_pci_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.1, ptr @.str.2, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.30 = internal global ptr @mantis_pci_init._entry.29, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Mantis Core\00", [20 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.1, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s (%d): ERROR: BAR0 Request failed !\0A\00", [55 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.34 = internal global ptr @mantis_pci_init._entry.32, section ".printk_index", align 4
@mantis_pci_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.1, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015%s (%d): ERROR: BAR0 Request failed !\0A\00", [55 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.37 = internal global ptr @mantis_pci_init._entry.35, section ".printk_index", align 4
@mantis_pci_init._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.1, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s (%d): ERROR: BAR0 Request failed !\0A\00", [55 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.40 = internal global ptr @mantis_pci_init._entry.38, section ".printk_index", align 4
@mantis_pci_init._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.1, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s (%d): ERROR: BAR0 Request failed !\0A\00", [55 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.43 = internal global ptr @mantis_pci_init._entry.41, section ".printk_index", align 4
@mantis_pci_init._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.1, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.45 = internal global ptr @mantis_pci_init._entry.44, section ".printk_index", align 4
@mantis_pci_init._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.1, ptr @.str.2, i32 80, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s (%d): ERROR: BAR0 remap failed !\0A\00", [57 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.48 = internal global ptr @mantis_pci_init._entry.46, section ".printk_index", align 4
@mantis_pci_init._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.1, ptr @.str.2, i32 80, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015%s (%d): ERROR: BAR0 remap failed !\0A\00", [57 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.51 = internal global ptr @mantis_pci_init._entry.49, section ".printk_index", align 4
@mantis_pci_init._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.1, ptr @.str.2, i32 80, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s (%d): ERROR: BAR0 remap failed !\0A\00", [57 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.54 = internal global ptr @mantis_pci_init._entry.52, section ".printk_index", align 4
@mantis_pci_init._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.1, ptr @.str.2, i32 80, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s (%d): ERROR: BAR0 remap failed !\0A\00", [57 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.57 = internal global ptr @mantis_pci_init._entry.55, section ".printk_index", align 4
@mantis_pci_init._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.1, ptr @.str.2, i32 80, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.59 = internal global ptr @mantis_pci_init._entry.58, section ".printk_index", align 4
@mantis_pci_init._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.1, ptr @.str.2, i32 92, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"    Mantis Rev %d [%04x:%04x], \00", [32 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.62 = internal global ptr @mantis_pci_init._entry.60, section ".printk_index", align 4
@mantis_pci_init._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.1, ptr @.str.2, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"irq: %d, latency: %d\0A    memory: 0x%lx, mmio: 0x%p\0A\00", [44 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.65 = internal global ptr @mantis_pci_init._entry.63, section ".printk_index", align 4
@mantis_pci_init._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.1, ptr @.str.2, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013%s (%d): ERROR: IRQ registration failed ! <%d>\0A\00", [46 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.68 = internal global ptr @mantis_pci_init._entry.66, section ".printk_index", align 4
@mantis_pci_init._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.1, ptr @.str.2, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\015%s (%d): ERROR: IRQ registration failed ! <%d>\0A\00", [46 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.71 = internal global ptr @mantis_pci_init._entry.69, section ".printk_index", align 4
@mantis_pci_init._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.1, ptr @.str.2, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016%s (%d): ERROR: IRQ registration failed ! <%d>\0A\00", [46 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.74 = internal global ptr @mantis_pci_init._entry.72, section ".printk_index", align 4
@mantis_pci_init._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.1, ptr @.str.2, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s (%d): ERROR: IRQ registration failed ! <%d>\0A\00", [46 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.77 = internal global ptr @mantis_pci_init._entry.75, section ".printk_index", align 4
@mantis_pci_init._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.1, ptr @.str.2, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.79 = internal global ptr @mantis_pci_init._entry.78, section ".printk_index", align 4
@mantis_pci_init._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.1, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s (%d): ERROR: <%d> I/O unmap\0A\00", [62 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.82 = internal global ptr @mantis_pci_init._entry.80, section ".printk_index", align 4
@mantis_pci_init._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.1, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015%s (%d): ERROR: <%d> I/O unmap\0A\00", [62 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.85 = internal global ptr @mantis_pci_init._entry.83, section ".printk_index", align 4
@mantis_pci_init._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.1, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s (%d): ERROR: <%d> I/O unmap\0A\00", [62 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.88 = internal global ptr @mantis_pci_init._entry.86, section ".printk_index", align 4
@mantis_pci_init._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.1, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s (%d): ERROR: <%d> I/O unmap\0A\00", [62 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.91 = internal global ptr @mantis_pci_init._entry.89, section ".printk_index", align 4
@mantis_pci_init._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.1, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.93 = internal global ptr @mantis_pci_init._entry.92, section ".printk_index", align 4
@mantis_pci_init._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.1, ptr @.str.2, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s (%d): ERROR: <%d> releasing regions\0A\00", [54 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.96 = internal global ptr @mantis_pci_init._entry.94, section ".printk_index", align 4
@mantis_pci_init._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.1, ptr @.str.2, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015%s (%d): ERROR: <%d> releasing regions\0A\00", [54 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.99 = internal global ptr @mantis_pci_init._entry.97, section ".printk_index", align 4
@mantis_pci_init._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.1, ptr @.str.2, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s (%d): ERROR: <%d> releasing regions\0A\00", [54 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.102 = internal global ptr @mantis_pci_init._entry.100, section ".printk_index", align 4
@mantis_pci_init._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.1, ptr @.str.2, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s (%d): ERROR: <%d> releasing regions\0A\00", [54 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.105 = internal global ptr @mantis_pci_init._entry.103, section ".printk_index", align 4
@mantis_pci_init._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.1, ptr @.str.2, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.107 = internal global ptr @mantis_pci_init._entry.106, section ".printk_index", align 4
@mantis_pci_init._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.1, ptr @.str.2, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s (%d): ERROR: <%d> disabling device\0A\00", [55 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.110 = internal global ptr @mantis_pci_init._entry.108, section ".printk_index", align 4
@mantis_pci_init._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.1, ptr @.str.2, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015%s (%d): ERROR: <%d> disabling device\0A\00", [55 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.113 = internal global ptr @mantis_pci_init._entry.111, section ".printk_index", align 4
@mantis_pci_init._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.1, ptr @.str.2, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s (%d): ERROR: <%d> disabling device\0A\00", [55 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.116 = internal global ptr @mantis_pci_init._entry.114, section ".printk_index", align 4
@mantis_pci_init._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.1, ptr @.str.2, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s (%d): ERROR: <%d> disabling device\0A\00", [55 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.119 = internal global ptr @mantis_pci_init._entry.117, section ".printk_index", align 4
@mantis_pci_init._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.1, ptr @.str.2, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.121 = internal global ptr @mantis_pci_init._entry.120, section ".printk_index", align 4
@mantis_pci_init._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.1, ptr @.str.2, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s (%d): ERROR: <%d> exiting\0A\00", [32 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.124 = internal global ptr @mantis_pci_init._entry.122, section ".printk_index", align 4
@mantis_pci_init._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.1, ptr @.str.2, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\015%s (%d): ERROR: <%d> exiting\0A\00", [32 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.127 = internal global ptr @mantis_pci_init._entry.125, section ".printk_index", align 4
@mantis_pci_init._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.1, ptr @.str.2, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s (%d): ERROR: <%d> exiting\0A\00", [32 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.130 = internal global ptr @mantis_pci_init._entry.128, section ".printk_index", align 4
@mantis_pci_init._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.1, ptr @.str.2, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s (%d): ERROR: <%d> exiting\0A\00", [32 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.133 = internal global ptr @mantis_pci_init._entry.131, section ".printk_index", align 4
@mantis_pci_init._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.1, ptr @.str.2, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_pci_init._entry_ptr.135 = internal global ptr @mantis_pci_init._entry.134, section ".printk_index", align 4
@__kstrtab_mantis_pci_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_mantis_pci_init = external dso_local constant [0 x i8], align 1
@__ksymtab_mantis_pci_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mantis_pci_init to i32), ptr @__kstrtab_mantis_pci_init, ptr @__kstrtabns_mantis_pci_init }, section "___ksymtab_gpl+mantis_pci_init", align 4
@mantis_pci_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.137, ptr @.str.2, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s (%d):  mem: 0x%p\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mantis_pci_exit\00", [16 x i8] zeroinitializer }, align 32
@mantis_pci_exit._entry_ptr = internal global ptr @mantis_pci_exit._entry, section ".printk_index", align 4
@mantis_pci_exit._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.137, ptr @.str.2, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\015%s (%d):  mem: 0x%p\0A\00", [41 x i8] zeroinitializer }, align 32
@mantis_pci_exit._entry_ptr.140 = internal global ptr @mantis_pci_exit._entry.138, section ".printk_index", align 4
@mantis_pci_exit._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.137, ptr @.str.2, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016%s (%d):  mem: 0x%p\0A\00", [41 x i8] zeroinitializer }, align 32
@mantis_pci_exit._entry_ptr.143 = internal global ptr @mantis_pci_exit._entry.141, section ".printk_index", align 4
@mantis_pci_exit._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.137, ptr @.str.2, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s (%d):  mem: 0x%p\0A\00", [41 x i8] zeroinitializer }, align 32
@mantis_pci_exit._entry_ptr.146 = internal global ptr @mantis_pci_exit._entry.144, section ".printk_index", align 4
@mantis_pci_exit._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.137, ptr @.str.2, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_pci_exit._entry_ptr.148 = internal global ptr @mantis_pci_exit._entry.147, section ".printk_index", align 4
@__kstrtab_mantis_pci_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_mantis_pci_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_mantis_pci_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mantis_pci_exit to i32), ptr @__kstrtab_mantis_pci_exit, ptr @__kstrtabns_mantis_pci_exit }, section "___ksymtab_gpl+mantis_pci_exit", align 4
@__UNIQUE_ID_description383 = internal constant [53 x i8] c"mantis_core.description=Mantis PCI DTV bridge driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author384 = internal constant [32 x i8] c"mantis_core.author=Manu Abraham\00", section ".modinfo", align 1
@__UNIQUE_ID_file385 = internal constant [54 x i8] c"mantis_core.file=drivers/media/pci/mantis/mantis_core\00", section ".modinfo", align 1
@__UNIQUE_ID_license386 = internal constant [24 x i8] c"mantis_core.license=GPL\00", section ".modinfo", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 44, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 54, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 60, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 67, i32 7 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 71, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 80, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 89, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 94, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 109, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 119, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 124, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 129, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 133, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.446 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.447 = private constant [41 x i8] c"../drivers/media/pci/mantis/mantis_pci.c\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 142, i32 2 }
@llvm.compiler.used = appending global [159 x ptr] [ptr @__UNIQUE_ID_author384, ptr @__UNIQUE_ID_description383, ptr @__UNIQUE_ID_file385, ptr @__UNIQUE_ID_license386, ptr @__ksymtab_mantis_pci_exit, ptr @__ksymtab_mantis_pci_init, ptr @mantis_pci_exit._entry, ptr @mantis_pci_exit._entry.138, ptr @mantis_pci_exit._entry.141, ptr @mantis_pci_exit._entry.144, ptr @mantis_pci_exit._entry.147, ptr @mantis_pci_exit._entry_ptr, ptr @mantis_pci_exit._entry_ptr.140, ptr @mantis_pci_exit._entry_ptr.143, ptr @mantis_pci_exit._entry_ptr.146, ptr @mantis_pci_exit._entry_ptr.148, ptr @mantis_pci_init._entry, ptr @mantis_pci_init._entry.100, ptr @mantis_pci_init._entry.103, ptr @mantis_pci_init._entry.106, ptr @mantis_pci_init._entry.108, ptr @mantis_pci_init._entry.111, ptr @mantis_pci_init._entry.114, ptr @mantis_pci_init._entry.117, ptr @mantis_pci_init._entry.12, ptr @mantis_pci_init._entry.120, ptr @mantis_pci_init._entry.122, ptr @mantis_pci_init._entry.125, ptr @mantis_pci_init._entry.128, ptr @mantis_pci_init._entry.131, ptr @mantis_pci_init._entry.134, ptr @mantis_pci_init._entry.15, ptr @mantis_pci_init._entry.17, ptr @mantis_pci_init._entry.20, ptr @mantis_pci_init._entry.23, ptr @mantis_pci_init._entry.26, ptr @mantis_pci_init._entry.29, ptr @mantis_pci_init._entry.3, ptr @mantis_pci_init._entry.32, ptr @mantis_pci_init._entry.35, ptr @mantis_pci_init._entry.38, ptr @mantis_pci_init._entry.41, ptr @mantis_pci_init._entry.44, ptr @mantis_pci_init._entry.46, ptr @mantis_pci_init._entry.49, ptr @mantis_pci_init._entry.52, ptr @mantis_pci_init._entry.55, ptr @mantis_pci_init._entry.58, ptr @mantis_pci_init._entry.6, ptr @mantis_pci_init._entry.60, ptr @mantis_pci_init._entry.63, ptr @mantis_pci_init._entry.66, ptr @mantis_pci_init._entry.69, ptr @mantis_pci_init._entry.72, ptr @mantis_pci_init._entry.75, ptr @mantis_pci_init._entry.78, ptr @mantis_pci_init._entry.80, ptr @mantis_pci_init._entry.83, ptr @mantis_pci_init._entry.86, ptr @mantis_pci_init._entry.89, ptr @mantis_pci_init._entry.9, ptr @mantis_pci_init._entry.92, ptr @mantis_pci_init._entry.94, ptr @mantis_pci_init._entry.97, ptr @mantis_pci_init._entry_ptr, ptr @mantis_pci_init._entry_ptr.102, ptr @mantis_pci_init._entry_ptr.105, ptr @mantis_pci_init._entry_ptr.107, ptr @mantis_pci_init._entry_ptr.11, ptr @mantis_pci_init._entry_ptr.110, ptr @mantis_pci_init._entry_ptr.113, ptr @mantis_pci_init._entry_ptr.116, ptr @mantis_pci_init._entry_ptr.119, ptr @mantis_pci_init._entry_ptr.121, ptr @mantis_pci_init._entry_ptr.124, ptr @mantis_pci_init._entry_ptr.127, ptr @mantis_pci_init._entry_ptr.130, ptr @mantis_pci_init._entry_ptr.133, ptr @mantis_pci_init._entry_ptr.135, ptr @mantis_pci_init._entry_ptr.14, ptr @mantis_pci_init._entry_ptr.16, ptr @mantis_pci_init._entry_ptr.19, ptr @mantis_pci_init._entry_ptr.22, ptr @mantis_pci_init._entry_ptr.25, ptr @mantis_pci_init._entry_ptr.28, ptr @mantis_pci_init._entry_ptr.30, ptr @mantis_pci_init._entry_ptr.34, ptr @mantis_pci_init._entry_ptr.37, ptr @mantis_pci_init._entry_ptr.40, ptr @mantis_pci_init._entry_ptr.43, ptr @mantis_pci_init._entry_ptr.45, ptr @mantis_pci_init._entry_ptr.48, ptr @mantis_pci_init._entry_ptr.5, ptr @mantis_pci_init._entry_ptr.51, ptr @mantis_pci_init._entry_ptr.54, ptr @mantis_pci_init._entry_ptr.57, ptr @mantis_pci_init._entry_ptr.59, ptr @mantis_pci_init._entry_ptr.62, ptr @mantis_pci_init._entry_ptr.65, ptr @mantis_pci_init._entry_ptr.68, ptr @mantis_pci_init._entry_ptr.71, ptr @mantis_pci_init._entry_ptr.74, ptr @mantis_pci_init._entry_ptr.77, ptr @mantis_pci_init._entry_ptr.79, ptr @mantis_pci_init._entry_ptr.8, ptr @mantis_pci_init._entry_ptr.82, ptr @mantis_pci_init._entry_ptr.85, ptr @mantis_pci_init._entry_ptr.88, ptr @mantis_pci_init._entry_ptr.91, ptr @mantis_pci_init._entry_ptr.93, ptr @mantis_pci_init._entry_ptr.96, ptr @mantis_pci_init._entry_ptr.99, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.104, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @.str.118, ptr @.str.123, ptr @.str.126, ptr @.str.129, ptr @.str.132, ptr @.str.136, ptr @.str.137, ptr @.str.139, ptr @.str.142, ptr @.str.145], section "llvm.metadata"
@0 = internal global [100 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_init._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_exit._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_exit._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_exit._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_pci_exit._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mantis_pci_init(ptr noundef %mantis) #0 align 64 {
entry:
  %latency = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %latency) #4
  %0 = ptrtoint ptr %latency to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %latency, align 1, !annotation !187
  %hwconfig = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 32
  %1 = ptrtoint ptr %hwconfig to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hwconfig, align 4
  %pdev1 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 6
  %3 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev1, align 8
  %5 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %entry.do.end9_crit_edge, label %do.end

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 4
  %dev_type = getelementptr inbounds %struct.mantis_hwconfig, ptr %2, i32 0, i32 1
  %9 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_type, align 4
  %bus = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 1
  %11 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %12, i32 0, i32 12
  %13 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %number, align 4
  %conv = zext i8 %14 to i32
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 6
  %15 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %devfn, align 4
  %shr = lshr i32 %16, 3
  %and = and i32 %shr, 31
  %and7 = and i32 %16, 7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %8, ptr noundef %10, i32 noundef %conv, i32 noundef %and, i32 noundef %and7) #7
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %call10 = tail call i32 @pci_enable_device(ptr noundef %4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11.not = icmp eq i32 %call10, 0
  br i1 %cmp11.not, label %if.end93, label %if.then13

if.then13:                                        ; preds = %do.end9
  %17 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp16.not = icmp eq i32 %18, 0
  br i1 %cmp16.not, label %if.then13.cleanup_crit_edge, label %do.end24

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end24:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  %num = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %19 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num, align 8
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %20, i32 noundef %call10) #7
  br label %do.body781

if.end93:                                         ; preds = %do.end9
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %call94 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %cmp95.not = icmp eq i32 %call94, 0
  br i1 %cmp95.not, label %if.end180, label %do.body98

do.body98:                                        ; preds = %if.end93
  %21 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp100.not = icmp eq i32 %22, 0
  br i1 %cmp100.not, label %do.body98.do.end780_crit_edge, label %do.end109

do.body98.do.end780_crit_edge:                    ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end780

do.end109:                                        ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #6
  %num111 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %23 = ptrtoint ptr %num111 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num111, align 8
  %call112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef %24, i32 noundef %call94) #7
  br label %do.body699

if.end180:                                        ; preds = %if.end93
  tail call void @pci_set_master(ptr noundef %4) #4
  %resource = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 47
  %25 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %resource, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 47, i32 0, i32 1
  %27 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp183 = icmp eq i32 %28, 0
  %sub = sub i32 1, %26
  %add = add i32 %sub, %28
  %cond = select i1 %cmp183, i32 0, i32 %add
  %call191 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %26, i32 noundef %cond, ptr noundef nonnull @.str.31, i32 noundef 0) #4
  %tobool.not = icmp eq ptr %call191, null
  br i1 %tobool.not, label %do.body193, label %if.end275

do.body193:                                       ; preds = %if.end180
  %29 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp195.not = icmp eq i32 %30, 0
  br i1 %cmp195.not, label %do.body193.do.end780_crit_edge, label %do.end204

do.body193.do.end780_crit_edge:                   ; preds = %do.body193
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end780

do.end204:                                        ; preds = %do.body193
  call void @__sanitizer_cov_trace_pc() #6
  %num206 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %31 = ptrtoint ptr %num206 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num206, align 8
  %call207 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.1, i32 noundef %32) #7
  br label %do.body699

if.end275:                                        ; preds = %if.end180
  %33 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %resource, align 8
  %35 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp282 = icmp eq i32 %36, 0
  %sub292 = sub i32 1, %34
  %add293 = add i32 %sub292, %36
  %cond295 = select i1 %cmp282, i32 0, i32 %add293
  %call296 = tail call ptr @ioremap(i32 noundef %34, i32 noundef %cond295) #4
  %mmio = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 8
  %37 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call296, ptr %mmio, align 8
  %tobool298.not = icmp eq ptr %call296, null
  br i1 %tobool298.not, label %do.body300, label %if.end382

do.body300:                                       ; preds = %if.end275
  %38 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp302.not = icmp eq i32 %39, 0
  br i1 %cmp302.not, label %do.body300.do.end678_crit_edge, label %do.end311

do.body300.do.end678_crit_edge:                   ; preds = %do.body300
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end678

do.end311:                                        ; preds = %do.body300
  call void @__sanitizer_cov_trace_pc() #6
  %num313 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %40 = ptrtoint ptr %num313 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num313, align 8
  %call314 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.1, i32 noundef %41) #7
  br label %do.body597

if.end382:                                        ; preds = %if.end275
  %call383 = call i32 @pci_read_config_byte(ptr noundef %4, i32 noundef 13, ptr noundef nonnull %latency) #4
  %42 = ptrtoint ptr %latency to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %latency, align 1
  %latency384 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 5
  %44 = ptrtoint ptr %latency384 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %latency384, align 4
  %revision = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 12
  %45 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %revision, align 4
  %revision385 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 10
  %47 = ptrtoint ptr %revision385 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %revision385, align 1
  %48 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp388.not = icmp eq i32 %49, 0
  br i1 %cmp388.not, label %if.end382.do.end421_crit_edge, label %do.body405

if.end382.do.end421_crit_edge:                    ; preds = %if.end382
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end421

do.body405:                                       ; preds = %if.end382
  %conv396 = zext i8 %46 to i32
  %50 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pdev1, align 8
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 9
  %52 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %subsystem_vendor, align 4
  %conv398 = zext i16 %53 to i32
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 10
  %54 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %subsystem_device, align 2
  %conv400 = zext i16 %55 to i32
  %call401 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %conv396, i32 noundef %conv398, i32 noundef %conv400) #7
  %56 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pr = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp407.not = icmp eq i32 %.pr, 0
  br i1 %cmp407.not, label %do.body405.do.end421_crit_edge, label %do.end412

do.body405.do.end421_crit_edge:                   ; preds = %do.body405
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end421

do.end412:                                        ; preds = %do.body405
  call void @__sanitizer_cov_trace_pc() #6
  %57 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pdev1, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 46
  %59 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %irq, align 4
  %61 = ptrtoint ptr %latency384 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %latency384, align 4
  %conv416 = zext i8 %62 to i32
  %mantis_addr = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 7
  %63 = ptrtoint ptr %mantis_addr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %mantis_addr, align 4
  %65 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mmio, align 8
  %call418 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %60, i32 noundef %conv416, i32 noundef %64, ptr noundef %66) #7
  br label %do.end421

do.end421:                                        ; preds = %do.end412, %do.body405.do.end421_crit_edge, %if.end382.do.end421_crit_edge
  %irq422 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 46
  %67 = ptrtoint ptr %irq422 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %irq422, align 4
  %irq_handler = getelementptr inbounds %struct.mantis_hwconfig, ptr %2, i32 0, i32 6
  %69 = ptrtoint ptr %irq_handler to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %irq_handler, align 4
  %call.i = call i32 @request_threaded_irq(i32 noundef %68, ptr noundef %70, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.31, ptr noundef %mantis) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp424.not = icmp eq i32 %call.i, 0
  br i1 %cmp424.not, label %if.end509, label %do.body427

do.body427:                                       ; preds = %do.end421
  %71 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp429.not = icmp eq i32 %72, 0
  br i1 %cmp429.not, label %do.body427.do.end591_crit_edge, label %do.end508

do.body427.do.end591_crit_edge:                   ; preds = %do.body427
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end591

do.end508:                                        ; preds = %do.body427
  %num440 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %73 = ptrtoint ptr %num440 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %num440, align 8
  %call441 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.1, i32 noundef %74, i32 noundef %call.i) #7
  %75 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %75)
  %.pr1087 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1087)
  %cmp512.not = icmp eq i32 %.pr1087, 0
  br i1 %cmp512.not, label %do.end508.do.end591_crit_edge, label %do.end521

do.end508.do.end591_crit_edge:                    ; preds = %do.end508
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end591

if.end509:                                        ; preds = %do.end421
  call void @__sanitizer_cov_trace_pc() #6
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44, i32 8
  %76 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %mantis, ptr %driver_data.i.i, align 4
  br label %cleanup

do.end521:                                        ; preds = %do.end508
  call void @__sanitizer_cov_trace_pc() #6
  %77 = ptrtoint ptr %num440 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %num440, align 8
  %call524 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.1, i32 noundef %78, i32 noundef -19) #7
  br label %do.end591

do.end591:                                        ; preds = %do.end521, %do.end508.do.end591_crit_edge, %do.body427.do.end591_crit_edge
  %79 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mmio, align 8
  %tobool593.not = icmp eq ptr %80, null
  br i1 %tobool593.not, label %do.end591.do.body597_crit_edge, label %if.then594

do.end591.do.body597_crit_edge:                   ; preds = %do.end591
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body597

if.then594:                                       ; preds = %do.end591
  call void @__sanitizer_cov_trace_pc() #6
  call void @iounmap(ptr noundef nonnull %80) #4
  br label %do.body597

do.body597:                                       ; preds = %if.then594, %do.end591.do.body597_crit_edge, %do.end311
  %81 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %81)
  %.pr1089 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1089)
  %cmp599.not = icmp eq i32 %.pr1089, 0
  br i1 %cmp599.not, label %do.body597.do.end678_crit_edge, label %do.end608

do.body597.do.end678_crit_edge:                   ; preds = %do.body597
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end678

do.end608:                                        ; preds = %do.body597
  call void @__sanitizer_cov_trace_pc() #6
  %num610 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %82 = ptrtoint ptr %num610 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %num610, align 8
  %call611 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.1, i32 noundef %83, i32 noundef -19) #7
  br label %do.end678

do.end678:                                        ; preds = %do.end608, %do.body597.do.end678_crit_edge, %do.body300.do.end678_crit_edge
  %84 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %resource, align 8
  %86 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp685 = icmp eq i32 %87, 0
  %sub695 = sub i32 1, %85
  %add696 = add i32 %sub695, %87
  %cond698 = select i1 %cmp685, i32 0, i32 %add696
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %85, i32 noundef %cond698) #4
  br label %do.body699

do.body699:                                       ; preds = %do.end678, %do.end204, %do.end109
  %ret.1.ph = phi i32 [ -19, %do.end204 ], [ -12, %do.end109 ], [ -19, %do.end678 ]
  %88 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %88)
  %.pr1091 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1091)
  %cmp701.not = icmp eq i32 %.pr1091, 0
  br i1 %cmp701.not, label %do.body699.do.end780_crit_edge, label %do.end710

do.body699.do.end780_crit_edge:                   ; preds = %do.body699
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end780

do.end710:                                        ; preds = %do.body699
  call void @__sanitizer_cov_trace_pc() #6
  %num712 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %89 = ptrtoint ptr %num712 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %num712, align 8
  %call713 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.1, i32 noundef %90, i32 noundef %ret.1.ph) #7
  br label %do.end780

do.end780:                                        ; preds = %do.end710, %do.body699.do.end780_crit_edge, %do.body193.do.end780_crit_edge, %do.body98.do.end780_crit_edge
  %ret.11096 = phi i32 [ %ret.1.ph, %do.end710 ], [ %ret.1.ph, %do.body699.do.end780_crit_edge ], [ -19, %do.body193.do.end780_crit_edge ], [ -12, %do.body98.do.end780_crit_edge ]
  call void @pci_disable_device(ptr noundef %4) #4
  br label %do.body781

do.body781:                                       ; preds = %do.end780, %do.end24
  %ret.2.ph = phi i32 [ %ret.11096, %do.end780 ], [ -19, %do.end24 ]
  %91 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %91)
  %.pr1097 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1097)
  %cmp783.not = icmp eq i32 %.pr1097, 0
  br i1 %cmp783.not, label %do.body781.cleanup_crit_edge, label %do.end792

do.body781.cleanup_crit_edge:                     ; preds = %do.body781
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end792:                                        ; preds = %do.body781
  call void @__sanitizer_cov_trace_pc() #6
  %num794 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %92 = ptrtoint ptr %num794 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %num794, align 8
  %call795 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.1, i32 noundef %93, i32 noundef %ret.2.ph) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end792, %do.body781.cleanup_crit_edge, %if.end509, %if.then13.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end509 ], [ %ret.2.ph, %do.end792 ], [ %ret.2.ph, %do.body781.cleanup_crit_edge ], [ -19, %if.then13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %latency) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mantis_pci_exit(ptr noundef %mantis) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 6
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %2 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch = icmp ult i32 %3, 2
  br i1 %switch, label %entry.do.end65_crit_edge, label %do.end

entry.do.end65_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end65

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %num = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %4 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num, align 8
  %mmio = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 8
  %6 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.137, i32 noundef %5, ptr noundef %7) #7
  br label %do.end65

do.end65:                                         ; preds = %do.end, %entry.do.end65_crit_edge
  %irq = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  %call66 = tail call ptr @free_irq(i32 noundef %9, ptr noundef %mantis) #4
  %mmio67 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 8
  %10 = ptrtoint ptr %mmio67 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio67, align 8
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %do.end65.if.end79_crit_edge, label %if.then68

do.end65.if.end79_crit_edge:                      ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end79

if.then68:                                        ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @iounmap(ptr noundef nonnull %11) #4
  %resource = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 47
  %12 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %resource, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 47, i32 0, i32 1
  %14 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp72 = icmp eq i32 %15, 0
  %sub = sub i32 1, %13
  %add = add i32 %sub, %15
  %cond = select i1 %cmp72, i32 0, i32 %add
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %13, i32 noundef %cond) #4
  br label %if.end79

if.end79:                                         ; preds = %if.then68, %do.end65.if.end79_crit_edge
  tail call void @pci_disable_device(ptr noundef %1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !38, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !153, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !171, !173, !175, !177}
!llvm.module.flags = !{!178, !179, !180, !181, !182, !183, !184, !185}
!llvm.ident = !{!186}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/mantis/mantis_pci.c", i32 44, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @mantis_pci_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @mantis_pci_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/mantis/mantis_pci.c", i32 54, i32 3}
!8 = !{ptr @mantis_pci_init._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @mantis_pci_init._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mantis_pci_init._entry.6, !7, !"_entry", i1 false, i1 false}
!12 = !{ptr @mantis_pci_init._entry_ptr.8, !7, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.10, !7, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @mantis_pci_init._entry.9, !7, !"_entry", i1 false, i1 false}
!15 = !{ptr @mantis_pci_init._entry_ptr.11, !7, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.13, !7, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @mantis_pci_init._entry.12, !7, !"_entry", i1 false, i1 false}
!18 = !{ptr @mantis_pci_init._entry_ptr.14, !7, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @mantis_pci_init._entry.15, !7, !"_entry", i1 false, i1 false}
!20 = !{ptr @mantis_pci_init._entry_ptr.16, !7, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.18, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/pci/mantis/mantis_pci.c", i32 60, i32 3}
!23 = !{ptr @mantis_pci_init._entry.17, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @mantis_pci_init._entry_ptr.19, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.21, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mantis_pci_init._entry.20, !22, !"_entry", i1 false, i1 false}
!27 = !{ptr @mantis_pci_init._entry_ptr.22, !22, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.24, !22, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @mantis_pci_init._entry.23, !22, !"_entry", i1 false, i1 false}
!30 = !{ptr @mantis_pci_init._entry_ptr.25, !22, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.27, !22, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @mantis_pci_init._entry.26, !22, !"_entry", i1 false, i1 false}
!33 = !{ptr @mantis_pci_init._entry_ptr.28, !22, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @mantis_pci_init._entry.29, !22, !"_entry", i1 false, i1 false}
!35 = !{ptr @mantis_pci_init._entry_ptr.30, !22, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.31, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/pci/mantis/mantis_pci.c", i32 67, i32 7}
!38 = !{ptr @.str.33, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/pci/mantis/mantis_pci.c", i32 71, i32 3}
!40 = !{ptr @mantis_pci_init._entry.32, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @mantis_pci_init._entry_ptr.34, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.36, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @mantis_pci_init._entry.35, !39, !"_entry", i1 false, i1 false}
!44 = !{ptr @mantis_pci_init._entry_ptr.37, !39, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.39, !39, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @mantis_pci_init._entry.38, !39, !"_entry", i1 false, i1 false}
!47 = !{ptr @mantis_pci_init._entry_ptr.40, !39, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.42, !39, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @mantis_pci_init._entry.41, !39, !"_entry", i1 false, i1 false}
!50 = !{ptr @mantis_pci_init._entry_ptr.43, !39, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @mantis_pci_init._entry.44, !39, !"_entry", i1 false, i1 false}
!52 = !{ptr @mantis_pci_init._entry_ptr.45, !39, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.47, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/pci/mantis/mantis_pci.c", i32 80, i32 3}
!55 = !{ptr @mantis_pci_init._entry.46, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @mantis_pci_init._entry_ptr.48, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.50, !54, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @mantis_pci_init._entry.49, !54, !"_entry", i1 false, i1 false}
!59 = !{ptr @mantis_pci_init._entry_ptr.51, !54, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.53, !54, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @mantis_pci_init._entry.52, !54, !"_entry", i1 false, i1 false}
!62 = !{ptr @mantis_pci_init._entry_ptr.54, !54, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.56, !54, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @mantis_pci_init._entry.55, !54, !"_entry", i1 false, i1 false}
!65 = !{ptr @mantis_pci_init._entry_ptr.57, !54, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @mantis_pci_init._entry.58, !54, !"_entry", i1 false, i1 false}
!67 = !{ptr @mantis_pci_init._entry_ptr.59, !54, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.61, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/pci/mantis/mantis_pci.c", i32 89, i32 2}
!70 = !{ptr @mantis_pci_init._entry.60, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @mantis_pci_init._entry_ptr.62, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.64, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/pci/mantis/mantis_pci.c", i32 94, i32 2}
!74 = !{ptr @mantis_pci_init._entry.63, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @mantis_pci_init._entry_ptr.65, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.67, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/pci/mantis/mantis_pci.c", i32 109, i32 3}
!78 = !{ptr @mantis_pci_init._entry.66, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @mantis_pci_init._entry_ptr.68, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.70, !77, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @mantis_pci_init._entry.69, !77, !"_entry", i1 false, i1 false}
!82 = !{ptr @mantis_pci_init._entry_ptr.71, !77, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.73, !77, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @mantis_pci_init._entry.72, !77, !"_entry", i1 false, i1 false}
!85 = !{ptr @mantis_pci_init._entry_ptr.74, !77, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.76, !77, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @mantis_pci_init._entry.75, !77, !"_entry", i1 false, i1 false}
!88 = !{ptr @mantis_pci_init._entry_ptr.77, !77, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @mantis_pci_init._entry.78, !77, !"_entry", i1 false, i1 false}
!90 = !{ptr @mantis_pci_init._entry_ptr.79, !77, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.81, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/pci/mantis/mantis_pci.c", i32 119, i32 2}
!93 = !{ptr @mantis_pci_init._entry.80, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @mantis_pci_init._entry_ptr.82, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.84, !92, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @mantis_pci_init._entry.83, !92, !"_entry", i1 false, i1 false}
!97 = !{ptr @mantis_pci_init._entry_ptr.85, !92, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.87, !92, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @mantis_pci_init._entry.86, !92, !"_entry", i1 false, i1 false}
!100 = !{ptr @mantis_pci_init._entry_ptr.88, !92, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.90, !92, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @mantis_pci_init._entry.89, !92, !"_entry", i1 false, i1 false}
!103 = !{ptr @mantis_pci_init._entry_ptr.91, !92, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @mantis_pci_init._entry.92, !92, !"_entry", i1 false, i1 false}
!105 = !{ptr @mantis_pci_init._entry_ptr.93, !92, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.95, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/pci/mantis/mantis_pci.c", i32 124, i32 2}
!108 = !{ptr @mantis_pci_init._entry.94, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @mantis_pci_init._entry_ptr.96, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.98, !107, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @mantis_pci_init._entry.97, !107, !"_entry", i1 false, i1 false}
!112 = !{ptr @mantis_pci_init._entry_ptr.99, !107, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.101, !107, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @mantis_pci_init._entry.100, !107, !"_entry", i1 false, i1 false}
!115 = !{ptr @mantis_pci_init._entry_ptr.102, !107, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.104, !107, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @mantis_pci_init._entry.103, !107, !"_entry", i1 false, i1 false}
!118 = !{ptr @mantis_pci_init._entry_ptr.105, !107, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @mantis_pci_init._entry.106, !107, !"_entry", i1 false, i1 false}
!120 = !{ptr @mantis_pci_init._entry_ptr.107, !107, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.109, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/pci/mantis/mantis_pci.c", i32 129, i32 2}
!123 = !{ptr @mantis_pci_init._entry.108, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @mantis_pci_init._entry_ptr.110, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.112, !122, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @mantis_pci_init._entry.111, !122, !"_entry", i1 false, i1 false}
!127 = !{ptr @mantis_pci_init._entry_ptr.113, !122, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.115, !122, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @mantis_pci_init._entry.114, !122, !"_entry", i1 false, i1 false}
!130 = !{ptr @mantis_pci_init._entry_ptr.116, !122, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.118, !122, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @mantis_pci_init._entry.117, !122, !"_entry", i1 false, i1 false}
!133 = !{ptr @mantis_pci_init._entry_ptr.119, !122, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @mantis_pci_init._entry.120, !122, !"_entry", i1 false, i1 false}
!135 = !{ptr @mantis_pci_init._entry_ptr.121, !122, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.123, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/pci/mantis/mantis_pci.c", i32 133, i32 2}
!138 = !{ptr @mantis_pci_init._entry.122, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @mantis_pci_init._entry_ptr.124, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.126, !137, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @mantis_pci_init._entry.125, !137, !"_entry", i1 false, i1 false}
!142 = !{ptr @mantis_pci_init._entry_ptr.127, !137, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.129, !137, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @mantis_pci_init._entry.128, !137, !"_entry", i1 false, i1 false}
!145 = !{ptr @mantis_pci_init._entry_ptr.130, !137, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.132, !137, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @mantis_pci_init._entry.131, !137, !"_entry", i1 false, i1 false}
!148 = !{ptr @mantis_pci_init._entry_ptr.133, !137, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @mantis_pci_init._entry.134, !137, !"_entry", i1 false, i1 false}
!150 = !{ptr @mantis_pci_init._entry_ptr.135, !137, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @__ksymtab_mantis_pci_init, !152, !"__ksymtab_mantis_pci_init", i1 false, i1 false}
!152 = !{!"../drivers/media/pci/mantis/mantis_pci.c", i32 136, i32 1}
!153 = !{ptr @.str.136, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/pci/mantis/mantis_pci.c", i32 142, i32 2}
!155 = !{ptr @.str.137, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @mantis_pci_exit._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @mantis_pci_exit._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.139, !154, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @mantis_pci_exit._entry.138, !154, !"_entry", i1 false, i1 false}
!160 = !{ptr @mantis_pci_exit._entry_ptr.140, !154, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.142, !154, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @mantis_pci_exit._entry.141, !154, !"_entry", i1 false, i1 false}
!163 = !{ptr @mantis_pci_exit._entry_ptr.143, !154, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.145, !154, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @mantis_pci_exit._entry.144, !154, !"_entry", i1 false, i1 false}
!166 = !{ptr @mantis_pci_exit._entry_ptr.146, !154, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @mantis_pci_exit._entry.147, !154, !"_entry", i1 false, i1 false}
!168 = !{ptr @mantis_pci_exit._entry_ptr.148, !154, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @__ksymtab_mantis_pci_exit, !170, !"__ksymtab_mantis_pci_exit", i1 false, i1 false}
!170 = !{!"../drivers/media/pci/mantis/mantis_pci.c", i32 152, i32 1}
!171 = !{ptr @__UNIQUE_ID_description383, !172, !"__UNIQUE_ID_description383", i1 false, i1 false}
!172 = !{!"../drivers/media/pci/mantis/mantis_pci.c", i32 154, i32 1}
!173 = !{ptr @__UNIQUE_ID_author384, !174, !"__UNIQUE_ID_author384", i1 false, i1 false}
!174 = !{!"../drivers/media/pci/mantis/mantis_pci.c", i32 155, i32 1}
!175 = !{ptr @__UNIQUE_ID_file385, !176, !"__UNIQUE_ID_file385", i1 false, i1 false}
!176 = !{!"../drivers/media/pci/mantis/mantis_pci.c", i32 156, i32 1}
!177 = !{ptr @__UNIQUE_ID_license386, !176, !"__UNIQUE_ID_license386", i1 false, i1 false}
!178 = !{i32 1, !"wchar_size", i32 2}
!179 = !{i32 1, !"min_enum_size", i32 4}
!180 = !{i32 8, !"branch-target-enforcement", i32 0}
!181 = !{i32 8, !"sign-return-address", i32 0}
!182 = !{i32 8, !"sign-return-address-all", i32 0}
!183 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!184 = !{i32 7, !"uwtable", i32 1}
!185 = !{i32 7, !"frame-pointer", i32 2}
!186 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!187 = !{!"auto-init"}
