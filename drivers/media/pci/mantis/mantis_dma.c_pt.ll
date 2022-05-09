; ModuleID = '/llk/IR_all_yes/drivers/media/pci/mantis/mantis_dma.c_pt.bc'
source_filename = "../drivers/media/pci/mantis/mantis_dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mantis_dma_exit\22, \22a\22\09"
module asm "\09.weak\09__crc_mantis_dma_exit\09\09\09\09"
module asm "\09.long\09__crc_mantis_dma_exit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mantis_dma_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22mantis_dma_exit\22\09\09\09\09\09"
module asm "__kstrtabns_mantis_dma_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mantis_dma_init\22, \22a\22\09"
module asm "\09.weak\09__crc_mantis_dma_init\09\09\09\09"
module asm "\09.long\09__crc_mantis_dma_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mantis_dma_init:\09\09\09\09\09"
module asm "\09.asciz \09\22mantis_dma_init\22\09\09\09\09\09"
module asm "__kstrtabns_mantis_dma_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.103, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.103 = type { ptr }
%struct.mantis_hwconfig = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr, i8, i8, i32 }

@mantis_dma_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s (%d): DMA=0x%lx cpu=0x%p size=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mantis_dma_exit\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/pci/mantis/mantis_dma.c\00", [58 x i8] zeroinitializer }, align 32
@mantis_dma_exit._entry_ptr = internal global ptr @mantis_dma_exit._entry, section ".printk_index", align 4
@mantis_dma_exit._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015%s (%d): DMA=0x%lx cpu=0x%p size=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@mantis_dma_exit._entry_ptr.5 = internal global ptr @mantis_dma_exit._entry.3, section ".printk_index", align 4
@mantis_dma_exit._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s (%d): DMA=0x%lx cpu=0x%p size=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@mantis_dma_exit._entry_ptr.8 = internal global ptr @mantis_dma_exit._entry.6, section ".printk_index", align 4
@mantis_dma_exit._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s (%d): DMA=0x%lx cpu=0x%p size=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@mantis_dma_exit._entry_ptr.11 = internal global ptr @mantis_dma_exit._entry.9, section ".printk_index", align 4
@mantis_dma_exit._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_dma_exit._entry_ptr.13 = internal global ptr @mantis_dma_exit._entry.12, section ".printk_index", align 4
@mantis_dma_exit._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s (%d): RISC=0x%lx cpu=0x%p size=%lx\0A\00", [55 x i8] zeroinitializer }, align 32
@mantis_dma_exit._entry_ptr.16 = internal global ptr @mantis_dma_exit._entry.14, section ".printk_index", align 4
@mantis_dma_exit._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015%s (%d): RISC=0x%lx cpu=0x%p size=%lx\0A\00", [55 x i8] zeroinitializer }, align 32
@mantis_dma_exit._entry_ptr.19 = internal global ptr @mantis_dma_exit._entry.17, section ".printk_index", align 4
@mantis_dma_exit._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.1, ptr @.str.2, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s (%d): RISC=0x%lx cpu=0x%p size=%lx\0A\00", [55 x i8] zeroinitializer }, align 32
@mantis_dma_exit._entry_ptr.22 = internal global ptr @mantis_dma_exit._entry.20, section ".printk_index", align 4
@mantis_dma_exit._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.1, ptr @.str.2, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s (%d): RISC=0x%lx cpu=0x%p size=%lx\0A\00", [55 x i8] zeroinitializer }, align 32
@mantis_dma_exit._entry_ptr.25 = internal global ptr @mantis_dma_exit._entry.23, section ".printk_index", align 4
@mantis_dma_exit._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.1, ptr @.str.2, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_dma_exit._entry_ptr.27 = internal global ptr @mantis_dma_exit._entry.26, section ".printk_index", align 4
@__kstrtab_mantis_dma_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_mantis_dma_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_mantis_dma_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mantis_dma_exit to i32), ptr @__kstrtab_mantis_dma_exit, ptr @__kstrtabns_mantis_dma_exit }, section "___ksymtab_gpl+mantis_dma_exit", align 4
@mantis_dma_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s (%d): Mantis DMA init\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mantis_dma_init\00", [16 x i8] zeroinitializer }, align 32
@mantis_dma_init._entry_ptr = internal global ptr @mantis_dma_init._entry, section ".printk_index", align 4
@mantis_dma_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\015%s (%d): Mantis DMA init\0A\00", [36 x i8] zeroinitializer }, align 32
@mantis_dma_init._entry_ptr.32 = internal global ptr @mantis_dma_init._entry.30, section ".printk_index", align 4
@mantis_dma_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.2, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s (%d): Mantis DMA init\0A\00", [36 x i8] zeroinitializer }, align 32
@mantis_dma_init._entry_ptr.35 = internal global ptr @mantis_dma_init._entry.33, section ".printk_index", align 4
@mantis_dma_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.29, ptr @.str.2, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s (%d): Mantis DMA init\0A\00", [36 x i8] zeroinitializer }, align 32
@mantis_dma_init._entry_ptr.38 = internal global ptr @mantis_dma_init._entry.36, section ".printk_index", align 4
@mantis_dma_init._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.29, ptr @.str.2, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_dma_init._entry_ptr.40 = internal global ptr @mantis_dma_init._entry.39, section ".printk_index", align 4
@mantis_dma_init._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.29, ptr @.str.2, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s (%d): Error allocating DMA buffer\0A\00", [56 x i8] zeroinitializer }, align 32
@mantis_dma_init._entry_ptr.43 = internal global ptr @mantis_dma_init._entry.41, section ".printk_index", align 4
@mantis_dma_init._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.29, ptr @.str.2, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015%s (%d): Error allocating DMA buffer\0A\00", [56 x i8] zeroinitializer }, align 32
@mantis_dma_init._entry_ptr.46 = internal global ptr @mantis_dma_init._entry.44, section ".printk_index", align 4
@mantis_dma_init._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.29, ptr @.str.2, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s (%d): Error allocating DMA buffer\0A\00", [56 x i8] zeroinitializer }, align 32
@mantis_dma_init._entry_ptr.49 = internal global ptr @mantis_dma_init._entry.47, section ".printk_index", align 4
@mantis_dma_init._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.29, ptr @.str.2, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s (%d): Error allocating DMA buffer\0A\00", [56 x i8] zeroinitializer }, align 32
@mantis_dma_init._entry_ptr.52 = internal global ptr @mantis_dma_init._entry.50, section ".printk_index", align 4
@mantis_dma_init._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.29, ptr @.str.2, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_dma_init._entry_ptr.54 = internal global ptr @mantis_dma_init._entry.53, section ".printk_index", align 4
@__kstrtab_mantis_dma_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_mantis_dma_init = external dso_local constant [0 x i8], align 1
@__ksymtab_mantis_dma_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mantis_dma_init to i32), ptr @__kstrtab_mantis_dma_init, ptr @__kstrtabns_mantis_dma_init }, section "___ksymtab_gpl+mantis_dma_init", align 4
@mantis_dma_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s (%d): Mantis Start DMA engine\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mantis_dma_start\00", [47 x i8] zeroinitializer }, align 32
@mantis_dma_start._entry_ptr = internal global ptr @mantis_dma_start._entry, section ".printk_index", align 4
@mantis_dma_start._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.2, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015%s (%d): Mantis Start DMA engine\0A\00", [60 x i8] zeroinitializer }, align 32
@mantis_dma_start._entry_ptr.59 = internal global ptr @mantis_dma_start._entry.57, section ".printk_index", align 4
@mantis_dma_start._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.56, ptr @.str.2, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s (%d): Mantis Start DMA engine\0A\00", [60 x i8] zeroinitializer }, align 32
@mantis_dma_start._entry_ptr.62 = internal global ptr @mantis_dma_start._entry.60, section ".printk_index", align 4
@mantis_dma_start._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.56, ptr @.str.2, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s (%d): Mantis Start DMA engine\0A\00", [60 x i8] zeroinitializer }, align 32
@mantis_dma_start._entry_ptr.65 = internal global ptr @mantis_dma_start._entry.63, section ".printk_index", align 4
@mantis_dma_start._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.56, ptr @.str.2, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_dma_start._entry_ptr.67 = internal global ptr @mantis_dma_start._entry.66, section ".printk_index", align 4
@mantis_dma_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s (%d): Mantis Stop DMA engine\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mantis_dma_stop\00", [16 x i8] zeroinitializer }, align 32
@mantis_dma_stop._entry_ptr = internal global ptr @mantis_dma_stop._entry, section ".printk_index", align 4
@mantis_dma_stop._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.2, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015%s (%d): Mantis Stop DMA engine\0A\00", [61 x i8] zeroinitializer }, align 32
@mantis_dma_stop._entry_ptr.72 = internal global ptr @mantis_dma_stop._entry.70, section ".printk_index", align 4
@mantis_dma_stop._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.69, ptr @.str.2, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s (%d): Mantis Stop DMA engine\0A\00", [61 x i8] zeroinitializer }, align 32
@mantis_dma_stop._entry_ptr.75 = internal global ptr @mantis_dma_stop._entry.73, section ".printk_index", align 4
@mantis_dma_stop._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.69, ptr @.str.2, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s (%d): Mantis Stop DMA engine\0A\00", [61 x i8] zeroinitializer }, align 32
@mantis_dma_stop._entry_ptr.78 = internal global ptr @mantis_dma_stop._entry.76, section ".printk_index", align 4
@mantis_dma_stop._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.69, ptr @.str.2, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_dma_stop._entry_ptr.80 = internal global ptr @mantis_dma_stop._entry.79, section ".printk_index", align 4
@mantis_dma_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.2, i32 210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s (%d): last block=[%d] finished block=[%d]\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mantis_dma_xfer\00", [16 x i8] zeroinitializer }, align 32
@mantis_dma_xfer._entry_ptr = internal global ptr @mantis_dma_xfer._entry, section ".printk_index", align 4
@mantis_dma_xfer._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.82, ptr @.str.2, i32 210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015%s (%d): last block=[%d] finished block=[%d]\0A\00", [48 x i8] zeroinitializer }, align 32
@mantis_dma_xfer._entry_ptr.85 = internal global ptr @mantis_dma_xfer._entry.83, section ".printk_index", align 4
@mantis_dma_xfer._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.82, ptr @.str.2, i32 210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016%s (%d): last block=[%d] finished block=[%d]\0A\00", [48 x i8] zeroinitializer }, align 32
@mantis_dma_xfer._entry_ptr.88 = internal global ptr @mantis_dma_xfer._entry.86, section ".printk_index", align 4
@mantis_dma_xfer._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.82, ptr @.str.2, i32 210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017%s (%d): last block=[%d] finished block=[%d]\0A\00", [48 x i8] zeroinitializer }, align 32
@mantis_dma_xfer._entry_ptr.91 = internal global ptr @mantis_dma_xfer._entry.89, section ".printk_index", align 4
@mantis_dma_xfer._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.82, ptr @.str.2, i32 210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_dma_xfer._entry_ptr.93 = internal global ptr @mantis_dma_xfer._entry.92, section ".printk_index", align 4
@mantis_alloc_buffers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.2, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s (%d): DMA buffer allocation failed\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mantis_alloc_buffers\00", [43 x i8] zeroinitializer }, align 32
@mantis_alloc_buffers._entry_ptr = internal global ptr @mantis_alloc_buffers._entry, section ".printk_index", align 4
@mantis_alloc_buffers._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.2, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015%s (%d): DMA buffer allocation failed\0A\00", [55 x i8] zeroinitializer }, align 32
@mantis_alloc_buffers._entry_ptr.98 = internal global ptr @mantis_alloc_buffers._entry.96, section ".printk_index", align 4
@mantis_alloc_buffers._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.95, ptr @.str.2, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s (%d): DMA buffer allocation failed\0A\00", [55 x i8] zeroinitializer }, align 32
@mantis_alloc_buffers._entry_ptr.101 = internal global ptr @mantis_alloc_buffers._entry.99, section ".printk_index", align 4
@mantis_alloc_buffers._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.95, ptr @.str.2, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s (%d): DMA buffer allocation failed\0A\00", [55 x i8] zeroinitializer }, align 32
@mantis_alloc_buffers._entry_ptr.104 = internal global ptr @mantis_alloc_buffers._entry.102, section ".printk_index", align 4
@mantis_alloc_buffers._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.95, ptr @.str.2, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_alloc_buffers._entry_ptr.106 = internal global ptr @mantis_alloc_buffers._entry.105, section ".printk_index", align 4
@mantis_alloc_buffers._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.95, ptr @.str.2, i32 92, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_alloc_buffers._entry_ptr.108 = internal global ptr @mantis_alloc_buffers._entry.107, section ".printk_index", align 4
@mantis_alloc_buffers._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.95, ptr @.str.2, i32 92, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_alloc_buffers._entry_ptr.110 = internal global ptr @mantis_alloc_buffers._entry.109, section ".printk_index", align 4
@mantis_alloc_buffers._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.95, ptr @.str.2, i32 92, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_alloc_buffers._entry_ptr.112 = internal global ptr @mantis_alloc_buffers._entry.111, section ".printk_index", align 4
@mantis_alloc_buffers._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.95, ptr @.str.2, i32 92, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_alloc_buffers._entry_ptr.114 = internal global ptr @mantis_alloc_buffers._entry.113, section ".printk_index", align 4
@mantis_alloc_buffers._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.95, ptr @.str.2, i32 92, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_alloc_buffers._entry_ptr.116 = internal global ptr @mantis_alloc_buffers._entry.115, section ".printk_index", align 4
@mantis_alloc_buffers._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.95, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s (%d): RISC program allocation failed\0A\00", [53 x i8] zeroinitializer }, align 32
@mantis_alloc_buffers._entry_ptr.119 = internal global ptr @mantis_alloc_buffers._entry.117, section ".printk_index", align 4
@mantis_alloc_buffers._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.95, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015%s (%d): RISC program allocation failed\0A\00", [53 x i8] zeroinitializer }, align 32
@mantis_alloc_buffers._entry_ptr.122 = internal global ptr @mantis_alloc_buffers._entry.120, section ".printk_index", align 4
@mantis_alloc_buffers._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.95, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s (%d): RISC program allocation failed\0A\00", [53 x i8] zeroinitializer }, align 32
@mantis_alloc_buffers._entry_ptr.125 = internal global ptr @mantis_alloc_buffers._entry.123, section ".printk_index", align 4
@mantis_alloc_buffers._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.95, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s (%d): RISC program allocation failed\0A\00", [53 x i8] zeroinitializer }, align 32
@mantis_alloc_buffers._entry_ptr.128 = internal global ptr @mantis_alloc_buffers._entry.126, section ".printk_index", align 4
@mantis_alloc_buffers._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.95, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_alloc_buffers._entry_ptr.130 = internal global ptr @mantis_alloc_buffers._entry.129, section ".printk_index", align 4
@mantis_alloc_buffers._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.95, ptr @.str.2, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_alloc_buffers._entry_ptr.132 = internal global ptr @mantis_alloc_buffers._entry.131, section ".printk_index", align 4
@mantis_alloc_buffers._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.95, ptr @.str.2, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_alloc_buffers._entry_ptr.134 = internal global ptr @mantis_alloc_buffers._entry.133, section ".printk_index", align 4
@mantis_alloc_buffers._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.95, ptr @.str.2, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_alloc_buffers._entry_ptr.136 = internal global ptr @mantis_alloc_buffers._entry.135, section ".printk_index", align 4
@mantis_alloc_buffers._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.95, ptr @.str.2, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_alloc_buffers._entry_ptr.138 = internal global ptr @mantis_alloc_buffers._entry.137, section ".printk_index", align 4
@mantis_alloc_buffers._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.95, ptr @.str.2, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_alloc_buffers._entry_ptr.140 = internal global ptr @mantis_alloc_buffers._entry.139, section ".printk_index", align 4
@mantis_alloc_buffers._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.95, ptr @.str.2, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s (%d): Out of memory (?) .....\0A\00", [60 x i8] zeroinitializer }, align 32
@mantis_alloc_buffers._entry_ptr.143 = internal global ptr @mantis_alloc_buffers._entry.141, section ".printk_index", align 4
@mantis_alloc_buffers._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.95, ptr @.str.2, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015%s (%d): Out of memory (?) .....\0A\00", [60 x i8] zeroinitializer }, align 32
@mantis_alloc_buffers._entry_ptr.146 = internal global ptr @mantis_alloc_buffers._entry.144, section ".printk_index", align 4
@mantis_alloc_buffers._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.95, ptr @.str.2, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s (%d): Out of memory (?) .....\0A\00", [60 x i8] zeroinitializer }, align 32
@mantis_alloc_buffers._entry_ptr.149 = internal global ptr @mantis_alloc_buffers._entry.147, section ".printk_index", align 4
@mantis_alloc_buffers._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.95, ptr @.str.2, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s (%d): Out of memory (?) .....\0A\00", [60 x i8] zeroinitializer }, align 32
@mantis_alloc_buffers._entry_ptr.152 = internal global ptr @mantis_alloc_buffers._entry.150, section ".printk_index", align 4
@mantis_alloc_buffers._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.95, ptr @.str.2, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_alloc_buffers._entry_ptr.154 = internal global ptr @mantis_alloc_buffers._entry.153, section ".printk_index", align 4
@mantis_risc_program._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.156, ptr @.str.2, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s (%d): Mantis create RISC program\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mantis_risc_program\00", [44 x i8] zeroinitializer }, align 32
@mantis_risc_program._entry_ptr = internal global ptr @mantis_risc_program._entry, section ".printk_index", align 4
@mantis_risc_program._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.156, ptr @.str.2, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015%s (%d): Mantis create RISC program\0A\00", [57 x i8] zeroinitializer }, align 32
@mantis_risc_program._entry_ptr.159 = internal global ptr @mantis_risc_program._entry.157, section ".printk_index", align 4
@mantis_risc_program._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.156, ptr @.str.2, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s (%d): Mantis create RISC program\0A\00", [57 x i8] zeroinitializer }, align 32
@mantis_risc_program._entry_ptr.162 = internal global ptr @mantis_risc_program._entry.160, section ".printk_index", align 4
@mantis_risc_program._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.156, ptr @.str.2, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s (%d): Mantis create RISC program\0A\00", [57 x i8] zeroinitializer }, align 32
@mantis_risc_program._entry_ptr.165 = internal global ptr @mantis_risc_program._entry.163, section ".printk_index", align 4
@mantis_risc_program._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.156, ptr @.str.2, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_risc_program._entry_ptr.167 = internal global ptr @mantis_risc_program._entry.166, section ".printk_index", align 4
@mantis_risc_program._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.156, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013%s (%d): risc len lines %u, bytes per line %u, bytes per DMA tr %u\0A\00", [58 x i8] zeroinitializer }, align 32
@mantis_risc_program._entry_ptr.170 = internal global ptr @mantis_risc_program._entry.168, section ".printk_index", align 4
@mantis_risc_program._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.156, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\015%s (%d): risc len lines %u, bytes per line %u, bytes per DMA tr %u\0A\00", [58 x i8] zeroinitializer }, align 32
@mantis_risc_program._entry_ptr.173 = internal global ptr @mantis_risc_program._entry.171, section ".printk_index", align 4
@mantis_risc_program._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.156, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016%s (%d): risc len lines %u, bytes per line %u, bytes per DMA tr %u\0A\00", [58 x i8] zeroinitializer }, align 32
@mantis_risc_program._entry_ptr.176 = internal global ptr @mantis_risc_program._entry.174, section ".printk_index", align 4
@mantis_risc_program._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.156, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\017%s (%d): risc len lines %u, bytes per line %u, bytes per DMA tr %u\0A\00", [58 x i8] zeroinitializer }, align 32
@mantis_risc_program._entry_ptr.179 = internal global ptr @mantis_risc_program._entry.177, section ".printk_index", align 4
@mantis_risc_program._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.156, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_risc_program._entry_ptr.181 = internal global ptr @mantis_risc_program._entry.180, section ".printk_index", align 4
@mantis_risc_program._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.156, ptr @.str.2, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s (%d): RISC PROG line=[%d], step=[%d]\0A\00", [53 x i8] zeroinitializer }, align 32
@mantis_risc_program._entry_ptr.184 = internal global ptr @mantis_risc_program._entry.182, section ".printk_index", align 4
@mantis_risc_program._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.156, ptr @.str.2, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015%s (%d): RISC PROG line=[%d], step=[%d]\0A\00", [53 x i8] zeroinitializer }, align 32
@mantis_risc_program._entry_ptr.187 = internal global ptr @mantis_risc_program._entry.185, section ".printk_index", align 4
@mantis_risc_program._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.156, ptr @.str.2, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s (%d): RISC PROG line=[%d], step=[%d]\0A\00", [53 x i8] zeroinitializer }, align 32
@mantis_risc_program._entry_ptr.190 = internal global ptr @mantis_risc_program._entry.188, section ".printk_index", align 4
@mantis_risc_program._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.156, ptr @.str.2, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s (%d): RISC PROG line=[%d], step=[%d]\0A\00", [53 x i8] zeroinitializer }, align 32
@mantis_risc_program._entry_ptr.193 = internal global ptr @mantis_risc_program._entry.191, section ".printk_index", align 4
@mantis_risc_program._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.156, ptr @.str.2, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_risc_program._entry_ptr.195 = internal global ptr @mantis_risc_program._entry.194, section ".printk_index", align 4
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 49, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 61, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 123, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 126, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 171, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 189, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 209, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 84, i32 4 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 89, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 100, i32 4 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 107, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 115, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 144, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 147, i32 2 }
@___asan_gen_.595 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.598 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.599 = private constant [41 x i8] c"../drivers/media/pci/mantis/mantis_dma.c\00", align 1
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 152, i32 4 }
@llvm.compiler.used = appending global [212 x ptr] [ptr @__ksymtab_mantis_dma_exit, ptr @__ksymtab_mantis_dma_init, ptr @mantis_alloc_buffers._entry, ptr @mantis_alloc_buffers._entry.102, ptr @mantis_alloc_buffers._entry.105, ptr @mantis_alloc_buffers._entry.107, ptr @mantis_alloc_buffers._entry.109, ptr @mantis_alloc_buffers._entry.111, ptr @mantis_alloc_buffers._entry.113, ptr @mantis_alloc_buffers._entry.115, ptr @mantis_alloc_buffers._entry.117, ptr @mantis_alloc_buffers._entry.120, ptr @mantis_alloc_buffers._entry.123, ptr @mantis_alloc_buffers._entry.126, ptr @mantis_alloc_buffers._entry.129, ptr @mantis_alloc_buffers._entry.131, ptr @mantis_alloc_buffers._entry.133, ptr @mantis_alloc_buffers._entry.135, ptr @mantis_alloc_buffers._entry.137, ptr @mantis_alloc_buffers._entry.139, ptr @mantis_alloc_buffers._entry.141, ptr @mantis_alloc_buffers._entry.144, ptr @mantis_alloc_buffers._entry.147, ptr @mantis_alloc_buffers._entry.150, ptr @mantis_alloc_buffers._entry.153, ptr @mantis_alloc_buffers._entry.96, ptr @mantis_alloc_buffers._entry.99, ptr @mantis_alloc_buffers._entry_ptr, ptr @mantis_alloc_buffers._entry_ptr.101, ptr @mantis_alloc_buffers._entry_ptr.104, ptr @mantis_alloc_buffers._entry_ptr.106, ptr @mantis_alloc_buffers._entry_ptr.108, ptr @mantis_alloc_buffers._entry_ptr.110, ptr @mantis_alloc_buffers._entry_ptr.112, ptr @mantis_alloc_buffers._entry_ptr.114, ptr @mantis_alloc_buffers._entry_ptr.116, ptr @mantis_alloc_buffers._entry_ptr.119, ptr @mantis_alloc_buffers._entry_ptr.122, ptr @mantis_alloc_buffers._entry_ptr.125, ptr @mantis_alloc_buffers._entry_ptr.128, ptr @mantis_alloc_buffers._entry_ptr.130, ptr @mantis_alloc_buffers._entry_ptr.132, ptr @mantis_alloc_buffers._entry_ptr.134, ptr @mantis_alloc_buffers._entry_ptr.136, ptr @mantis_alloc_buffers._entry_ptr.138, ptr @mantis_alloc_buffers._entry_ptr.140, ptr @mantis_alloc_buffers._entry_ptr.143, ptr @mantis_alloc_buffers._entry_ptr.146, ptr @mantis_alloc_buffers._entry_ptr.149, ptr @mantis_alloc_buffers._entry_ptr.152, ptr @mantis_alloc_buffers._entry_ptr.154, ptr @mantis_alloc_buffers._entry_ptr.98, ptr @mantis_dma_exit._entry, ptr @mantis_dma_exit._entry.12, ptr @mantis_dma_exit._entry.14, ptr @mantis_dma_exit._entry.17, ptr @mantis_dma_exit._entry.20, ptr @mantis_dma_exit._entry.23, ptr @mantis_dma_exit._entry.26, ptr @mantis_dma_exit._entry.3, ptr @mantis_dma_exit._entry.6, ptr @mantis_dma_exit._entry.9, ptr @mantis_dma_exit._entry_ptr, ptr @mantis_dma_exit._entry_ptr.11, ptr @mantis_dma_exit._entry_ptr.13, ptr @mantis_dma_exit._entry_ptr.16, ptr @mantis_dma_exit._entry_ptr.19, ptr @mantis_dma_exit._entry_ptr.22, ptr @mantis_dma_exit._entry_ptr.25, ptr @mantis_dma_exit._entry_ptr.27, ptr @mantis_dma_exit._entry_ptr.5, ptr @mantis_dma_exit._entry_ptr.8, ptr @mantis_dma_init._entry, ptr @mantis_dma_init._entry.30, ptr @mantis_dma_init._entry.33, ptr @mantis_dma_init._entry.36, ptr @mantis_dma_init._entry.39, ptr @mantis_dma_init._entry.41, ptr @mantis_dma_init._entry.44, ptr @mantis_dma_init._entry.47, ptr @mantis_dma_init._entry.50, ptr @mantis_dma_init._entry.53, ptr @mantis_dma_init._entry_ptr, ptr @mantis_dma_init._entry_ptr.32, ptr @mantis_dma_init._entry_ptr.35, ptr @mantis_dma_init._entry_ptr.38, ptr @mantis_dma_init._entry_ptr.40, ptr @mantis_dma_init._entry_ptr.43, ptr @mantis_dma_init._entry_ptr.46, ptr @mantis_dma_init._entry_ptr.49, ptr @mantis_dma_init._entry_ptr.52, ptr @mantis_dma_init._entry_ptr.54, ptr @mantis_dma_start._entry, ptr @mantis_dma_start._entry.57, ptr @mantis_dma_start._entry.60, ptr @mantis_dma_start._entry.63, ptr @mantis_dma_start._entry.66, ptr @mantis_dma_start._entry_ptr, ptr @mantis_dma_start._entry_ptr.59, ptr @mantis_dma_start._entry_ptr.62, ptr @mantis_dma_start._entry_ptr.65, ptr @mantis_dma_start._entry_ptr.67, ptr @mantis_dma_stop._entry, ptr @mantis_dma_stop._entry.70, ptr @mantis_dma_stop._entry.73, ptr @mantis_dma_stop._entry.76, ptr @mantis_dma_stop._entry.79, ptr @mantis_dma_stop._entry_ptr, ptr @mantis_dma_stop._entry_ptr.72, ptr @mantis_dma_stop._entry_ptr.75, ptr @mantis_dma_stop._entry_ptr.78, ptr @mantis_dma_stop._entry_ptr.80, ptr @mantis_dma_xfer._entry, ptr @mantis_dma_xfer._entry.83, ptr @mantis_dma_xfer._entry.86, ptr @mantis_dma_xfer._entry.89, ptr @mantis_dma_xfer._entry.92, ptr @mantis_dma_xfer._entry_ptr, ptr @mantis_dma_xfer._entry_ptr.85, ptr @mantis_dma_xfer._entry_ptr.88, ptr @mantis_dma_xfer._entry_ptr.91, ptr @mantis_dma_xfer._entry_ptr.93, ptr @mantis_risc_program._entry, ptr @mantis_risc_program._entry.157, ptr @mantis_risc_program._entry.160, ptr @mantis_risc_program._entry.163, ptr @mantis_risc_program._entry.166, ptr @mantis_risc_program._entry.168, ptr @mantis_risc_program._entry.171, ptr @mantis_risc_program._entry.174, ptr @mantis_risc_program._entry.177, ptr @mantis_risc_program._entry.180, ptr @mantis_risc_program._entry.182, ptr @mantis_risc_program._entry.185, ptr @mantis_risc_program._entry.188, ptr @mantis_risc_program._entry.191, ptr @mantis_risc_program._entry.194, ptr @mantis_risc_program._entry_ptr, ptr @mantis_risc_program._entry_ptr.159, ptr @mantis_risc_program._entry_ptr.162, ptr @mantis_risc_program._entry_ptr.165, ptr @mantis_risc_program._entry_ptr.167, ptr @mantis_risc_program._entry_ptr.170, ptr @mantis_risc_program._entry_ptr.173, ptr @mantis_risc_program._entry_ptr.176, ptr @mantis_risc_program._entry_ptr.179, ptr @mantis_risc_program._entry_ptr.181, ptr @mantis_risc_program._entry_ptr.184, ptr @mantis_risc_program._entry_ptr.187, ptr @mantis_risc_program._entry_ptr.190, ptr @mantis_risc_program._entry_ptr.193, ptr @mantis_risc_program._entry_ptr.195, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @.str.142, ptr @.str.145, ptr @.str.148, ptr @.str.151, ptr @.str.155, ptr @.str.156, ptr @.str.158, ptr @.str.161, ptr @.str.164, ptr @.str.169, ptr @.str.172, ptr @.str.175, ptr @.str.178, ptr @.str.183, ptr @.str.186, ptr @.str.189, ptr @.str.192], section "llvm.metadata"
@0 = internal global [135 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dma_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dma_exit._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dma_exit._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dma_exit._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dma_exit._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dma_exit._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dma_exit._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dma_exit._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dma_exit._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dma_exit._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dma_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dma_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dma_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dma_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dma_init._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dma_init._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dma_init._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dma_init._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dma_init._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dma_init._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dma_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dma_start._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dma_start._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dma_start._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dma_start._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dma_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dma_stop._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dma_stop._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dma_stop._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dma_stop._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dma_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dma_xfer._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dma_xfer._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dma_xfer._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_dma_xfer._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_alloc_buffers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_alloc_buffers._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_alloc_buffers._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_alloc_buffers._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_alloc_buffers._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_alloc_buffers._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_alloc_buffers._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_alloc_buffers._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_alloc_buffers._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_alloc_buffers._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_alloc_buffers._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_alloc_buffers._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_alloc_buffers._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_alloc_buffers._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_alloc_buffers._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_alloc_buffers._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_alloc_buffers._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_alloc_buffers._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_alloc_buffers._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_alloc_buffers._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_alloc_buffers._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_alloc_buffers._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_alloc_buffers._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_alloc_buffers._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_alloc_buffers._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_risc_program._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_risc_program._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_risc_program._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_risc_program._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_risc_program._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_risc_program._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_risc_program._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_risc_program._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_risc_program._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_risc_program._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_risc_program._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_risc_program._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_risc_program._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_risc_program._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_risc_program._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mantis_dma_exit(ptr noundef %mantis) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %buf_cpu = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 14
  %0 = ptrtoint ptr %buf_cpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf_cpu, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end69_crit_edge, label %do.body

entry.if.end69_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end69

do.body:                                          ; preds = %entry
  %2 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %do.body.do.end65_crit_edge, label %do.end

do.body.do.end65_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end65

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %num = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %4 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num, align 8
  %buf_dma = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 15
  %6 = ptrtoint ptr %buf_dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf_dma, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %5, i32 noundef %7, ptr noundef nonnull %1, i32 noundef 65536) #7
  br label %do.end65

do.end65:                                         ; preds = %do.end, %do.body.do.end65_crit_edge
  %pdev = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 6
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %10 = ptrtoint ptr %buf_cpu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buf_cpu, align 4
  %buf_dma67 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 15
  %12 = ptrtoint ptr %buf_dma67 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buf_dma67, align 8
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 65536, ptr noundef %11, i32 noundef %13, i32 noundef 0) #4
  %14 = ptrtoint ptr %buf_cpu to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %buf_cpu, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end65, %entry.if.end69_crit_edge
  %risc_cpu = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 16
  %15 = ptrtoint ptr %risc_cpu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %risc_cpu, align 4
  %tobool70.not = icmp eq ptr %16, null
  br i1 %tobool70.not, label %if.end69.if.end152_crit_edge, label %do.body72

if.end69.if.end152_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end152

do.body72:                                        ; preds = %if.end69
  %17 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp74.not = icmp eq i32 %18, 0
  br i1 %cmp74.not, label %do.body72.do.end146_crit_edge, label %do.end80

do.body72.do.end146_crit_edge:                    ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end146

do.end80:                                         ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #6
  %num82 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %19 = ptrtoint ptr %num82 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num82, align 8
  %risc_dma = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 17
  %21 = ptrtoint ptr %risc_dma to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %risc_dma, align 8
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef %20, i32 noundef %22, ptr noundef nonnull %16, i32 noundef 4096) #7
  br label %do.end146

do.end146:                                        ; preds = %do.end80, %do.body72.do.end146_crit_edge
  %pdev147 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 6
  %23 = ptrtoint ptr %pdev147 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev147, align 8
  %dev148 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %25 = ptrtoint ptr %risc_cpu to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %risc_cpu, align 4
  %risc_dma150 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 17
  %27 = ptrtoint ptr %risc_dma150 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %risc_dma150, align 8
  tail call void @dma_free_attrs(ptr noundef %dev148, i32 noundef 4096, ptr noundef %26, i32 noundef %28, i32 noundef 0) #4
  %29 = ptrtoint ptr %risc_cpu to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %risc_cpu, align 4
  br label %if.end152

if.end152:                                        ; preds = %do.end146, %if.end69.if.end152_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mantis_dma_init(ptr noundef %mantis) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %switch = icmp ult i32 %1, 4
  br i1 %switch, label %entry.do.end60_crit_edge, label %do.end

entry.do.end60_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end60

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %num = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef %3) #7
  br label %do.end60

do.end60:                                         ; preds = %do.end, %entry.do.end60_crit_edge
  %buf_cpu.i = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 14
  %4 = ptrtoint ptr %buf_cpu.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buf_cpu.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.i, label %do.end60.if.end139.i_crit_edge

do.end60.if.end139.i_crit_edge:                   ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end139.i

if.then.i:                                        ; preds = %do.end60
  %pdev.i = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 6
  %6 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %buf_dma.i = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 15
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 65536, ptr noundef %buf_dma.i, i32 noundef 3264, i32 noundef 0) #4
  %8 = ptrtoint ptr %buf_cpu.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i, ptr %buf_cpu.i, align 4
  %tobool3.not.i = icmp eq ptr %call.i.i, null
  %9 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not.i = icmp eq i32 %10, 0
  br i1 %tobool3.not.i, label %do.body.i, label %do.body63.i

do.body.i:                                        ; preds = %if.then.i
  br i1 %cmp.not.i, label %do.body.i.do.body136_crit_edge, label %do.end.i

do.body.i.do.body136_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body136

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %num.i = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %11 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num.i, align 8
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95, i32 noundef %12) #7
  br label %do.body294.i

do.body63.i:                                      ; preds = %if.then.i
  br i1 %cmp.not.i, label %do.body63.i.if.end139.i_crit_edge, label %do.end71.i

do.body63.i.if.end139.i_crit_edge:                ; preds = %do.body63.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end139.i

do.end71.i:                                       ; preds = %do.body63.i
  call void @__sanitizer_cov_trace_pc() #6
  %num73.i = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %13 = ptrtoint ptr %num73.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num73.i, align 8
  %15 = ptrtoint ptr %buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %buf_dma.i, align 8
  %call76.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.95, i32 noundef %14, i32 noundef %16, ptr noundef nonnull %call.i.i, i32 noundef 65536) #7
  br label %if.end139.i

if.end139.i:                                      ; preds = %do.end71.i, %do.body63.i.if.end139.i_crit_edge, %do.end60.if.end139.i_crit_edge
  %risc_cpu.i = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 16
  %17 = ptrtoint ptr %risc_cpu.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %risc_cpu.i, align 4
  %tobool140.not.i = icmp eq ptr %18, null
  br i1 %tobool140.not.i, label %if.then141.i, label %if.end139.i.cleanup_crit_edge

if.end139.i.cleanup_crit_edge:                    ; preds = %if.end139.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then141.i:                                     ; preds = %if.end139.i
  %pdev142.i = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 6
  %19 = ptrtoint ptr %pdev142.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev142.i, align 8
  %dev143.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %risc_dma.i = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 17
  %call.i465.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev143.i, i32 noundef 4096, ptr noundef %risc_dma.i, i32 noundef 3264, i32 noundef 0) #4
  %21 = ptrtoint ptr %risc_cpu.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i465.i, ptr %risc_cpu.i, align 4
  %tobool147.not.i = icmp eq ptr %call.i465.i, null
  %22 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp151.not.i = icmp eq i32 %23, 0
  br i1 %tobool147.not.i, label %do.body149.i, label %do.body217.i

do.body149.i:                                     ; preds = %if.then141.i
  br i1 %cmp151.not.i, label %do.body149.i.do.end214.i_crit_edge, label %do.end157.i

do.body149.i.do.end214.i_crit_edge:               ; preds = %do.body149.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end214.i

do.end157.i:                                      ; preds = %do.body149.i
  call void @__sanitizer_cov_trace_pc() #6
  %num159.i = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %24 = ptrtoint ptr %num159.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num159.i, align 8
  %call160.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.95, i32 noundef %25) #7
  br label %do.end214.i

do.end214.i:                                      ; preds = %do.end157.i, %do.body149.i.do.end214.i_crit_edge
  %call215.i = tail call i32 @mantis_dma_exit(ptr noundef %mantis) #4
  br label %do.body294.i

do.body217.i:                                     ; preds = %if.then141.i
  br i1 %cmp151.not.i, label %do.body217.i.cleanup_crit_edge, label %do.end225.i

do.body217.i.cleanup_crit_edge:                   ; preds = %do.body217.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end225.i:                                      ; preds = %do.body217.i
  call void @__sanitizer_cov_trace_pc() #6
  %num227.i = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %26 = ptrtoint ptr %num227.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num227.i, align 8
  %28 = ptrtoint ptr %risc_dma.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %risc_dma.i, align 8
  %call230.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.95, i32 noundef %27, i32 noundef %29, ptr noundef nonnull %call.i465.i, i32 noundef 4096) #7
  br label %cleanup

do.body294.i:                                     ; preds = %do.end214.i, %do.end.i
  %30 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr.i = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp296.not.i = icmp eq i32 %.pr.i, 0
  br i1 %cmp296.not.i, label %do.body294.i.do.body136_crit_edge, label %do.body64

do.body294.i.do.body136_crit_edge:                ; preds = %do.body294.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body136

do.body64:                                        ; preds = %do.body294.i
  %num304.i = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %31 = ptrtoint ptr %num304.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num304.i, align 8
  %call305.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.95, i32 noundef %32) #7
  %33 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pr = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp66.not = icmp eq i32 %.pr, 0
  br i1 %cmp66.not, label %do.body64.do.body136_crit_edge, label %do.end73

do.body64.do.body136_crit_edge:                   ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body136

do.end73:                                         ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %num304.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num304.i, align 8
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.29, i32 noundef %35) #7
  br label %do.body136

do.body136:                                       ; preds = %do.end73, %do.body64.do.body136_crit_edge, %do.body294.i.do.body136_crit_edge, %do.body.i.do.body136_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !238
  tail call void @arm_heavy_mb() #4
  %mmio = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 8
  %36 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio, align 8
  %add.ptr = getelementptr i8, ptr %37, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #4, !srcloc !239
  br label %cleanup

cleanup:                                          ; preds = %do.body136, %do.end225.i, %do.body217.i.cleanup_crit_edge, %if.end139.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.body136 ], [ 0, %if.end139.i.cleanup_crit_edge ], [ 0, %do.body217.i.cleanup_crit_edge ], [ 0, %do.end225.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mantis_dma_start(ptr noundef %mantis) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %switch = icmp ult i32 %1, 4
  br i1 %switch, label %entry.do.end132.i_crit_edge, label %do.end55

entry.do.end132.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end132.i

do.end55:                                         ; preds = %entry
  %num = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i32 noundef %3) #7
  %4 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pr = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr)
  %switch.i = icmp ult i32 %.pr, 4
  br i1 %switch.i, label %do.end55.do.end132.i_crit_edge, label %do.end60.i

do.end55.do.end132.i_crit_edge:                   ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end132.i

do.end60.i:                                       ; preds = %do.end55
  %5 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.156, i32 noundef %6) #7
  %7 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr.i = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr.i)
  %switch326.i = icmp ult i32 %.pr.i, 4
  br i1 %switch326.i, label %do.end60.i.do.end132.i_crit_edge, label %do.end70.i

do.end60.i.do.end132.i_crit_edge:                 ; preds = %do.end60.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end132.i

do.end70.i:                                       ; preds = %do.end60.i
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num, align 8
  %call73.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.156, i32 noundef %9, i32 noundef 4, i32 noundef 16384, i32 noundef 2048) #7
  br label %do.end132.i

do.end132.i:                                      ; preds = %do.end70.i, %do.end60.i.do.end132.i_crit_edge, %do.end55.do.end132.i_crit_edge, %entry.do.end132.i_crit_edge
  %num148.i = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %risc_cpu216.i = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 16
  %buf_dma.i = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 15
  br label %for.cond134.preheader.i

for.cond134.preheader.i:                          ; preds = %if.end219.i.6.for.cond134.preheader.i_crit_edge, %do.end132.i
  %buf_pos.0339.i = phi i32 [ 0, %do.end132.i ], [ %add223.i.6, %if.end219.i.6.for.cond134.preheader.i_crit_edge ]
  %line.0338.i = phi i32 [ 0, %do.end132.i ], [ %inc226.i, %if.end219.i.6.for.cond134.preheader.i_crit_edge ]
  %risc_pos.0337.i = phi i32 [ 0, %do.end132.i ], [ %inc221.i.6, %if.end219.i.6.for.cond134.preheader.i_crit_edge ]
  %neg.i = shl i32 %line.0338.i, 20
  %and211.i = shl i32 %line.0338.i, 16
  %10 = or i32 %neg.i, %and211.i
  %or214.i = xor i32 %10, 300943360
  %11 = tail call i32 @llvm.bswap.i32(i32 %or214.i) #4
  %12 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %switch329.peel.i = icmp ult i32 %13, 4
  br i1 %switch329.peel.i, label %for.cond134.preheader.i.do.body137.peel.next.i_crit_edge, label %do.end146.peel.i

for.cond134.preheader.i.do.body137.peel.next.i_crit_edge: ; preds = %for.cond134.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body137.peel.next.i

do.end146.peel.i:                                 ; preds = %for.cond134.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %num148.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num148.i, align 8
  %call149.peel.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.156, i32 noundef %15, i32 noundef %line.0338.i, i32 noundef 0) #7
  br label %do.body137.peel.next.i

do.body137.peel.next.i:                           ; preds = %do.end146.peel.i, %for.cond134.preheader.i.do.body137.peel.next.i_crit_edge
  %16 = ptrtoint ptr %risc_cpu216.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %risc_cpu216.i, align 4
  %arrayidx.peel.i = getelementptr i32, ptr %17, i32 %risc_pos.0337.i
  %18 = ptrtoint ptr %arrayidx.peel.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %11, ptr %arrayidx.peel.i, align 4
  %risc_pos.2.peel.i = or i32 %risc_pos.0337.i, 1
  %19 = ptrtoint ptr %buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf_dma.i, align 8
  %add.peel.i = add i32 %20, %buf_pos.0339.i
  %21 = tail call i32 @llvm.bswap.i32(i32 %add.peel.i) #4
  %22 = ptrtoint ptr %risc_cpu216.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %risc_cpu216.i, align 4
  %arrayidx222.peel.i = getelementptr i32, ptr %23, i32 %risc_pos.2.peel.i
  %24 = ptrtoint ptr %arrayidx222.peel.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %21, ptr %arrayidx222.peel.i, align 4
  %add223.peel.i = or i32 %buf_pos.0339.i, 2048
  %inc221.peel.i = or i32 %risc_pos.0337.i, 2
  %25 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %26)
  %switch329.i = icmp ult i32 %26, 4
  br i1 %switch329.i, label %do.body137.peel.next.i.if.end219.i_crit_edge, label %do.end146.i

do.body137.peel.next.i.if.end219.i_crit_edge:     ; preds = %do.body137.peel.next.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end219.i

do.end146.i:                                      ; preds = %do.body137.peel.next.i
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %num148.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num148.i, align 8
  %call149.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.156, i32 noundef %28, i32 noundef %line.0338.i, i32 noundef 1) #7
  br label %if.end219.i

if.end219.i:                                      ; preds = %do.end146.i, %do.body137.peel.next.i.if.end219.i_crit_edge
  %29 = ptrtoint ptr %risc_cpu216.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %risc_cpu216.i, align 4
  %arrayidx218.i = getelementptr i32, ptr %30, i32 %inc221.peel.i
  %31 = ptrtoint ptr %arrayidx218.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 524304, ptr %arrayidx218.i, align 4
  %risc_pos.2.i = or i32 %risc_pos.0337.i, 3
  %32 = ptrtoint ptr %buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_dma.i, align 8
  %add.i = add i32 %33, %add223.peel.i
  %34 = tail call i32 @llvm.bswap.i32(i32 %add.i) #4
  %35 = ptrtoint ptr %risc_cpu216.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %risc_cpu216.i, align 4
  %inc221.i = or i32 %risc_pos.0337.i, 4
  %arrayidx222.i = getelementptr i32, ptr %36, i32 %risc_pos.2.i
  %37 = ptrtoint ptr %arrayidx222.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %34, ptr %arrayidx222.i, align 4
  %add223.i = or i32 %buf_pos.0339.i, 4096
  %38 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %39)
  %switch329.i.1 = icmp ult i32 %39, 4
  br i1 %switch329.i.1, label %if.end219.i.if.end219.i.1_crit_edge, label %do.end146.i.1

if.end219.i.if.end219.i.1_crit_edge:              ; preds = %if.end219.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end219.i.1

do.end146.i.1:                                    ; preds = %if.end219.i
  call void @__sanitizer_cov_trace_pc() #6
  %40 = ptrtoint ptr %num148.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num148.i, align 8
  %call149.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.156, i32 noundef %41, i32 noundef %line.0338.i, i32 noundef 2) #7
  br label %if.end219.i.1

if.end219.i.1:                                    ; preds = %do.end146.i.1, %if.end219.i.if.end219.i.1_crit_edge
  %42 = ptrtoint ptr %risc_cpu216.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %risc_cpu216.i, align 4
  %arrayidx218.i.1 = getelementptr i32, ptr %43, i32 %inc221.i
  %44 = ptrtoint ptr %arrayidx218.i.1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 524304, ptr %arrayidx218.i.1, align 4
  %risc_pos.2.i.1 = or i32 %risc_pos.0337.i, 5
  %45 = ptrtoint ptr %buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %buf_dma.i, align 8
  %add.i.1 = add i32 %46, %add223.i
  %47 = tail call i32 @llvm.bswap.i32(i32 %add.i.1) #4
  %48 = ptrtoint ptr %risc_cpu216.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %risc_cpu216.i, align 4
  %inc221.i.1 = or i32 %risc_pos.0337.i, 6
  %arrayidx222.i.1 = getelementptr i32, ptr %49, i32 %risc_pos.2.i.1
  %50 = ptrtoint ptr %arrayidx222.i.1 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %47, ptr %arrayidx222.i.1, align 4
  %add223.i.1 = or i32 %buf_pos.0339.i, 6144
  %51 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %52)
  %switch329.i.2 = icmp ult i32 %52, 4
  br i1 %switch329.i.2, label %if.end219.i.1.if.end219.i.2_crit_edge, label %do.end146.i.2

if.end219.i.1.if.end219.i.2_crit_edge:            ; preds = %if.end219.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end219.i.2

do.end146.i.2:                                    ; preds = %if.end219.i.1
  call void @__sanitizer_cov_trace_pc() #6
  %53 = ptrtoint ptr %num148.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num148.i, align 8
  %call149.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.156, i32 noundef %54, i32 noundef %line.0338.i, i32 noundef 3) #7
  br label %if.end219.i.2

if.end219.i.2:                                    ; preds = %do.end146.i.2, %if.end219.i.1.if.end219.i.2_crit_edge
  %55 = ptrtoint ptr %risc_cpu216.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %risc_cpu216.i, align 4
  %arrayidx218.i.2 = getelementptr i32, ptr %56, i32 %inc221.i.1
  %57 = ptrtoint ptr %arrayidx218.i.2 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 524304, ptr %arrayidx218.i.2, align 4
  %risc_pos.2.i.2 = or i32 %risc_pos.0337.i, 7
  %58 = ptrtoint ptr %buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %buf_dma.i, align 8
  %add.i.2 = add i32 %59, %add223.i.1
  %60 = tail call i32 @llvm.bswap.i32(i32 %add.i.2) #4
  %61 = ptrtoint ptr %risc_cpu216.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %risc_cpu216.i, align 4
  %inc221.i.2 = or i32 %risc_pos.0337.i, 8
  %arrayidx222.i.2 = getelementptr i32, ptr %62, i32 %risc_pos.2.i.2
  %63 = ptrtoint ptr %arrayidx222.i.2 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %60, ptr %arrayidx222.i.2, align 4
  %add223.i.2 = or i32 %buf_pos.0339.i, 8192
  %64 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %65)
  %switch329.i.3 = icmp ult i32 %65, 4
  br i1 %switch329.i.3, label %if.end219.i.2.if.end219.i.3_crit_edge, label %do.end146.i.3

if.end219.i.2.if.end219.i.3_crit_edge:            ; preds = %if.end219.i.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end219.i.3

do.end146.i.3:                                    ; preds = %if.end219.i.2
  call void @__sanitizer_cov_trace_pc() #6
  %66 = ptrtoint ptr %num148.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num148.i, align 8
  %call149.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.156, i32 noundef %67, i32 noundef %line.0338.i, i32 noundef 4) #7
  br label %if.end219.i.3

if.end219.i.3:                                    ; preds = %do.end146.i.3, %if.end219.i.2.if.end219.i.3_crit_edge
  %68 = ptrtoint ptr %risc_cpu216.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %risc_cpu216.i, align 4
  %arrayidx218.i.3 = getelementptr i32, ptr %69, i32 %inc221.i.2
  %70 = ptrtoint ptr %arrayidx218.i.3 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 524304, ptr %arrayidx218.i.3, align 4
  %risc_pos.2.i.3 = or i32 %risc_pos.0337.i, 9
  %71 = ptrtoint ptr %buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %buf_dma.i, align 8
  %add.i.3 = add i32 %72, %add223.i.2
  %73 = tail call i32 @llvm.bswap.i32(i32 %add.i.3) #4
  %74 = ptrtoint ptr %risc_cpu216.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %risc_cpu216.i, align 4
  %inc221.i.3 = or i32 %risc_pos.0337.i, 10
  %arrayidx222.i.3 = getelementptr i32, ptr %75, i32 %risc_pos.2.i.3
  %76 = ptrtoint ptr %arrayidx222.i.3 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %73, ptr %arrayidx222.i.3, align 4
  %add223.i.3 = or i32 %buf_pos.0339.i, 10240
  %77 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %78)
  %switch329.i.4 = icmp ult i32 %78, 4
  br i1 %switch329.i.4, label %if.end219.i.3.if.end219.i.4_crit_edge, label %do.end146.i.4

if.end219.i.3.if.end219.i.4_crit_edge:            ; preds = %if.end219.i.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end219.i.4

do.end146.i.4:                                    ; preds = %if.end219.i.3
  call void @__sanitizer_cov_trace_pc() #6
  %79 = ptrtoint ptr %num148.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %num148.i, align 8
  %call149.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.156, i32 noundef %80, i32 noundef %line.0338.i, i32 noundef 5) #7
  br label %if.end219.i.4

if.end219.i.4:                                    ; preds = %do.end146.i.4, %if.end219.i.3.if.end219.i.4_crit_edge
  %81 = ptrtoint ptr %risc_cpu216.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %risc_cpu216.i, align 4
  %arrayidx218.i.4 = getelementptr i32, ptr %82, i32 %inc221.i.3
  %83 = ptrtoint ptr %arrayidx218.i.4 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 524304, ptr %arrayidx218.i.4, align 4
  %risc_pos.2.i.4 = or i32 %risc_pos.0337.i, 11
  %84 = ptrtoint ptr %buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %buf_dma.i, align 8
  %add.i.4 = add i32 %85, %add223.i.3
  %86 = tail call i32 @llvm.bswap.i32(i32 %add.i.4) #4
  %87 = ptrtoint ptr %risc_cpu216.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %risc_cpu216.i, align 4
  %inc221.i.4 = or i32 %risc_pos.0337.i, 12
  %arrayidx222.i.4 = getelementptr i32, ptr %88, i32 %risc_pos.2.i.4
  %89 = ptrtoint ptr %arrayidx222.i.4 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %86, ptr %arrayidx222.i.4, align 4
  %add223.i.4 = or i32 %buf_pos.0339.i, 12288
  %90 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %91)
  %switch329.i.5 = icmp ult i32 %91, 4
  br i1 %switch329.i.5, label %if.end219.i.4.if.end219.i.5_crit_edge, label %do.end146.i.5

if.end219.i.4.if.end219.i.5_crit_edge:            ; preds = %if.end219.i.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end219.i.5

do.end146.i.5:                                    ; preds = %if.end219.i.4
  call void @__sanitizer_cov_trace_pc() #6
  %92 = ptrtoint ptr %num148.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %num148.i, align 8
  %call149.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.156, i32 noundef %93, i32 noundef %line.0338.i, i32 noundef 6) #7
  br label %if.end219.i.5

if.end219.i.5:                                    ; preds = %do.end146.i.5, %if.end219.i.4.if.end219.i.5_crit_edge
  %94 = ptrtoint ptr %risc_cpu216.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %risc_cpu216.i, align 4
  %arrayidx218.i.5 = getelementptr i32, ptr %95, i32 %inc221.i.4
  %96 = ptrtoint ptr %arrayidx218.i.5 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 524304, ptr %arrayidx218.i.5, align 4
  %risc_pos.2.i.5 = or i32 %risc_pos.0337.i, 13
  %97 = ptrtoint ptr %buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %buf_dma.i, align 8
  %add.i.5 = add i32 %98, %add223.i.4
  %99 = tail call i32 @llvm.bswap.i32(i32 %add.i.5) #4
  %100 = ptrtoint ptr %risc_cpu216.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %risc_cpu216.i, align 4
  %inc221.i.5 = or i32 %risc_pos.0337.i, 14
  %arrayidx222.i.5 = getelementptr i32, ptr %101, i32 %risc_pos.2.i.5
  %102 = ptrtoint ptr %arrayidx222.i.5 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %99, ptr %arrayidx222.i.5, align 4
  %add223.i.5 = or i32 %buf_pos.0339.i, 14336
  %103 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %104)
  %switch329.i.6 = icmp ult i32 %104, 4
  br i1 %switch329.i.6, label %if.end219.i.5.if.end219.i.6_crit_edge, label %do.end146.i.6

if.end219.i.5.if.end219.i.6_crit_edge:            ; preds = %if.end219.i.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end219.i.6

do.end146.i.6:                                    ; preds = %if.end219.i.5
  call void @__sanitizer_cov_trace_pc() #6
  %105 = ptrtoint ptr %num148.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %num148.i, align 8
  %call149.i.6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.156, i32 noundef %106, i32 noundef %line.0338.i, i32 noundef 7) #7
  br label %if.end219.i.6

if.end219.i.6:                                    ; preds = %do.end146.i.6, %if.end219.i.5.if.end219.i.6_crit_edge
  %107 = ptrtoint ptr %risc_cpu216.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %risc_cpu216.i, align 4
  %arrayidx218.i.6 = getelementptr i32, ptr %108, i32 %inc221.i.5
  %109 = ptrtoint ptr %arrayidx218.i.6 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 524304, ptr %arrayidx218.i.6, align 4
  %risc_pos.2.i.6 = or i32 %risc_pos.0337.i, 15
  %110 = ptrtoint ptr %buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %buf_dma.i, align 8
  %add.i.6 = add i32 %111, %add223.i.5
  %112 = tail call i32 @llvm.bswap.i32(i32 %add.i.6) #4
  %113 = ptrtoint ptr %risc_cpu216.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %risc_cpu216.i, align 4
  %inc221.i.6 = add nuw nsw i32 %risc_pos.0337.i, 16
  %arrayidx222.i.6 = getelementptr i32, ptr %114, i32 %risc_pos.2.i.6
  %115 = ptrtoint ptr %arrayidx222.i.6 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %112, ptr %arrayidx222.i.6, align 4
  %add223.i.6 = add nuw nsw i32 %buf_pos.0339.i, 16384
  %inc226.i = add nuw nsw i32 %line.0338.i, 1
  %exitcond341.not.i = icmp eq i32 %inc226.i, 4
  br i1 %exitcond341.not.i, label %mantis_risc_program.exit, label %if.end219.i.6.for.cond134.preheader.i_crit_edge

if.end219.i.6.for.cond134.preheader.i_crit_edge:  ; preds = %if.end219.i.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond134.preheader.i

mantis_risc_program.exit:                         ; preds = %if.end219.i.6
  call void @__sanitizer_cov_trace_pc() #6
  %116 = ptrtoint ptr %risc_cpu216.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %risc_cpu216.i, align 4
  %arrayidx230.i = getelementptr i32, ptr %117, i32 64
  %118 = ptrtoint ptr %arrayidx230.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 112, ptr %arrayidx230.i, align 4
  %risc_dma.i = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 17
  %119 = ptrtoint ptr %risc_dma.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %risc_dma.i, align 8
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #4
  %122 = ptrtoint ptr %risc_cpu216.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %risc_cpu216.i, align 4
  %arrayidx233.i = getelementptr i32, ptr %123, i32 65
  %124 = ptrtoint ptr %arrayidx233.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %121, ptr %arrayidx233.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !240
  tail call void @arm_heavy_mb() #4
  %125 = ptrtoint ptr %risc_dma.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %risc_dma.i, align 8
  %127 = tail call i32 @llvm.bswap.i32(i32 %126)
  %mmio = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 8
  %128 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %mmio, align 8
  %add.ptr = getelementptr i8, ptr %129, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %127) #4, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !241
  tail call void @arm_heavy_mb() #4
  %130 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %mmio, align 8
  %add.ptr61 = getelementptr i8, ptr %131, i32 176
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61) #4, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !243
  %133 = or i32 %132, 128
  %134 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %mmio, align 8
  %add.ptr66 = getelementptr i8, ptr %135, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 %133) #4, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !244
  tail call void @arm_heavy_mb() #4
  %136 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %mmio, align 8
  %add.ptr70 = getelementptr i8, ptr %137, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 0) #4, !srcloc !239
  %busy_block = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 12
  %138 = ptrtoint ptr %busy_block to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 0, ptr %busy_block, align 4
  %last_block = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 13
  %139 = ptrtoint ptr %last_block to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 0, ptr %last_block, align 8
  %intmask_lock.i = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 19
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %intmask_lock.i) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !245
  tail call void @arm_heavy_mb() #4
  %140 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %mmio, align 8
  %add.ptr.i = getelementptr i8, ptr %141, i32 4
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !246
  %143 = or i32 %142, 33554432
  %144 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %mmio, align 8
  %add.ptr12.i = getelementptr i8, ptr %145, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %143) #4, !srcloc !239
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %intmask_lock.i, i32 noundef %call2.i) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !247
  tail call void @arm_heavy_mb() #4
  %146 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %mmio, align 8
  %add.ptr74 = getelementptr i8, ptr %147, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 117440512) #4, !srcloc !239
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mantis_dma_stop(ptr noundef %mantis) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %switch = icmp ult i32 %1, 4
  br i1 %switch, label %entry.do.body56_crit_edge, label %do.end

entry.do.body56_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body56

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %num = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69, i32 noundef %3) #7
  br label %do.body56

do.body56:                                        ; preds = %do.end, %entry.do.body56_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !248
  tail call void @arm_heavy_mb() #4
  %mmio = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 8
  %4 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 176
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !249
  %7 = and i32 %6, -129
  %8 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio, align 8
  %add.ptr62 = getelementptr i8, ptr %9, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 %7) #4, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !250
  tail call void @arm_heavy_mb() #4
  %10 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio, align 8
  %add.ptr68 = getelementptr i8, ptr %11, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68) #4, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !251
  %13 = and i32 %12, -117440513
  %14 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio, align 8
  %add.ptr74 = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 %13) #4, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !252
  tail call void @arm_heavy_mb() #4
  %16 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio, align 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #4, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !253
  %19 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #4, !srcloc !239
  %intmask_lock.i = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 19
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %intmask_lock.i) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !254
  tail call void @arm_heavy_mb() #4
  %21 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio, align 8
  %add.ptr.i = getelementptr i8, ptr %22, i32 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !255
  %24 = and i32 %23, -33554441
  %25 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio, align 8
  %add.ptr12.i = getelementptr i8, ptr %26, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %24) #4, !srcloc !239
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %intmask_lock.i, i32 noundef %call2.i) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mantis_dma_xfer(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -60
  %last_block = getelementptr i8, ptr %t, i32 -20
  %busy_block = getelementptr i8, ptr %t, i32 -24
  %0 = ptrtoint ptr %last_block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %last_block, align 8
  %2 = ptrtoint ptr %busy_block to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %busy_block, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not117 = icmp eq i32 %1, %3
  br i1 %cmp.not117, label %entry.while.end_crit_edge, label %do.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

do.body.lr.ph:                                    ; preds = %entry
  %hwconfig = getelementptr i8, ptr %t, i32 3664
  %4 = ptrtoint ptr %hwconfig to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwconfig, align 4
  %num = getelementptr i8, ptr %t, i32 -28
  %ts_size = getelementptr inbounds %struct.mantis_hwconfig, ptr %5, i32 0, i32 2
  %demux = getelementptr i8, ptr %t, i32 1828
  %buf_cpu = getelementptr i8, ptr %t, i32 -16
  br label %do.body

do.body:                                          ; preds = %do.end72.do.body_crit_edge, %do.body.lr.ph
  %6 = phi i32 [ %3, %do.body.lr.ph ], [ %21, %do.end72.do.body_crit_edge ]
  %7 = phi i32 [ %1, %do.body.lr.ph ], [ %rem, %do.end72.do.body_crit_edge ]
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %switch = icmp ult i32 %9, 4
  br i1 %switch, label %do.body.do.end72_crit_edge, label %do.end

do.body.do.end72_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end72

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82, i32 noundef %11, i32 noundef %7, i32 noundef %6) #7
  br label %do.end72

do.end72:                                         ; preds = %do.end, %do.body.do.end72_crit_edge
  %12 = ptrtoint ptr %ts_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ts_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  %cond = select i1 %tobool.not, ptr @dvb_dmx_swfilter, ptr @dvb_dmx_swfilter_204
  %14 = ptrtoint ptr %buf_cpu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buf_cpu, align 4
  %16 = ptrtoint ptr %last_block to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %last_block, align 8
  %mul = shl i32 %17, 14
  %arrayidx = getelementptr i8, ptr %15, i32 %mul
  tail call void %cond(ptr noundef %demux, ptr noundef %arrayidx, i32 noundef 16384) #4, !callees !256
  %18 = ptrtoint ptr %last_block to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %last_block, align 8
  %add = add i32 %19, 1
  %rem = and i32 %add, 3
  store i32 %rem, ptr %last_block, align 8
  %20 = ptrtoint ptr %busy_block to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %busy_block, align 4
  %cmp.not = icmp eq i32 %rem, %21
  br i1 %cmp.not, label %do.end72.while.end_crit_edge, label %do.end72.do.body_crit_edge

do.end72.do.body_crit_edge:                       ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.end72.while.end_crit_edge:                     ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %do.end72.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_swfilter_204(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_swfilter(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 135)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 135)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !34, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !67, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228}
!llvm.module.flags = !{!229, !230, !231, !232, !233, !234, !235, !236}
!llvm.ident = !{!237}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/mantis/mantis_dma.c", i32 49, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @mantis_dma_exit._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @mantis_dma_exit._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @mantis_dma_exit._entry.3, !1, !"_entry", i1 false, i1 false}
!8 = !{ptr @mantis_dma_exit._entry_ptr.5, !1, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @mantis_dma_exit._entry.6, !1, !"_entry", i1 false, i1 false}
!11 = !{ptr @mantis_dma_exit._entry_ptr.8, !1, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @mantis_dma_exit._entry.9, !1, !"_entry", i1 false, i1 false}
!14 = !{ptr @mantis_dma_exit._entry_ptr.11, !1, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @mantis_dma_exit._entry.12, !1, !"_entry", i1 false, i1 false}
!16 = !{ptr @mantis_dma_exit._entry_ptr.13, !1, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.15, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/pci/mantis/mantis_dma.c", i32 61, i32 3}
!19 = !{ptr @mantis_dma_exit._entry.14, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @mantis_dma_exit._entry_ptr.16, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.18, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mantis_dma_exit._entry.17, !18, !"_entry", i1 false, i1 false}
!23 = !{ptr @mantis_dma_exit._entry_ptr.19, !18, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.21, !18, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mantis_dma_exit._entry.20, !18, !"_entry", i1 false, i1 false}
!26 = !{ptr @mantis_dma_exit._entry_ptr.22, !18, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.24, !18, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @mantis_dma_exit._entry.23, !18, !"_entry", i1 false, i1 false}
!29 = !{ptr @mantis_dma_exit._entry_ptr.25, !18, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @mantis_dma_exit._entry.26, !18, !"_entry", i1 false, i1 false}
!31 = !{ptr @mantis_dma_exit._entry_ptr.27, !18, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @__ksymtab_mantis_dma_exit, !33, !"__ksymtab_mantis_dma_exit", i1 false, i1 false}
!33 = !{!"../drivers/media/pci/mantis/mantis_dma.c", i32 75, i32 1}
!34 = !{ptr @.str.28, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/pci/mantis/mantis_dma.c", i32 123, i32 2}
!36 = !{ptr @.str.29, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @mantis_dma_init._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @mantis_dma_init._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.31, !35, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @mantis_dma_init._entry.30, !35, !"_entry", i1 false, i1 false}
!41 = !{ptr @mantis_dma_init._entry_ptr.32, !35, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.34, !35, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @mantis_dma_init._entry.33, !35, !"_entry", i1 false, i1 false}
!44 = !{ptr @mantis_dma_init._entry_ptr.35, !35, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.37, !35, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @mantis_dma_init._entry.36, !35, !"_entry", i1 false, i1 false}
!47 = !{ptr @mantis_dma_init._entry_ptr.38, !35, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @mantis_dma_init._entry.39, !35, !"_entry", i1 false, i1 false}
!49 = !{ptr @mantis_dma_init._entry_ptr.40, !35, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.42, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/pci/mantis/mantis_dma.c", i32 126, i32 3}
!52 = !{ptr @mantis_dma_init._entry.41, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @mantis_dma_init._entry_ptr.43, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.45, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @mantis_dma_init._entry.44, !51, !"_entry", i1 false, i1 false}
!56 = !{ptr @mantis_dma_init._entry_ptr.46, !51, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.48, !51, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @mantis_dma_init._entry.47, !51, !"_entry", i1 false, i1 false}
!59 = !{ptr @mantis_dma_init._entry_ptr.49, !51, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.51, !51, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @mantis_dma_init._entry.50, !51, !"_entry", i1 false, i1 false}
!62 = !{ptr @mantis_dma_init._entry_ptr.52, !51, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @mantis_dma_init._entry.53, !51, !"_entry", i1 false, i1 false}
!64 = !{ptr @mantis_dma_init._entry_ptr.54, !51, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @__ksymtab_mantis_dma_init, !66, !"__ksymtab_mantis_dma_init", i1 false, i1 false}
!66 = !{!"../drivers/media/pci/mantis/mantis_dma.c", i32 136, i32 1}
!67 = !{ptr @.str.55, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/pci/mantis/mantis_dma.c", i32 171, i32 2}
!69 = !{ptr @.str.56, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @mantis_dma_start._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @mantis_dma_start._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.58, !68, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @mantis_dma_start._entry.57, !68, !"_entry", i1 false, i1 false}
!74 = !{ptr @mantis_dma_start._entry_ptr.59, !68, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.61, !68, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @mantis_dma_start._entry.60, !68, !"_entry", i1 false, i1 false}
!77 = !{ptr @mantis_dma_start._entry_ptr.62, !68, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.64, !68, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @mantis_dma_start._entry.63, !68, !"_entry", i1 false, i1 false}
!80 = !{ptr @mantis_dma_start._entry_ptr.65, !68, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @mantis_dma_start._entry.66, !68, !"_entry", i1 false, i1 false}
!82 = !{ptr @mantis_dma_start._entry_ptr.67, !68, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.68, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/pci/mantis/mantis_dma.c", i32 189, i32 2}
!85 = !{ptr @.str.69, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @mantis_dma_stop._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @mantis_dma_stop._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.71, !84, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @mantis_dma_stop._entry.70, !84, !"_entry", i1 false, i1 false}
!90 = !{ptr @mantis_dma_stop._entry_ptr.72, !84, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.74, !84, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @mantis_dma_stop._entry.73, !84, !"_entry", i1 false, i1 false}
!93 = !{ptr @mantis_dma_stop._entry_ptr.75, !84, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.77, !84, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @mantis_dma_stop._entry.76, !84, !"_entry", i1 false, i1 false}
!96 = !{ptr @mantis_dma_stop._entry_ptr.78, !84, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @mantis_dma_stop._entry.79, !84, !"_entry", i1 false, i1 false}
!98 = !{ptr @mantis_dma_stop._entry_ptr.80, !84, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.81, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/pci/mantis/mantis_dma.c", i32 209, i32 3}
!101 = !{ptr @.str.82, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @mantis_dma_xfer._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @mantis_dma_xfer._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.84, !100, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @mantis_dma_xfer._entry.83, !100, !"_entry", i1 false, i1 false}
!106 = !{ptr @mantis_dma_xfer._entry_ptr.85, !100, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.87, !100, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @mantis_dma_xfer._entry.86, !100, !"_entry", i1 false, i1 false}
!109 = !{ptr @mantis_dma_xfer._entry_ptr.88, !100, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.90, !100, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @mantis_dma_xfer._entry.89, !100, !"_entry", i1 false, i1 false}
!112 = !{ptr @mantis_dma_xfer._entry_ptr.91, !100, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @mantis_dma_xfer._entry.92, !100, !"_entry", i1 false, i1 false}
!114 = !{ptr @mantis_dma_xfer._entry_ptr.93, !100, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.94, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/pci/mantis/mantis_dma.c", i32 84, i32 4}
!117 = !{ptr @.str.95, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @mantis_alloc_buffers._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @mantis_alloc_buffers._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.97, !116, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @mantis_alloc_buffers._entry.96, !116, !"_entry", i1 false, i1 false}
!122 = !{ptr @mantis_alloc_buffers._entry_ptr.98, !116, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.100, !116, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @mantis_alloc_buffers._entry.99, !116, !"_entry", i1 false, i1 false}
!125 = !{ptr @mantis_alloc_buffers._entry_ptr.101, !116, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.103, !116, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @mantis_alloc_buffers._entry.102, !116, !"_entry", i1 false, i1 false}
!128 = !{ptr @mantis_alloc_buffers._entry_ptr.104, !116, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @mantis_alloc_buffers._entry.105, !116, !"_entry", i1 false, i1 false}
!130 = !{ptr @mantis_alloc_buffers._entry_ptr.106, !116, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @mantis_alloc_buffers._entry.107, !132, !"_entry", i1 false, i1 false}
!132 = !{!"../drivers/media/pci/mantis/mantis_dma.c", i32 89, i32 3}
!133 = !{ptr @mantis_alloc_buffers._entry_ptr.108, !132, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @mantis_alloc_buffers._entry.109, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @mantis_alloc_buffers._entry_ptr.110, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @mantis_alloc_buffers._entry.111, !132, !"_entry", i1 false, i1 false}
!137 = !{ptr @mantis_alloc_buffers._entry_ptr.112, !132, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @mantis_alloc_buffers._entry.113, !132, !"_entry", i1 false, i1 false}
!139 = !{ptr @mantis_alloc_buffers._entry_ptr.114, !132, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @mantis_alloc_buffers._entry.115, !132, !"_entry", i1 false, i1 false}
!141 = !{ptr @mantis_alloc_buffers._entry_ptr.116, !132, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.118, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/pci/mantis/mantis_dma.c", i32 100, i32 4}
!144 = !{ptr @mantis_alloc_buffers._entry.117, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @mantis_alloc_buffers._entry_ptr.119, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.121, !143, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @mantis_alloc_buffers._entry.120, !143, !"_entry", i1 false, i1 false}
!148 = !{ptr @mantis_alloc_buffers._entry_ptr.122, !143, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.124, !143, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @mantis_alloc_buffers._entry.123, !143, !"_entry", i1 false, i1 false}
!151 = !{ptr @mantis_alloc_buffers._entry_ptr.125, !143, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.127, !143, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @mantis_alloc_buffers._entry.126, !143, !"_entry", i1 false, i1 false}
!154 = !{ptr @mantis_alloc_buffers._entry_ptr.128, !143, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @mantis_alloc_buffers._entry.129, !143, !"_entry", i1 false, i1 false}
!156 = !{ptr @mantis_alloc_buffers._entry_ptr.130, !143, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @mantis_alloc_buffers._entry.131, !158, !"_entry", i1 false, i1 false}
!158 = !{!"../drivers/media/pci/mantis/mantis_dma.c", i32 107, i32 3}
!159 = !{ptr @mantis_alloc_buffers._entry_ptr.132, !158, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @mantis_alloc_buffers._entry.133, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @mantis_alloc_buffers._entry_ptr.134, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @mantis_alloc_buffers._entry.135, !158, !"_entry", i1 false, i1 false}
!163 = !{ptr @mantis_alloc_buffers._entry_ptr.136, !158, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @mantis_alloc_buffers._entry.137, !158, !"_entry", i1 false, i1 false}
!165 = !{ptr @mantis_alloc_buffers._entry_ptr.138, !158, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @mantis_alloc_buffers._entry.139, !158, !"_entry", i1 false, i1 false}
!167 = !{ptr @mantis_alloc_buffers._entry_ptr.140, !158, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.142, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/pci/mantis/mantis_dma.c", i32 115, i32 2}
!170 = !{ptr @mantis_alloc_buffers._entry.141, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @mantis_alloc_buffers._entry_ptr.143, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.145, !169, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @mantis_alloc_buffers._entry.144, !169, !"_entry", i1 false, i1 false}
!174 = !{ptr @mantis_alloc_buffers._entry_ptr.146, !169, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.148, !169, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @mantis_alloc_buffers._entry.147, !169, !"_entry", i1 false, i1 false}
!177 = !{ptr @mantis_alloc_buffers._entry_ptr.149, !169, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.151, !169, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @mantis_alloc_buffers._entry.150, !169, !"_entry", i1 false, i1 false}
!180 = !{ptr @mantis_alloc_buffers._entry_ptr.152, !169, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @mantis_alloc_buffers._entry.153, !169, !"_entry", i1 false, i1 false}
!182 = !{ptr @mantis_alloc_buffers._entry_ptr.154, !169, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.155, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/pci/mantis/mantis_dma.c", i32 144, i32 2}
!185 = !{ptr @.str.156, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @mantis_risc_program._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @mantis_risc_program._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.158, !184, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @mantis_risc_program._entry.157, !184, !"_entry", i1 false, i1 false}
!190 = !{ptr @mantis_risc_program._entry_ptr.159, !184, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.161, !184, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @mantis_risc_program._entry.160, !184, !"_entry", i1 false, i1 false}
!193 = !{ptr @mantis_risc_program._entry_ptr.162, !184, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.164, !184, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @mantis_risc_program._entry.163, !184, !"_entry", i1 false, i1 false}
!196 = !{ptr @mantis_risc_program._entry_ptr.165, !184, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @mantis_risc_program._entry.166, !184, !"_entry", i1 false, i1 false}
!198 = !{ptr @mantis_risc_program._entry_ptr.167, !184, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.169, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/media/pci/mantis/mantis_dma.c", i32 147, i32 2}
!201 = !{ptr @mantis_risc_program._entry.168, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @mantis_risc_program._entry_ptr.170, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.172, !200, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @mantis_risc_program._entry.171, !200, !"_entry", i1 false, i1 false}
!205 = !{ptr @mantis_risc_program._entry_ptr.173, !200, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.175, !200, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @mantis_risc_program._entry.174, !200, !"_entry", i1 false, i1 false}
!208 = !{ptr @mantis_risc_program._entry_ptr.176, !200, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.178, !200, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @mantis_risc_program._entry.177, !200, !"_entry", i1 false, i1 false}
!211 = !{ptr @mantis_risc_program._entry_ptr.179, !200, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @mantis_risc_program._entry.180, !200, !"_entry", i1 false, i1 false}
!213 = !{ptr @mantis_risc_program._entry_ptr.181, !200, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.183, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/media/pci/mantis/mantis_dma.c", i32 152, i32 4}
!216 = !{ptr @mantis_risc_program._entry.182, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @mantis_risc_program._entry_ptr.184, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.186, !215, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @mantis_risc_program._entry.185, !215, !"_entry", i1 false, i1 false}
!220 = !{ptr @mantis_risc_program._entry_ptr.187, !215, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.189, !215, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @mantis_risc_program._entry.188, !215, !"_entry", i1 false, i1 false}
!223 = !{ptr @mantis_risc_program._entry_ptr.190, !215, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.192, !215, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @mantis_risc_program._entry.191, !215, !"_entry", i1 false, i1 false}
!226 = !{ptr @mantis_risc_program._entry_ptr.193, !215, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @mantis_risc_program._entry.194, !215, !"_entry", i1 false, i1 false}
!228 = !{ptr @mantis_risc_program._entry_ptr.195, !215, !"_entry_ptr", i1 false, i1 false}
!229 = !{i32 1, !"wchar_size", i32 2}
!230 = !{i32 1, !"min_enum_size", i32 4}
!231 = !{i32 8, !"branch-target-enforcement", i32 0}
!232 = !{i32 8, !"sign-return-address", i32 0}
!233 = !{i32 8, !"sign-return-address-all", i32 0}
!234 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!235 = !{i32 7, !"uwtable", i32 1}
!236 = !{i32 7, !"frame-pointer", i32 2}
!237 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!238 = !{i64 2158176458}
!239 = !{i64 4996232}
!240 = !{i64 2158229325}
!241 = !{i64 2158231420}
!242 = !{i64 4996650}
!243 = !{i64 2158232423}
!244 = !{i64 2158232801}
!245 = !{i64 2158068822}
!246 = !{i64 2158069777}
!247 = !{i64 2158233919}
!248 = !{i64 2158246475}
!249 = !{i64 2158247500}
!250 = !{i64 2158249767}
!251 = !{i64 2158250906}
!252 = !{i64 2158252690}
!253 = !{i64 2158253631}
!254 = !{i64 2158065605}
!255 = !{i64 2158066562}
!256 = !{ptr @dvb_dmx_swfilter, ptr @dvb_dmx_swfilter_204}
