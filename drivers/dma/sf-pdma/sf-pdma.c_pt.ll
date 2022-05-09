; ModuleID = '/llk/IR_all_yes/drivers/dma/sf-pdma/sf-pdma.c_pt.bc'
source_filename = "../drivers/dma/sf-pdma/sf-pdma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.sf_pdma = type { %struct.dma_device, ptr, ptr, i32, [4 x %struct.sf_pdma_chan] }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.sf_pdma_chan = type { %struct.virt_dma_chan, i32, i32, i32, ptr, ptr, %struct.dma_slave_config, i32, i32, i32, %struct.tasklet_struct, %struct.tasklet_struct, %struct.pdma_regs, %struct.spinlock, i8, i32, i32, i32 }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.pdma_regs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.sf_pdma_desc = type { i32, i64, i64, i64, %struct.virt_dma_desc, ptr, i8, i32, ptr }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }

@sf_pdma_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sf_pdma_probe, ptr @sf_pdma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sf_pdma_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_sf_pdma__238_601_sf_pdma_init4 = internal global ptr @sf_pdma_init, section ".initcall4.init", align 4
@__exitcall_sf_pdma_exit = internal global ptr @sf_pdma_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file239 = internal constant [41 x i8] c"sf_pdma.file=drivers/dma/sf-pdma/sf-pdma\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [23 x i8] c"sf_pdma.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [47 x i8] c"sf_pdma.description=SiFive Platform DMA driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [48 x i8] c"sf_pdma.author=Green Wan <green.wan@sifive.com>\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sf-pdma\00", [24 x i8] zeroinitializer }, align 32
@sf_pdma_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sifive,fu540-c000-pdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sf_pdma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 541, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to set DMA mask. Fall back to default.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sf_pdma_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/dma/sf-pdma/sf-pdma.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sf_pdma_probe._entry_ptr = internal global ptr @sf_pdma_probe._entry, section ".printk_index", align 4
@sf_pdma_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 546, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Can't register SiFive Platform DMA. (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@sf_pdma_probe._entry_ptr.9 = internal global ptr @sf_pdma_probe._entry.6, section ".printk_index", align 4
@sf_pdma_irq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 393, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ch(%d) Can't get done irq.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sf_pdma_irq_init\00", [47 x i8] zeroinitializer }, align 32
@sf_pdma_irq_init._entry_ptr = internal global ptr @sf_pdma_irq_init._entry, section ".printk_index", align 4
@sf_pdma_irq_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.3, i32 400, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Fail to attach done ISR: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@sf_pdma_irq_init._entry_ptr.14 = internal global ptr @sf_pdma_irq_init._entry.12, section ".printk_index", align 4
@sf_pdma_irq_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.3, i32 408, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ch(%d) Can't get err irq.\0A\00", [37 x i8] zeroinitializer }, align 32
@sf_pdma_irq_init._entry_ptr.17 = internal global ptr @sf_pdma_irq_init._entry.15, section ".printk_index", align 4
@sf_pdma_irq_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str.3, i32 415, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Fail to attach err ISR: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@sf_pdma_irq_init._entry_ptr.20 = internal global ptr @sf_pdma_irq_init._entry.18, section ".printk_index", align 4
@sf_pdma_xfer_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 250, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"NULL desc.\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sf_pdma_xfer_desc\00", [46 x i8] zeroinitializer }, align 32
@sf_pdma_xfer_desc._entry_ptr = internal global ptr @sf_pdma_xfer_desc._entry, section ".printk_index", align 4
@sf_pdma_setup_chans.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&chan->lock\00", [20 x i8] zeroinitializer }, align 32
@vchan_cookie_complete.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, i8 0, i8 25, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sf_pdma\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vchan_cookie_complete\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/dma/sf-pdma/../virt-dma.h\00", [62 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"txd %p[%x]: marked complete\0A\00", [35 x i8] zeroinitializer }, align 32
@sf_pdma_prep_dma_memcpy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 101, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Please check dma len, dest, src!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sf_pdma_prep_dma_memcpy\00", [40 x i8] zeroinitializer }, align 32
@sf_pdma_prep_dma_memcpy._entry_ptr = internal global ptr @sf_pdma_prep_dma_memcpy._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.30 = private unnamed_addr constant [15 x i8] c"sf_pdma_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 581, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 585, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [15 x i8] c"sf_pdma_dt_ids\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 575, i32 34 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 540, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 545, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 393, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 400, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 408, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 415, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 250, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 470, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [37 x i8] c"../drivers/dma/sf-pdma/../virt-dma.h\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 101, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.127 = private constant [33 x i8] c"../drivers/dma/sf-pdma/sf-pdma.c\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 100, i32 3 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_sf_pdma_exit, ptr @__initcall__kmod_sf_pdma__238_601_sf_pdma_init4, ptr @sf_pdma_exit, ptr @sf_pdma_irq_init._entry, ptr @sf_pdma_irq_init._entry.12, ptr @sf_pdma_irq_init._entry.15, ptr @sf_pdma_irq_init._entry.18, ptr @sf_pdma_irq_init._entry_ptr, ptr @sf_pdma_irq_init._entry_ptr.14, ptr @sf_pdma_irq_init._entry_ptr.17, ptr @sf_pdma_irq_init._entry_ptr.20, ptr @sf_pdma_prep_dma_memcpy._entry, ptr @sf_pdma_prep_dma_memcpy._entry_ptr, ptr @sf_pdma_probe._entry, ptr @sf_pdma_probe._entry.6, ptr @sf_pdma_probe._entry_ptr, ptr @sf_pdma_probe._entry_ptr.9, ptr @sf_pdma_xfer_desc._entry, ptr @sf_pdma_xfer_desc._entry_ptr, ptr @sf_pdma_driver, ptr @.str, ptr @sf_pdma_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @sf_pdma_setup_chans.__key, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sf_pdma_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sf_pdma_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sf_pdma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sf_pdma_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sf_pdma_irq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sf_pdma_irq_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sf_pdma_irq_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sf_pdma_irq_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sf_pdma_xfer_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sf_pdma_setup_chans.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sf_pdma_prep_dma_memcpy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sf_pdma_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @sf_pdma_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sf_pdma_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sf_pdma_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sf_pdma_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 3608, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %n_chans = getelementptr inbounds %struct.sf_pdma, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %n_chans to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4, ptr %n_chans, align 4
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %call3 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call1) #9
  %membase = getelementptr inbounds %struct.sf_pdma, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %membase, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %3 = ptrtoint ptr %n_chans to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %n_chans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp76.not.i = icmp eq i32 %4, 0
  br i1 %cmp76.not.i, label %if.end13.thread, label %for.body.lr.ph.i

if.end13.thread:                                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %channels.i103 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %channels.i103 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %channels.i103, ptr %channels.i103, align 4
  %prev.i.i104 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %prev.i.i104 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %channels.i103, ptr %prev.i.i104, align 4
  br label %sf_pdma_setup_chans.exit

for.body.lr.ph.i:                                 ; preds = %if.end9
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %if.end31.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.077.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end31.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.sf_pdma, ptr %call.i, i32 0, i32 4, i32 %i.077.i
  %mul.i = shl i32 %i.077.i, 1
  %call.i88 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef %mul.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %cmp1.i = icmp slt i32 %call.i88, 0
  br i1 %cmp1.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %i.077.i) #12
  br label %cleanup

if.end.i:                                         ; preds = %for.body.i
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.dev_name.exit.i_crit_edge

if.end.i.dev_name.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %if.end.i.dev_name.exit.i_crit_edge ]
  %call.i.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call.i88, ptr noundef nonnull @sf_pdma_done_isr, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i.i, ptr noundef %arrayidx.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end11.i, label %do.end9.i

do.end9.i:                                        ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call.i.i) #12
  br label %cleanup

if.end11.i:                                       ; preds = %dev_name.exit.i
  %txirq.i = getelementptr %struct.sf_pdma, ptr %call.i, i32 0, i32 4, i32 %i.077.i, i32 15
  %11 = ptrtoint ptr %txirq.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call.i88, ptr %txirq.i, align 4
  %add.i = or i32 %mul.i, 1
  %call13.i = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef %add.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %do.end18.i, label %if.end20.i

do.end18.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %i.077.i) #12
  br label %cleanup

if.end20.i:                                       ; preds = %if.end11.i
  %12 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i63.i = icmp eq ptr %13, null
  br i1 %tobool.not.i63.i, label %if.end.i64.i, label %if.end20.i.dev_name.exit66.i_crit_edge

if.end20.i.dev_name.exit66.i_crit_edge:           ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit66.i

if.end.i64.i:                                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  br label %dev_name.exit66.i

dev_name.exit66.i:                                ; preds = %if.end.i64.i, %if.end20.i.dev_name.exit66.i_crit_edge
  %retval.0.i65.i = phi ptr [ %15, %if.end.i64.i ], [ %13, %if.end20.i.dev_name.exit66.i_crit_edge ]
  %call.i67.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call13.i, ptr noundef nonnull @sf_pdma_err_isr, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i65.i, ptr noundef %arrayidx.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67.i)
  %tobool25.not.i = icmp eq i32 %call.i67.i, 0
  br i1 %tobool25.not.i, label %if.end31.i, label %do.end29.i

do.end29.i:                                       ; preds = %dev_name.exit66.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %call.i67.i) #12
  br label %cleanup

if.end31.i:                                       ; preds = %dev_name.exit66.i
  %errirq.i = getelementptr %struct.sf_pdma, ptr %call.i, i32 0, i32 4, i32 %i.077.i, i32 16
  %16 = ptrtoint ptr %errirq.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call13.i, ptr %errirq.i, align 4
  %inc.i = add nuw i32 %i.077.i, 1
  %17 = ptrtoint ptr %n_chans to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n_chans, align 4
  %cmp.i89 = icmp ult i32 %inc.i, %18
  br i1 %cmp.i89, label %if.end31.i.for.body.i_crit_edge, label %if.end13

if.end31.i.for.body.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end13:                                         ; preds = %if.end31.i
  %channels.i = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3
  %19 = ptrtoint ptr %channels.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %channels.i, ptr %channels.i, align 4
  %prev.i.i = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %channels.i, ptr %prev.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp93.not.i = icmp eq i32 %18, 0
  br i1 %cmp93.not.i, label %if.end13.sf_pdma_setup_chans.exit_crit_edge, label %if.end13.for.body.i96_crit_edge

if.end13.for.body.i96_crit_edge:                  ; preds = %if.end13
  br label %for.body.i96

if.end13.sf_pdma_setup_chans.exit_crit_edge:      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sf_pdma_setup_chans.exit

for.body.i96:                                     ; preds = %for.body.i96.for.body.i96_crit_edge, %if.end13.for.body.i96_crit_edge
  %i.094.i = phi i32 [ %inc.i94, %for.body.i96.for.body.i96_crit_edge ], [ 0, %if.end13.for.body.i96_crit_edge ]
  %arrayidx.i92 = getelementptr %struct.sf_pdma, ptr %call.i, i32 0, i32 4, i32 %i.094.i
  %21 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase, align 4
  %mul.i93 = shl i32 %i.094.i, 12
  %add.ptr.i = getelementptr i8, ptr %22, i32 %mul.i93
  %regs.i = getelementptr %struct.sf_pdma, ptr %call.i, i32 0, i32 4, i32 %i.094.i, i32 12
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr.i, ptr %regs.i, align 4
  %24 = load ptr, ptr %membase, align 4
  %add.ptr4.i = getelementptr i8, ptr %24, i32 4
  %add.ptr5.i = getelementptr i8, ptr %add.ptr4.i, i32 %mul.i93
  %xfer_type.i = getelementptr %struct.sf_pdma, ptr %call.i, i32 0, i32 4, i32 %i.094.i, i32 12, i32 1
  %25 = ptrtoint ptr %xfer_type.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr5.i, ptr %xfer_type.i, align 4
  %26 = load ptr, ptr %membase, align 4
  %add.ptr9.i = getelementptr i8, ptr %26, i32 8
  %add.ptr10.i = getelementptr i8, ptr %add.ptr9.i, i32 %mul.i93
  %xfer_size.i = getelementptr %struct.sf_pdma, ptr %call.i, i32 0, i32 4, i32 %i.094.i, i32 12, i32 2
  %27 = ptrtoint ptr %xfer_size.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr10.i, ptr %xfer_size.i, align 4
  %28 = load ptr, ptr %membase, align 4
  %add.ptr14.i = getelementptr i8, ptr %28, i32 16
  %add.ptr15.i = getelementptr i8, ptr %add.ptr14.i, i32 %mul.i93
  %dst_addr.i = getelementptr %struct.sf_pdma, ptr %call.i, i32 0, i32 4, i32 %i.094.i, i32 12, i32 3
  %29 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr15.i, ptr %dst_addr.i, align 4
  %30 = load ptr, ptr %membase, align 4
  %add.ptr19.i = getelementptr i8, ptr %30, i32 24
  %add.ptr20.i = getelementptr i8, ptr %add.ptr19.i, i32 %mul.i93
  %src_addr.i = getelementptr %struct.sf_pdma, ptr %call.i, i32 0, i32 4, i32 %i.094.i, i32 12, i32 4
  %31 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr20.i, ptr %src_addr.i, align 4
  %32 = load ptr, ptr %membase, align 4
  %add.ptr24.i = getelementptr i8, ptr %32, i32 260
  %add.ptr25.i = getelementptr i8, ptr %add.ptr24.i, i32 %mul.i93
  %act_type.i = getelementptr %struct.sf_pdma, ptr %call.i, i32 0, i32 4, i32 %i.094.i, i32 12, i32 5
  %33 = ptrtoint ptr %act_type.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr25.i, ptr %act_type.i, align 4
  %34 = load ptr, ptr %membase, align 4
  %add.ptr29.i = getelementptr i8, ptr %34, i32 264
  %add.ptr30.i = getelementptr i8, ptr %add.ptr29.i, i32 %mul.i93
  %residue.i = getelementptr %struct.sf_pdma, ptr %call.i, i32 0, i32 4, i32 %i.094.i, i32 12, i32 6
  %35 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr30.i, ptr %residue.i, align 4
  %36 = load ptr, ptr %membase, align 4
  %add.ptr34.i = getelementptr i8, ptr %36, i32 272
  %add.ptr35.i = getelementptr i8, ptr %add.ptr34.i, i32 %mul.i93
  %cur_dst_addr.i = getelementptr %struct.sf_pdma, ptr %call.i, i32 0, i32 4, i32 %i.094.i, i32 12, i32 7
  %37 = ptrtoint ptr %cur_dst_addr.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr35.i, ptr %cur_dst_addr.i, align 4
  %38 = load ptr, ptr %membase, align 4
  %add.ptr39.i = getelementptr i8, ptr %38, i32 280
  %add.ptr40.i = getelementptr i8, ptr %add.ptr39.i, i32 %mul.i93
  %cur_src_addr.i = getelementptr %struct.sf_pdma, ptr %call.i, i32 0, i32 4, i32 %i.094.i, i32 12, i32 8
  %39 = ptrtoint ptr %cur_src_addr.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr40.i, ptr %cur_src_addr.i, align 4
  %pdma42.i = getelementptr %struct.sf_pdma, ptr %call.i, i32 0, i32 4, i32 %i.094.i, i32 4
  %40 = ptrtoint ptr %pdma42.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i, ptr %pdma42.i, align 4
  %pm_state.i = getelementptr %struct.sf_pdma, ptr %call.i, i32 0, i32 4, i32 %i.094.i, i32 2
  %41 = ptrtoint ptr %pm_state.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %pm_state.i, align 4
  %slave_id.i = getelementptr %struct.sf_pdma, ptr %call.i, i32 0, i32 4, i32 %i.094.i, i32 3
  %42 = ptrtoint ptr %slave_id.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %i.094.i, ptr %slave_id.i, align 4
  %xfer_err.i = getelementptr %struct.sf_pdma, ptr %call.i, i32 0, i32 4, i32 %i.094.i, i32 14
  %43 = ptrtoint ptr %xfer_err.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %xfer_err.i, align 4
  %lock.i = getelementptr %struct.sf_pdma, ptr %call.i, i32 0, i32 4, i32 %i.094.i, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @sf_pdma_setup_chans.__key, i16 noundef signext 3) #9
  %desc_free.i = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx.i92, i32 0, i32 2
  %44 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @sf_pdma_free_desc, ptr %desc_free.i, align 4
  tail call void @vchan_init(ptr noundef %arrayidx.i92, ptr noundef %call.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  tail call void @arm_heavy_mb() #9
  %45 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 0) #9, !srcloc !76
  %done_tasklet.i = getelementptr %struct.sf_pdma, ptr %call.i, i32 0, i32 4, i32 %i.094.i, i32 10
  tail call void @tasklet_setup(ptr noundef %done_tasklet.i, ptr noundef nonnull @sf_pdma_donebh_tasklet) #9
  %err_tasklet.i = getelementptr %struct.sf_pdma, ptr %call.i, i32 0, i32 4, i32 %i.094.i, i32 11
  tail call void @tasklet_setup(ptr noundef %err_tasklet.i, ptr noundef nonnull @sf_pdma_errbh_tasklet) #9
  %inc.i94 = add nuw i32 %i.094.i, 1
  %47 = ptrtoint ptr %n_chans to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %n_chans, align 4
  %cmp.i95 = icmp ult i32 %inc.i94, %48
  br i1 %cmp.i95, label %for.body.i96.for.body.i96_crit_edge, label %for.body.i96.sf_pdma_setup_chans.exit_crit_edge

for.body.i96.sf_pdma_setup_chans.exit_crit_edge:  ; preds = %for.body.i96
  call void @__sanitizer_cov_trace_pc() #11
  br label %sf_pdma_setup_chans.exit

for.body.i96.for.body.i96_crit_edge:              ; preds = %for.body.i96
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i96

sf_pdma_setup_chans.exit:                         ; preds = %for.body.i96.sf_pdma_setup_chans.exit_crit_edge, %if.end13.sf_pdma_setup_chans.exit_crit_edge, %if.end13.thread
  %dev15 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 15
  %49 = ptrtoint ptr %dev15 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %dev, ptr %dev15, align 4
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 0, ptr noundef %cap_mask) #9
  %copy_align = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 10
  %50 = ptrtoint ptr %copy_align to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 2, ptr %copy_align, align 4
  %src_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 19
  %51 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 127, ptr %src_addr_widths, align 4
  %dst_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 20
  %52 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 127, ptr %dst_addr_widths, align 4
  %directions = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 21
  %53 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %directions, align 4
  %residue_granularity = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 26
  %54 = ptrtoint ptr %residue_granularity to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %residue_granularity, align 4
  %descriptor_reuse = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 25
  %55 = ptrtoint ptr %descriptor_reuse to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %descriptor_reuse, align 4
  %device_alloc_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 27
  %56 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @sf_pdma_alloc_chan_resources, ptr %device_alloc_chan_resources, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 29
  %57 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @sf_pdma_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_tx_status = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 49
  %58 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @sf_pdma_tx_status, ptr %device_tx_status, align 4
  %device_prep_dma_memcpy = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 30
  %59 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @sf_pdma_prep_dma_memcpy, ptr %device_prep_dma_memcpy, align 4
  %device_config = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 44
  %60 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @sf_pdma_slave_config, ptr %device_config, align 4
  %device_terminate_all = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 47
  %61 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @sf_pdma_terminate_all, ptr %device_terminate_all, align 4
  %device_issue_pending = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 50
  %62 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @sf_pdma_issue_pending, ptr %device_issue_pending, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %63 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call.i97 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %cmp.i98 = icmp eq i32 %call.i97, 0
  br i1 %cmp.i98, label %dma_set_mask_and_coherent.exit.thread, label %do.end

dma_set_mask_and_coherent.exit.thread:            ; preds = %sf_pdma_setup_chans.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef -1) #9
  br label %if.end35

do.end:                                           ; preds = %sf_pdma_setup_chans.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %if.end35

if.end35:                                         ; preds = %do.end, %dma_set_mask_and_coherent.exit.thread
  %call37 = tail call i32 @dma_async_device_register(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end35.cleanup_crit_edge, label %do.end42

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end42:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %call37) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %if.end35.cleanup_crit_edge, %do.end29.i, %do.end18.i, %do.end9.i, %do.end.i, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then6 ], [ %call37, %do.end42 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end35.cleanup_crit_edge ], [ -22, %do.end.i ], [ -22, %do.end9.i ], [ -22, %do.end18.i ], [ -22, %do.end29.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sf_pdma_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %arrayidx = getelementptr %struct.sf_pdma, ptr %1, i32 0, i32 4, i32 0
  %txirq = getelementptr %struct.sf_pdma, ptr %1, i32 0, i32 4, i32 0, i32 15
  %2 = ptrtoint ptr %txirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %txirq, align 4
  tail call void @devm_free_irq(ptr noundef %dev, i32 noundef %3, ptr noundef %arrayidx) #9
  %errirq = getelementptr %struct.sf_pdma, ptr %1, i32 0, i32 4, i32 0, i32 16
  %4 = ptrtoint ptr %errirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %errirq, align 4
  tail call void @devm_free_irq(ptr noundef %dev, i32 noundef %5, ptr noundef %arrayidx) #9
  %device_node = getelementptr %struct.sf_pdma, ptr %1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %device_node) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr %struct.sf_pdma, ptr %1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %device_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %12 = ptrtoint ptr %device_node to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %device_node, align 4
  %prev.i = getelementptr %struct.sf_pdma, ptr %1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 8, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %task = getelementptr %struct.sf_pdma, ptr %1, i32 0, i32 4, i32 0, i32 0, i32 1
  tail call void @tasklet_kill(ptr noundef %task) #9
  %done_tasklet = getelementptr %struct.sf_pdma, ptr %1, i32 0, i32 4, i32 0, i32 10
  tail call void @tasklet_kill(ptr noundef %done_tasklet) #9
  %err_tasklet = getelementptr %struct.sf_pdma, ptr %1, i32 0, i32 4, i32 0, i32 11
  tail call void @tasklet_kill(ptr noundef %err_tasklet) #9
  %arrayidx.1 = getelementptr %struct.sf_pdma, ptr %1, i32 0, i32 4, i32 1
  %txirq.1 = getelementptr %struct.sf_pdma, ptr %1, i32 0, i32 4, i32 1, i32 15
  %14 = ptrtoint ptr %txirq.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %txirq.1, align 4
  tail call void @devm_free_irq(ptr noundef %dev, i32 noundef %15, ptr noundef %arrayidx.1) #9
  %errirq.1 = getelementptr %struct.sf_pdma, ptr %1, i32 0, i32 4, i32 1, i32 16
  %16 = ptrtoint ptr %errirq.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %errirq.1, align 4
  tail call void @devm_free_irq(ptr noundef %dev, i32 noundef %17, ptr noundef %arrayidx.1) #9
  %device_node.1 = getelementptr %struct.sf_pdma, ptr %1, i32 0, i32 4, i32 1, i32 0, i32 0, i32 8
  %call.i.i.1 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %device_node.1) #9
  br i1 %call.i.i.1, label %if.end.i.i.1, label %list_del.exit.list_del.exit.1_crit_edge

list_del.exit.list_del.exit.1_crit_edge:          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.1

if.end.i.i.1:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.1 = getelementptr %struct.sf_pdma, ptr %1, i32 0, i32 4, i32 1, i32 0, i32 0, i32 8, i32 1
  %18 = ptrtoint ptr %prev.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i.1, align 4
  %20 = ptrtoint ptr %device_node.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device_node.1, align 4
  %prev1.i.i.i.1 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i.1, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit.1

list_del.exit.1:                                  ; preds = %if.end.i.i.1, %list_del.exit.list_del.exit.1_crit_edge
  %24 = ptrtoint ptr %device_node.1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %device_node.1, align 4
  %prev.i.1 = getelementptr %struct.sf_pdma, ptr %1, i32 0, i32 4, i32 1, i32 0, i32 0, i32 8, i32 1
  %25 = ptrtoint ptr %prev.i.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.1, align 4
  %task.1 = getelementptr %struct.sf_pdma, ptr %1, i32 0, i32 4, i32 1, i32 0, i32 1
  tail call void @tasklet_kill(ptr noundef %task.1) #9
  %done_tasklet.1 = getelementptr %struct.sf_pdma, ptr %1, i32 0, i32 4, i32 1, i32 10
  tail call void @tasklet_kill(ptr noundef %done_tasklet.1) #9
  %err_tasklet.1 = getelementptr %struct.sf_pdma, ptr %1, i32 0, i32 4, i32 1, i32 11
  tail call void @tasklet_kill(ptr noundef %err_tasklet.1) #9
  %arrayidx.2 = getelementptr %struct.sf_pdma, ptr %1, i32 0, i32 4, i32 2
  %txirq.2 = getelementptr %struct.sf_pdma, ptr %1, i32 0, i32 4, i32 2, i32 15
  %26 = ptrtoint ptr %txirq.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %txirq.2, align 4
  tail call void @devm_free_irq(ptr noundef %dev, i32 noundef %27, ptr noundef %arrayidx.2) #9
  %errirq.2 = getelementptr %struct.sf_pdma, ptr %1, i32 0, i32 4, i32 2, i32 16
  %28 = ptrtoint ptr %errirq.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %errirq.2, align 4
  tail call void @devm_free_irq(ptr noundef %dev, i32 noundef %29, ptr noundef %arrayidx.2) #9
  %device_node.2 = getelementptr %struct.sf_pdma, ptr %1, i32 0, i32 4, i32 2, i32 0, i32 0, i32 8
  %call.i.i.2 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %device_node.2) #9
  br i1 %call.i.i.2, label %if.end.i.i.2, label %list_del.exit.1.list_del.exit.2_crit_edge

list_del.exit.1.list_del.exit.2_crit_edge:        ; preds = %list_del.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.2

if.end.i.i.2:                                     ; preds = %list_del.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.2 = getelementptr %struct.sf_pdma, ptr %1, i32 0, i32 4, i32 2, i32 0, i32 0, i32 8, i32 1
  %30 = ptrtoint ptr %prev.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i.2, align 4
  %32 = ptrtoint ptr %device_node.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device_node.2, align 4
  %prev1.i.i.i.2 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i.2, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %list_del.exit.2

list_del.exit.2:                                  ; preds = %if.end.i.i.2, %list_del.exit.1.list_del.exit.2_crit_edge
  %36 = ptrtoint ptr %device_node.2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 256 to ptr), ptr %device_node.2, align 4
  %prev.i.2 = getelementptr %struct.sf_pdma, ptr %1, i32 0, i32 4, i32 2, i32 0, i32 0, i32 8, i32 1
  %37 = ptrtoint ptr %prev.i.2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.2, align 4
  %task.2 = getelementptr %struct.sf_pdma, ptr %1, i32 0, i32 4, i32 2, i32 0, i32 1
  tail call void @tasklet_kill(ptr noundef %task.2) #9
  %done_tasklet.2 = getelementptr %struct.sf_pdma, ptr %1, i32 0, i32 4, i32 2, i32 10
  tail call void @tasklet_kill(ptr noundef %done_tasklet.2) #9
  %err_tasklet.2 = getelementptr %struct.sf_pdma, ptr %1, i32 0, i32 4, i32 2, i32 11
  tail call void @tasklet_kill(ptr noundef %err_tasklet.2) #9
  %arrayidx.3 = getelementptr %struct.sf_pdma, ptr %1, i32 0, i32 4, i32 3
  %txirq.3 = getelementptr %struct.sf_pdma, ptr %1, i32 0, i32 4, i32 3, i32 15
  %38 = ptrtoint ptr %txirq.3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %txirq.3, align 4
  tail call void @devm_free_irq(ptr noundef %dev, i32 noundef %39, ptr noundef %arrayidx.3) #9
  %errirq.3 = getelementptr %struct.sf_pdma, ptr %1, i32 0, i32 4, i32 3, i32 16
  %40 = ptrtoint ptr %errirq.3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %errirq.3, align 4
  tail call void @devm_free_irq(ptr noundef %dev, i32 noundef %41, ptr noundef %arrayidx.3) #9
  %device_node.3 = getelementptr %struct.sf_pdma, ptr %1, i32 0, i32 4, i32 3, i32 0, i32 0, i32 8
  %call.i.i.3 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %device_node.3) #9
  br i1 %call.i.i.3, label %if.end.i.i.3, label %list_del.exit.2.list_del.exit.3_crit_edge

list_del.exit.2.list_del.exit.3_crit_edge:        ; preds = %list_del.exit.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.3

if.end.i.i.3:                                     ; preds = %list_del.exit.2
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.3 = getelementptr %struct.sf_pdma, ptr %1, i32 0, i32 4, i32 3, i32 0, i32 0, i32 8, i32 1
  %42 = ptrtoint ptr %prev.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i.3, align 4
  %44 = ptrtoint ptr %device_node.3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %device_node.3, align 4
  %prev1.i.i.i.3 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev1.i.i.i.3, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %45, ptr %43, align 4
  br label %list_del.exit.3

list_del.exit.3:                                  ; preds = %if.end.i.i.3, %list_del.exit.2.list_del.exit.3_crit_edge
  %48 = ptrtoint ptr %device_node.3 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 256 to ptr), ptr %device_node.3, align 4
  %prev.i.3 = getelementptr %struct.sf_pdma, ptr %1, i32 0, i32 4, i32 3, i32 0, i32 0, i32 8, i32 1
  %49 = ptrtoint ptr %prev.i.3 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.3, align 4
  %task.3 = getelementptr %struct.sf_pdma, ptr %1, i32 0, i32 4, i32 3, i32 0, i32 1
  tail call void @tasklet_kill(ptr noundef %task.3) #9
  %done_tasklet.3 = getelementptr %struct.sf_pdma, ptr %1, i32 0, i32 4, i32 3, i32 10
  tail call void @tasklet_kill(ptr noundef %done_tasklet.3) #9
  %err_tasklet.3 = getelementptr %struct.sf_pdma, ptr %1, i32 0, i32 4, i32 3, i32 11
  tail call void @tasklet_kill(ptr noundef %err_tasklet.3) #9
  tail call void @dma_async_device_unregister(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sf_pdma_alloc_chan_resources(ptr nocapture noundef %dchan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.sf_pdma_chan, ptr %dchan, i32 0, i32 12
  %cookie.i = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 2
  %0 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %cookie.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 3
  %1 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  tail call void @arm_heavy_mb() #9
  %2 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 16777216) #9, !srcloc !76
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sf_pdma_free_chan_resources(ptr noundef %dchan) #2 align 64 {
entry:
  %head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head) #9
  %0 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %1 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %head, ptr %head, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head, ptr %0, align 4
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 3
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %regs1.i = getelementptr inbounds %struct.sf_pdma_chan, ptr %dchan, i32 0, i32 12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !78
  call void @arm_heavy_mb() #9
  %3 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs1.i, align 4
  %5 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #9, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !80
  %6 = and i32 %5, -33554433
  %7 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs1.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #9, !srcloc !76
  %desc = getelementptr inbounds %struct.sf_pdma_chan, ptr %dchan, i32 0, i32 5
  %9 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %desc, align 4
  call void @kfree(ptr noundef %10) #9
  %11 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %desc, align 4
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 4
  %12 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %desc_allocated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %13, %desc_allocated.i
  br i1 %cmp.i.not.i.i, label %entry.list_splice_tail_init.exit.i_crit_edge, label %if.then.i.i

entry.list_splice_tail_init.exit.i_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %0, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %13, ptr %15, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %head, ptr %17, align 4
  store ptr %17, ptr %0, align 4
  %21 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %desc_allocated.i, ptr %desc_allocated.i, align 4
  store ptr %desc_allocated.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_tail_init.exit.i

list_splice_tail_init.exit.i:                     ; preds = %if.then.i.i, %entry.list_splice_tail_init.exit.i_crit_edge
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 5
  %22 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i9.i = icmp eq ptr %23, %desc_submitted.i
  br i1 %cmp.i.not.i9.i, label %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge, label %if.then.i13.i

list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge: ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit14.i

if.then.i13.i:                                    ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %0, align 4
  %prev2.i.i11.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 5, i32 1
  %26 = ptrtoint ptr %prev2.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev2.i.i11.i, align 4
  %prev3.i.i12.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %28 = ptrtoint ptr %prev3.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev3.i.i12.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %23, ptr %25, align 4
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %head, ptr %27, align 4
  store ptr %27, ptr %0, align 4
  %31 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %desc_submitted.i, ptr %desc_submitted.i, align 4
  store ptr %desc_submitted.i, ptr %prev2.i.i11.i, align 4
  br label %list_splice_tail_init.exit14.i

list_splice_tail_init.exit14.i:                   ; preds = %if.then.i13.i, %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 6
  %32 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.not.i15.i = icmp eq ptr %33, %desc_issued.i
  br i1 %cmp.i.not.i15.i, label %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge, label %if.then.i19.i

list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit20.i

if.then.i19.i:                                    ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %0, align 4
  %prev2.i.i17.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 6, i32 1
  %36 = ptrtoint ptr %prev2.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev2.i.i17.i, align 4
  %prev3.i.i18.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %38 = ptrtoint ptr %prev3.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev3.i.i18.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %33, ptr %35, align 4
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %head, ptr %37, align 4
  store ptr %37, ptr %0, align 4
  %41 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %desc_issued.i, ptr %desc_issued.i, align 4
  store ptr %desc_issued.i, ptr %prev2.i.i17.i, align 4
  br label %list_splice_tail_init.exit20.i

list_splice_tail_init.exit20.i:                   ; preds = %if.then.i19.i, %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 7
  %42 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %desc_completed.i, align 4
  %cmp.i.not.i21.i = icmp eq ptr %43, %desc_completed.i
  br i1 %cmp.i.not.i21.i, label %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge, label %if.then.i25.i

list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit26.i

if.then.i25.i:                                    ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %0, align 4
  %prev2.i.i23.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 7, i32 1
  %46 = ptrtoint ptr %prev2.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev2.i.i23.i, align 4
  %prev3.i.i24.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %48 = ptrtoint ptr %prev3.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev3.i.i24.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %43, ptr %45, align 4
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %head, ptr %47, align 4
  store ptr %47, ptr %0, align 4
  %51 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %desc_completed.i, ptr %desc_completed.i, align 4
  store ptr %desc_completed.i, ptr %prev2.i.i23.i, align 4
  br label %list_splice_tail_init.exit26.i

list_splice_tail_init.exit26.i:                   ; preds = %if.then.i25.i, %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 8
  %52 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %desc_terminated.i, align 4
  %cmp.i.not.i27.i = icmp eq ptr %53, %desc_terminated.i
  br i1 %cmp.i.not.i27.i, label %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge, label %if.then.i31.i

list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge: ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_get_all_descriptors.exit

if.then.i31.i:                                    ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %0, align 4
  %prev2.i.i29.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 8, i32 1
  %56 = ptrtoint ptr %prev2.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev2.i.i29.i, align 4
  %prev3.i.i30.i = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %58 = ptrtoint ptr %prev3.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev3.i.i30.i, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %53, ptr %55, align 4
  %60 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %head, ptr %57, align 4
  store ptr %57, ptr %0, align 4
  %61 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %desc_terminated.i, ptr %desc_terminated.i, align 4
  store ptr %desc_terminated.i, ptr %prev2.i.i29.i, align 4
  br label %vchan_get_all_descriptors.exit

vchan_get_all_descriptors.exit:                   ; preds = %if.then.i31.i, %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !81
  call void @arm_heavy_mb() #9
  %62 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs1.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 0) #9, !srcloc !76
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  call void @vchan_dma_desc_free_list(ptr noundef %dchan, ptr noundef nonnull %head) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sf_pdma_tx_status(ptr noundef %dchan, i32 noundef %cookie, ptr noundef writeonly %txstate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !82
  %tobool.not.i = icmp eq ptr %txstate, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %txstate to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %txstate, align 4
  %used2.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 1
  %5 = ptrtoint ptr %used2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %1, ptr %used2.i, align 4
  %residue.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %6 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %residue.i, align 4
  %in_flight_bytes.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 3
  %7 = ptrtoint ptr %in_flight_bytes.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %in_flight_bytes.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.not.i.i = icmp sgt i32 %3, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cookie)
  %cmp4.not.i.i = icmp sge i32 %3, %cookie
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %cookie)
  %cmp5.i.i = icmp slt i32 %1, %cookie
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %or.cond.i.i = or i1 %cmp5.i.i, %cmp4.not.i.i
  br i1 %or.cond.i.i, label %if.then.i.i.dma_cookie_status.exit_crit_edge, label %if.then.i.i.if.end8.i.i_crit_edge

if.then.i.i.if.end8.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

if.then.i.i.dma_cookie_status.exit_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_cookie_status.exit

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  br i1 %or.cond16.i.i, label %if.else.i.i.dma_cookie_status.exit_crit_edge, label %if.else.i.i.if.end8.i.i_crit_edge

if.else.i.i.if.end8.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

if.else.i.i.dma_cookie_status.exit_crit_edge:     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_cookie_status.exit

if.end8.i.i:                                      ; preds = %if.else.i.i.if.end8.i.i_crit_edge, %if.then.i.i.if.end8.i.i_crit_edge
  br label %dma_cookie_status.exit

dma_cookie_status.exit:                           ; preds = %if.end8.i.i, %if.else.i.i.dma_cookie_status.exit_crit_edge, %if.then.i.i.dma_cookie_status.exit_crit_edge
  %retval.0.i.i = phi i32 [ 1, %if.end8.i.i ], [ 0, %if.then.i.i.dma_cookie_status.exit_crit_edge ], [ 0, %if.else.i.i.dma_cookie_status.exit_crit_edge ]
  br i1 %tobool.not.i, label %dma_cookie_status.exit.if.end_crit_edge, label %if.then

dma_cookie_status.exit.if.end_crit_edge:          ; preds = %dma_cookie_status.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %dma_cookie_status.exit
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 3
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %desc6.i = getelementptr inbounds %struct.sf_pdma_chan, ptr %dchan, i32 0, i32 5
  %8 = ptrtoint ptr %desc6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc6.i, align 4
  %chan8.i = getelementptr inbounds %struct.sf_pdma_desc, ptr %9, i32 0, i32 4, i32 0, i32 3
  %10 = ptrtoint ptr %chan8.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chan8.i, align 4
  %completed_cookie.i8 = getelementptr inbounds %struct.dma_chan, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %completed_cookie.i8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %completed_cookie.i8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %cookie)
  %cmp9.i = icmp eq i32 %13, %cookie
  br i1 %cmp9.i, label %if.then.dma_set_residue.exit_crit_edge, label %if.end.i9

if.then.dma_set_residue.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_set_residue.exit

if.end.i9:                                        ; preds = %if.then
  %vdesc.i = getelementptr inbounds %struct.sf_pdma_desc, ptr %9, i32 0, i32 4
  %14 = ptrtoint ptr %vdesc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vdesc.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %cookie)
  %cmp12.i = icmp eq i32 %15, %cookie
  br i1 %cmp12.i, label %if.then14.i, label %if.else.i

if.then14.i:                                      ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #11
  %residue15.i = getelementptr inbounds %struct.sf_pdma_chan, ptr %dchan, i32 0, i32 12, i32 6
  %16 = ptrtoint ptr %residue15.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %residue15.i, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #9, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !84
  %20 = tail call i32 @llvm.bswap.i32(i32 %18) #9
  br label %dma_set_residue.exit

if.else.i:                                        ; preds = %if.end.i9
  %call18.i = tail call ptr @vchan_find_desc(ptr noundef %dchan, i32 noundef %cookie) #9
  %tobool.not.i10 = icmp eq ptr %call18.i, null
  br i1 %tobool.not.i10, label %if.else.i.dma_set_residue.exit_crit_edge, label %if.end20.i

if.else.i.dma_set_residue.exit_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_set_residue.exit

if.end20.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %xfer_size.i = getelementptr i8, ptr %call18.i, i32 -24
  %21 = ptrtoint ptr %xfer_size.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %xfer_size.i, align 8
  %extract.t34.i = trunc i64 %22 to i32
  br label %dma_set_residue.exit

dma_set_residue.exit:                             ; preds = %if.end20.i, %if.else.i.dma_set_residue.exit_crit_edge, %if.then14.i, %if.then.dma_set_residue.exit_crit_edge
  %residue.0.off0.i = phi i32 [ 0, %if.then.dma_set_residue.exit_crit_edge ], [ %20, %if.then14.i ], [ %extract.t34.i, %if.end20.i ], [ 0, %if.else.i.dma_set_residue.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #9
  %residue1.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %23 = ptrtoint ptr %residue1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %residue.0.off0.i, ptr %residue1.i, align 4
  br label %if.end

if.end:                                           ; preds = %dma_set_residue.exit, %dma_cookie_status.exit.if.end_crit_edge
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sf_pdma_prep_dma_memcpy(ptr noundef %dchan, i32 noundef %dest, i32 noundef %src, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dchan, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool1.not = icmp eq i32 %len, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dest)
  %tobool2.not = icmp eq i32 %dest, 0
  %or.cond = or i1 %tobool2.not, %tobool1.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src)
  %tobool4.not = icmp eq i32 %src, 0
  %or.cond44 = or i1 %tobool4.not, %or.cond
  br i1 %or.cond44, label %do.end, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %pdma = getelementptr inbounds %struct.sf_pdma_chan, ptr %dchan, i32 0, i32 4
  %0 = ptrtoint ptr %pdma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdma, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.28) #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %lock.i = getelementptr inbounds %struct.sf_pdma_chan, ptr %dchan, i32 0, i32 13
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %desc5.i = getelementptr inbounds %struct.sf_pdma_chan, ptr %dchan, i32 0, i32 5
  %4 = ptrtoint ptr %desc5.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc5.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %land.lhs.true.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end
  %in_use.i = getelementptr inbounds %struct.sf_pdma_desc, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %in_use.i, align 8, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool7.not.i = icmp eq i8 %7, 0
  br i1 %tobool7.not.i, label %sf_pdma_alloc_desc.exit, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 2304, i32 noundef 168) #13
  %tobool12.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool12.not.i, label %if.end.i.cleanup_crit_edge, label %sf_pdma_alloc_desc.exit.thread48

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sf_pdma_alloc_desc.exit.thread48:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %chan15.i = getelementptr inbounds %struct.sf_pdma_desc, ptr %call7.i.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %chan15.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dchan, ptr %chan15.i, align 4
  br label %if.end8

sf_pdma_alloc_desc.exit:                          ; preds = %land.lhs.true.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  %10 = ptrtoint ptr %desc5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc5.i, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %sf_pdma_alloc_desc.exit.cleanup_crit_edge, label %sf_pdma_alloc_desc.exit.if.end8_crit_edge

sf_pdma_alloc_desc.exit.if.end8_crit_edge:        ; preds = %sf_pdma_alloc_desc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

sf_pdma_alloc_desc.exit.cleanup_crit_edge:        ; preds = %sf_pdma_alloc_desc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %sf_pdma_alloc_desc.exit.if.end8_crit_edge, %sf_pdma_alloc_desc.exit.thread48
  %retval.0.i51 = phi ptr [ %call7.i.i.i, %sf_pdma_alloc_desc.exit.thread48 ], [ %11, %sf_pdma_alloc_desc.exit.if.end8_crit_edge ]
  %in_use = getelementptr inbounds %struct.sf_pdma_desc, ptr %retval.0.i51, i32 0, i32 6
  %12 = ptrtoint ptr %in_use to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %in_use, align 8
  %dirn = getelementptr inbounds %struct.sf_pdma_desc, ptr %retval.0.i51, i32 0, i32 7
  %13 = ptrtoint ptr %dirn to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %dirn, align 4
  %vdesc = getelementptr inbounds %struct.sf_pdma_desc, ptr %retval.0.i51, i32 0, i32 4
  tail call void @dma_async_tx_descriptor_init(ptr noundef %vdesc, ptr noundef %dchan) #9
  %flags2.i = getelementptr inbounds %struct.sf_pdma_desc, ptr %retval.0.i51, i32 0, i32 4, i32 0, i32 1
  %14 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.sf_pdma_desc, ptr %retval.0.i51, i32 0, i32 4, i32 0, i32 4
  %15 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 4
  %desc_free.i = getelementptr inbounds %struct.sf_pdma_desc, ptr %retval.0.i51, i32 0, i32 4, i32 0, i32 5
  %16 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.sf_pdma_desc, ptr %retval.0.i51, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.sf_pdma_desc, ptr %retval.0.i51, i32 0, i32 4, i32 1, i32 1
  %18 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %residue.i, align 4
  %lock.i45 = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i45) #9
  %node.i = getelementptr inbounds %struct.sf_pdma_desc, ptr %retval.0.i51, i32 0, i32 4, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %20, ptr noundef %desc_allocated.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end8.vchan_tx_prep.exit_crit_edge

if.end8.vchan_tx_prep.exit_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %node.i, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.sf_pdma_desc, ptr %retval.0.i51, i32 0, i32 4, i32 2, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %node.i, ptr %20, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %if.end8.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i45, i32 noundef %call7.i) #9
  %async_tx = getelementptr inbounds %struct.sf_pdma_desc, ptr %retval.0.i51, i32 0, i32 8
  %25 = ptrtoint ptr %async_tx to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %vdesc, ptr %async_tx, align 8
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i45) #9
  %26 = ptrtoint ptr %desc5.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %retval.0.i51, ptr %desc5.i, align 4
  %conv20 = zext i32 %dest to i64
  %conv21 = zext i32 %src to i64
  %conv22 = zext i32 %len to i64
  %27 = ptrtoint ptr %retval.0.i51 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -16777208, ptr %retval.0.i51, align 8
  %xfer_size.i = getelementptr inbounds %struct.sf_pdma_desc, ptr %retval.0.i51, i32 0, i32 1
  %28 = ptrtoint ptr %xfer_size.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv22, ptr %xfer_size.i, align 8
  %dst_addr.i = getelementptr inbounds %struct.sf_pdma_desc, ptr %retval.0.i51, i32 0, i32 2
  %29 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conv20, ptr %dst_addr.i, align 8
  %src_addr.i = getelementptr inbounds %struct.sf_pdma_desc, ptr %retval.0.i51, i32 0, i32 3
  %30 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %conv21, ptr %src_addr.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i45, i32 noundef %call14) #9
  %31 = ptrtoint ptr %async_tx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %async_tx, align 8
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %sf_pdma_alloc_desc.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ %32, %vchan_tx_prep.exit ], [ null, %do.end ], [ null, %sf_pdma_alloc_desc.exit.cleanup_crit_edge ], [ null, %if.end.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sf_pdma_slave_config(ptr nocapture noundef writeonly %dchan, ptr nocapture noundef readonly %cfg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg1 = getelementptr inbounds %struct.sf_pdma_chan, ptr %dchan, i32 0, i32 6
  %0 = call ptr @memcpy(ptr %cfg1, ptr %cfg, i32 48)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sf_pdma_terminate_all(ptr noundef %dchan) #2 align 64 {
entry:
  %head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head) #9
  %0 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %1 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %head, ptr %head, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head, ptr %0, align 4
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 3
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %regs1.i = getelementptr inbounds %struct.sf_pdma_chan, ptr %dchan, i32 0, i32 12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !78
  call void @arm_heavy_mb() #9
  %3 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs1.i, align 4
  %5 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #9, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !80
  %6 = and i32 %5, -33554433
  %7 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs1.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #9, !srcloc !76
  %desc = getelementptr inbounds %struct.sf_pdma_chan, ptr %dchan, i32 0, i32 5
  %9 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %desc, align 4
  call void @kfree(ptr noundef %10) #9
  %11 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %desc, align 4
  %xfer_err = getelementptr inbounds %struct.sf_pdma_chan, ptr %dchan, i32 0, i32 14
  %12 = ptrtoint ptr %xfer_err to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %xfer_err, align 4
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 4
  %13 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %desc_allocated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %14, %desc_allocated.i
  br i1 %cmp.i.not.i.i, label %entry.list_splice_tail_init.exit.i_crit_edge, label %if.then.i.i

entry.list_splice_tail_init.exit.i_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %0, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %14, ptr %16, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %head, ptr %18, align 4
  store ptr %18, ptr %0, align 4
  %22 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %desc_allocated.i, ptr %desc_allocated.i, align 4
  store ptr %desc_allocated.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_tail_init.exit.i

list_splice_tail_init.exit.i:                     ; preds = %if.then.i.i, %entry.list_splice_tail_init.exit.i_crit_edge
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 5
  %23 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i9.i = icmp eq ptr %24, %desc_submitted.i
  br i1 %cmp.i.not.i9.i, label %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge, label %if.then.i13.i

list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge: ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit14.i

if.then.i13.i:                                    ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %0, align 4
  %prev2.i.i11.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 5, i32 1
  %27 = ptrtoint ptr %prev2.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev2.i.i11.i, align 4
  %prev3.i.i12.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %prev3.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i12.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %24, ptr %26, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %head, ptr %28, align 4
  store ptr %28, ptr %0, align 4
  %32 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %desc_submitted.i, ptr %desc_submitted.i, align 4
  store ptr %desc_submitted.i, ptr %prev2.i.i11.i, align 4
  br label %list_splice_tail_init.exit14.i

list_splice_tail_init.exit14.i:                   ; preds = %if.then.i13.i, %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 6
  %33 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.not.i15.i = icmp eq ptr %34, %desc_issued.i
  br i1 %cmp.i.not.i15.i, label %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge, label %if.then.i19.i

list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit20.i

if.then.i19.i:                                    ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %0, align 4
  %prev2.i.i17.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 6, i32 1
  %37 = ptrtoint ptr %prev2.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev2.i.i17.i, align 4
  %prev3.i.i18.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %39 = ptrtoint ptr %prev3.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev3.i.i18.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %34, ptr %36, align 4
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %head, ptr %38, align 4
  store ptr %38, ptr %0, align 4
  %42 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %desc_issued.i, ptr %desc_issued.i, align 4
  store ptr %desc_issued.i, ptr %prev2.i.i17.i, align 4
  br label %list_splice_tail_init.exit20.i

list_splice_tail_init.exit20.i:                   ; preds = %if.then.i19.i, %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 7
  %43 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %desc_completed.i, align 4
  %cmp.i.not.i21.i = icmp eq ptr %44, %desc_completed.i
  br i1 %cmp.i.not.i21.i, label %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge, label %if.then.i25.i

list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit26.i

if.then.i25.i:                                    ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %0, align 4
  %prev2.i.i23.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 7, i32 1
  %47 = ptrtoint ptr %prev2.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev2.i.i23.i, align 4
  %prev3.i.i24.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %49 = ptrtoint ptr %prev3.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev3.i.i24.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %44, ptr %46, align 4
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %head, ptr %48, align 4
  store ptr %48, ptr %0, align 4
  %52 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %desc_completed.i, ptr %desc_completed.i, align 4
  store ptr %desc_completed.i, ptr %prev2.i.i23.i, align 4
  br label %list_splice_tail_init.exit26.i

list_splice_tail_init.exit26.i:                   ; preds = %if.then.i25.i, %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 8
  %53 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %desc_terminated.i, align 4
  %cmp.i.not.i27.i = icmp eq ptr %54, %desc_terminated.i
  br i1 %cmp.i.not.i27.i, label %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge, label %if.then.i31.i

list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge: ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_get_all_descriptors.exit

if.then.i31.i:                                    ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %0, align 4
  %prev2.i.i29.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 8, i32 1
  %57 = ptrtoint ptr %prev2.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev2.i.i29.i, align 4
  %prev3.i.i30.i = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %59 = ptrtoint ptr %prev3.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %prev3.i.i30.i, align 4
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %54, ptr %56, align 4
  %61 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %head, ptr %58, align 4
  store ptr %58, ptr %0, align 4
  %62 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %desc_terminated.i, ptr %desc_terminated.i, align 4
  store ptr %desc_terminated.i, ptr %prev2.i.i29.i, align 4
  br label %vchan_get_all_descriptors.exit

vchan_get_all_descriptors.exit:                   ; preds = %if.then.i31.i, %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  call void @vchan_dma_desc_free_list(ptr noundef %dchan, ptr noundef nonnull %head) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sf_pdma_issue_pending(ptr noundef %dchan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 5
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 6
  %0 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %1, %desc_submitted.i
  br i1 %cmp.i.not.i.i, label %entry.vchan_issue_pending.exit_crit_edge, label %if.then.i.i

entry.vchan_issue_pending.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_issue_pending.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %1, ptr %3, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %desc_issued.i, ptr %5, align 4
  store ptr %5, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %desc_submitted.i, ptr %desc_submitted.i, align 4
  store ptr %desc_submitted.i, ptr %prev2.i.i.i, align 4
  br label %vchan_issue_pending.exit

vchan_issue_pending.exit:                         ; preds = %if.then.i.i, %entry.vchan_issue_pending.exit_crit_edge
  %10 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.i.not = icmp eq ptr %11, %desc_issued.i
  br i1 %cmp.i.i.not, label %vchan_issue_pending.exit.if.end_crit_edge, label %land.lhs.true

vchan_issue_pending.exit.if.end_crit_edge:        ; preds = %vchan_issue_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %vchan_issue_pending.exit
  %desc = getelementptr inbounds %struct.sf_pdma_chan, ptr %dchan, i32 0, i32 5
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @sf_pdma_xfer_desc(ptr noundef %dchan)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %vchan_issue_pending.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sf_pdma_done_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.sf_pdma_chan, ptr %dev_id, i32 0, i32 12
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %dev_id, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !86
  tail call void @arm_heavy_mb() #9
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !87
  %3 = and i32 %2, -65
  %4 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #9, !srcloc !76
  %residue4 = getelementptr inbounds %struct.sf_pdma_chan, ptr %dev_id, i32 0, i32 12, i32 6
  %6 = ptrtoint ptr %residue4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %residue4, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  %add.ptr.i = getelementptr i8, ptr %7, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !84
  %10 = zext i32 %9 to i64
  %11 = zext i32 %8 to i64
  %12 = shl nuw i64 %11, 32
  %13 = or i64 %12, %10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool.not = icmp eq i64 %13, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %state.i = getelementptr inbounds %struct.sf_pdma_chan, ptr %dev_id, i32 0, i32 10, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %done_tasklet = getelementptr inbounds %struct.sf_pdma_chan, ptr %dev_id, i32 0, i32 10
  tail call void @__tasklet_hi_schedule(ptr noundef %done_tasklet) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %14 = tail call i64 @llvm.bswap.i64(i64 %13) #9
  %desc6 = getelementptr inbounds %struct.sf_pdma_chan, ptr %dev_id, i32 0, i32 5
  %15 = ptrtoint ptr %desc6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %desc6, align 4
  %xfer_size = getelementptr inbounds %struct.sf_pdma_desc, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %xfer_size to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %xfer_size, align 8
  %sub = sub i64 %18, %14
  %src_addr = getelementptr inbounds %struct.sf_pdma_desc, ptr %16, i32 0, i32 3
  %19 = ptrtoint ptr %src_addr to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %src_addr, align 8
  %add = add i64 %20, %sub
  store i64 %add, ptr %src_addr, align 8
  %dst_addr = getelementptr inbounds %struct.sf_pdma_desc, ptr %16, i32 0, i32 2
  %21 = ptrtoint ptr %dst_addr to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %dst_addr, align 8
  %add9 = add i64 %22, %sub
  store i64 %add9, ptr %dst_addr, align 8
  store i64 %14, ptr %xfer_size, align 8
  tail call fastcc void @sf_pdma_xfer_desc(ptr noundef %dev_id)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.i, %if.then.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sf_pdma_err_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.sf_pdma_chan, ptr %dev_id, i32 0, i32 12
  %lock = getelementptr inbounds %struct.sf_pdma_chan, ptr %dev_id, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !88
  tail call void @arm_heavy_mb() #9
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !89
  %3 = and i32 %2, -129
  %4 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #9, !srcloc !76
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  %state.i = getelementptr inbounds %struct.sf_pdma_chan, ptr %dev_id, i32 0, i32 11, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.tasklet_schedule.exit_crit_edge

entry.tasklet_schedule.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %err_tasklet = getelementptr inbounds %struct.sf_pdma_chan, ptr %dev_id, i32 0, i32 11
  tail call void @__tasklet_schedule(ptr noundef %err_tasklet) #9
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %entry.tasklet_schedule.exit_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sf_pdma_xfer_desc(ptr nocapture noundef %chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %desc1 = getelementptr inbounds %struct.sf_pdma_chan, ptr %chan, i32 0, i32 5
  %0 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %do.body3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pdma = getelementptr inbounds %struct.sf_pdma_chan, ptr %chan, i32 0, i32 4
  %2 = ptrtoint ptr %pdma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdma, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.21) #12
  br label %cleanup

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  tail call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 8
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %xfer_type6 = getelementptr inbounds %struct.sf_pdma_chan, ptr %chan, i32 0, i32 12, i32 1
  %9 = ptrtoint ptr %xfer_type6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xfer_type6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #9, !srcloc !76
  %xfer_size = getelementptr inbounds %struct.sf_pdma_desc, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %xfer_size to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %xfer_size, align 8
  %xfer_size7 = getelementptr inbounds %struct.sf_pdma_chan, ptr %chan, i32 0, i32 12, i32 2
  %13 = ptrtoint ptr %xfer_size7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xfer_size7, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !91
  tail call void @arm_heavy_mb() #9
  %conv.i = trunc i64 %12 to i32
  %15 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %15) #9, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  tail call void @arm_heavy_mb() #9
  %shr.i = lshr i64 %12, 32
  %conv4.i = trunc i64 %shr.i to i32
  %16 = tail call i32 @llvm.bswap.i32(i32 %conv4.i) #9
  %add.ptr.i = getelementptr i8, ptr %14, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #9, !srcloc !76
  %dst_addr = getelementptr inbounds %struct.sf_pdma_desc, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %dst_addr to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %dst_addr, align 8
  %dst_addr8 = getelementptr inbounds %struct.sf_pdma_chan, ptr %chan, i32 0, i32 12, i32 3
  %19 = ptrtoint ptr %dst_addr8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dst_addr8, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !91
  tail call void @arm_heavy_mb() #9
  %conv.i25 = trunc i64 %18 to i32
  %21 = tail call i32 @llvm.bswap.i32(i32 %conv.i25) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %21) #9, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  tail call void @arm_heavy_mb() #9
  %shr.i26 = lshr i64 %18, 32
  %conv4.i27 = trunc i64 %shr.i26 to i32
  %22 = tail call i32 @llvm.bswap.i32(i32 %conv4.i27) #9
  %add.ptr.i28 = getelementptr i8, ptr %20, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 %22) #9, !srcloc !76
  %src_addr = getelementptr inbounds %struct.sf_pdma_desc, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %src_addr to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %src_addr, align 8
  %src_addr9 = getelementptr inbounds %struct.sf_pdma_chan, ptr %chan, i32 0, i32 12, i32 4
  %25 = ptrtoint ptr %src_addr9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %src_addr9, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !91
  tail call void @arm_heavy_mb() #9
  %conv.i29 = trunc i64 %24 to i32
  %27 = tail call i32 @llvm.bswap.i32(i32 %conv.i29) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %27) #9, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  tail call void @arm_heavy_mb() #9
  %shr.i30 = lshr i64 %24, 32
  %conv4.i31 = trunc i64 %shr.i30 to i32
  %28 = tail call i32 @llvm.bswap.i32(i32 %conv4.i31) #9
  %add.ptr.i32 = getelementptr i8, ptr %26, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 %28) #9, !srcloc !76
  %29 = ptrtoint ptr %desc1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %1, ptr %desc1, align 4
  %status = getelementptr inbounds %struct.sf_pdma_chan, ptr %chan, i32 0, i32 1
  %30 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %status, align 4
  %regs1.i = getelementptr inbounds %struct.sf_pdma_chan, ptr %chan, i32 0, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void @arm_heavy_mb() #9
  %31 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs1.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 62914560) #9, !srcloc !76
  br label %cleanup

cleanup:                                          ; preds = %do.body3, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_hi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @sf_pdma_free_desc(ptr nocapture noundef writeonly %vdesc) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %in_use = getelementptr i8, ptr %vdesc, i32 120
  %0 = ptrtoint ptr %in_use to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %in_use, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sf_pdma_donebh_tasklet(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %t, i32 84
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %xfer_err = getelementptr i8, ptr %t, i32 128
  %0 = ptrtoint ptr %xfer_err to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %xfer_err, align 4, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %retries = getelementptr i8, ptr %t, i32 140
  %2 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %retries, align 4
  %status = getelementptr i8, ptr %t, i32 -80
  %3 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %status, align 4
  %4 = ptrtoint ptr %xfer_err to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %xfer_err, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  %lock15 = getelementptr i8, ptr %t, i32 -168
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock15) #9
  %desc = getelementptr i8, ptr %t, i32 -64
  %5 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %desc, align 4
  %node = getelementptr inbounds %struct.sf_pdma_desc, ptr %6, i32 0, i32 4, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.sf_pdma_desc, ptr %6, i32 0, i32 4, i32 2, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %13 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.sf_pdma_desc, ptr %6, i32 0, i32 4, i32 2, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %15 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %desc, align 4
  %vdesc23 = getelementptr inbounds %struct.sf_pdma_desc, ptr %16, i32 0, i32 4
  %chan.i = getelementptr inbounds %struct.sf_pdma_desc, ptr %16, i32 0, i32 4, i32 0, i32 3
  %17 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chan.i, align 4
  %19 = ptrtoint ptr %vdesc23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vdesc23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.i.i = icmp slt i32 %20, 1
  br i1 %cmp.i.i, label %do.body2.i.i, label %dma_cookie_complete.exit.i, !prof !94

do.body2.i.i:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/sf-pdma/../dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #9, !srcloc !95
  unreachable

dma_cookie_complete.exit.i:                       ; preds = %list_del.exit
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %18, i32 0, i32 3
  %21 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %completed_cookie.i.i, align 4
  %22 = ptrtoint ptr %vdesc23 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %vdesc23, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sf_pdma_donebh_tasklet, %do.end.i)) #9
          to label %if.then.i [label %do.end.i], !srcloc !96

if.then.i:                                        ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %18, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 15
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vchan_cookie_complete.__UNIQUE_ID_ddebug236, ptr noundef %26, ptr noundef nonnull @.str.27, ptr noundef %vdesc23, i32 noundef %20) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %dma_cookie_complete.exit.i
  %node.i = getelementptr inbounds %struct.sf_pdma_desc, ptr %16, i32 0, i32 4, i32 2
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %18, i32 0, i32 7
  %prev.i.i36 = getelementptr inbounds %struct.virt_dma_chan, ptr %18, i32 0, i32 7, i32 1
  %27 = ptrtoint ptr %prev.i.i36 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i36, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %28, ptr noundef %desc_completed.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i.list_add_tail.exit.i_crit_edge

do.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %prev.i.i36 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %node.i, ptr %prev.i.i36, align 4
  %30 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %desc_completed.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.sf_pdma_desc, ptr %16, i32 0, i32 4, i32 2, i32 1
  %31 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %node.i, ptr %28, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.end.i.list_add_tail.exit.i_crit_edge
  %state.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %18, i32 0, i32 1, i32 1
  %call.i.i37 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i37)
  %tobool.not.i.i = icmp eq i32 %call.i.i37, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge

list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_cookie_complete.exit

if.then.i.i:                                      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %18, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i) #9
  br label %vchan_cookie_complete.exit

vchan_cookie_complete.exit:                       ; preds = %if.then.i.i, %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock15, i32 noundef %call17) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sf_pdma_errbh_tasklet(ptr noundef %t) #2 align 64 {
entry:
  %dummy_result.i.i = alloca %struct.dmaengine_result, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %desc1 = getelementptr i8, ptr %t, i32 -88
  %0 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc1, align 4
  %lock = getelementptr i8, ptr %t, i32 60
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %retries = getelementptr i8, ptr %t, i32 116
  %2 = ptrtoint ptr %retries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %retries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp7 = icmp slt i32 %3, 1
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  %async_tx = getelementptr inbounds %struct.sf_pdma_desc, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %async_tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %async_tx, align 8
  %callback.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %callback.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %callback.i.i, align 4
  %callback_result.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %callback_result.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %callback_result.i.i, align 4
  %callback_param.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %5, i32 0, i32 8
  %10 = ptrtoint ptr %callback_param.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %callback_param.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i.i) #9
  %12 = ptrtoint ptr %dummy_result.i.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %dummy_result.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  call void %9(ptr noundef %11, ptr noundef nonnull %dummy_result.i.i) #9
  br label %dmaengine_desc_get_callback_invoke.exit

if.else.i.i:                                      ; preds = %if.then
  %tobool4.not.i.i = icmp eq ptr %7, null
  br i1 %tobool4.not.i.i, label %if.else.i.i.dmaengine_desc_get_callback_invoke.exit_crit_edge, label %if.then5.i.i

if.else.i.i.dmaengine_desc_get_callback_invoke.exit_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_desc_get_callback_invoke.exit

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %7(ptr noundef %11) #9
  br label %dmaengine_desc_get_callback_invoke.exit

dmaengine_desc_get_callback_invoke.exit:          ; preds = %if.then5.i.i, %if.else.i.i.dmaengine_desc_get_callback_invoke.exit_crit_edge, %if.then.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy_result.i.i) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dec = add nsw i32 %3, -1
  %13 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %dec, ptr %retries, align 4
  %xfer_err = getelementptr i8, ptr %t, i32 104
  %14 = ptrtoint ptr %xfer_err to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %xfer_err, align 4
  %status = getelementptr i8, ptr %t, i32 -104
  %15 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %status, align 4
  %regs1.i = getelementptr i8, ptr %t, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs1.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 62914560) #9, !srcloc !76
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %dmaengine_desc_get_callback_invoke.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vchan_find_desc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !55, !56, !57, !58, !59, !61, !62, !63, !64}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @__initcall__kmod_sf_pdma__238_601_sf_pdma_init4, !1, !"__initcall__kmod_sf_pdma__238_601_sf_pdma_init4", i1 false, i1 false}
!1 = !{!"../drivers/dma/sf-pdma/sf-pdma.c", i32 601, i32 1}
!2 = !{ptr @__exitcall_sf_pdma_exit, !3, !"__exitcall_sf_pdma_exit", i1 false, i1 false}
!3 = !{!"../drivers/dma/sf-pdma/sf-pdma.c", i32 602, i32 1}
!4 = !{ptr @__UNIQUE_ID_file239, !5, !"__UNIQUE_ID_file239", i1 false, i1 false}
!5 = !{!"../drivers/dma/sf-pdma/sf-pdma.c", i32 604, i32 1}
!6 = !{ptr @__UNIQUE_ID_license240, !5, !"__UNIQUE_ID_license240", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description241, !8, !"__UNIQUE_ID_description241", i1 false, i1 false}
!8 = !{!"../drivers/dma/sf-pdma/sf-pdma.c", i32 605, i32 1}
!9 = !{ptr @__UNIQUE_ID_author242, !10, !"__UNIQUE_ID_author242", i1 false, i1 false}
!10 = !{!"../drivers/dma/sf-pdma/sf-pdma.c", i32 606, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/dma/sf-pdma/sf-pdma.c", i32 585, i32 11}
!13 = !{ptr @sf_pdma_driver, !14, !"sf_pdma_driver", i1 false, i1 false}
!14 = !{!"../drivers/dma/sf-pdma/sf-pdma.c", i32 581, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/dma/sf-pdma/sf-pdma.c", i32 540, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @sf_pdma_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @sf_pdma_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/dma/sf-pdma/sf-pdma.c", i32 545, i32 3}
!25 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @sf_pdma_probe._entry.6, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @sf_pdma_probe._entry_ptr.9, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/dma/sf-pdma/sf-pdma.c", i32 393, i32 4}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @sf_pdma_irq_init._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @sf_pdma_irq_init._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/dma/sf-pdma/sf-pdma.c", i32 400, i32 4}
!35 = !{ptr @sf_pdma_irq_init._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @sf_pdma_irq_init._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/dma/sf-pdma/sf-pdma.c", i32 408, i32 4}
!39 = !{ptr @sf_pdma_irq_init._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @sf_pdma_irq_init._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/dma/sf-pdma/sf-pdma.c", i32 415, i32 4}
!43 = !{ptr @sf_pdma_irq_init._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @sf_pdma_irq_init._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/dma/sf-pdma/sf-pdma.c", i32 250, i32 3}
!47 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @sf_pdma_xfer_desc._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @sf_pdma_xfer_desc._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @sf_pdma_setup_chans.__key, !51, !"__key", i1 false, i1 false}
!51 = !{!"../drivers/dma/sf-pdma/sf-pdma.c", i32 470, i32 3}
!52 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/dma/sf-pdma/../virt-dma.h", i32 101, i32 2}
!55 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug236, !54, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/dma/sf-pdma/sf-pdma.c", i32 100, i32 3}
!61 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @sf_pdma_prep_dma_memcpy._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @sf_pdma_prep_dma_memcpy._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @sf_pdma_dt_ids, !65, !"sf_pdma_dt_ids", i1 false, i1 false}
!65 = !{!"../drivers/dma/sf-pdma/sf-pdma.c", i32 575, i32 34}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{i64 2154397917}
!76 = !{i64 6267642}
!77 = !{i64 2154368154}
!78 = !{i64 2154371030}
!79 = !{i64 6268060}
!80 = !{i64 2154372475}
!81 = !{i64 2154364717}
!82 = !{i64 2154065445}
!83 = !{i64 2154359721}
!84 = !{i64 2154360171}
!85 = !{i8 0, i8 2}
!86 = !{i64 2154384971}
!87 = !{i64 2154386438}
!88 = !{i64 2154388640}
!89 = !{i64 2154390107}
!90 = !{i64 2154378920}
!91 = !{i64 2154360593}
!92 = !{i64 2154361086}
!93 = !{i64 2154377019}
!94 = !{!"branch_weights", i32 1, i32 2000}
!95 = !{i64 2154063934, i64 2154064432, i64 2154063971, i64 2154064027, i64 2154064061, i64 2154064085, i64 2154064126, i64 2154064147, i64 2154064175, i64 2154064209}
!96 = !{i64 2148966410, i64 2148966415, i64 2148966428, i64 2148966472, i64 2148966506, i64 2148966527}
