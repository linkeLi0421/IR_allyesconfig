; ModuleID = '/llk/IR_all_yes/drivers/dma/sh/usb-dmac.c_pt.bc'
source_filename = "../drivers/dma/sh/usb-dmac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.usb_dmac = type { %struct.dma_device, ptr, ptr, i32, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.usb_dmac_chan = type { %struct.virt_dma_chan, ptr, i32, i32, ptr, i32, %struct.list_head, %struct.list_head }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.usb_dmac_desc = type { %struct.virt_dma_desc, i32, i32, i32, i32, i32, %struct.list_head, i32, [0 x %struct.usb_dmac_sg] }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }
%struct.usb_dmac_sg = type { i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }

@__initcall__kmod_usb_dmac__240_910_usb_dmac_driver_init6 = internal global ptr @usb_dmac_driver_init, section ".initcall6.init", align 4
@usb_dmac_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @usb_dmac_probe, ptr @usb_dmac_remove, ptr @usb_dmac_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @usb_dmac_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usb_dmac_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_usb_dmac_driver_exit = internal global ptr @usb_dmac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description241 = internal constant [55 x i8] c"usb_dmac.description=Renesas USB DMA Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [69 x i8] c"usb_dmac.author=Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [38 x i8] c"usb_dmac.file=drivers/dma/sh/usb-dmac\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [24 x i8] c"usb_dmac.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usb-dmac\00", [23 x i8] zeroinitializer }, align 32
@usb_dmac_of_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,usb-dmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@usb_dmac_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @usb_dmac_runtime_suspend, ptr @usb_dmac_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@usb_dmac_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 801, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"runtime PM get sync failed (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"usb_dmac_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/dma/sh/usb-dmac.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usb_dmac_probe._entry_ptr = internal global ptr @usb_dmac_probe._entry, section ".printk_index", align 4
@usb_dmac_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 808, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to reset device\0A\00", [40 x i8] zeroinitializer }, align 32
@usb_dmac_probe._entry_ptr.8 = internal global ptr @usb_dmac_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dma-channels\00", [19 x i8] zeroinitializer }, align 32
@usb_dmac_parse_of._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 753, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unable to read dma-channels property\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"usb_dmac_parse_of\00", [46 x i8] zeroinitializer }, align 32
@usb_dmac_parse_of._entry_ptr = internal global ptr @usb_dmac_parse_of._entry, section ".printk_index", align 4
@usb_dmac_parse_of._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.3, i32 759, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid number of channels %u\0A\00", [33 x i8] zeroinitializer }, align 32
@usb_dmac_parse_of._entry_ptr.14 = internal global ptr @usb_dmac_parse_of._entry.12, section ".printk_index", align 4
@usb_dmac_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 253, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DMAOR initialization failed.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usb_dmac_init\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@usb_dmac_init._entry_ptr = internal global ptr @usb_dmac_init._entry, section ".printk_index", align 4
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ch%u\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s:%u\00", [26 x i8] zeroinitializer }, align 32
@usb_dmac_chan_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 734, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to request IRQ %u (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"usb_dmac_chan_probe\00", [44 x i8] zeroinitializer }, align 32
@usb_dmac_chan_probe._entry_ptr = internal global ptr @usb_dmac_chan_probe._entry, section ".printk_index", align 4
@usb_dmac_chan_start_sg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@usb_dmac_chan_start_sg.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.23, ptr @.str.3, ptr @.str.24, i8 0, i8 52, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usb_dmac\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"usb_dmac_chan_start_sg\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"chan%u: queue sg %p: %u@%pad -> %pad\0A\00", [58 x i8] zeroinitializer }, align 32
@vchan_cookie_complete.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.25, ptr @.str.26, ptr @.str.27, i8 0, i8 25, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vchan_cookie_complete\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/dma/sh/../virt-dma.h\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"txd %p[%x]: marked complete\0A\00", [35 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@usb_dmac_prep_slave_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 427, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: bad parameter: len=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"usb_dmac_prep_slave_sg\00", [41 x i8] zeroinitializer }, align 32
@usb_dmac_prep_slave_sg._entry_ptr = internal global ptr @usb_dmac_prep_slave_sg._entry, section ".printk_index", align 4
@___asan_gen_.30 = private unnamed_addr constant [16 x i8] c"usb_dmac_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 899, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 902, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [16 x i8] c"usb_dmac_of_ids\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 893, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [12 x i8] c"usb_dmac_pm\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 696, i32 32 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 801, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 808, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 751, i32 33 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 753, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 758, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 253, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 720, i32 24 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 725, i32 50 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 733, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 207, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [32 x i8] c"../drivers/dma/sh/../virt-dma.h\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 101, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.136 = private constant [29 x i8] c"../drivers/dma/sh/usb-dmac.c\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 426, i32 3 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__exitcall_usb_dmac_driver_exit, ptr @__initcall__kmod_usb_dmac__240_910_usb_dmac_driver_init6, ptr @usb_dmac_chan_probe._entry, ptr @usb_dmac_chan_probe._entry_ptr, ptr @usb_dmac_driver_exit, ptr @usb_dmac_init._entry, ptr @usb_dmac_init._entry_ptr, ptr @usb_dmac_parse_of._entry, ptr @usb_dmac_parse_of._entry.12, ptr @usb_dmac_parse_of._entry_ptr, ptr @usb_dmac_parse_of._entry_ptr.14, ptr @usb_dmac_prep_slave_sg._entry, ptr @usb_dmac_prep_slave_sg._entry_ptr, ptr @usb_dmac_probe._entry, ptr @usb_dmac_probe._entry.6, ptr @usb_dmac_probe._entry_ptr, ptr @usb_dmac_probe._entry_ptr.8, ptr @usb_dmac_driver, ptr @.str, ptr @usb_dmac_of_ids, ptr @usb_dmac_pm, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_dmac_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_dmac_of_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_dmac_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_dmac_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_dmac_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_dmac_parse_of._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_dmac_parse_of._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_dmac_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_dmac_chan_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_dmac_prep_slave_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_dmac_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @usb_dmac_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usb_dmac_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @usb_dmac_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_dmac_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %pdev_irqname.i = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 380, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.usb_dmac, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev2, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node.i, align 8
  %n_channels.i = getelementptr inbounds %struct.usb_dmac, ptr %call.i, i32 0, i32 3
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.9, ptr noundef %n_channels.i, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %4 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_channels.i, align 4
  %6 = add i32 %5, -100
  call void @__sanitizer_cov_trace_const_cmp4(i32 -99, i32 %6)
  %7 = icmp ult i32 %6, -99
  br i1 %7, label %do.end8.i, label %if.end6

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %5) #13
  br label %cleanup

if.end6:                                          ; preds = %if.end.i
  %8 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_channels.i, align 4
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 216) #10
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !82

devm_kcalloc.exit.thread:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %channels141 = getelementptr inbounds %struct.usb_dmac, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %channels141 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %channels141, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end6
  %13 = extractvalue { i32, i1 } %10, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %13, i32 noundef 3520) #10
  %channels = getelementptr inbounds %struct.usb_dmac, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call5.i.i, ptr %channels, align 4
  %tobool10.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool10.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end12

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %devm_kcalloc.exit
  %call13 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #10
  %call15 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call13) #10
  %iomem = getelementptr inbounds %struct.usb_dmac, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %iomem to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call15, ptr %iomem, align 4
  %cmp.i124 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i124, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end12
  tail call void @pm_runtime_enable(ptr noundef %dev) #10
  %call.i125 = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125)
  %cmp25 = icmp slt i32 %call.i125, 0
  br i1 %cmp25, label %do.end, label %if.end28

do.end:                                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %call.i125) #13
  br label %error_pm

if.end28:                                         ; preds = %if.end21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !83
  tail call void @arm_heavy_mb() #10
  %17 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iomem, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #10, !srcloc !84
  %19 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iomem, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %20, i32 96
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i) #10, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !86
  %22 = and i32 %21, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %22)
  %cmp.not.i = icmp eq i32 %22, 16777216
  br i1 %cmp.not.i, label %if.end36, label %do.end34

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.15) #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #13
  br label %error

if.end36:                                         ; preds = %if.end28
  %channels38 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3
  %25 = ptrtoint ptr %channels38 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %channels38, ptr %channels38, align 4
  %prev.i = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %channels38, ptr %prev.i, align 4
  %27 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %n_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp40150.not = icmp eq i32 %28, 0
  br i1 %cmp40150.not, label %if.end36.for.end_crit_edge, label %if.end36.for.body_crit_edge

if.end36.for.body_crit_edge:                      ; preds = %if.end36
  br label %for.body

if.end36.for.end_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end36.for.body_crit_edge
  %i.0151 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end36.for.body_crit_edge ]
  %29 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %channels, align 4
  %arrayidx = getelementptr %struct.usb_dmac_chan, ptr %30, i32 %i.0151
  %31 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev2, align 4
  %add.ptr.i = getelementptr i8, ptr %32, i32 -16
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %pdev_irqname.i) #10
  %index1.i = getelementptr %struct.usb_dmac_chan, ptr %30, i32 %i.0151, i32 2
  %33 = call ptr @memset(ptr %pdev_irqname.i, i32 255, i32 5)
  %34 = ptrtoint ptr %index1.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %i.0151, ptr %index1.i, align 4
  %35 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %iomem, align 4
  %mul.i = shl i32 %i.0151, 5
  %add.i = add i32 %mul.i, 32
  %add.ptr2.i = getelementptr i8, ptr %36, i32 %add.i
  %iomem3.i = getelementptr %struct.usb_dmac_chan, ptr %30, i32 %i.0151, i32 1
  %37 = ptrtoint ptr %iomem3.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr2.i, ptr %iomem3.i, align 4
  %call.i129 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %pdev_irqname.i, ptr noundef nonnull @.str.18, i32 noundef %i.0151) #10
  %call5.i = call i32 @platform_get_irq_byname(ptr noundef %add.ptr.i, ptr noundef nonnull %pdev_irqname.i) #10
  %irq.i = getelementptr %struct.usb_dmac_chan, ptr %30, i32 %i.0151, i32 3
  %38 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call5.i, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i130 = icmp slt i32 %call5.i, 0
  br i1 %cmp.i130, label %for.body.usb_dmac_chan_probe.exit.thread_crit_edge, label %if.end.i131

for.body.usb_dmac_chan_probe.exit.thread_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_dmac_chan_probe.exit.thread

if.end.i131:                                      ; preds = %for.body
  %39 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev2, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.i, label %if.end.i.i132, label %if.end.i131.dev_name.exit.i_crit_edge

if.end.i131.dev_name.exit.i_crit_edge:            ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i

if.end.i.i132:                                    ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %40, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i132, %if.end.i131.dev_name.exit.i_crit_edge
  %retval.0.i.i133 = phi ptr [ %44, %if.end.i.i132 ], [ %42, %if.end.i131.dev_name.exit.i_crit_edge ]
  %call10.i = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %40, i32 noundef 3264, ptr noundef nonnull @.str.19, ptr noundef %retval.0.i.i133, i32 noundef %i.0151) #10
  %tobool.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool.not.i, label %dev_name.exit.i.usb_dmac_chan_probe.exit.thread_crit_edge, label %if.end12.i

dev_name.exit.i.usb_dmac_chan_probe.exit.thread_crit_edge: ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_dmac_chan_probe.exit.thread

if.end12.i:                                       ; preds = %dev_name.exit.i
  %45 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev2, align 4
  %47 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %irq.i, align 4
  %call.i.i = call i32 @devm_request_threaded_irq(ptr noundef %46, i32 noundef %48, ptr noundef nonnull @usb_dmac_isr_channel, ptr noundef null, i32 noundef 128, ptr noundef nonnull %call10.i, ptr noundef %arrayidx) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool16.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool16.not.i, label %usb_dmac_chan_probe.exit.thread147, label %usb_dmac_chan_probe.exit

usb_dmac_chan_probe.exit.thread147:               ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %desc_free.i = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx, i32 0, i32 2
  %49 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @usb_dmac_virt_desc_free, ptr %desc_free.i, align 4
  call void @vchan_init(ptr noundef %arrayidx, ptr noundef %call.i) #10
  %desc_freed.i = getelementptr %struct.usb_dmac_chan, ptr %30, i32 %i.0151, i32 7
  %50 = ptrtoint ptr %desc_freed.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %desc_freed.i, ptr %desc_freed.i, align 4
  %prev.i.i = getelementptr %struct.usb_dmac_chan, ptr %30, i32 %i.0151, i32 7, i32 1
  %51 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %desc_freed.i, ptr %prev.i.i, align 4
  %desc_got.i = getelementptr %struct.usb_dmac_chan, ptr %30, i32 %i.0151, i32 6
  %52 = ptrtoint ptr %desc_got.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %desc_got.i, ptr %desc_got.i, align 4
  %prev.i47.i = getelementptr %struct.usb_dmac_chan, ptr %30, i32 %i.0151, i32 6, i32 1
  %53 = ptrtoint ptr %prev.i47.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %desc_got.i, ptr %prev.i47.i, align 4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %pdev_irqname.i) #10
  br label %for.inc

usb_dmac_chan_probe.exit.thread:                  ; preds = %dev_name.exit.i.usb_dmac_chan_probe.exit.thread_crit_edge, %for.body.usb_dmac_chan_probe.exit.thread_crit_edge
  %retval.0.i135.ph = phi i32 [ -12, %dev_name.exit.i.usb_dmac_chan_probe.exit.thread_crit_edge ], [ -19, %for.body.usb_dmac_chan_probe.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %pdev_irqname.i) #10
  br label %error

usb_dmac_chan_probe.exit:                         ; preds = %if.end12.i
  %54 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev2, align 4
  %56 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %irq.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.20, i32 noundef %57, i32 noundef %call.i.i) #13
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %pdev_irqname.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp43 = icmp slt i32 %call.i.i, 0
  br i1 %cmp43, label %usb_dmac_chan_probe.exit.error_crit_edge, label %usb_dmac_chan_probe.exit.for.inc_crit_edge

usb_dmac_chan_probe.exit.for.inc_crit_edge:       ; preds = %usb_dmac_chan_probe.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

usb_dmac_chan_probe.exit.error_crit_edge:         ; preds = %usb_dmac_chan_probe.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

for.inc:                                          ; preds = %usb_dmac_chan_probe.exit.for.inc_crit_edge, %usb_dmac_chan_probe.exit.thread147
  %inc = add nuw i32 %i.0151, 1
  %58 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %n_channels.i, align 4
  %cmp40 = icmp ult i32 %inc, %59
  br i1 %cmp40, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end36.for.end_crit_edge
  %60 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %of_node.i, align 8
  %call47 = call i32 @of_dma_controller_register(ptr noundef %61, ptr noundef nonnull @usb_dmac_of_xlate, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %for.end.error_crit_edge, label %if.end50

for.end.error_crit_edge:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end50:                                         ; preds = %for.end
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 6
  call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #10
  %dev53 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 15
  %62 = ptrtoint ptr %dev53 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %dev, ptr %dev53, align 4
  %src_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 19
  %63 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 32, ptr %src_addr_widths, align 4
  %dst_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 20
  %64 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 32, ptr %dst_addr_widths, align 4
  %directions = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 21
  %65 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 6, ptr %directions, align 4
  %residue_granularity = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 26
  %66 = ptrtoint ptr %residue_granularity to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 2, ptr %residue_granularity, align 4
  %device_alloc_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 27
  %67 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @usb_dmac_alloc_chan_resources, ptr %device_alloc_chan_resources, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 29
  %68 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @usb_dmac_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_prep_slave_sg = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 39
  %69 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @usb_dmac_prep_slave_sg, ptr %device_prep_slave_sg, align 4
  %device_terminate_all = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 47
  %70 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @usb_dmac_chan_terminate_all, ptr %device_terminate_all, align 4
  %device_tx_status = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 49
  %71 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @usb_dmac_tx_status, ptr %device_tx_status, align 4
  %device_issue_pending = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 50
  %72 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @usb_dmac_issue_pending, ptr %device_issue_pending, align 4
  %call54 = call i32 @dma_async_device_register(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.end50.error_crit_edge, label %if.end57

if.end50.error_crit_edge:                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end57:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  %call.i136 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #10
  br label %cleanup

error:                                            ; preds = %if.end50.error_crit_edge, %for.end.error_crit_edge, %usb_dmac_chan_probe.exit.error_crit_edge, %usb_dmac_chan_probe.exit.thread, %do.end34
  %ret.0 = phi i32 [ -5, %do.end34 ], [ %call47, %for.end.error_crit_edge ], [ %call54, %if.end50.error_crit_edge ], [ %retval.0.i135.ph, %usb_dmac_chan_probe.exit.thread ], [ %call.i.i, %usb_dmac_chan_probe.exit.error_crit_edge ]
  %73 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %of_node.i, align 8
  call void @of_dma_controller_free(ptr noundef %74) #10
  br label %error_pm

error_pm:                                         ; preds = %error, %do.end
  %ret.1 = phi i32 [ %call.i125, %do.end ], [ %ret.0, %error ]
  %call.i137 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #10
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #10
  br label %cleanup

cleanup:                                          ; preds = %error_pm, %if.end57, %if.then18, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %do.end8.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %if.then18 ], [ %ret.1, %error_pm ], [ 0, %if.end57 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -22, %do.end8.i ], [ %call.i.i.i, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_dmac_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %n_channels = getelementptr inbounds %struct.usb_dmac, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp9.not = icmp eq i32 %3, 0
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %channels = getelementptr inbounds %struct.usb_dmac, ptr %1, i32 0, i32 4
  %dev.i = getelementptr inbounds %struct.usb_dmac, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channels, align 4
  %arrayidx = getelementptr %struct.usb_dmac_chan, ptr %5, i32 %i.010
  tail call fastcc void @usb_dmac_chan_halt(ptr noundef %arrayidx) #10
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %irq.i = getelementptr %struct.usb_dmac_chan, ptr %5, i32 %i.010, i32 3
  %8 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq.i, align 4
  tail call void @devm_free_irq(ptr noundef %7, i32 noundef %9, ptr noundef %arrayidx) #10
  %inc = add nuw i32 %i.010, 1
  %10 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_channels, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  tail call void @of_dma_controller_free(ptr noundef %13) #10
  tail call void @dma_async_device_unregister(ptr noundef %1) #10
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_dmac_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !83
  tail call void @arm_heavy_mb() #10
  %iomem.i.i = getelementptr inbounds %struct.usb_dmac, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #10, !srcloc !84
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @usb_dmac_of_xlate(ptr noundef %dma_spec, ptr nocapture noundef readonly %ofdma) #2 align 64 {
entry:
  %mask = alloca %struct.dma_cap_mask_t, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #10
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 1
  %0 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %mask, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %mask) #10
  %of_node = getelementptr inbounds %struct.of_dma, ptr %ofdma, i32 0, i32 1
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 4
  %call = call ptr @__dma_request_channel(ptr noundef nonnull %mask, ptr noundef nonnull @usb_dmac_chan_filter, ptr noundef %dma_spec, ptr noundef %4) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #10
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_dmac_alloc_chan_resources(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %descs_allocated = getelementptr inbounds %struct.usb_dmac_chan, ptr %chan, i32 0, i32 5
  %0 = ptrtoint ptr %descs_allocated to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %descs_allocated, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp13 = icmp slt i32 %1, 16
  br i1 %cmp13, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %desc_freed.i = getelementptr inbounds %struct.usb_dmac_chan, ptr %chan, i32 0, i32 7
  %prev.i17.i = getelementptr inbounds %struct.usb_dmac_chan, ptr %chan, i32 0, i32 7, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 212) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then, label %if.end.i

if.end.i:                                         ; preds = %while.body
  %sg_allocated_len.i = getelementptr inbounds %struct.usb_dmac_desc, ptr %call7.i.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %sg_allocated_len.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 8, ptr %sg_allocated_len.i, align 8
  %node.i = getelementptr inbounds %struct.usb_dmac_desc, ptr %call7.i.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %node.i, ptr %node.i, align 8
  %prev.i.i = getelementptr inbounds %struct.usb_dmac_desc, ptr %call7.i.i.i, i32 0, i32 6, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %node.i, ptr %prev.i.i, align 4
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %6 = ptrtoint ptr %prev.i17.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i17.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %7, ptr noundef %desc_freed.i) #10
  br i1 %call.i.i.i, label %if.end.i.i18.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i.i18.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %prev.i17.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %node.i, ptr %prev.i17.i, align 4
  %9 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %desc_freed.i, ptr %node.i, align 8
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %node.i, ptr %7, align 4
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @usb_dmac_desc_free(ptr noundef %chan)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i18.i, %if.end.i.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #10
  %12 = ptrtoint ptr %descs_allocated to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %descs_allocated, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %descs_allocated, align 4
  %cmp = icmp slt i32 %inc, 16
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %14 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %17, i32 noundef 4) #10
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %retval.0 = phi i32 [ -12, %if.then ], [ %call.i, %while.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_dmac_free_chan_resources(ptr noundef %chan) #2 align 64 {
entry:
  %head.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  tail call fastcc void @usb_dmac_chan_halt(ptr noundef %chan)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  tail call fastcc void @usb_dmac_desc_free(ptr noundef %chan)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i) #10
  %0 = getelementptr inbounds %struct.list_head, ptr %head.i, i32 0, i32 1
  %1 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %head.i, ptr %head.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head.i, ptr %0, align 4
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %desc_allocated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %3 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %desc_allocated.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %4, %desc_allocated.i.i
  br i1 %cmp.i.not.i.i.i, label %entry.list_splice_tail_init.exit.i.i_crit_edge, label %if.then.i.i.i

entry.list_splice_tail_init.exit.i.i_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit.i.i

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %0, align 4
  %prev2.i.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %prev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev2.i.i.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %4, ptr %6, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %head.i, ptr %8, align 4
  store ptr %8, ptr %0, align 4
  %12 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %desc_allocated.i.i, ptr %desc_allocated.i.i, align 4
  store ptr %desc_allocated.i.i, ptr %prev2.i.i.i.i, align 4
  br label %list_splice_tail_init.exit.i.i

list_splice_tail_init.exit.i.i:                   ; preds = %if.then.i.i.i, %entry.list_splice_tail_init.exit.i.i_crit_edge
  %desc_submitted.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %13 = ptrtoint ptr %desc_submitted.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %desc_submitted.i.i, align 4
  %cmp.i.not.i9.i.i = icmp eq ptr %14, %desc_submitted.i.i
  br i1 %cmp.i.not.i9.i.i, label %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge, label %if.then.i13.i.i

list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge: ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit14.i.i

if.then.i13.i.i:                                  ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %0, align 4
  %prev2.i.i11.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %prev2.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev2.i.i11.i.i, align 4
  %prev3.i.i12.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i12.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i12.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %14, ptr %16, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %head.i, ptr %18, align 4
  store ptr %18, ptr %0, align 4
  %22 = ptrtoint ptr %desc_submitted.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %desc_submitted.i.i, ptr %desc_submitted.i.i, align 4
  store ptr %desc_submitted.i.i, ptr %prev2.i.i11.i.i, align 4
  br label %list_splice_tail_init.exit14.i.i

list_splice_tail_init.exit14.i.i:                 ; preds = %if.then.i13.i.i, %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge
  %desc_issued.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %23 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %desc_issued.i.i, align 4
  %cmp.i.not.i15.i.i = icmp eq ptr %24, %desc_issued.i.i
  br i1 %cmp.i.not.i15.i.i, label %list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge, label %if.then.i19.i.i

list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit20.i.i

if.then.i19.i.i:                                  ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %0, align 4
  %prev2.i.i17.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %27 = ptrtoint ptr %prev2.i.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev2.i.i17.i.i, align 4
  %prev3.i.i18.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %prev3.i.i18.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i18.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %24, ptr %26, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %head.i, ptr %28, align 4
  store ptr %28, ptr %0, align 4
  %32 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %desc_issued.i.i, ptr %desc_issued.i.i, align 4
  store ptr %desc_issued.i.i, ptr %prev2.i.i17.i.i, align 4
  br label %list_splice_tail_init.exit20.i.i

list_splice_tail_init.exit20.i.i:                 ; preds = %if.then.i19.i.i, %list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge
  %desc_completed.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7
  %33 = ptrtoint ptr %desc_completed.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %desc_completed.i.i, align 4
  %cmp.i.not.i21.i.i = icmp eq ptr %34, %desc_completed.i.i
  br i1 %cmp.i.not.i21.i.i, label %list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge, label %if.then.i25.i.i

list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit26.i.i

if.then.i25.i.i:                                  ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %0, align 4
  %prev2.i.i23.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7, i32 1
  %37 = ptrtoint ptr %prev2.i.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev2.i.i23.i.i, align 4
  %prev3.i.i24.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %39 = ptrtoint ptr %prev3.i.i24.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev3.i.i24.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %34, ptr %36, align 4
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %head.i, ptr %38, align 4
  store ptr %38, ptr %0, align 4
  %42 = ptrtoint ptr %desc_completed.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %desc_completed.i.i, ptr %desc_completed.i.i, align 4
  store ptr %desc_completed.i.i, ptr %prev2.i.i23.i.i, align 4
  br label %list_splice_tail_init.exit26.i.i

list_splice_tail_init.exit26.i.i:                 ; preds = %if.then.i25.i.i, %list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge
  %desc_terminated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %43 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %desc_terminated.i.i, align 4
  %cmp.i.not.i27.i.i = icmp eq ptr %44, %desc_terminated.i.i
  br i1 %cmp.i.not.i27.i.i, label %list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge, label %if.then.i31.i.i

list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge: ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_get_all_descriptors.exit.i

if.then.i31.i.i:                                  ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %0, align 4
  %prev2.i.i29.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  %47 = ptrtoint ptr %prev2.i.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev2.i.i29.i.i, align 4
  %prev3.i.i30.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %49 = ptrtoint ptr %prev3.i.i30.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev3.i.i30.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %44, ptr %46, align 4
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %head.i, ptr %48, align 4
  store ptr %48, ptr %0, align 4
  %52 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %desc_terminated.i.i, ptr %desc_terminated.i.i, align 4
  store ptr %desc_terminated.i.i, ptr %prev2.i.i29.i.i, align 4
  br label %vchan_get_all_descriptors.exit.i

vchan_get_all_descriptors.exit.i:                 ; preds = %if.then.i31.i.i, %list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge
  %53 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pn20.i = load ptr, ptr %head.i, align 4
  %cmp7.not21.i = icmp eq ptr %.pn20.i, %head.i
  br i1 %cmp7.not21.i, label %vchan_get_all_descriptors.exit.i.vchan_free_chan_resources.exit_crit_edge, label %vchan_get_all_descriptors.exit.i.for.body.i_crit_edge

vchan_get_all_descriptors.exit.i.for.body.i_crit_edge: ; preds = %vchan_get_all_descriptors.exit.i
  br label %for.body.i

vchan_get_all_descriptors.exit.i.vchan_free_chan_resources.exit_crit_edge: ; preds = %vchan_get_all_descriptors.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_free_chan_resources.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %vchan_get_all_descriptors.exit.i.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn20.i, %vchan_get_all_descriptors.exit.i.for.body.i_crit_edge ]
  %flags.i.i = getelementptr i8, ptr %.pn22.i, i32 -104
  %54 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %55, -65
  store i32 %and.i.i, ptr %flags.i.i, align 4
  %56 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp7.not.i = icmp eq ptr %.pn.i, %head.i
  br i1 %cmp7.not.i, label %for.body.i.vchan_free_chan_resources.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.vchan_free_chan_resources.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_free_chan_resources.exit

vchan_free_chan_resources.exit:                   ; preds = %for.body.i.vchan_free_chan_resources.exit_crit_edge, %vchan_get_all_descriptors.exit.i.vchan_free_chan_resources.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i) #10
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #10
  %57 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %chan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %58, i32 0, i32 15
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 4
  %call.i = call i32 @__pm_runtime_idle(ptr noundef %60, i32 noundef 5) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @usb_dmac_prep_slave_sg(ptr noundef %chan, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %dir, i32 noundef %dma_flags, ptr nocapture noundef readnone %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %tobool.not = icmp eq i32 %sg_len, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 0) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %desc_freed.i = getelementptr inbounds %struct.usb_dmac_chan, ptr %chan, i32 0, i32 7
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %.pn.in.i = phi ptr [ %desc_freed.i, %if.end ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp7.not.i = icmp eq ptr %.pn.i, %desc_freed.i
  br i1 %cmp7.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %sg_allocated_len.i = getelementptr i8, ptr %.pn.i, i32 -16
  %5 = ptrtoint ptr %sg_allocated_len.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sg_allocated_len.i, align 4
  %cmp9.not.i = icmp ult i32 %6, %sg_len
  br i1 %cmp9.not.i, label %for.body.i.for.cond.i_crit_edge, label %if.then.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %desc.0.le.i = getelementptr i8, ptr %.pn.i, i32 -136
  %desc_got.i = getelementptr inbounds %struct.usb_dmac_chan, ptr %chan, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.__list_del_entry.exit.i.i_crit_edge

if.then.i.__list_del_entry.exit.i.i_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %.pn.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %.pn.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.then.i.__list_del_entry.exit.i.i_crit_edge
  %prev.i2.i.i = getelementptr inbounds %struct.usb_dmac_chan, ptr %chan, i32 0, i32 6, i32 1
  %13 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn.i, ptr noundef %14, ptr noundef %desc_got.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.usb_dmac_desc_get.exit_crit_edge

__list_del_entry.exit.i.i.usb_dmac_desc_get.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_dmac_desc_get.exit

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %.pn.i, ptr %prev.i2.i.i, align 4
  %16 = ptrtoint ptr %.pn.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %desc_got.i, ptr %.pn.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %.pn.i, ptr %14, align 4
  br label %usb_dmac_desc_get.exit

for.end.i:                                        ; preds = %for.cond.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #10
  %19 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %sg_len, i32 8) #10
  %20 = extractvalue { i32, i1 } %19, 1
  %21 = extractvalue { i32, i1 } %19, 0
  %spec.select.i.i.i = tail call i32 @llvm.uadd.sat.i32(i32 %21, i32 148) #10
  %retval.0.i.i.i = select i1 %20, i32 -1, i32 %spec.select.i.i.i
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i.i.i, i32 noundef 2304) #15
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool.not.i.i, label %for.end.i.cleanup_crit_edge, label %if.end.i.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %for.end.i
  %sg_allocated_len.i.i = getelementptr inbounds %struct.usb_dmac_desc, ptr %call9.i.i.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %sg_allocated_len.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sg_len, ptr %sg_allocated_len.i.i, align 8
  %node.i.i = getelementptr inbounds %struct.usb_dmac_desc, ptr %call9.i.i.i.i, i32 0, i32 6
  %23 = ptrtoint ptr %node.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %node.i.i, ptr %node.i.i, align 8
  %prev.i.i2.i = getelementptr inbounds %struct.usb_dmac_desc, ptr %call9.i.i.i.i, i32 0, i32 6, i32 1
  %24 = ptrtoint ptr %prev.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %node.i.i, ptr %prev.i.i2.i, align 4
  %call4.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %prev.i17.i.i = getelementptr inbounds %struct.usb_dmac_chan, ptr %chan, i32 0, i32 7, i32 1
  %25 = ptrtoint ptr %prev.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i17.i.i, align 4
  %call.i.i.i3.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i.i, ptr noundef %26, ptr noundef %desc_freed.i) #10
  br i1 %call.i.i.i3.i, label %if.end.i.i18.i.i, label %if.end.i.i.do.body24.i_crit_edge

if.end.i.i.do.body24.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body24.i

if.end.i.i18.i.i:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %prev.i17.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %node.i.i, ptr %prev.i17.i.i, align 4
  %28 = ptrtoint ptr %node.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %desc_freed.i, ptr %node.i.i, align 8
  %29 = ptrtoint ptr %prev.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev.i.i2.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %node.i.i, ptr %26, align 4
  br label %do.body24.i

do.body24.i:                                      ; preds = %if.end.i.i18.i.i, %if.end.i.i.do.body24.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i.i) #10
  %call33.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %31 = ptrtoint ptr %prev.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i17.i.i, align 4
  %add.ptr41.i = getelementptr i8, ptr %32, i32 -136
  %desc_got43.i = getelementptr inbounds %struct.usb_dmac_chan, ptr %chan, i32 0, i32 6
  %call.i.i4.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %32) #10
  br i1 %call.i.i4.i, label %if.end.i.i7.i, label %do.body24.i.__list_del_entry.exit.i10.i_crit_edge

do.body24.i.__list_del_entry.exit.i10.i_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i10.i

if.end.i.i7.i:                                    ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i5.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i5.i, align 4
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %32, align 4
  %prev1.i.i.i6.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i6.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i6.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %__list_del_entry.exit.i10.i

__list_del_entry.exit.i10.i:                      ; preds = %if.end.i.i7.i, %do.body24.i.__list_del_entry.exit.i10.i_crit_edge
  %prev.i2.i8.i = getelementptr inbounds %struct.usb_dmac_chan, ptr %chan, i32 0, i32 6, i32 1
  %39 = ptrtoint ptr %prev.i2.i8.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i2.i8.i, align 4
  %call.i.i.i9.i = tail call zeroext i1 @__list_add_valid(ptr noundef %32, ptr noundef %40, ptr noundef %desc_got43.i) #10
  br i1 %call.i.i.i9.i, label %if.end.i.i.i12.i, label %__list_del_entry.exit.i10.i.usb_dmac_desc_get.exit_crit_edge

__list_del_entry.exit.i10.i.usb_dmac_desc_get.exit_crit_edge: ; preds = %__list_del_entry.exit.i10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_dmac_desc_get.exit

if.end.i.i.i12.i:                                 ; preds = %__list_del_entry.exit.i10.i
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %prev.i2.i8.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %32, ptr %prev.i2.i8.i, align 4
  %42 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %desc_got43.i, ptr %32, align 4
  %prev3.i.i.i11.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %43 = ptrtoint ptr %prev3.i.i.i11.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev3.i.i.i11.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %32, ptr %40, align 4
  br label %usb_dmac_desc_get.exit

usb_dmac_desc_get.exit:                           ; preds = %if.end.i.i.i12.i, %__list_del_entry.exit.i10.i.usb_dmac_desc_get.exit_crit_edge, %if.end.i.i.i.i, %__list_del_entry.exit.i.i.usb_dmac_desc_get.exit_crit_edge
  %call33.sink.i = phi i32 [ %call2.i, %__list_del_entry.exit.i.i.usb_dmac_desc_get.exit_crit_edge ], [ %call2.i, %if.end.i.i.i.i ], [ %call33.i, %__list_del_entry.exit.i10.i.usb_dmac_desc_get.exit_crit_edge ], [ %call33.i, %if.end.i.i.i12.i ]
  %retval.0.ph.i = phi ptr [ %desc.0.le.i, %__list_del_entry.exit.i.i.usb_dmac_desc_get.exit_crit_edge ], [ %desc.0.le.i, %if.end.i.i.i.i ], [ %add.ptr41.i, %__list_del_entry.exit.i10.i.usb_dmac_desc_get.exit_crit_edge ], [ %add.ptr41.i, %if.end.i.i.i12.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call33.sink.i) #10
  %tobool1.not = icmp eq ptr %retval.0.ph.i, null
  br i1 %tobool1.not, label %usb_dmac_desc_get.exit.cleanup_crit_edge, label %for.body.preheader

usb_dmac_desc_get.exit.cleanup_crit_edge:         ; preds = %usb_dmac_desc_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.preheader:                               ; preds = %usb_dmac_desc_get.exit
  %direction = getelementptr inbounds %struct.usb_dmac_desc, ptr %retval.0.ph.i, i32 0, i32 1
  %45 = ptrtoint ptr %direction to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %dir, ptr %direction, align 4
  %sg_len4 = getelementptr inbounds %struct.usb_dmac_desc, ptr %retval.0.ph.i, i32 0, i32 3
  %46 = ptrtoint ptr %sg_len4 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sg_len, ptr %sg_len4, align 4
  %umax = call i32 @llvm.umax.i32(i32 %sg_len, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.039 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %sg.038 = phi ptr [ %call8, %for.body.for.body_crit_edge ], [ %sgl, %for.body.preheader ]
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.038, i32 0, i32 3
  %47 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dma_address, align 4
  %arrayidx = getelementptr %struct.usb_dmac_desc, ptr %retval.0.ph.i, i32 0, i32 8, i32 %i.039
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %arrayidx, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.038, i32 0, i32 4
  %50 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dma_length, align 4
  %size = getelementptr %struct.usb_dmac_desc, ptr %retval.0.ph.i, i32 0, i32 8, i32 %i.039, i32 1
  %52 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %size, align 4
  %inc = add nuw i32 %i.039, 1
  %call8 = tail call ptr @sg_next(ptr noundef %sg.038) #10
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %retval.0.ph.i, ptr noundef %chan) #10
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %retval.0.ph.i, i32 0, i32 1
  %53 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %dma_flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %retval.0.ph.i, i32 0, i32 4
  %54 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 4
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %retval.0.ph.i, i32 0, i32 5
  %55 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %retval.0.ph.i, i32 0, i32 1
  %56 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %retval.0.ph.i, i32 0, i32 1, i32 1
  %57 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %residue.i, align 4
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %retval.0.ph.i, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %58 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i30 = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %59, ptr noundef %desc_allocated.i) #10
  br i1 %call.i.i.i30, label %if.end.i.i.i31, label %for.end.vchan_tx_prep.exit_crit_edge

for.end.vchan_tx_prep.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_tx_prep.exit

if.end.i.i.i31:                                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %node.i, ptr %prev.i.i, align 4
  %61 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %retval.0.ph.i, i32 0, i32 2, i32 1
  %62 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev3.i.i.i, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %node.i, ptr %59, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i31, %for.end.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %usb_dmac_desc_get.exit.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ %retval.0.ph.i, %vchan_tx_prep.exit ], [ null, %do.end ], [ null, %usb_dmac_desc_get.exit.cleanup_crit_edge ], [ null, %for.end.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_dmac_chan_terminate_all(ptr noundef %chan) #2 align 64 {
entry:
  %head = alloca %struct.list_head, align 4
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head) #10
  %0 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %1 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %head, ptr %head, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #10
  %3 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %4 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %list, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list, ptr %3, align 4
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call5 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  call fastcc void @usb_dmac_chan_halt(ptr noundef %chan)
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %6 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %desc_allocated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %7, %desc_allocated.i
  br i1 %cmp.i.not.i.i, label %entry.list_splice_tail_init.exit.i_crit_edge, label %if.then.i.i

entry.list_splice_tail_init.exit.i_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %0, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %7, ptr %9, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %head, ptr %11, align 4
  store ptr %11, ptr %0, align 4
  %15 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %desc_allocated.i, ptr %desc_allocated.i, align 4
  store ptr %desc_allocated.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_tail_init.exit.i

list_splice_tail_init.exit.i:                     ; preds = %if.then.i.i, %entry.list_splice_tail_init.exit.i_crit_edge
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %16 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i9.i = icmp eq ptr %17, %desc_submitted.i
  br i1 %cmp.i.not.i9.i, label %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge, label %if.then.i13.i

list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge: ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit14.i

if.then.i13.i:                                    ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %0, align 4
  %prev2.i.i11.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %prev2.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev2.i.i11.i, align 4
  %prev3.i.i12.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %22 = ptrtoint ptr %prev3.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i12.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %17, ptr %19, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %head, ptr %21, align 4
  store ptr %21, ptr %0, align 4
  %25 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %desc_submitted.i, ptr %desc_submitted.i, align 4
  store ptr %desc_submitted.i, ptr %prev2.i.i11.i, align 4
  br label %list_splice_tail_init.exit14.i

list_splice_tail_init.exit14.i:                   ; preds = %if.then.i13.i, %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %26 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.not.i15.i = icmp eq ptr %27, %desc_issued.i
  br i1 %cmp.i.not.i15.i, label %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge, label %if.then.i19.i

list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit20.i

if.then.i19.i:                                    ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %0, align 4
  %prev2.i.i17.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %30 = ptrtoint ptr %prev2.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev2.i.i17.i, align 4
  %prev3.i.i18.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %32 = ptrtoint ptr %prev3.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev3.i.i18.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %27, ptr %29, align 4
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %head, ptr %31, align 4
  store ptr %31, ptr %0, align 4
  %35 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %desc_issued.i, ptr %desc_issued.i, align 4
  store ptr %desc_issued.i, ptr %prev2.i.i17.i, align 4
  br label %list_splice_tail_init.exit20.i

list_splice_tail_init.exit20.i:                   ; preds = %if.then.i19.i, %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7
  %36 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %desc_completed.i, align 4
  %cmp.i.not.i21.i = icmp eq ptr %37, %desc_completed.i
  br i1 %cmp.i.not.i21.i, label %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge, label %if.then.i25.i

list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit26.i

if.then.i25.i:                                    ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %0, align 4
  %prev2.i.i23.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7, i32 1
  %40 = ptrtoint ptr %prev2.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev2.i.i23.i, align 4
  %prev3.i.i24.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %42 = ptrtoint ptr %prev3.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev3.i.i24.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %37, ptr %39, align 4
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %head, ptr %41, align 4
  store ptr %41, ptr %0, align 4
  %45 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %desc_completed.i, ptr %desc_completed.i, align 4
  store ptr %desc_completed.i, ptr %prev2.i.i23.i, align 4
  br label %list_splice_tail_init.exit26.i

list_splice_tail_init.exit26.i:                   ; preds = %if.then.i25.i, %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %46 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %desc_terminated.i, align 4
  %cmp.i.not.i27.i = icmp eq ptr %47, %desc_terminated.i
  br i1 %cmp.i.not.i27.i, label %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge, label %if.then.i31.i

list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge: ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_get_all_descriptors.exit

if.then.i31.i:                                    ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %0, align 4
  %prev2.i.i29.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  %50 = ptrtoint ptr %prev2.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev2.i.i29.i, align 4
  %prev3.i.i30.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %52 = ptrtoint ptr %prev3.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev3.i.i30.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %47, ptr %49, align 4
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %head, ptr %51, align 4
  store ptr %51, ptr %0, align 4
  %55 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %desc_terminated.i, ptr %desc_terminated.i, align 4
  store ptr %desc_terminated.i, ptr %prev2.i.i29.i, align 4
  br label %vchan_get_all_descriptors.exit

vchan_get_all_descriptors.exit:                   ; preds = %if.then.i31.i, %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge
  %desc9 = getelementptr inbounds %struct.usb_dmac_chan, ptr %chan, i32 0, i32 4
  %56 = ptrtoint ptr %desc9 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %desc9, align 4
  %tobool.not = icmp eq ptr %57, null
  br i1 %tobool.not, label %vchan_get_all_descriptors.exit.if.end_crit_edge, label %if.then

vchan_get_all_descriptors.exit.if.end_crit_edge:  ; preds = %vchan_get_all_descriptors.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %vchan_get_all_descriptors.exit
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %desc9 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %desc9, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %vchan_get_all_descriptors.exit.if.end_crit_edge
  %desc_got = getelementptr inbounds %struct.usb_dmac_chan, ptr %chan, i32 0, i32 6
  %59 = ptrtoint ptr %desc_got to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %desc_got, align 4
  %cmp.i.not.i = icmp eq ptr %60, %desc_got
  br i1 %cmp.i.not.i, label %if.end.list_splice_init.exit_crit_edge, label %if.then.i

if.end.list_splice_init.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %list, align 4
  %prev2.i.i = getelementptr inbounds %struct.usb_dmac_chan, ptr %chan, i32 0, i32 6, i32 1
  %63 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %65 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %list, ptr %prev3.i.i, align 4
  store ptr %60, ptr %list, align 4
  %66 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %62, ptr %64, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %67 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev6.i.i, align 4
  %68 = ptrtoint ptr %desc_got to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %desc_got, ptr %desc_got, align 4
  store ptr %desc_got, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %if.end.list_splice_init.exit_crit_edge
  %69 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %list, align 4
  %cmp20.not44 = icmp eq ptr %70, %list
  br i1 %cmp20.not44, label %list_splice_init.exit.for.end_crit_edge, label %for.body.lr.ph

list_splice_init.exit.for.end_crit_edge:          ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %list_splice_init.exit
  %desc_freed = getelementptr inbounds %struct.usb_dmac_chan, ptr %chan, i32 0, i32 7
  %prev.i2.i = getelementptr inbounds %struct.usb_dmac_chan, ptr %chan, i32 0, i32 7, i32 1
  br label %for.body

for.body:                                         ; preds = %list_move_tail.exit.for.body_crit_edge, %for.body.lr.ph
  %71 = phi ptr [ %70, %for.body.lr.ph ], [ %.pn, %list_move_tail.exit.for.body_crit_edge ]
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %.pn = load ptr, ptr %71, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %71) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.__list_del_entry.exit.i_crit_edge

for.body.__list_del_entry.exit.i_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i42 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %73 = ptrtoint ptr %prev.i.i42 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev.i.i42, align 4
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %71, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %74, ptr %prev1.i.i.i, align 4
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %76, ptr %74, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %for.body.__list_del_entry.exit.i_crit_edge
  %79 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %71, ptr noundef %80, ptr noundef %desc_freed) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %81 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %71, ptr %prev.i2.i, align 4
  %82 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %desc_freed, ptr %71, align 4
  %prev3.i.i.i43 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %83 = ptrtoint ptr %prev3.i.i.i43 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %80, ptr %prev3.i.i.i43, align 4
  %84 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %71, ptr %80, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %cmp20.not = icmp eq ptr %.pn, %list
  br i1 %cmp20.not, label %list_move_tail.exit.for.end_crit_edge, label %list_move_tail.exit.for.body_crit_edge

list_move_tail.exit.for.body_crit_edge:           ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

list_move_tail.exit.for.end_crit_edge:            ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %list_move_tail.exit.for.end_crit_edge, %list_splice_init.exit.for.end_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #10
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_dmac_tx_status(ptr noundef %chan, i32 noundef %cookie, ptr noundef writeonly %txstate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !87
  %tobool.not.i = icmp eq ptr %txstate, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  br i1 %or.cond.i.i, label %if.then.i.i.dma_cookie_status.exit_crit_edge, label %if.then.i.i.dma_cookie_status.exit.thread_crit_edge

if.then.i.i.dma_cookie_status.exit.thread_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_cookie_status.exit.thread

if.then.i.i.dma_cookie_status.exit_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_cookie_status.exit

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  br i1 %or.cond16.i.i, label %if.else.i.i.dma_cookie_status.exit_crit_edge, label %if.else.i.i.dma_cookie_status.exit.thread_crit_edge

if.else.i.i.dma_cookie_status.exit.thread_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_cookie_status.exit.thread

if.else.i.i.dma_cookie_status.exit_crit_edge:     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_cookie_status.exit

dma_cookie_status.exit:                           ; preds = %if.else.i.i.dma_cookie_status.exit_crit_edge, %if.then.i.i.dma_cookie_status.exit_crit_edge
  br i1 %tobool.not.i, label %dma_cookie_status.exit.cleanup_crit_edge, label %if.then9

dma_cookie_status.exit.cleanup_crit_edge:         ; preds = %dma_cookie_status.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

dma_cookie_status.exit.thread:                    ; preds = %if.else.i.i.dma_cookie_status.exit.thread_crit_edge, %if.then.i.i.dma_cookie_status.exit.thread_crit_edge
  br i1 %tobool.not.i, label %dma_cookie_status.exit.thread.cleanup_crit_edge, label %if.else

dma_cookie_status.exit.thread.cleanup_crit_edge:  ; preds = %dma_cookie_status.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then9:                                         ; preds = %dma_cookie_status.exit
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %desc_freed.i = getelementptr inbounds %struct.usb_dmac_chan, ptr %chan, i32 0, i32 7
  %prev.i = getelementptr inbounds %struct.usb_dmac_chan, ptr %chan, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn14.i = load ptr, ptr %prev.i, align 4
  %cmp.not15.i = icmp eq ptr %.pn14.i, %desc_freed.i
  br i1 %cmp.not15.i, label %if.then9.dma_set_residue.exit_crit_edge, label %if.then9.for.body.i_crit_edge

if.then9.for.body.i_crit_edge:                    ; preds = %if.then9
  br label %for.body.i

if.then9.dma_set_residue.exit_crit_edge:          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_set_residue.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then9.for.body.i_crit_edge
  %.pn16.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn14.i, %if.then9.for.body.i_crit_edge ]
  %done_cookie.i = getelementptr i8, ptr %.pn16.i, i32 8
  %9 = ptrtoint ptr %done_cookie.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %done_cookie.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %cookie)
  %cmp2.i = icmp eq i32 %10, %cookie
  br i1 %cmp2.i, label %if.then.i28, label %for.inc.i

if.then.i28:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %residue3.i = getelementptr i8, ptr %.pn16.i, i32 -4
  %11 = ptrtoint ptr %residue3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %residue3.i, align 4
  br label %dma_set_residue.exit

for.inc.i:                                        ; preds = %for.body.i
  %prev6.i = getelementptr inbounds %struct.list_head, ptr %.pn16.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev6.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn.i = load ptr, ptr %prev6.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %desc_freed.i
  br i1 %cmp.not.i, label %for.inc.i.dma_set_residue.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.dma_set_residue.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_set_residue.exit

if.else:                                          ; preds = %dma_cookie_status.exit.thread
  %lock41 = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call442 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock41) #10
  %desc1.i = getelementptr inbounds %struct.usb_dmac_chan, ptr %chan, i32 0, i32 4
  %14 = ptrtoint ptr %desc1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %desc1.i, align 4
  %tobool.not.i29 = icmp eq ptr %15, null
  br i1 %tobool.not.i29, label %if.then.i30, label %if.else.if.end4.i_crit_edge

if.else.if.end4.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i

if.then.i30:                                      ; preds = %if.else
  %call.i = tail call ptr @vchan_find_desc(ptr noundef %chan, i32 noundef %cookie) #10
  %tobool2.not.i = icmp eq ptr %call.i, null
  br i1 %tobool2.not.i, label %if.then.i30.dma_set_residue.exit_crit_edge, label %if.then.i30.if.end4.i_crit_edge

if.then.i30.if.end4.i_crit_edge:                  ; preds = %if.then.i30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i

if.then.i30.dma_set_residue.exit_crit_edge:       ; preds = %if.then.i30
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_set_residue.exit

if.end4.i:                                        ; preds = %if.then.i30.if.end4.i_crit_edge, %if.else.if.end4.i_crit_edge
  %desc.0.i = phi ptr [ %15, %if.else.if.end4.i_crit_edge ], [ %call.i, %if.then.i30.if.end4.i_crit_edge ]
  %sg_index.i = getelementptr inbounds %struct.usb_dmac_desc, ptr %desc.0.i, i32 0, i32 4
  %16 = ptrtoint ptr %sg_index.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sg_index.i, align 4
  %sg_len.i = getelementptr inbounds %struct.usb_dmac_desc, ptr %desc.0.i, i32 0, i32 3
  %18 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sg_len.i, align 4
  %i.024.i = add i32 %17, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.024.i, i32 %19)
  %cmp25.i = icmp ult i32 %i.024.i, %19
  br i1 %cmp25.i, label %if.end4.i.for.body.i31_crit_edge, label %if.end4.i.for.end.i_crit_edge

if.end4.i.for.end.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.end4.i.for.body.i31_crit_edge:                 ; preds = %if.end4.i
  br label %for.body.i31

for.body.i31:                                     ; preds = %for.body.i31.for.body.i31_crit_edge, %if.end4.i.for.body.i31_crit_edge
  %i.027.i = phi i32 [ %i.0.i, %for.body.i31.for.body.i31_crit_edge ], [ %i.024.i, %if.end4.i.for.body.i31_crit_edge ]
  %residue.026.i = phi i32 [ %add5.i, %for.body.i31.for.body.i31_crit_edge ], [ 0, %if.end4.i.for.body.i31_crit_edge ]
  %size.i = getelementptr %struct.usb_dmac_desc, ptr %desc.0.i, i32 0, i32 8, i32 %i.027.i, i32 1
  %20 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size.i, align 4
  %add5.i = add i32 %21, %residue.026.i
  %i.0.i = add i32 %i.027.i, 1
  %exitcond.not.i = icmp eq i32 %i.0.i, %19
  br i1 %exitcond.not.i, label %for.body.i31.for.end.i_crit_edge, label %for.body.i31.for.body.i31_crit_edge

for.body.i31.for.body.i31_crit_edge:              ; preds = %for.body.i31
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i31

for.body.i31.for.end.i_crit_edge:                 ; preds = %for.body.i31
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i31.for.end.i_crit_edge, %if.end4.i.for.end.i_crit_edge
  %residue.0.lcssa.i = phi i32 [ 0, %if.end4.i.for.end.i_crit_edge ], [ %add5.i, %for.body.i31.for.end.i_crit_edge ]
  %sg1.i.i = getelementptr inbounds %struct.usb_dmac_desc, ptr %desc.0.i, i32 0, i32 8
  %add.ptr.i.i = getelementptr %struct.usb_dmac_sg, ptr %sg1.i.i, i32 %17
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i.i, align 4
  %size.i.i = getelementptr %struct.usb_dmac_sg, ptr %sg1.i.i, i32 %17, i32 1
  %24 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size.i.i, align 4
  %direction.i.i = getelementptr inbounds %struct.usb_dmac_desc, ptr %desc.0.i, i32 0, i32 1
  %26 = ptrtoint ptr %direction.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %direction.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp.i.i = icmp eq i32 %27, 2
  %iomem.i.i.i = getelementptr inbounds %struct.usb_dmac_chan, ptr %chan, i32 0, i32 1
  %28 = ptrtoint ptr %iomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iomem.i.i.i, align 4
  br i1 %cmp.i.i, label %if.then.i.i32, label %if.else.i.i33

if.then.i.i32:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i = getelementptr i8, ptr %29, i32 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !85
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !88
  br label %usb_dmac_get_current_residue.exit.i

if.else.i.i33:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #10, !srcloc !85
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !88
  br label %usb_dmac_get_current_residue.exit.i

usb_dmac_get_current_residue.exit.i:              ; preds = %if.else.i.i33, %if.then.i.i32
  %call.pn.i.i = phi i32 [ %31, %if.then.i.i32 ], [ %33, %if.else.i.i33 ]
  %sub.neg.pn.i.i = add i32 %23, %residue.0.lcssa.i
  %residue.0.i.i = add i32 %sub.neg.pn.i.i, %25
  %add8.i = sub i32 %residue.0.i.i, %call.pn.i.i
  br label %dma_set_residue.exit

dma_set_residue.exit:                             ; preds = %usb_dmac_get_current_residue.exit.i, %if.then.i30.dma_set_residue.exit_crit_edge, %for.inc.i.dma_set_residue.exit_crit_edge, %if.then.i28, %if.then9.dma_set_residue.exit_crit_edge
  %call448 = phi i32 [ %call4, %if.then9.dma_set_residue.exit_crit_edge ], [ %call4, %if.then.i28 ], [ %call442, %if.then.i30.dma_set_residue.exit_crit_edge ], [ %call442, %usb_dmac_get_current_residue.exit.i ], [ %call4, %for.inc.i.dma_set_residue.exit_crit_edge ]
  %lock46 = phi ptr [ %lock, %if.then9.dma_set_residue.exit_crit_edge ], [ %lock, %if.then.i28 ], [ %lock41, %if.then.i30.dma_set_residue.exit_crit_edge ], [ %lock41, %usb_dmac_get_current_residue.exit.i ], [ %lock, %for.inc.i.dma_set_residue.exit_crit_edge ]
  %retval.0.i.i3844 = phi i32 [ 0, %if.then9.dma_set_residue.exit_crit_edge ], [ 0, %if.then.i28 ], [ 1, %if.then.i30.dma_set_residue.exit_crit_edge ], [ 1, %usb_dmac_get_current_residue.exit.i ], [ 0, %for.inc.i.dma_set_residue.exit_crit_edge ]
  %residue.0 = phi i32 [ 0, %if.then9.dma_set_residue.exit_crit_edge ], [ %12, %if.then.i28 ], [ 0, %if.then.i30.dma_set_residue.exit_crit_edge ], [ %add8.i, %usb_dmac_get_current_residue.exit.i ], [ 0, %for.inc.i.dma_set_residue.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock46, i32 noundef %call448) #10
  %residue1.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %34 = ptrtoint ptr %residue1.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %residue.0, ptr %residue1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %dma_set_residue.exit, %dma_cookie_status.exit.thread.cleanup_crit_edge, %dma_cookie_status.exit.cleanup_crit_edge
  %retval.0.i.i39 = phi i32 [ 1, %dma_cookie_status.exit.thread.cleanup_crit_edge ], [ 0, %dma_cookie_status.exit.cleanup_crit_edge ], [ %retval.0.i.i3844, %dma_set_residue.exit ]
  ret i32 %retval.0.i.i39
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_dmac_issue_pending(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %0 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %1, %desc_submitted.i
  br i1 %cmp.i.not.i.i, label %entry.vchan_issue_pending.exit_crit_edge, label %if.then.i.i

entry.vchan_issue_pending.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_issue_pending.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %vchan_issue_pending.exit
  %desc = getelementptr inbounds %struct.usb_dmac_chan, ptr %chan, i32 0, i32 4
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %14 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.not.i.i = icmp eq ptr %15, %desc_issued.i
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 -108
  %tobool.not9.i = icmp eq ptr %add.ptr.i.i, null
  %tobool.not.i = or i1 %cmp.not.i.i, %tobool.not9.i
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %desc, align 4
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %15) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %15, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %23 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %15, align 4
  %prev.i.i15 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i15 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i15, align 4
  %25 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr.i.i, ptr %desc, align 4
  %sg_index.i = getelementptr i8, ptr %15, i32 20
  %26 = ptrtoint ptr %sg_index.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %sg_index.i, align 4
  tail call fastcc void @usb_dmac_chan_start_sg(ptr noundef %chan, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %list_del.exit.i, %if.then.i, %land.lhs.true.if.end_crit_edge, %vchan_issue_pending.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_dmac_isr_channel(i32 noundef %irq, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %dev, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %iomem.i = getelementptr inbounds %struct.usb_dmac_chan, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !85
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !88
  %and = and i32 %3, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and1 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2 = icmp ne i32 %and1, 0
  %mask.0 = select i1 %tobool.not, i32 0, i32 7
  %not.tobool.not37 = xor i1 %tobool.not, true
  %xfer_end.1.off0 = select i1 %not.tobool.not37, i1 %tobool2, i1 false
  %and6 = and i32 %3, 4096
  %4 = or i32 %mask.0, %and6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool13.not = icmp eq i32 %4, 0
  br i1 %tobool13.not, label %entry.if.end16_crit_edge, label %if.then14

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = shl nuw nsw i32 %and6, 12
  %6 = or i32 %5, %3
  %neg = xor i32 %4, -1
  %and15 = and i32 %6, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !89
  tail call void @arm_heavy_mb() #10
  %7 = tail call i32 @llvm.bswap.i32(i32 %and15) #10
  %8 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i36 = getelementptr i8, ptr %9, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 %7) #10, !srcloc !84
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %entry.if.end16_crit_edge
  br i1 %xfer_end.1.off0, label %if.then18, label %if.end16.if.end19_crit_edge

if.end16.if.end19_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @usb_dmac_isr_transfer_end(ptr noundef %dev)
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end16.if.end19_crit_edge
  %10 = and i32 %3, 4102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %11 = icmp ne i32 %10, 0
  %ret.1 = zext i1 %11 to i32
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_dmac_virt_desc_free(ptr noundef %vd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chan2 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %vd, i32 0, i32 3
  %0 = ptrtoint ptr %chan2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan2, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %1, i32 0, i32 3
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %node.i = getelementptr inbounds %struct.usb_dmac_desc, ptr %vd, i32 0, i32 6
  %desc_freed.i = getelementptr inbounds %struct.usb_dmac_chan, ptr %1, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.__list_del_entry.exit.i.i_crit_edge

entry.__list_del_entry.exit.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.usb_dmac_desc, ptr %vd, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i.i, align 4
  %4 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %node.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %entry.__list_del_entry.exit.i.i_crit_edge
  %prev.i2.i.i = getelementptr inbounds %struct.usb_dmac_chan, ptr %1, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %9, ptr noundef %desc_freed.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.usb_dmac_desc_put.exit_crit_edge

__list_del_entry.exit.i.i.usb_dmac_desc_put.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_dmac_desc_put.exit

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %node.i, ptr %prev.i2.i.i, align 4
  %11 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %desc_freed.i, ptr %node.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.usb_dmac_desc, ptr %vd, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %node.i, ptr %9, align 4
  br label %usb_dmac_desc_put.exit

usb_dmac_desc_put.exit:                           ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.usb_dmac_desc_put.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usb_dmac_isr_transfer_end(ptr noundef %chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %desc1 = getelementptr inbounds %struct.usb_dmac_chan, ptr %chan, i32 0, i32 4
  %0 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !82

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/sh/usb-dmac.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 581, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

do.end10:                                         ; preds = %entry
  %sg_index = getelementptr inbounds %struct.usb_dmac_desc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %sg_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sg_index, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %sg_index, align 4
  %sg_len = getelementptr inbounds %struct.usb_dmac_desc, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sg_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %5)
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %if.then11, label %if.else

if.then11:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @usb_dmac_chan_start_sg(ptr noundef %chan, i32 noundef %inc)
  br label %if.end20

if.else:                                          ; preds = %do.end10
  %sg1.i = getelementptr inbounds %struct.usb_dmac_desc, ptr %1, i32 0, i32 8
  %add.ptr.i = getelementptr %struct.usb_dmac_sg, ptr %sg1.i, i32 %3
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  %size.i = getelementptr %struct.usb_dmac_sg, ptr %sg1.i, i32 %3, i32 1
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size.i, align 4
  %direction.i = getelementptr inbounds %struct.usb_dmac_desc, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %direction.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.i = icmp eq i32 %11, 2
  %iomem.i.i = getelementptr inbounds %struct.usb_dmac_chan, ptr %chan, i32 0, i32 1
  %12 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iomem.i.i, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !85
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !88
  br label %usb_dmac_get_current_residue.exit

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #10, !srcloc !85
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !88
  br label %usb_dmac_get_current_residue.exit

usb_dmac_get_current_residue.exit:                ; preds = %if.else.i, %if.then.i
  %call.pn.i = phi i32 [ %15, %if.then.i ], [ %17, %if.else.i ]
  %sub.neg.pn.i = add i32 %9, %7
  %residue.0.i = sub i32 %sub.neg.pn.i, %call.pn.i
  %residue = getelementptr inbounds %struct.usb_dmac_desc, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %residue to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %residue.0.i, ptr %residue, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %1, align 4
  %done_cookie = getelementptr inbounds %struct.usb_dmac_desc, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %done_cookie to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %done_cookie, align 4
  %tx_result = getelementptr inbounds %struct.virt_dma_desc, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %tx_result to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %tx_result, align 4
  %residue18 = getelementptr inbounds %struct.virt_dma_desc, ptr %1, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %residue18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %residue.0.i, ptr %residue18, align 4
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chan.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.i.i = icmp slt i32 %20, 1
  br i1 %cmp.i.i, label %do.body2.i.i, label %dma_cookie_complete.exit.i, !prof !82

do.body2.i.i:                                     ; preds = %usb_dmac_get_current_residue.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/sh/../dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #10, !srcloc !91
  unreachable

dma_cookie_complete.exit.i:                       ; preds = %usb_dmac_get_current_residue.exit
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %20, ptr %completed_cookie.i.i, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@usb_dmac_isr_transfer_end, %do.end.i)) #10
          to label %if.then.i36 [label %do.end.i], !srcloc !92

if.then.i36:                                      ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %25, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %29, i32 0, i32 15
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vchan_cookie_complete.__UNIQUE_ID_ddebug237, ptr noundef %31, ptr noundef nonnull @.str.27, ptr noundef nonnull %1, i32 noundef %20) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i36, %dma_cookie_complete.exit.i
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %1, i32 0, i32 2
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %25, i32 0, i32 7
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %25, i32 0, i32 7, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %33, ptr noundef %desc_completed.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i.list_add_tail.exit.i_crit_edge

do.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %node.i, ptr %prev.i.i, align 4
  %35 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %desc_completed.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %1, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %node.i, ptr %33, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.end.i.list_add_tail.exit.i_crit_edge
  %state.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %25, i32 0, i32 1, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge

list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_cookie_complete.exit

if.then.i.i:                                      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %25, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i) #10
  br label %vchan_cookie_complete.exit

vchan_cookie_complete.exit:                       ; preds = %if.then.i.i, %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge
  %desc_issued.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %38 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %desc_issued.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %39, %desc_issued.i.i
  %add.ptr.i.i37 = getelementptr i8, ptr %39, i32 -108
  %tobool.not9.i = icmp eq ptr %add.ptr.i.i37, null
  %tobool.not.i = or i1 %cmp.not.i.i, %tobool.not9.i
  br i1 %tobool.not.i, label %if.then.i38, label %if.end.i

if.then.i38:                                      ; preds = %vchan_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %desc1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %desc1, align 4
  br label %if.end20

if.end.i:                                         ; preds = %vchan_cookie_complete.exit
  %call.i.i.i39 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %39) #10
  br i1 %call.i.i.i39, label %if.end.i.i.i40, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i40:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %39, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev1.i.i.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %44, ptr %42, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i40, %if.end.i.list_del.exit.i_crit_edge
  %47 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 256 to ptr), ptr %39, align 4
  %prev.i.i41 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i.i41 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i41, align 4
  %49 = ptrtoint ptr %desc1 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %add.ptr.i.i37, ptr %desc1, align 4
  %sg_index.i = getelementptr i8, ptr %39, i32 20
  %50 = ptrtoint ptr %sg_index.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %sg_index.i, align 4
  tail call fastcc void @usb_dmac_chan_start_sg(ptr noundef %chan, i32 noundef 0) #10
  br label %if.end20

if.end20:                                         ; preds = %list_del.exit.i, %if.then.i38, %if.then11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usb_dmac_chan_start_sg(ptr nocapture noundef readonly %chan, i32 noundef %index) unnamed_addr #2 align 64 {
entry:
  %src_addr = alloca i32, align 4
  %dst_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %desc1 = getelementptr inbounds %struct.usb_dmac_chan, ptr %chan, i32 0, i32 4
  %0 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc1, align 4
  %sg2 = getelementptr inbounds %struct.usb_dmac_desc, ptr %1, i32 0, i32 8
  %add.ptr = getelementptr %struct.usb_dmac_sg, ptr %sg2, i32 %index
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %src_addr) #10
  %2 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %src_addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dst_addr) #10
  %3 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %dst_addr, align 4
  %iomem.i.i = getelementptr inbounds %struct.usb_dmac_chan, ptr %chan, i32 0, i32 1
  %4 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !88
  %7 = and i32 %6, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %7)
  %cmp.i = icmp eq i32 %7, 16777216
  br i1 %cmp.i, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b80 = load i1, ptr @usb_dmac_chan_start_sg.__already_done, align 1
  br i1 %.b80, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !93

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @usb_dmac_chan_start_sg.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 200, i32 noundef 9, ptr noundef null) #10
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %direction = getelementptr inbounds %struct.usb_dmac_desc, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp = icmp eq i32 %9, 2
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr, align 4
  br i1 %cmp, label %if.then37, label %if.else

if.then37:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %dst_addr, align 4
  br label %do.body40

if.else:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %11, ptr %src_addr, align 4
  br label %do.body40

do.body40:                                        ; preds = %if.else, %if.then37
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_dmac_chan_start_sg.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@usb_dmac_chan_start_sg, %do.end58)) #10
          to label %if.then53 [label %do.end58], !srcloc !92

if.then53:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %index55 = getelementptr inbounds %struct.usb_dmac_chan, ptr %chan, i32 0, i32 2
  %18 = ptrtoint ptr %index55 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index55, align 4
  %size = getelementptr %struct.usb_dmac_sg, ptr %sg2, i32 %index, i32 1
  %20 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_dmac_chan_start_sg.__UNIQUE_ID_ddebug239, ptr noundef %17, ptr noundef nonnull @.str.24, i32 noundef %19, ptr noundef %add.ptr, i32 noundef %21, ptr noundef nonnull %src_addr, ptr noundef nonnull %dst_addr) #10
  br label %do.end58

do.end58:                                         ; preds = %if.then53, %do.body40
  %22 = ptrtoint ptr %src_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %src_addr, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !89
  call void @arm_heavy_mb() #10
  %24 = call i32 @llvm.bswap.i32(i32 %23) #10
  %25 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iomem.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #10, !srcloc !84
  %27 = ptrtoint ptr %dst_addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dst_addr, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !89
  call void @arm_heavy_mb() #10
  %29 = call i32 @llvm.bswap.i32(i32 %28) #10
  %30 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %31, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %29) #10, !srcloc !84
  %size60 = getelementptr %struct.usb_dmac_sg, ptr %sg2, i32 %index, i32 1
  %32 = ptrtoint ptr %size60 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size60, align 4
  %sub = add i32 %33, 31
  %div79 = lshr i32 %sub, 5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !89
  call void @arm_heavy_mb() #10
  %34 = call i32 @llvm.bswap.i32(i32 %div79) #10
  %35 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i83 = getelementptr i8, ptr %36, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83, i32 %34) #10, !srcloc !84
  %37 = ptrtoint ptr %size60 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %size60, align 4
  %rem.i = and i32 %38, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  %rem.op.i = sub nuw nsw i32 32, %rem.i
  %rem.op.op.i = shl nsw i32 -1, %rem.op.i
  %shl.i = select i1 %tobool.not.i, i32 -1, i32 %rem.op.op.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !89
  call void @arm_heavy_mb() #10
  %39 = call i32 @llvm.bswap.i32(i32 %shl.i) #10
  %40 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i85 = getelementptr i8, ptr %41, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i85, i32 %39) #10, !srcloc !84
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !89
  call void @arm_heavy_mb() #10
  %42 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i87 = getelementptr i8, ptr %43, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87, i32 -1593835264) #10, !srcloc !84
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dst_addr) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src_addr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @usb_dmac_chan_filter(ptr nocapture noundef readonly %chan, ptr nocapture noundef readonly %arg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.usb_dmac_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %arg, i32 0, i32 2
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  ret i1 %cmp.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usb_dmac_desc_free(ptr noundef %chan) unnamed_addr #2 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #10
  %0 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %0, align 4
  %desc_freed = getelementptr inbounds %struct.usb_dmac_chan, ptr %chan, i32 0, i32 7
  %3 = ptrtoint ptr %desc_freed to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %desc_freed, align 4
  %cmp.i.not.i = icmp eq ptr %4, %desc_freed
  br i1 %cmp.i.not.i, label %entry.list_splice_init.exit_crit_edge, label %if.then.i

entry.list_splice_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %prev2.i.i = getelementptr inbounds %struct.usb_dmac_chan, ptr %chan, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %prev3.i.i, align 4
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %4, ptr %list, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list, ptr %6, align 4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %6, ptr %0, align 4
  %11 = ptrtoint ptr %desc_freed to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %desc_freed, ptr %desc_freed, align 4
  store ptr %desc_freed, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry.list_splice_init.exit_crit_edge
  %desc_got = getelementptr inbounds %struct.usb_dmac_chan, ptr %chan, i32 0, i32 6
  %12 = ptrtoint ptr %desc_got to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %desc_got, align 4
  %cmp.i.not.i20 = icmp eq ptr %13, %desc_got
  br i1 %cmp.i.not.i20, label %list_splice_init.exit.list_splice_init.exit25_crit_edge, label %if.then.i24

list_splice_init.exit.list_splice_init.exit25_crit_edge: ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_init.exit25

if.then.i24:                                      ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %list, align 4
  %prev2.i.i21 = getelementptr inbounds %struct.usb_dmac_chan, ptr %chan, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %prev2.i.i21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev2.i.i21, align 4
  %prev3.i.i22 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %prev3.i.i22 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %list, ptr %prev3.i.i22, align 4
  store ptr %13, ptr %list, align 4
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %15, ptr %17, align 4
  %prev6.i.i23 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %prev6.i.i23 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev6.i.i23, align 4
  %21 = ptrtoint ptr %desc_got to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %desc_got, ptr %desc_got, align 4
  store ptr %desc_got, ptr %prev2.i.i21, align 4
  br label %list_splice_init.exit25

list_splice_init.exit25:                          ; preds = %if.then.i24, %list_splice_init.exit.list_splice_init.exit25_crit_edge
  %22 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %list, align 4
  %cmp.not26 = icmp eq ptr %23, %list
  br i1 %cmp.not26, label %list_splice_init.exit25.for.end_crit_edge, label %list_splice_init.exit25.for.body_crit_edge

list_splice_init.exit25.for.body_crit_edge:       ; preds = %list_splice_init.exit25
  br label %for.body

list_splice_init.exit25.for.end_crit_edge:        ; preds = %list_splice_init.exit25
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %list_splice_init.exit25.for.body_crit_edge
  %.pn.in27 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %23, %list_splice_init.exit25.for.body_crit_edge ]
  %desc.0 = getelementptr i8, ptr %.pn.in27, i32 -136
  %24 = ptrtoint ptr %.pn.in27 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn = load ptr, ptr %.pn.in27, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in27) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in27, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %.pn.in27 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %.pn.in27, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %31 = ptrtoint ptr %.pn.in27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in27, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in27, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @kfree(ptr noundef %desc.0) #10
  %cmp.not = icmp eq ptr %.pn, %list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %list_splice_init.exit25.for.end_crit_edge
  %descs_allocated = getelementptr inbounds %struct.usb_dmac_chan, ptr %chan, i32 0, i32 5
  %33 = ptrtoint ptr %descs_allocated to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %descs_allocated, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #10
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usb_dmac_chan_halt(ptr nocapture noundef readonly %chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iomem.i = getelementptr inbounds %struct.usb_dmac_chan, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !88
  %3 = and i32 %2, -587202561
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !89
  tail call void @arm_heavy_mb() #10
  %4 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %3) #10, !srcloc !84
  %6 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chan, align 4
  %n_channels.i = getelementptr inbounds %struct.usb_dmac, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp16.not.i = icmp eq i32 %9, 0
  br i1 %cmp16.not.i, label %entry.for.end.i_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.017.i, 1
  %10 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_channels.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %11
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.for.end.i_crit_edge

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.017.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 20
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !88
  %15 = and i32 %14, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %15)
  %cmp.i.i = icmp eq i32 %15, 16777216
  br i1 %cmp.i.i, label %for.body.i.usb_dmac_soft_reset.exit_crit_edge, label %for.cond.i

for.body.i.usb_dmac_soft_reset.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_dmac_soft_reset.exit

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !83
  tail call void @arm_heavy_mb() #10
  %iomem.i.i = getelementptr inbounds %struct.usb_dmac, ptr %7, i32 0, i32 2
  %16 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #10, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !83
  tail call void @arm_heavy_mb() #10
  %18 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %19, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 16777216) #10, !srcloc !84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 21474800) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !83
  tail call void @arm_heavy_mb() #10
  %21 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %22, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 0) #10, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !83
  tail call void @arm_heavy_mb() #10
  %23 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %24, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 16777216) #10, !srcloc !84
  br label %usb_dmac_soft_reset.exit

usb_dmac_soft_reset.exit:                         ; preds = %for.end.i, %for.body.i.usb_dmac_soft_reset.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vchan_find_desc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_dmac_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %channels = getelementptr inbounds %struct.usb_dmac, ptr %1, i32 0, i32 4
  %n_channels = getelementptr inbounds %struct.usb_dmac, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp8.not = icmp eq i32 %3, 0
  br i1 %cmp8.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channels, align 4
  %iomem = getelementptr %struct.usb_dmac_chan, ptr %5, i32 %i.09, i32 1
  %6 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iomem, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr %struct.usb_dmac_chan, ptr %5, i32 %i.09
  tail call fastcc void @usb_dmac_chan_halt(ptr noundef %arrayidx)
  %inc = add nuw i32 %i.09, 1
  %8 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_channels, align 4
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_dmac_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !83
  tail call void @arm_heavy_mb() #10
  %iomem.i.i = getelementptr inbounds %struct.usb_dmac, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #10, !srcloc !84
  %4 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %5, i32 96
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i) #10, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !86
  %7 = and i32 %6, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 16777216
  br i1 %cmp.not.i, label %entry.usb_dmac_init.exit_crit_edge, label %do.end.i

entry.usb_dmac_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_dmac_init.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.usb_dmac, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.15) #13
  br label %usb_dmac_init.exit

usb_dmac_init.exit:                               ; preds = %do.end.i, %entry.usb_dmac_init.exit_crit_edge
  %retval.0.i = phi i32 [ -5, %do.end.i ], [ 0, %entry.usb_dmac_init.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !42, !43, !45, !47, !49, !50, !51, !52, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__initcall__kmod_usb_dmac__240_910_usb_dmac_driver_init6, !1, !"__initcall__kmod_usb_dmac__240_910_usb_dmac_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/dma/sh/usb-dmac.c", i32 910, i32 1}
!2 = !{ptr @__exitcall_usb_dmac_driver_exit, !1, !"__exitcall_usb_dmac_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description241, !4, !"__UNIQUE_ID_description241", i1 false, i1 false}
!4 = !{!"../drivers/dma/sh/usb-dmac.c", i32 912, i32 1}
!5 = !{ptr @__UNIQUE_ID_author242, !6, !"__UNIQUE_ID_author242", i1 false, i1 false}
!6 = !{!"../drivers/dma/sh/usb-dmac.c", i32 913, i32 1}
!7 = !{ptr @__UNIQUE_ID_file243, !8, !"__UNIQUE_ID_file243", i1 false, i1 false}
!8 = !{!"../drivers/dma/sh/usb-dmac.c", i32 914, i32 1}
!9 = !{ptr @__UNIQUE_ID_license244, !8, !"__UNIQUE_ID_license244", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/dma/sh/usb-dmac.c", i32 902, i32 11}
!12 = !{ptr @usb_dmac_driver, !13, !"usb_dmac_driver", i1 false, i1 false}
!13 = !{!"../drivers/dma/sh/usb-dmac.c", i32 899, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/dma/sh/usb-dmac.c", i32 801, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @usb_dmac_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @usb_dmac_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/dma/sh/usb-dmac.c", i32 808, i32 3}
!24 = !{ptr @usb_dmac_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @usb_dmac_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/dma/sh/usb-dmac.c", i32 751, i32 33}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/dma/sh/usb-dmac.c", i32 753, i32 3}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @usb_dmac_parse_of._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @usb_dmac_parse_of._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/dma/sh/usb-dmac.c", i32 758, i32 3}
!35 = !{ptr @usb_dmac_parse_of._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @usb_dmac_parse_of._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/dma/sh/usb-dmac.c", i32 253, i32 3}
!39 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @usb_dmac_init._entry, !38, !"_entry", i1 false, i1 false}
!42 = !{ptr @usb_dmac_init._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/dma/sh/usb-dmac.c", i32 720, i32 24}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/dma/sh/usb-dmac.c", i32 725, i32 50}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/dma/sh/usb-dmac.c", i32 733, i32 3}
!49 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @usb_dmac_chan_probe._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @usb_dmac_chan_probe._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../drivers/dma/sh/usb-dmac.c", i32 200, i32 2}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/dma/sh/usb-dmac.c", i32 207, i32 2}
!56 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @usb_dmac_chan_start_sg.__UNIQUE_ID_ddebug239, !55, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/dma/sh/../virt-dma.h", i32 101, i32 2}
!61 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug237, !60, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/dma/sh/usb-dmac.c", i32 426, i32 3}
!66 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @usb_dmac_prep_slave_sg._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @usb_dmac_prep_slave_sg._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @usb_dmac_of_ids, !70, !"usb_dmac_of_ids", i1 false, i1 false}
!70 = !{!"../drivers/dma/sh/usb-dmac.c", i32 893, i32 34}
!71 = !{ptr @usb_dmac_pm, !72, !"usb_dmac_pm", i1 false, i1 false}
!72 = !{!"../drivers/dma/sh/usb-dmac.c", i32 696, i32 32}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{!"branch_weights", i32 1, i32 2000}
!83 = !{i64 2154450085}
!84 = !{i64 6246106}
!85 = !{i64 6246524}
!86 = !{i64 2154450749}
!87 = !{i64 2154393894}
!88 = !{i64 2154451235}
!89 = !{i64 2154451450}
!90 = !{i64 2154499481, i64 2154499971, i64 2154499518, i64 2154499574, i64 2154499608, i64 2154499632, i64 2154499673, i64 2154499694, i64 2154499722, i64 2154499756}
!91 = !{i64 2154392388, i64 2154392881, i64 2154392425, i64 2154392481, i64 2154392515, i64 2154392539, i64 2154392580, i64 2154392601, i64 2154392629, i64 2154392663}
!92 = !{i64 2148778310, i64 2148778315, i64 2148778328, i64 2148778372, i64 2148778406, i64 2148778427}
!93 = !{!"branch_weights", i32 2000, i32 1}
