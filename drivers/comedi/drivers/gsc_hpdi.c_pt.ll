; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/gsc_hpdi.c_pt.bc'
source_filename = "../drivers/comedi/drivers/gsc_hpdi.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.hpdi_private = type { ptr, [4 x ptr], [4 x i32], ptr, i32, i32, [256 x ptr], i32, i32, i32, i32, i32 }
%struct.plx_dma_desc = type { i32, i32, i32, i32 }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.comedi_async = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.comedi_cmd, %struct.wait_queue_head, i32, ptr }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }

@__initcall__kmod_gsc_hpdi__238_718_gsc_hpdi_driver_init6 = internal global ptr @gsc_hpdi_driver_init, section ".initcall6.init", align 4
@gsc_hpdi_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr null, ptr @gsc_hpdi_detach, ptr @gsc_hpdi_auto_attach, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@gsc_hpdi_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @gsc_hpdi_pci_table, ptr @gsc_hpdi_pci_probe, ptr @comedi_pci_auto_unconfig, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_gsc_hpdi_driver_exit = internal global ptr @gsc_hpdi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author239 = internal constant [46 x i8] c"gsc_hpdi.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [79 x i8] c"gsc_hpdi.description=Comedi driver for General Standards PCI-HPDI32/PMC-HPDI32\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [46 x i8] c"gsc_hpdi.file=drivers/comedi/drivers/gsc_hpdi\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [21 x i8] c"gsc_hpdi.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gsc_hpdi\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pci-hpdi32\00", [21 x i8] zeroinitializer }, align 32
@gsc_hpdi_auto_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 602, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to remap io memory\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gsc_hpdi_auto_attach\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/comedi/drivers/gsc_hpdi.c\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gsc_hpdi_auto_attach._entry_ptr = internal global ptr @gsc_hpdi_auto_attach._entry, section ".printk_index", align 4
@gsc_hpdi_auto_attach._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 612, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unable to allocate irq %u\0A\00", [37 x i8] zeroinitializer }, align 32
@gsc_hpdi_auto_attach._entry_ptr.9 = internal global ptr @gsc_hpdi_auto_attach._entry.7, section ".printk_index", align 4
@gsc_hpdi_auto_attach.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.10, i8 0, i8 -102, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" irq %u\0A\00", [23 x i8] zeroinitializer }, align 32
@gsc_hpdi_auto_attach._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 627, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to allocate DMA buffer\0A\00", [33 x i8] zeroinitializer }, align 32
@gsc_hpdi_auto_attach._entry_ptr.13 = internal global ptr @gsc_hpdi_auto_attach._entry.11, section ".printk_index", align 4
@gsc_hpdi_auto_attach._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 639, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to allocate DMA descriptors\0A\00", [60 x i8] zeroinitializer }, align 32
@gsc_hpdi_auto_attach._entry_ptr.16 = internal global ptr @gsc_hpdi_auto_attach._entry.14, section ".printk_index", align 4
@gsc_hpdi_auto_attach._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 644, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c" dma descriptors not quad-word aligned (bug)\0A\00", [50 x i8] zeroinitializer }, align 32
@gsc_hpdi_auto_attach._entry_ptr.19 = internal global ptr @gsc_hpdi_auto_attach._entry.17, section ".printk_index", align 4
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@gsc_hpdi_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 233, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx fifo overrun\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gsc_hpdi_interrupt\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@gsc_hpdi_interrupt._entry_ptr = internal global ptr @gsc_hpdi_interrupt._entry, section ".printk_index", align 4
@gsc_hpdi_interrupt._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.21, ptr @.str.4, i32 238, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rx fifo underrun\0A\00", [46 x i8] zeroinitializer }, align 32
@gsc_hpdi_interrupt._entry_ptr.25 = internal global ptr @gsc_hpdi_interrupt._entry.23, section ".printk_index", align 4
@gsc_hpdi_check_chanlist.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.4, ptr @.str.27, i8 0, i8 85, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gsc_hpdi_check_chanlist\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"chanlist must be ch 0 to 31 in order\0A\00", [58 x i8] zeroinitializer }, align 32
@gsc_hpdi_pci_table = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4277, i32 36992, i32 4277, i32 9216, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.28 = private unnamed_addr constant [16 x i8] c"gsc_hpdi_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 692, i32 29 }
@___asan_gen_.31 = private unnamed_addr constant [20 x i8] c"gsc_hpdi_pci_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 712, i32 26 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 693, i32 17 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 588, i32 20 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 602, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 611, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 617, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 626, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 638, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 643, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 233, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 238, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 339, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant [19 x i8] c"gsc_hpdi_pci_table\00", align 1
@___asan_gen_.110 = private constant [37 x i8] c"../drivers/comedi/drivers/gsc_hpdi.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 705, i32 35 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__exitcall_gsc_hpdi_driver_exit, ptr @__initcall__kmod_gsc_hpdi__238_718_gsc_hpdi_driver_init6, ptr @gsc_hpdi_auto_attach._entry, ptr @gsc_hpdi_auto_attach._entry.11, ptr @gsc_hpdi_auto_attach._entry.14, ptr @gsc_hpdi_auto_attach._entry.17, ptr @gsc_hpdi_auto_attach._entry.7, ptr @gsc_hpdi_auto_attach._entry_ptr, ptr @gsc_hpdi_auto_attach._entry_ptr.13, ptr @gsc_hpdi_auto_attach._entry_ptr.16, ptr @gsc_hpdi_auto_attach._entry_ptr.19, ptr @gsc_hpdi_auto_attach._entry_ptr.9, ptr @gsc_hpdi_driver_exit, ptr @gsc_hpdi_interrupt._entry, ptr @gsc_hpdi_interrupt._entry.23, ptr @gsc_hpdi_interrupt._entry_ptr, ptr @gsc_hpdi_interrupt._entry_ptr.25, ptr @gsc_hpdi_driver, ptr @gsc_hpdi_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @gsc_hpdi_pci_table], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_hpdi_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_hpdi_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_hpdi_auto_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_hpdi_auto_attach._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_hpdi_auto_attach._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_hpdi_auto_attach._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_hpdi_auto_attach._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_hpdi_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_hpdi_interrupt._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_hpdi_pci_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gsc_hpdi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_pci_driver_register(ptr noundef nonnull @gsc_hpdi_driver, ptr noundef nonnull @gsc_hpdi_pci_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gsc_hpdi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @comedi_pci_driver_unregister(ptr noundef nonnull @gsc_hpdi_driver, ptr noundef nonnull @gsc_hpdi_pci_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_driver_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gsc_hpdi_detach(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %irq = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call ptr @free_irq(i32 noundef %3, ptr noundef %dev) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end.if.end13_crit_edge, label %if.then3

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then3:                                         ; preds = %if.end
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.then3.if.end8_crit_edge, label %do.body

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

do.body:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !71
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void @iounmap(ptr noundef %9) #5
  br label %if.end8

if.end8:                                          ; preds = %do.body, %if.then3.if.end8_crit_edge
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %10 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio, align 4
  %tobool9.not = icmp eq ptr %11, null
  br i1 %tobool9.not, label %if.end8.if.end13_crit_edge, label %if.then10

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @iounmap(ptr noundef nonnull %11) #5
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end8.if.end13_crit_edge, %if.end.if.end13_crit_edge
  tail call void @comedi_pci_disable(ptr noundef %dev) #5
  %call.i = tail call ptr @comedi_to_pci_dev(ptr noundef %dev) #5
  %12 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end13.gsc_hpdi_free_dma.exit_crit_edge, label %for.cond.preheader.i

if.end13.gsc_hpdi_free_dma.exit_crit_edge:        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %gsc_hpdi_free_dma.exit

for.cond.preheader.i:                             ; preds = %if.end13
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %call.i, i32 0, i32 44
  %arrayidx.i = getelementptr %struct.hpdi_private, ptr %13, i32 0, i32 1, i32 0
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %tobool1.not.i = icmp eq ptr %15, null
  br i1 %tobool1.not.i, label %for.cond.preheader.i.for.inc.i_crit_edge, label %if.then2.i

for.cond.preheader.i.for.inc.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then2.i:                                       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx6.i = getelementptr %struct.hpdi_private, ptr %13, i32 0, i32 2, i32 0
  %16 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx6.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev3.i, i32 noundef 65536, ptr noundef nonnull %15, i32 noundef %17, i32 noundef 0) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then2.i, %for.cond.preheader.i.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.hpdi_private, ptr %13, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool1.not.1.i = icmp eq ptr %19, null
  br i1 %tobool1.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then2.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i

if.then2.1.i:                                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx6.1.i = getelementptr %struct.hpdi_private, ptr %13, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %arrayidx6.1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx6.1.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev3.i, i32 noundef 65536, ptr noundef nonnull %19, i32 noundef %21, i32 noundef 0) #5
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then2.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.hpdi_private, ptr %13, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool1.not.2.i = icmp eq ptr %23, null
  br i1 %tobool1.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then2.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2.i

if.then2.2.i:                                     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx6.2.i = getelementptr %struct.hpdi_private, ptr %13, i32 0, i32 2, i32 2
  %24 = ptrtoint ptr %arrayidx6.2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx6.2.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev3.i, i32 noundef 65536, ptr noundef nonnull %23, i32 noundef %25, i32 noundef 0) #5
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then2.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %arrayidx.3.i = getelementptr %struct.hpdi_private, ptr %13, i32 0, i32 1, i32 3
  %26 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.3.i, align 4
  %tobool1.not.3.i = icmp eq ptr %27, null
  br i1 %tobool1.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.then2.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3.i

if.then2.3.i:                                     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx6.3.i = getelementptr %struct.hpdi_private, ptr %13, i32 0, i32 2, i32 3
  %28 = ptrtoint ptr %arrayidx6.3.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx6.3.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev3.i, i32 noundef 65536, ptr noundef nonnull %27, i32 noundef %29, i32 noundef 0) #5
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then2.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %dma_desc.i = getelementptr inbounds %struct.hpdi_private, ptr %13, i32 0, i32 3
  %30 = ptrtoint ptr %dma_desc.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dma_desc.i, align 4
  %tobool8.not.i = icmp eq ptr %31, null
  br i1 %tobool8.not.i, label %for.inc.3.i.gsc_hpdi_free_dma.exit_crit_edge, label %if.then9.i

for.inc.3.i.gsc_hpdi_free_dma.exit_crit_edge:     ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gsc_hpdi_free_dma.exit

if.then9.i:                                       ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #7
  %dma_desc_phys_addr.i = getelementptr inbounds %struct.hpdi_private, ptr %13, i32 0, i32 4
  %32 = ptrtoint ptr %dma_desc_phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dma_desc_phys_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev3.i, i32 noundef 4096, ptr noundef nonnull %31, i32 noundef %33, i32 noundef 0) #5
  br label %gsc_hpdi_free_dma.exit

gsc_hpdi_free_dma.exit:                           ; preds = %if.then9.i, %for.inc.3.i.gsc_hpdi_free_dma.exit_crit_edge, %if.end13.gsc_hpdi_free_dma.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsc_hpdi_auto_attach(ptr noundef %dev, i32 noundef %context_unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_pci_dev(ptr noundef %dev) #5
  %board_name = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %board_name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str.1, ptr %board_name, align 4
  %call2 = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 1092) #5
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @comedi_pci_enable(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  tail call void @pci_set_master(ptr noundef %call) #5
  %call7 = tail call ptr @pci_ioremap_bar(ptr noundef %call, i32 noundef 0) #5
  %1 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7, ptr %call2, align 4
  %call8 = tail call ptr @pci_ioremap_bar(ptr noundef %call, i32 noundef 2) #5
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call8, ptr %mmio, align 4
  %3 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call2, align 4
  %tobool10.not = icmp eq ptr %4, null
  %tobool12.not = icmp eq ptr %call8, null
  %or.cond = select i1 %tobool10.not, i1 true, i1 %tobool12.not
  br i1 %or.cond, label %do.end, label %if.end14

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %5 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %7 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1073741824) #5, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  tail call void @arm_heavy_mb() #5
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %8, align 4
  %add.ptr6.i = getelementptr i8, ptr %14, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 0) #5, !srcloc !71
  tail call fastcc void @gsc_hpdi_abort_dma(ptr noundef %dev, i32 noundef 0) #5
  tail call fastcc void @gsc_hpdi_abort_dma(ptr noundef %dev, i32 noundef 1) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  tail call void @arm_heavy_mb() #5
  %add.ptr17.i = getelementptr i8, ptr %10, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 1109328384) #5, !srcloc !71
  %irq = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 46
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq, align 4
  %17 = ptrtoint ptr %board_name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %board_name, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %16, ptr noundef nonnull @gsc_hpdi_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %18, ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool17.not = icmp eq i32 %call.i, 0
  br i1 %tobool17.not, label %if.end24, label %do.end21

do.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev22 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %19 = ptrtoint ptr %class_dev22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %class_dev22, align 4
  %21 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.8, i32 noundef %22) #8
  br label %cleanup

if.end24:                                         ; preds = %if.end14
  %23 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq, align 4
  %irq26 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %25 = ptrtoint ptr %irq26 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %irq26, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsc_hpdi_auto_attach.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gsc_hpdi_auto_attach, %do.end38)) #5
          to label %if.then33 [label %do.end38], !srcloc !75

if.then33:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev34 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %26 = ptrtoint ptr %class_dev34 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %class_dev34, align 4
  %28 = ptrtoint ptr %irq26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq26, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gsc_hpdi_auto_attach.__UNIQUE_ID_ddebug237, ptr noundef %27, ptr noundef nonnull @.str.10, i32 noundef %29) #5
  br label %do.end38

do.end38:                                         ; preds = %if.then33, %if.end24
  %dev39 = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 44
  %arrayidx = getelementptr %struct.hpdi_private, ptr %call2, i32 0, i32 2, i32 0
  %call.i139 = tail call ptr @dma_alloc_attrs(ptr noundef %dev39, i32 noundef 65536, ptr noundef %arrayidx, i32 noundef 3264, i32 noundef 0) #5
  %arrayidx41 = getelementptr %struct.hpdi_private, ptr %call2, i32 0, i32 1, i32 0
  %30 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i139, ptr %arrayidx41, align 4
  %tobool44.not = icmp eq ptr %call.i139, null
  br i1 %tobool44.not, label %do.end38.do.end48_crit_edge, label %for.cond

do.end38.do.end48_crit_edge:                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end48

for.cond:                                         ; preds = %do.end38
  %arrayidx.1 = getelementptr %struct.hpdi_private, ptr %call2, i32 0, i32 2, i32 1
  %call.i139.1 = tail call ptr @dma_alloc_attrs(ptr noundef %dev39, i32 noundef 65536, ptr noundef %arrayidx.1, i32 noundef 3264, i32 noundef 0) #5
  %arrayidx41.1 = getelementptr %struct.hpdi_private, ptr %call2, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %arrayidx41.1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i139.1, ptr %arrayidx41.1, align 4
  %tobool44.not.1 = icmp eq ptr %call.i139.1, null
  br i1 %tobool44.not.1, label %for.cond.do.end48_crit_edge, label %for.cond.1

for.cond.do.end48_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end48

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr %struct.hpdi_private, ptr %call2, i32 0, i32 2, i32 2
  %call.i139.2 = tail call ptr @dma_alloc_attrs(ptr noundef %dev39, i32 noundef 65536, ptr noundef %arrayidx.2, i32 noundef 3264, i32 noundef 0) #5
  %arrayidx41.2 = getelementptr %struct.hpdi_private, ptr %call2, i32 0, i32 1, i32 2
  %32 = ptrtoint ptr %arrayidx41.2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i139.2, ptr %arrayidx41.2, align 4
  %tobool44.not.2 = icmp eq ptr %call.i139.2, null
  br i1 %tobool44.not.2, label %for.cond.1.do.end48_crit_edge, label %for.cond.2

for.cond.1.do.end48_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end48

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr %struct.hpdi_private, ptr %call2, i32 0, i32 2, i32 3
  %call.i139.3 = tail call ptr @dma_alloc_attrs(ptr noundef %dev39, i32 noundef 65536, ptr noundef %arrayidx.3, i32 noundef 3264, i32 noundef 0) #5
  %arrayidx41.3 = getelementptr %struct.hpdi_private, ptr %call2, i32 0, i32 1, i32 3
  %33 = ptrtoint ptr %arrayidx41.3 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i139.3, ptr %arrayidx41.3, align 4
  %tobool44.not.3 = icmp eq ptr %call.i139.3, null
  br i1 %tobool44.not.3, label %for.cond.2.do.end48_crit_edge, label %for.cond.3

for.cond.2.do.end48_crit_edge:                    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end48

for.cond.3:                                       ; preds = %for.cond.2
  %dma_desc_phys_addr = getelementptr inbounds %struct.hpdi_private, ptr %call2, i32 0, i32 4
  %call.i140 = tail call ptr @dma_alloc_attrs(ptr noundef %dev39, i32 noundef 4096, ptr noundef %dma_desc_phys_addr, i32 noundef 3264, i32 noundef 0) #5
  %dma_desc = getelementptr inbounds %struct.hpdi_private, ptr %call2, i32 0, i32 3
  %34 = ptrtoint ptr %dma_desc to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i140, ptr %dma_desc, align 4
  %tobool54.not = icmp eq ptr %call.i140, null
  br i1 %tobool54.not, label %do.end58, label %if.end60

do.end48:                                         ; preds = %for.cond.2.do.end48_crit_edge, %for.cond.1.do.end48_crit_edge, %for.cond.do.end48_crit_edge, %do.end38.do.end48_crit_edge
  %class_dev49 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %35 = ptrtoint ptr %class_dev49 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %class_dev49, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %36, ptr noundef nonnull @.str.12) #8
  br label %cleanup

do.end58:                                         ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev59 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %37 = ptrtoint ptr %class_dev59 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %class_dev59, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef nonnull @.str.15) #8
  br label %cleanup

if.end60:                                         ; preds = %for.cond.3
  %39 = ptrtoint ptr %dma_desc_phys_addr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dma_desc_phys_addr, align 4
  %and = and i32 %40, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool62.not = icmp eq i32 %and, 0
  br i1 %tobool62.not, label %if.end68, label %do.end66

do.end66:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev67 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %41 = ptrtoint ptr %class_dev67 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %class_dev67, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %42, ptr noundef nonnull @.str.18) #8
  br label %cleanup

if.end68:                                         ; preds = %if.end60
  %43 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %private.i, align 4
  %dma_desc_phys_addr.i = getelementptr inbounds %struct.hpdi_private, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %dma_desc_phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dma_desc_phys_addr.i, align 4
  %dma_desc.i = getelementptr inbounds %struct.hpdi_private, ptr %44, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end68
  %i.072.i = phi i32 [ 0, %if.end68 ], [ %add11.i, %for.body.i.for.body.i_crit_edge ]
  %idx.071.i = phi i32 [ 0, %if.end68 ], [ %spec.select69.i, %for.body.i.for.body.i_crit_edge ]
  %offset.070.i = phi i32 [ 0, %if.end68 ], [ %spec.select.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.hpdi_private, ptr %44, i32 0, i32 2, i32 %idx.071.i
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %48, %offset.070.i
  %49 = tail call i32 @llvm.bswap.i32(i32 %add.i) #5
  %50 = ptrtoint ptr %dma_desc.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dma_desc.i, align 4
  %arrayidx6.i = getelementptr %struct.plx_dma_desc, ptr %51, i32 %i.072.i
  %52 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %49, ptr %arrayidx6.i, align 4
  %53 = load ptr, ptr %dma_desc.i, align 4
  %local_start_addr.i = getelementptr %struct.plx_dma_desc, ptr %53, i32 %i.072.i, i32 1
  %54 = ptrtoint ptr %local_start_addr.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 402653184, ptr %local_start_addr.i, align 4
  %55 = load ptr, ptr %dma_desc.i, align 4
  %transfer_size.i = getelementptr %struct.plx_dma_desc, ptr %55, i32 %i.072.i, i32 2
  %56 = ptrtoint ptr %transfer_size.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1048576, ptr %transfer_size.i, align 4
  %add11.i = add nuw nsw i32 %i.072.i, 1
  %mul.i = shl nuw nsw i32 %add11.i, 4
  %add12.i = add i32 %mul.i, %46
  %or.i = or i32 %add12.i, 13
  %57 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %58 = ptrtoint ptr %dma_desc.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dma_desc.i, align 4
  %next.i = getelementptr %struct.plx_dma_desc, ptr %59, i32 %i.072.i, i32 3
  %60 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %57, ptr %next.i, align 4
  %arrayidx15.i = getelementptr %struct.hpdi_private, ptr %44, i32 0, i32 1, i32 %idx.071.i
  %61 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx15.i, align 4
  %div68.i = lshr i32 %offset.070.i, 2
  %add.ptr.i142 = getelementptr i32, ptr %62, i32 %div68.i
  %arrayidx16.i = getelementptr %struct.hpdi_private, ptr %44, i32 0, i32 6, i32 %i.072.i
  %63 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %add.ptr.i142, ptr %arrayidx16.i, align 4
  %add17.i = add i32 %offset.070.i, 4096
  %64 = add i32 %offset.070.i, -57345
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %64)
  %cmp19.i = icmp ult i32 %64, -65537
  %spec.select.i = select i1 %cmp19.i, i32 0, i32 %add17.i
  %inc.i = zext i1 %cmp19.i to i32
  %spec.select69.i = add nuw nsw i32 %idx.071.i, %inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %i.072.i)
  %cmp4.i = icmp ult i32 %i.072.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %spec.select69.i)
  %cmp5.i = icmp ult i32 %spec.select69.i, 4
  %or.cond.i = select i1 %cmp4.i, i1 %cmp5.i, i1 false
  br i1 %or.cond.i, label %for.body.i.for.body.i_crit_edge, label %if.end72

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.end72:                                         ; preds = %for.body.i
  %num_dma_descriptors.i = getelementptr inbounds %struct.hpdi_private, ptr %44, i32 0, i32 5
  %65 = ptrtoint ptr %num_dma_descriptors.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add11.i, ptr %num_dma_descriptors.i, align 4
  %or23.i = or i32 %46, 13
  %66 = tail call i32 @llvm.bswap.i32(i32 %or23.i) #5
  %67 = ptrtoint ptr %dma_desc.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dma_desc.i, align 4
  %next27.i = getelementptr %struct.plx_dma_desc, ptr %68, i32 %i.072.i, i32 3
  %69 = ptrtoint ptr %next27.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %66, ptr %next27.i, align 4
  %block_size.i = getelementptr inbounds %struct.hpdi_private, ptr %44, i32 0, i32 11
  %70 = ptrtoint ptr %block_size.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 4096, ptr %block_size.i, align 4
  %call73 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %if.end72.cleanup_crit_edge

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end76:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %71 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %subdevices, align 4
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %73 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %72, ptr %read_subdev, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %72, i32 0, i32 2
  %74 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 5, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %72, i32 0, i32 4
  %75 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 268664832, ptr %subdev_flags, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %72, i32 0, i32 3
  %76 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 32, ptr %n_chan, align 4
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, ptr %72, i32 0, i32 5
  %77 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 32, ptr %len_chanlist, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %72, i32 0, i32 13
  %78 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1, ptr %maxdata, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %72, i32 0, i32 15
  %79 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @range_unipolar5, ptr %range_table, align 4
  %insn_config = getelementptr inbounds %struct.comedi_subdevice, ptr %72, i32 0, i32 21
  %80 = ptrtoint ptr %insn_config to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @gsc_hpdi_dio_insn_config, ptr %insn_config, align 4
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, ptr %72, i32 0, i32 22
  %81 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @gsc_hpdi_cmd, ptr %do_cmd, align 4
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, ptr %72, i32 0, i32 23
  %82 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @gsc_hpdi_cmd_test, ptr %do_cmdtest, align 4
  %cancel = getelementptr inbounds %struct.comedi_subdevice, ptr %72, i32 0, i32 25
  %83 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @gsc_hpdi_cancel, ptr %cancel, align 4
  %84 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %private.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !76
  tail call void @arm_heavy_mb() #5
  %86 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mmio, align 4
  %add.ptr.i145 = getelementptr i8, ptr %87, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i145, i32 16777216) #5, !srcloc !71
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 1000, i32 noundef 2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  tail call void @arm_heavy_mb() #5
  %88 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mmio, align 4
  %add.ptr5.i = getelementptr i8, ptr %89, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 536879104) #5, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void @arm_heavy_mb() #5
  %90 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mmio, align 4
  %add.ptr10.i = getelementptr i8, ptr %91, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 536879104) #5, !srcloc !71
  %92 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mmio, align 4
  %add.ptr12.i = getelementptr i8, ptr %93, i32 64
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #5, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  %95 = and i32 %94, -61696
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #5
  %tx_fifo_size.i = getelementptr inbounds %struct.hpdi_private, ptr %85, i32 0, i32 8
  %97 = ptrtoint ptr %tx_fifo_size.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %tx_fifo_size.i, align 4
  %98 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mmio, align 4
  %add.ptr17.i146 = getelementptr i8, ptr %99, i32 68
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i146) #5, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  %101 = and i32 %100, -61696
  %102 = tail call i32 @llvm.bswap.i32(i32 %101) #5
  %rx_fifo_size.i = getelementptr inbounds %struct.hpdi_private, ptr %85, i32 0, i32 9
  %103 = ptrtoint ptr %rx_fifo_size.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %rx_fifo_size.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  tail call void @arm_heavy_mb() #5
  %104 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mmio, align 4
  %add.ptr26.i = getelementptr i8, ptr %105, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i, i32 0) #5, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  %106 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %85, align 4
  %add.ptr30.i = getelementptr i8, ptr %107, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 51184896) #5, !srcloc !71
  br label %cleanup

cleanup:                                          ; preds = %if.end76, %if.end72.cleanup_crit_edge, %do.end66, %do.end58, %do.end48, %do.end21, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end21 ], [ -12, %do.end48 ], [ -5, %do.end66 ], [ 0, %if.end76 ], [ -12, %do.end58 ], [ -12, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call73, %if.end72.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_to_pci_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsc_hpdi_interrupt(i32 noundef %irq, ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 21
  %2 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_subdev, align 4
  %async1 = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %async1, align 4
  %attached = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 10
  %6 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %attached, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 104
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !79
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  %and = and i32 %10, 6324224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 17
  %11 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio, align 4
  %add.ptr7 = getelementptr i8, ptr %12, i32 52
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #5, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  %14 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio, align 4
  %add.ptr14 = getelementptr i8, ptr %15, i32 8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #5, !srcloc !79
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool18.not = icmp eq i32 %13, 0
  br i1 %tobool18.not, label %if.end4.do.body24_crit_edge, label %do.body

if.end4.do.body24_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body24

do.body:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio, align 4
  %add.ptr21 = getelementptr i8, ptr %19, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %13) #5, !srcloc !71
  br label %do.body24

do.body24:                                        ; preds = %do.body, %if.end4.do.body24_crit_edge
  %spinlock = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 11
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #5
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %add.ptr36 = getelementptr i8, ptr %21, i32 168
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr36) #5, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  %and40 = and i32 %10, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %do.body24.if.end56_crit_edge, label %do.body43

do.body24.if.end56_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

do.body43:                                        ; preds = %do.body24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  tail call void @arm_heavy_mb() #5
  %23 = and i8 %22, 1
  %or = or i8 %23, 8
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %add.ptr50 = getelementptr i8, ptr %25, i32 168
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr50, i8 %or) #5, !srcloc !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool53.not = icmp eq i8 %23, 0
  br i1 %tobool53.not, label %do.body43.if.end56_crit_edge, label %if.then54

do.body43.if.end56_crit_edge:                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

if.then54:                                        ; preds = %do.body43
  %26 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %private, align 4
  %28 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read_subdev, align 4
  %async.i = getelementptr inbounds %struct.comedi_subdevice, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %async.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %async.i, align 4
  %32 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %27, align 4
  %add.ptr.i = getelementptr i8, ptr %33, i32 132
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !79
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  %dma_desc_index.i = getelementptr inbounds %struct.hpdi_private, ptr %27, i32 0, i32 7
  %36 = ptrtoint ptr %dma_desc_index.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dma_desc_index.i, align 4
  %dma_desc.i = getelementptr inbounds %struct.hpdi_private, ptr %27, i32 0, i32 3
  %38 = ptrtoint ptr %dma_desc.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dma_desc.i, align 4
  %arrayidx.i = getelementptr %struct.plx_dma_desc, ptr %39, i32 %37
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #5
  %block_size.i = getelementptr inbounds %struct.hpdi_private, ptr %27, i32 0, i32 11
  %num_dma_descriptors.i = getelementptr inbounds %struct.hpdi_private, ptr %27, i32 0, i32 5
  %stop_src.i = getelementptr inbounds %struct.comedi_async, ptr %31, i32 0, i32 17, i32 10
  %dio_count.i = getelementptr inbounds %struct.hpdi_private, ptr %27, i32 0, i32 10
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end11.i, %if.then54
  %start.0.i = phi i32 [ %42, %if.then54 ], [ %63, %if.end11.i ]
  %desc.0.i = phi i32 [ 0, %if.then54 ], [ %inc19.i, %if.end11.i ]
  %idx.0.i = phi i32 [ %37, %if.then54 ], [ %rem.i, %if.end11.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %start.0.i)
  %cmp.i = icmp ult i32 %35, %start.0.i
  br i1 %cmp.i, label %for.cond.i.land.rhs.i_crit_edge, label %lor.lhs.false.i

for.cond.i.land.rhs.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

lor.lhs.false.i:                                  ; preds = %for.cond.i
  %43 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %block_size.i, align 4
  %add.i = add i32 %44, %start.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %add.i)
  %cmp3.not.i = icmp ult i32 %35, %add.i
  br i1 %cmp3.not.i, label %lor.lhs.false.i.if.end56_crit_edge, label %lor.lhs.false.i.land.rhs.i_crit_edge

lor.lhs.false.i.land.rhs.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

lor.lhs.false.i.if.end56_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

land.rhs.i:                                       ; preds = %lor.lhs.false.i.land.rhs.i_crit_edge, %for.cond.i.land.rhs.i_crit_edge
  %45 = ptrtoint ptr %num_dma_descriptors.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_dma_descriptors.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %desc.0.i, i32 %46)
  %cmp4.i = icmp ult i32 %desc.0.i, %46
  br i1 %cmp4.i, label %for.body.i, label %land.rhs.i.if.end56_crit_edge

land.rhs.i.if.end56_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

for.body.i:                                       ; preds = %land.rhs.i
  %47 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %block_size.i, align 4
  %div1.i = lshr i32 %48, 2
  %49 = ptrtoint ptr %stop_src.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %stop_src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %50)
  %cmp6.i = icmp eq i32 %50, 32
  br i1 %cmp6.i, label %if.then.i, label %for.body.i.if.end11.i_crit_edge

for.body.i.if.end11.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %dio_count.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dio_count.i, align 4
  %53 = tail call i32 @llvm.umin.i32(i32 %div1.i, i32 %52) #5
  %sub.i = sub i32 %52, %53
  %54 = ptrtoint ptr %dio_count.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %sub.i, ptr %dio_count.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then.i, %for.body.i.if.end11.i_crit_edge
  %size.1.i = phi i32 [ %53, %if.then.i ], [ %div1.i, %for.body.i.if.end11.i_crit_edge ]
  %arrayidx12.i = getelementptr %struct.hpdi_private, ptr %27, i32 0, i32 6, i32 %idx.0.i
  %55 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx12.i, align 4
  %call13.i = tail call i32 @comedi_buf_write_samples(ptr noundef %29, ptr noundef %56, i32 noundef %size.1.i) #5
  %inc.i = add i32 %idx.0.i, 1
  %57 = ptrtoint ptr %num_dma_descriptors.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_dma_descriptors.i, align 4
  %rem.i = urem i32 %inc.i, %58
  %59 = ptrtoint ptr %dma_desc.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dma_desc.i, align 4
  %arrayidx16.i = getelementptr %struct.plx_dma_desc, ptr %60, i32 %rem.i
  %61 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx16.i, align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #5
  %64 = ptrtoint ptr %dma_desc_index.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %rem.i, ptr %dma_desc_index.i, align 4
  %inc19.i = add nuw i32 %desc.0.i, 1
  br label %for.cond.i

if.end56:                                         ; preds = %land.rhs.i.if.end56_crit_edge, %lor.lhs.false.i.if.end56_crit_edge, %do.body43.if.end56_crit_edge, %do.body24.if.end56_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call28) #5
  %call67 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #5
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  %add.ptr75 = getelementptr i8, ptr %66, i32 169
  %67 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr75) #5, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !93
  %and79 = and i32 %10, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end56.if.end91_crit_edge, label %do.body82

if.end56.if.end91_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end91

do.body82:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  tail call void @arm_heavy_mb() #5
  %68 = and i8 %67, 1
  %69 = or i8 %68, 8
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 4
  %add.ptr90 = getelementptr i8, ptr %71, i32 169
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr90, i8 %69) #5, !srcloc !91
  br label %if.end91

if.end91:                                         ; preds = %do.body82, %if.end56.if.end91_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call67) #5
  %and93 = and i32 %10, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %if.end91.if.end108_crit_edge, label %if.then95

if.end91.if.end108_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end108

if.then95:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 4
  %add.ptr99 = getelementptr i8, ptr %73, i32 100
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr99) #5, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !96
  tail call void @arm_heavy_mb() #5
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %1, align 4
  %add.ptr107 = getelementptr i8, ptr %76, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr107, i32 %74) #5, !srcloc !71
  br label %if.end108

if.end108:                                        ; preds = %if.then95, %if.end91.if.end108_crit_edge
  %and109 = and i32 %17, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %if.end108.if.end116_crit_edge, label %do.end114

if.end108.if.end116_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end116

do.end114:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 4
  %77 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.20) #8
  %events = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 16
  %79 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %events, align 4
  %or115 = or i32 %80, 16
  store i32 %or115, ptr %events, align 4
  br label %if.end116

if.end116:                                        ; preds = %do.end114, %if.end108.if.end116_crit_edge
  %and117 = and i32 %17, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %if.end116.if.end126_crit_edge, label %do.end122

if.end116.if.end126_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end126

do.end122:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev123 = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 4
  %81 = ptrtoint ptr %class_dev123 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %class_dev123, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.24) #8
  %events124 = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 16
  %83 = ptrtoint ptr %events124 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %events124, align 4
  %or125 = or i32 %84, 16
  store i32 %or125, ptr %events124, align 4
  br label %if.end126

if.end126:                                        ; preds = %do.end122, %if.end116.if.end126_crit_edge
  %dio_count = getelementptr inbounds %struct.hpdi_private, ptr %1, i32 0, i32 10
  %85 = ptrtoint ptr %dio_count to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %dio_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp127 = icmp eq i32 %86, 0
  br i1 %cmp127, label %if.then129, label %if.end126.if.end132_crit_edge

if.end126.if.end132_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end132

if.then129:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #7
  %events130 = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 16
  %87 = ptrtoint ptr %events130 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %events130, align 4
  %or131 = or i32 %88, 2
  store i32 %or131, ptr %events130, align 4
  br label %if.end132

if.end132:                                        ; preds = %if.then129, %if.end126.if.end132_crit_edge
  %call133 = tail call i32 @comedi_handle_events(ptr noundef %d, ptr noundef %3) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end132, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end132 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsc_hpdi_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %1)
  %cond = icmp eq i32 %1, 22
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  %arrayidx1 = getelementptr i32, ptr %data, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i, align 4
  %dma_desc_phys_addr.i = getelementptr inbounds %struct.hpdi_private, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %dma_desc_phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_desc_phys_addr.i, align 4
  %8 = tail call i32 @llvm.umin.i32(i32 %3, i32 65536) #5
  %sub.i = and i32 %8, 131068
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp1.i = icmp eq i32 %sub.i, 0
  br i1 %cmp1.i, label %sw.bb.cleanup_crit_edge, label %for.cond.preheader.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader.i:                             ; preds = %sw.bb
  %dma_desc.i = getelementptr inbounds %struct.hpdi_private, ptr %5, i32 0, i32 3
  %9 = tail call i32 @llvm.bswap.i32(i32 %sub.i) #5
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.072.i = phi i32 [ 0, %for.cond.preheader.i ], [ %add11.i, %for.body.i.for.body.i_crit_edge ]
  %idx.071.i = phi i32 [ 0, %for.cond.preheader.i ], [ %spec.select69.i, %for.body.i.for.body.i_crit_edge ]
  %offset.070.i = phi i32 [ 0, %for.cond.preheader.i ], [ %spec.select.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.hpdi_private, ptr %5, i32 0, i32 2, i32 %idx.071.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %11, %offset.070.i
  %12 = tail call i32 @llvm.bswap.i32(i32 %add.i) #5
  %13 = ptrtoint ptr %dma_desc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dma_desc.i, align 4
  %arrayidx6.i = getelementptr %struct.plx_dma_desc, ptr %14, i32 %i.072.i
  %15 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %12, ptr %arrayidx6.i, align 4
  %16 = load ptr, ptr %dma_desc.i, align 4
  %local_start_addr.i = getelementptr %struct.plx_dma_desc, ptr %16, i32 %i.072.i, i32 1
  %17 = ptrtoint ptr %local_start_addr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 402653184, ptr %local_start_addr.i, align 4
  %18 = load ptr, ptr %dma_desc.i, align 4
  %transfer_size.i = getelementptr %struct.plx_dma_desc, ptr %18, i32 %i.072.i, i32 2
  %19 = ptrtoint ptr %transfer_size.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %9, ptr %transfer_size.i, align 4
  %add11.i = add nuw nsw i32 %i.072.i, 1
  %mul.i = shl nuw nsw i32 %add11.i, 4
  %add12.i = add i32 %mul.i, %7
  %or.i = or i32 %add12.i, 13
  %20 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %21 = ptrtoint ptr %dma_desc.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dma_desc.i, align 4
  %next.i = getelementptr %struct.plx_dma_desc, ptr %22, i32 %i.072.i, i32 3
  %23 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %20, ptr %next.i, align 4
  %arrayidx15.i = getelementptr %struct.hpdi_private, ptr %5, i32 0, i32 1, i32 %idx.071.i
  %24 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx15.i, align 4
  %div68.i = lshr i32 %offset.070.i, 2
  %add.ptr.i = getelementptr i32, ptr %25, i32 %div68.i
  %arrayidx16.i = getelementptr %struct.hpdi_private, ptr %5, i32 0, i32 6, i32 %i.072.i
  %26 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr.i, ptr %arrayidx16.i, align 4
  %add17.i = add i32 %offset.070.i, %sub.i
  %add18.i = add i32 %add17.i, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add18.i)
  %cmp19.i = icmp ugt i32 %add18.i, 65536
  %spec.select.i = select i1 %cmp19.i, i32 0, i32 %add17.i
  %inc.i = zext i1 %cmp19.i to i32
  %spec.select69.i = add nuw nsw i32 %idx.071.i, %inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %i.072.i)
  %cmp4.i = icmp ult i32 %i.072.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %spec.select69.i)
  %cmp5.i = icmp ult i32 %spec.select69.i, 4
  %or.cond.i = select i1 %cmp4.i, i1 %cmp5.i, i1 false
  br i1 %or.cond.i, label %for.body.i.for.body.i_crit_edge, label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %num_dma_descriptors.i = getelementptr inbounds %struct.hpdi_private, ptr %5, i32 0, i32 5
  %27 = ptrtoint ptr %num_dma_descriptors.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add11.i, ptr %num_dma_descriptors.i, align 4
  %or23.i = or i32 %7, 13
  %28 = tail call i32 @llvm.bswap.i32(i32 %or23.i) #5
  %29 = ptrtoint ptr %dma_desc.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dma_desc.i, align 4
  %next27.i = getelementptr %struct.plx_dma_desc, ptr %30, i32 %i.072.i, i32 3
  %31 = ptrtoint ptr %next27.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %28, ptr %next27.i, align 4
  %block_size.i = getelementptr inbounds %struct.hpdi_private, ptr %5, i32 0, i32 11
  %32 = ptrtoint ptr %block_size.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub.i, ptr %block_size.i, align 4
  br label %cleanup

sw.default:                                       ; preds = %entry
  %call3 = tail call i32 @comedi_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %sw.epilog, label %sw.default.cleanup_crit_edge

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %33 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default.cleanup_crit_edge, %for.end.i, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ %34, %sw.epilog ], [ %call3, %sw.default.cleanup_crit_edge ], [ %sub.i, %for.end.i ], [ -22, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsc_hpdi_cmd(ptr noundef %dev, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %async1 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %2 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %async1, align 4
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 12
  %4 = ptrtoint ptr %io_bits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  tail call void @arm_heavy_mb() #5
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %6 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 67108864) #5, !srcloc !71
  tail call fastcc void @gsc_hpdi_abort_dma(ptr noundef %dev, i32 noundef 0)
  %dma_desc_index = getelementptr inbounds %struct.hpdi_private, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %dma_desc_index to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %dma_desc_index, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !98
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %add.ptr6 = getelementptr i8, ptr %10, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #5, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %add.ptr11 = getelementptr i8, ptr %12, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 0) #5, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  tail call void @arm_heavy_mb() #5
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %add.ptr16 = getelementptr i8, ptr %14, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 0) #5, !srcloc !71
  %dma_desc_phys_addr = getelementptr inbounds %struct.hpdi_private, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %dma_desc_phys_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_desc_phys_addr, align 4
  %or18 = or i32 %16, 13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !101
  tail call void @arm_heavy_mb() #5
  %17 = tail call i32 @llvm.bswap.i32(i32 %or18)
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %add.ptr23 = getelementptr i8, ptr %19, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %17) #5, !srcloc !71
  %spinlock = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  tail call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %add.ptr35 = getelementptr i8, ptr %21, i32 168
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr35, i8 11) #5, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call26) #5
  %stop_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 10
  %22 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %23)
  %cmp37 = icmp eq i32 %23, 32
  br i1 %cmp37, label %if.then39, label %do.body.do.body42_crit_edge

do.body.do.body42_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body42

if.then39:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %stop_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 11
  %24 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %stop_arg, align 4
  br label %do.body42

do.body42:                                        ; preds = %if.then39, %do.body.do.body42_crit_edge
  %.sink = phi i32 [ %25, %if.then39 ], [ 1, %do.body.do.body42_crit_edge ]
  %26 = getelementptr inbounds %struct.hpdi_private, ptr %1, i32 0, i32 10
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.sink, ptr %26, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void @arm_heavy_mb() #5
  %28 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio, align 4
  %add.ptr46 = getelementptr i8, ptr %29, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 49152) #5, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %30 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio, align 4
  %add.ptr51 = getelementptr i8, ptr %31, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 8388608) #5, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  %32 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio, align 4
  %add.ptr56 = getelementptr i8, ptr %33, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 536870912) #5, !srcloc !71
  br label %cleanup

cleanup:                                          ; preds = %do.body42, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body42 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsc_hpdi_cmd_test(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 12
  %0 = ptrtoint ptr %io_bits to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
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
  %and.i84 = and i32 %5, 64
  store i32 %and.i84, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i84)
  %cmp.i85 = icmp ne i32 %and.i84, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i84, i32 %5)
  %cmp1.not.i86 = icmp eq i32 %and.i84, %5
  %or.cond.i87 = and i1 %cmp.i85, %cmp1.not.i86
  %6 = select i1 %or.cond.i, i1 %or.cond.i87, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %7 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %convert_src, align 4
  %and.i89 = and i32 %8, 2
  store i32 %and.i89, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i89)
  %cmp.i90 = icmp ne i32 %and.i89, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i89, i32 %8)
  %cmp1.not.i91 = icmp eq i32 %and.i89, %8
  %or.cond.i92 = and i1 %cmp.i90, %cmp1.not.i91
  %9 = select i1 %6, i1 %or.cond.i92, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %10 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %scan_end_src, align 4
  %and.i94 = and i32 %11, 32
  store i32 %and.i94, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i94)
  %cmp.i95 = icmp ne i32 %and.i94, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i94, i32 %11)
  %cmp1.not.i96 = icmp eq i32 %and.i94, %11
  %or.cond.i97 = and i1 %cmp.i95, %cmp1.not.i96
  %12 = select i1 %9, i1 %or.cond.i97, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %13 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stop_src, align 4
  %and.i99 = and i32 %14, 33
  store i32 %and.i99, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i99)
  %cmp.i100 = icmp ne i32 %and.i99, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i99, i32 %14)
  %cmp1.not.i101 = icmp eq i32 %and.i99, %14
  %or.cond.i102 = and i1 %cmp.i100, %cmp1.not.i101
  %15 = select i1 %12, i1 %or.cond.i102, i1 false
  br i1 %15, label %if.end11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %16 = tail call i32 @llvm.ctpop.i32(i32 %14) #5, !range !106
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp.not.i = icmp ult i32 %16, 2
  br i1 %cmp.not.i, label %if.end17, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %17 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not.i104 = icmp eq i32 %18, 0
  br i1 %cmp.not.i104, label %if.end17.comedi_check_trigger_arg_is.exit_crit_edge, label %if.then.i

if.end17.comedi_check_trigger_arg_is.exit_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %comedi_check_trigger_arg_is.exit

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %start_arg, align 4
  br label %comedi_check_trigger_arg_is.exit

comedi_check_trigger_arg_is.exit:                 ; preds = %if.then.i, %if.end17.comedi_check_trigger_arg_is.exit_crit_edge
  %retval.0.i105 = phi i32 [ -22, %if.then.i ], [ 0, %if.end17.comedi_check_trigger_arg_is.exit_crit_edge ]
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %20 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool20.not = icmp eq i32 %21, 0
  br i1 %tobool20.not, label %comedi_check_trigger_arg_is.exit.if.then22_crit_edge, label %lor.lhs.false

comedi_check_trigger_arg_is.exit.if.then22_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then22

lor.lhs.false:                                    ; preds = %comedi_check_trigger_arg_is.exit
  %chanlist = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %22 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chanlist, align 4
  %tobool21.not = icmp eq ptr %23, null
  br i1 %tobool21.not, label %lor.lhs.false.if.then22_crit_edge, label %if.end25thread-pre-split

lor.lhs.false.if.then22_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then22

if.then22:                                        ; preds = %lor.lhs.false.if.then22_crit_edge, %comedi_check_trigger_arg_is.exit.if.then22_crit_edge
  %24 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 32, ptr %chanlist_len, align 4
  br label %if.end25

if.end25thread-pre-split:                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr = load i32, ptr %chanlist_len, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.end25thread-pre-split, %if.then22
  %26 = phi i32 [ %.pr, %if.end25thread-pre-split ], [ 32, %if.then22 ]
  %err.0 = phi i32 [ %retval.0.i105, %if.end25thread-pre-split ], [ -22, %if.then22 ]
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %27 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %26)
  %cmp.not.i106 = icmp eq i32 %28, %26
  br i1 %cmp.not.i106, label %if.end25.comedi_check_trigger_arg_is.exit109_crit_edge, label %if.then.i107

if.end25.comedi_check_trigger_arg_is.exit109_crit_edge: ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %comedi_check_trigger_arg_is.exit109

if.then.i107:                                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %26, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit109

comedi_check_trigger_arg_is.exit109:              ; preds = %if.then.i107, %if.end25.comedi_check_trigger_arg_is.exit109_crit_edge
  %retval.0.i108 = phi i32 [ -22, %if.then.i107 ], [ 0, %if.end25.comedi_check_trigger_arg_is.exit109_crit_edge ]
  %or28 = or i32 %retval.0.i108, %err.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %14)
  %cmp = icmp eq i32 %14, 32
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %30 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i110 = icmp eq i32 %31, 0
  br i1 %cmp, label %if.then30, label %if.else

if.then30:                                        ; preds = %comedi_check_trigger_arg_is.exit109
  br i1 %cmp.i110, label %if.then30.if.end36.sink.split_crit_edge, label %if.then30.if.end36_crit_edge

if.then30.if.end36_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then30.if.end36.sink.split_crit_edge:          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.sink.split

if.else:                                          ; preds = %comedi_check_trigger_arg_is.exit109
  br i1 %cmp.i110, label %if.else.if.end36_crit_edge, label %if.else.if.end36.sink.split_crit_edge

if.else.if.end36.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.sink.split

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.end36.sink.split:                              ; preds = %if.else.if.end36.sink.split_crit_edge, %if.then30.if.end36.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then30.if.end36.sink.split_crit_edge ], [ 0, %if.else.if.end36.sink.split_crit_edge ]
  %32 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink, ptr %stop_arg, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.end36.sink.split, %if.else.if.end36_crit_edge, %if.then30.if.end36_crit_edge
  %call31.pn = phi i32 [ 0, %if.then30.if.end36_crit_edge ], [ 0, %if.else.if.end36_crit_edge ], [ -22, %if.end36.sink.split ]
  %err.1 = or i32 %or28, %call31.pn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool37.not = icmp eq i32 %err.1, 0
  br i1 %tobool37.not, label %if.end39, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end39:                                         ; preds = %if.end36
  %chanlist40 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %33 = ptrtoint ptr %chanlist40 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chanlist40, align 4
  %tobool41.not = icmp eq ptr %34, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp43.not = icmp eq i32 %26, 0
  %or.cond = select i1 %tobool41.not, i1 true, i1 %cmp43.not
  br i1 %or.cond, label %if.end39.if.end47.thread_crit_edge, label %if.end47

if.end39.if.end47.thread_crit_edge:               ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47.thread

if.end47:                                         ; preds = %if.end39
  %call45 = tail call fastcc i32 @gsc_hpdi_check_chanlist(ptr noundef %dev, ptr noundef %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %phi.cmp = icmp eq i32 %call45, 0
  br i1 %phi.cmp, label %if.end47.if.end47.thread_crit_edge, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end47.if.end47.thread_crit_edge:               ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47.thread

if.end47.thread:                                  ; preds = %if.end47.if.end47.thread_crit_edge, %if.end39.if.end47.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end47.thread, %if.end47.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 2, %if.end11.cleanup_crit_edge ], [ 3, %if.end36.cleanup_crit_edge ], [ 0, %if.end47.thread ], [ 5, %if.end47.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsc_hpdi_cancel(ptr noundef %dev, ptr nocapture noundef readnone %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %add.ptr4 = getelementptr i8, ptr %3, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 0) #5, !srcloc !71
  tail call fastcc void @gsc_hpdi_abort_dma(ptr noundef %dev, i32 noundef 0)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gsc_hpdi_abort_dma(ptr noundef %dev, i32 noundef %channel) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %spinlock = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %tobool.not.i = icmp eq i32 %channel, 0
  %cond.i = select i1 %tobool.not.i, i32 168, i32 169
  %add.ptr.i = getelementptr i8, ptr %3, i32 %cond.i
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #5, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !109
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i = icmp eq i8 %5, 0
  br i1 %cmp.i, label %entry.plx9080_abort_dma.exit_crit_edge, label %for.cond.preheader.i

entry.plx9080_abort_dma.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %plx9080_abort_dma.exit

for.cond.preheader.i:                             ; preds = %entry
  %6 = and i8 %4, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not2.not.i = icmp eq i8 %6, 0
  br i1 %tobool5.not2.not.i, label %for.cond.preheader.i.do.body.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.do.body.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.03.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #5
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #5, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !110
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %9 = and i8 %8, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not.i = icmp ne i8 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999, i32 %i.03.i)
  %cmp6.i = icmp ult i32 %i.03.i, 9999
  %or.cond.i = select i1 %tobool5.not.i, i1 %cmp6.i, i1 false
  br i1 %or.cond.i, label %for.body.i.for.body.i_crit_edge, label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %inc.i)
  %phi.cmp.i = icmp eq i32 %inc.i, 10000
  br i1 %phi.cmp.i, label %for.end.i.plx9080_abort_dma.exit_crit_edge, label %for.end.i.do.body.i_crit_edge

for.end.i.do.body.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

for.end.i.plx9080_abort_dma.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %plx9080_abort_dma.exit

do.body.i:                                        ; preds = %for.end.i.do.body.i_crit_edge, %for.cond.preheader.i.do.body.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 4) #5, !srcloc !91
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #5, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  %11 = and i8 %10, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp254.i = icmp eq i8 %11, 0
  br i1 %cmp254.i, label %do.body.i.for.body31.i_crit_edge, label %do.body.i.plx9080_abort_dma.exit_crit_edge

do.body.i.plx9080_abort_dma.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %plx9080_abort_dma.exit

do.body.i.for.body31.i_crit_edge:                 ; preds = %do.body.i
  br label %for.body31.i

for.body31.i:                                     ; preds = %for.body31.i.for.body31.i_crit_edge, %do.body.i.for.body31.i_crit_edge
  %i.15.i = phi i32 [ %inc38.i, %for.body31.i.for.body31.i_crit_edge ], [ 0, %do.body.i.for.body31.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #5
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #5, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  %inc38.i = add nuw nsw i32 %i.15.i, 1
  %14 = and i8 %13, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp25.i = icmp eq i8 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999, i32 %i.15.i)
  %cmp28.i = icmp ult i32 %i.15.i, 9999
  %or.cond1.i = select i1 %cmp25.i, i1 %cmp28.i, i1 false
  br i1 %or.cond1.i, label %for.body31.i.for.body31.i_crit_edge, label %for.body31.i.plx9080_abort_dma.exit_crit_edge

for.body31.i.plx9080_abort_dma.exit_crit_edge:    ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %plx9080_abort_dma.exit

for.body31.i.for.body31.i_crit_edge:              ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body31.i

plx9080_abort_dma.exit:                           ; preds = %for.body31.i.plx9080_abort_dma.exit_crit_edge, %do.body.i.plx9080_abort_dma.exit_crit_edge, %for.end.i.plx9080_abort_dma.exit_crit_edge, %entry.plx9080_abort_dma.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_handle_events(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_insn_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gsc_hpdi_check_chanlist(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %0 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp3.not = icmp eq i32 %1, 0
  br i1 %cmp3.not, label %entry.cleanup7_crit_edge, label %for.body.lr.ph

entry.cleanup7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup7

for.body.lr.ph:                                   ; preds = %entry
  %chanlist = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %2 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chanlist, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.cond.cleanup7_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond.cleanup7_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup7

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.04 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %3, i32 %i.04
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %and = and i32 %5, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %i.04)
  %cmp1.not = icmp eq i32 %and, %i.04
  br i1 %cmp1.not, label %for.cond, label %do.body

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsc_hpdi_check_chanlist.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gsc_hpdi_check_chanlist, %cleanup7)) #5
          to label %if.then5 [label %cleanup7], !srcloc !75

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %6 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gsc_hpdi_check_chanlist.__UNIQUE_ID_ddebug236, ptr noundef %7, ptr noundef nonnull @.str.27) #5
  br label %cleanup7

cleanup7:                                         ; preds = %if.then5, %do.body, %for.cond.cleanup7_crit_edge, %entry.cleanup7_crit_edge
  %retval.2 = phi i32 [ -22, %if.then5 ], [ -22, %do.body ], [ 0, %entry.cleanup7_crit_edge ], [ 0, %for.cond.cleanup7_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsc_hpdi_pci_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %call = tail call i32 @comedi_pci_auto_config(ptr noundef %dev, ptr noundef nonnull @gsc_hpdi_driver, i32 noundef %1) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_auto_unconfig(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_auto_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__initcall__kmod_gsc_hpdi__238_718_gsc_hpdi_driver_init6, !1, !"__initcall__kmod_gsc_hpdi__238_718_gsc_hpdi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/gsc_hpdi.c", i32 718, i32 1}
!2 = !{ptr @__exitcall_gsc_hpdi_driver_exit, !1, !"__exitcall_gsc_hpdi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author239, !4, !"__UNIQUE_ID_author239", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/gsc_hpdi.c", i32 720, i32 1}
!5 = !{ptr @__UNIQUE_ID_description240, !6, !"__UNIQUE_ID_description240", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/gsc_hpdi.c", i32 721, i32 1}
!7 = !{ptr @__UNIQUE_ID_file241, !8, !"__UNIQUE_ID_file241", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/gsc_hpdi.c", i32 722, i32 1}
!9 = !{ptr @__UNIQUE_ID_license242, !8, !"__UNIQUE_ID_license242", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/gsc_hpdi.c", i32 693, i32 17}
!12 = !{ptr @gsc_hpdi_driver, !13, !"gsc_hpdi_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/gsc_hpdi.c", i32 692, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/gsc_hpdi.c", i32 588, i32 20}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/comedi/drivers/gsc_hpdi.c", i32 602, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @gsc_hpdi_auto_attach._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @gsc_hpdi_auto_attach._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/comedi/drivers/gsc_hpdi.c", i32 611, i32 3}
!26 = !{ptr @gsc_hpdi_auto_attach._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @gsc_hpdi_auto_attach._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/comedi/drivers/gsc_hpdi.c", i32 617, i32 2}
!30 = !{ptr @gsc_hpdi_auto_attach.__UNIQUE_ID_ddebug237, !29, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/comedi/drivers/gsc_hpdi.c", i32 626, i32 4}
!33 = !{ptr @gsc_hpdi_auto_attach._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @gsc_hpdi_auto_attach._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/comedi/drivers/gsc_hpdi.c", i32 638, i32 3}
!37 = !{ptr @gsc_hpdi_auto_attach._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @gsc_hpdi_auto_attach._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/comedi/drivers/gsc_hpdi.c", i32 643, i32 3}
!41 = !{ptr @gsc_hpdi_auto_attach._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @gsc_hpdi_auto_attach._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/comedi/drivers/gsc_hpdi.c", i32 233, i32 3}
!45 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @gsc_hpdi_interrupt._entry, !44, !"_entry", i1 false, i1 false}
!48 = !{ptr @gsc_hpdi_interrupt._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/comedi/drivers/gsc_hpdi.c", i32 238, i32 3}
!51 = !{ptr @gsc_hpdi_interrupt._entry.23, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @gsc_hpdi_interrupt._entry_ptr.25, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/comedi/drivers/gsc_hpdi.c", i32 339, i32 4}
!55 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @gsc_hpdi_check_chanlist.__UNIQUE_ID_ddebug236, !54, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!57 = !{ptr @gsc_hpdi_pci_driver, !58, !"gsc_hpdi_pci_driver", i1 false, i1 false}
!58 = !{!"../drivers/comedi/drivers/gsc_hpdi.c", i32 712, i32 26}
!59 = !{ptr @gsc_hpdi_pci_table, !60, !"gsc_hpdi_pci_table", i1 false, i1 false}
!60 = !{!"../drivers/comedi/drivers/gsc_hpdi.c", i32 705, i32 35}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{i64 2154615159}
!71 = !{i64 4642167}
!72 = !{i64 2154602071}
!73 = !{i64 2154602494}
!74 = !{i64 2154603570}
!75 = !{i64 2148971914, i64 2148971919, i64 2148971932, i64 2148971976, i64 2148972010, i64 2148972031}
!76 = !{i64 2154597728}
!77 = !{i64 2154598288}
!78 = !{i64 2154598917}
!79 = !{i64 4642585}
!80 = !{i64 2154599719}
!81 = !{i64 2154600221}
!82 = !{i64 2154600452}
!83 = !{i64 2154601448}
!84 = !{i64 2154578499}
!85 = !{i64 2154579238}
!86 = !{i64 2154579725}
!87 = !{i64 2154579956}
!88 = !{i64 4642365}
!89 = !{i64 2154580794}
!90 = !{i64 2154581347}
!91 = !{i64 4641970}
!92 = !{i64 2154577561}
!93 = !{i64 2154582191}
!94 = !{i64 2154582744}
!95 = !{i64 2154583510}
!96 = !{i64 2154583749}
!97 = !{i64 2154588676}
!98 = !{i64 2154589154}
!99 = !{i64 2154589568}
!100 = !{i64 2154589982}
!101 = !{i64 2154590645}
!102 = !{i64 2154591760}
!103 = !{i64 2154592363}
!104 = !{i64 2154593032}
!105 = !{i64 2154593605}
!106 = !{i32 0, i32 33}
!107 = !{i64 2154587797}
!108 = !{i64 2154588181}
!109 = !{i64 2154574474}
!110 = !{i64 2154575394}
!111 = !{i64 2154575712}
!112 = !{i64 2154576003}
!113 = !{i64 2154576841}
