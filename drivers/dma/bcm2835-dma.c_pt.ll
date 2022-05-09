; ModuleID = '/llk/IR_all_yes/drivers/dma/bcm2835-dma.c_pt.bc'
source_filename = "../drivers/dma/bcm2835-dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.bcm2835_dmadev = type { %struct.dma_device, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.75, i32 }
%union.anon.75 = type { ptr }
%struct.bcm2835_chan = type { %struct.virt_dma_chan, %struct.dma_slave_config, i32, i32, ptr, ptr, ptr, i32, i32, i8 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.bcm2835_desc = type { ptr, %struct.virt_dma_desc, i32, i32, i32, i8, [0 x %struct.bcm2835_cb_entry] }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }
%struct.bcm2835_cb_entry = type { ptr, i32 }
%struct.bcm2835_dma_cb = type { i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_bcm2835_dma__246_1043_bcm2835_dma_driver_init6 = internal global ptr @bcm2835_dma_driver_init, section ".initcall6.init", align 4
@bcm2835_dma_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bcm2835_dma_probe, ptr @bcm2835_dma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm2835_dma_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bcm2835_dma_driver_exit = internal global ptr @bcm2835_dma_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias247 = internal constant [39 x i8] c"bcm2835_dma.alias=platform:bcm2835-dma\00", section ".modinfo", align 1
@__UNIQUE_ID_description248 = internal constant [50 x i8] c"bcm2835_dma.description=BCM2835 DMA engine driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author249 = internal constant [58 x i8] c"bcm2835_dma.author=Florian Meier <florian.meier@koalo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [41 x i8] c"bcm2835_dma.file=drivers/dma/bcm2835-dma\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [24 x i8] c"bcm2835_dma.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bcm2835-dma\00", [20 x i8] zeroinitializer }, align 32
@bcm2835_dma_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@bcm2835_dma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 895, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unable to set DMA mask\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bcm2835_dma_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/dma/bcm2835-dma.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcm2835_dma_probe._entry_ptr = internal global ptr @bcm2835_dma_probe._entry, section ".printk_index", align 4
@empty_zero_page = external dso_local local_unnamed_addr global ptr, align 4
@bcm2835_dma_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 941, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to map zero page\0A\00", [39 x i8] zeroinitializer }, align 32
@bcm2835_dma_probe._entry_ptr.8 = internal global ptr @bcm2835_dma_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"brcm,dma-channel-mask\00", [42 x i8] zeroinitializer }, align 32
@bcm2835_dma_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 949, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to get channel mask\0A\00", [36 x i8] zeroinitializer }, align 32
@bcm2835_dma_probe._entry_ptr.12 = internal global ptr @bcm2835_dma_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dma%i\00", [26 x i8] zeroinitializer }, align 32
@bcm2835_dma_probe.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@bcm2835_dma_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 970, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"missing interrupt-names property in device tree - legacy interpretation is used\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@bcm2835_dma_probe._entry_ptr.17 = internal global ptr @bcm2835_dma_probe._entry.14, section ".printk_index", align 4
@bcm2835_dma_probe.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.2, ptr @.str.3, ptr @.str.19, i8 0, i8 -7, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bcm2835_dma\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Initialized %i DMA channels\0A\00", [35 x i8] zeroinitializer }, align 32
@bcm2835_dma_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 1004, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register DMA controller\0A\00", [61 x i8] zeroinitializer }, align 32
@bcm2835_dma_probe._entry_ptr.22 = internal global ptr @bcm2835_dma_probe._entry.20, section ".printk_index", align 4
@bcm2835_dma_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 1011, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to register slave DMA engine device: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@bcm2835_dma_probe._entry_ptr.25 = internal global ptr @bcm2835_dma_probe._entry.23, section ".printk_index", align 4
@bcm2835_dma_probe.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.2, ptr @.str.3, ptr @.str.26, i8 0, i8 -3, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Load BCM2835 DMA engine driver\0A\00", [32 x i8] zeroinitializer }, align 32
@bcm2835_dma_alloc_chan_resources.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.27, ptr @.str.3, ptr @.str.28, i8 0, i8 126, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bcm2835_dma_alloc_chan_resources\00", [63 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Allocating DMA channel %d\0A\00", [37 x i8] zeroinitializer }, align 32
@bcm2835_dma_alloc_chan_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.3, i32 514, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unable to allocate descriptor pool\0A\00", [60 x i8] zeroinitializer }, align 32
@bcm2835_dma_alloc_chan_resources._entry_ptr = internal global ptr @bcm2835_dma_alloc_chan_resources._entry, section ".printk_index", align 4
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DMA IRQ\00", [24 x i8] zeroinitializer }, align 32
@vchan_cookie_complete.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.31, ptr @.str.32, ptr @.str.33, i8 0, i8 25, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vchan_cookie_complete\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/dma/virt-dma.h\00", [41 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"txd %p[%x]: marked complete\0A\00", [35 x i8] zeroinitializer }, align 32
@bcm2835_dma_free_chan_resources.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.34, ptr @.str.3, ptr @.str.35, i8 0, i8 -124, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bcm2835_dma_free_chan_resources\00", [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Freeing DMA channel %u\0A\00", [40 x i8] zeroinitializer }, align 32
@bcm2835_dma_prep_dma_cyclic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 708, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: bad direction?\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bcm2835_dma_prep_dma_cyclic\00", [36 x i8] zeroinitializer }, align 32
@bcm2835_dma_prep_dma_cyclic._entry_ptr = internal global ptr @bcm2835_dma_prep_dma_cyclic._entry, section ".printk_index", align 4
@bcm2835_dma_prep_dma_cyclic._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.3, i32 714, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: bad buffer length (= 0)\0A\00", [35 x i8] zeroinitializer }, align 32
@bcm2835_dma_prep_dma_cyclic._entry_ptr.40 = internal global ptr @bcm2835_dma_prep_dma_cyclic._entry.38, section ".printk_index", align 4
@bcm2835_dma_prep_dma_cyclic.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@bcm2835_dma_prep_dma_cyclic._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.3, i32 730, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s: buffer_length (%zd) is not a multiple of period_len (%zd)\0A\00", [33 x i8] zeroinitializer }, align 32
@bcm2835_dma_prep_dma_cyclic._entry_ptr.43 = internal global ptr @bcm2835_dma_prep_dma_cyclic._entry.41, section ".printk_index", align 4
@bcm2835_dma_prep_slave_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.44, ptr @.str.3, i32 655, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bcm2835_dma_prep_slave_sg\00", [38 x i8] zeroinitializer }, align 32
@bcm2835_dma_prep_slave_sg._entry_ptr = internal global ptr @bcm2835_dma_prep_slave_sg._entry, section ".printk_index", align 4
@bcm2835_dma_abort._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 433, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to complete outstanding writes\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bcm2835_dma_abort\00", [46 x i8] zeroinitializer }, align 32
@bcm2835_dma_abort._entry_ptr = internal global ptr @bcm2835_dma_abort._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.47 = private unnamed_addr constant [19 x i8] c"bcm2835_dma_driver\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1034, i32 31 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1038, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant [21 x i8] c"bcm2835_dma_of_match\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 856, i32 34 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 895, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 941, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 947, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 949, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 963, i32 42 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 969, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 998, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1004, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1010, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1015, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 505, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 514, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 519, i32 21 }
@___asan_gen_.144 = private unnamed_addr constant [26 x i8] c"../drivers/dma/virt-dma.h\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 101, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 530, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 708, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 713, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 728, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 654, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.186 = private constant [29 x i8] c"../drivers/dma/bcm2835-dma.c\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 432, i32 3 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_alias247, ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_bcm2835_dma_driver_exit, ptr @__initcall__kmod_bcm2835_dma__246_1043_bcm2835_dma_driver_init6, ptr @bcm2835_dma_abort._entry, ptr @bcm2835_dma_abort._entry_ptr, ptr @bcm2835_dma_alloc_chan_resources._entry, ptr @bcm2835_dma_alloc_chan_resources._entry_ptr, ptr @bcm2835_dma_driver_exit, ptr @bcm2835_dma_prep_dma_cyclic._entry, ptr @bcm2835_dma_prep_dma_cyclic._entry.38, ptr @bcm2835_dma_prep_dma_cyclic._entry.41, ptr @bcm2835_dma_prep_dma_cyclic._entry_ptr, ptr @bcm2835_dma_prep_dma_cyclic._entry_ptr.40, ptr @bcm2835_dma_prep_dma_cyclic._entry_ptr.43, ptr @bcm2835_dma_prep_slave_sg._entry, ptr @bcm2835_dma_prep_slave_sg._entry_ptr, ptr @bcm2835_dma_probe._entry, ptr @bcm2835_dma_probe._entry.10, ptr @bcm2835_dma_probe._entry.14, ptr @bcm2835_dma_probe._entry.20, ptr @bcm2835_dma_probe._entry.23, ptr @bcm2835_dma_probe._entry.6, ptr @bcm2835_dma_probe._entry_ptr, ptr @bcm2835_dma_probe._entry_ptr.12, ptr @bcm2835_dma_probe._entry_ptr.17, ptr @bcm2835_dma_probe._entry_ptr.22, ptr @bcm2835_dma_probe._entry_ptr.25, ptr @bcm2835_dma_probe._entry_ptr.8, ptr @bcm2835_dma_driver, ptr @.str, ptr @bcm2835_dma_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_dma_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_dma_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_dma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_dma_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_dma_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_dma_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_dma_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_dma_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_dma_alloc_chan_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_dma_prep_dma_cyclic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_dma_prep_dma_cyclic._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_dma_prep_dma_cyclic._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_dma_prep_slave_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_dma_abort._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_dma_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm2835_dma_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835_dma_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm2835_dma_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_dma_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %irq = alloca [15 x i32], align 4
  %chans_available = alloca i32, align 4
  %chan_name = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %irq) #9
  %0 = call ptr @memset(ptr %irq, i32 255, i32 60)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chans_available) #9
  %1 = ptrtoint ptr %chans_available to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %chans_available, align 4, !annotation !110
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %chan_name) #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %dma_mask = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 18
  %2 = ptrtoint ptr %chan_name to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %chan_name, align 8
  %3 = ptrtoint ptr %dma_mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dma_mask, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %coherent_dma_mask = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 19
  %5 = ptrtoint ptr %dma_mask to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %coherent_dma_mask, ptr %dma_mask, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #9
  %call.i265 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 372, i32 noundef 3520) #9
  %tobool11.not = icmp eq ptr %call.i265, null
  br i1 %tobool11.not, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %dma_parms.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 22
  %6 = ptrtoint ptr %dma_parms.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_parms.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end13.dma_set_max_seg_size.exit_crit_edge, label %if.then.i266

if.end13.dma_set_max_seg_size.exit_crit_edge:     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_set_max_seg_size.exit

if.then.i266:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1073741823, ptr %7, align 4
  br label %dma_set_max_seg_size.exit

dma_set_max_seg_size.exit:                        ; preds = %if.then.i266, %if.end13.dma_set_max_seg_size.exit_crit_edge
  %call16 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %call18 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call16) #9
  %cmp.i267 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i267, label %if.then20, label %if.end22

if.then20:                                        ; preds = %dma_set_max_seg_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %call18 to i32
  br label %cleanup

if.end22:                                         ; preds = %dma_set_max_seg_size.exit
  %base23 = getelementptr inbounds %struct.bcm2835_dmadev, ptr %call.i265, i32 0, i32 1
  %10 = ptrtoint ptr %base23 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call18, ptr %base23, align 4
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %call.i265, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #9
  tail call void @_set_bit(i32 noundef 9, ptr noundef %cap_mask) #9
  tail call void @_set_bit(i32 noundef 12, ptr noundef %cap_mask) #9
  tail call void @_set_bit(i32 noundef 0, ptr noundef %cap_mask) #9
  %device_alloc_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i265, i32 0, i32 27
  %11 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @bcm2835_dma_alloc_chan_resources, ptr %device_alloc_chan_resources, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i265, i32 0, i32 29
  %12 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @bcm2835_dma_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_tx_status = getelementptr inbounds %struct.dma_device, ptr %call.i265, i32 0, i32 49
  %13 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @bcm2835_dma_tx_status, ptr %device_tx_status, align 4
  %device_issue_pending = getelementptr inbounds %struct.dma_device, ptr %call.i265, i32 0, i32 50
  %14 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @bcm2835_dma_issue_pending, ptr %device_issue_pending, align 4
  %device_prep_dma_cyclic = getelementptr inbounds %struct.dma_device, ptr %call.i265, i32 0, i32 40
  %15 = ptrtoint ptr %device_prep_dma_cyclic to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @bcm2835_dma_prep_dma_cyclic, ptr %device_prep_dma_cyclic, align 4
  %device_prep_slave_sg = getelementptr inbounds %struct.dma_device, ptr %call.i265, i32 0, i32 39
  %16 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @bcm2835_dma_prep_slave_sg, ptr %device_prep_slave_sg, align 4
  %device_prep_dma_memcpy = getelementptr inbounds %struct.dma_device, ptr %call.i265, i32 0, i32 30
  %17 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @bcm2835_dma_prep_dma_memcpy, ptr %device_prep_dma_memcpy, align 4
  %device_config = getelementptr inbounds %struct.dma_device, ptr %call.i265, i32 0, i32 44
  %18 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @bcm2835_dma_slave_config, ptr %device_config, align 4
  %device_terminate_all = getelementptr inbounds %struct.dma_device, ptr %call.i265, i32 0, i32 47
  %19 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @bcm2835_dma_terminate_all, ptr %device_terminate_all, align 4
  %device_synchronize = getelementptr inbounds %struct.dma_device, ptr %call.i265, i32 0, i32 48
  %20 = ptrtoint ptr %device_synchronize to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @bcm2835_dma_synchronize, ptr %device_synchronize, align 4
  %src_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i265, i32 0, i32 19
  %21 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 16, ptr %src_addr_widths, align 4
  %dst_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i265, i32 0, i32 20
  %22 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 16, ptr %dst_addr_widths, align 4
  %directions = getelementptr inbounds %struct.dma_device, ptr %call.i265, i32 0, i32 21
  %23 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 7, ptr %directions, align 4
  %residue_granularity = getelementptr inbounds %struct.dma_device, ptr %call.i265, i32 0, i32 26
  %24 = ptrtoint ptr %residue_granularity to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %residue_granularity, align 4
  %descriptor_reuse = getelementptr inbounds %struct.dma_device, ptr %call.i265, i32 0, i32 25
  %25 = ptrtoint ptr %descriptor_reuse to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %descriptor_reuse, align 4
  %dev47 = getelementptr inbounds %struct.dma_device, ptr %call.i265, i32 0, i32 15
  %26 = ptrtoint ptr %dev47 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %dev, ptr %dev47, align 4
  %channels = getelementptr inbounds %struct.dma_device, ptr %call.i265, i32 0, i32 3
  %27 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.dma_device, ptr %call.i265, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %channels, ptr %prev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %29 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i265, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @empty_zero_page to i32))
  %30 = load ptr, ptr @empty_zero_page, align 4
  %call51 = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %30, i32 noundef 0, i32 noundef 4096, i32 noundef 1, i32 noundef 32) #9
  %zero_page = getelementptr inbounds %struct.bcm2835_dmadev, ptr %call.i265, i32 0, i32 2
  %31 = ptrtoint ptr %zero_page to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call51, ptr %zero_page, align 4
  %32 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev47, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %33, i32 noundef %call51) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call51)
  %cmp.i268.not = icmp eq i32 %call51, -1
  br i1 %cmp.i268.not, label %do.end60, label %if.end62

do.end60:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #12
  br label %cleanup

if.end62:                                         ; preds = %if.end22
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %34 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %35, ptr noundef nonnull @.str.9, ptr noundef nonnull %chans_available, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool65.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool65.not, label %if.end62.for.body_crit_edge, label %do.end69

if.end62.for.body_crit_edge:                      ; preds = %if.end62
  br label %for.body

do.end69:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #12
  br label %err_no_dma

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end62.for.body_crit_edge
  %i.0278 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end62.for.body_crit_edge ]
  %36 = ptrtoint ptr %chans_available to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %chans_available, align 4
  %shl = shl nuw nsw i32 1, %i.0278
  %and = and i32 %37, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool72.not = icmp eq i32 %and, 0
  br i1 %tobool72.not, label %if.then73, label %if.end74

if.then73:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr [15 x i32], ptr %irq, i32 0, i32 %i.0278
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %arrayidx, align 4
  br label %for.inc

if.end74:                                         ; preds = %for.body
  %call75 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %chan_name, i32 noundef 8, ptr noundef nonnull @.str.13, i32 noundef %i.0278)
  %call77 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull %chan_name) #9
  %arrayidx78 = getelementptr [15 x i32], ptr %irq, i32 0, i32 %i.0278
  %39 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call77, ptr %arrayidx78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call77)
  %cmp80 = icmp sgt i32 %call77, -1
  br i1 %cmp80, label %if.end74.for.inc_crit_edge, label %do.body83

if.end74.for.inc_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.body83:                                        ; preds = %if.end74
  %.b261 = load i1, ptr @bcm2835_dma_probe.__print_once, align 1
  br i1 %.b261, label %do.body83.do.end92_crit_edge, label %if.then85

do.body83.do.end92_crit_edge:                     ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end92

if.then85:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @bcm2835_dma_probe.__print_once, align 1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.15) #12
  br label %do.end92

do.end92:                                         ; preds = %if.then85, %do.body83.do.end92_crit_edge
  %40 = call i32 @llvm.umin.i32(i32 %i.0278, i32 11)
  %call94 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef %40) #9
  %41 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call94, ptr %arrayidx78, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end92, %if.end74.for.inc_crit_edge, %if.then73
  %inc = add nuw nsw i32 %i.0278, 1
  %exitcond.not = icmp eq i32 %inc, 15
  br i1 %exitcond.not, label %for.body98.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body98.preheader:                             ; preds = %for.inc
  %arrayidx107.1 = getelementptr inbounds [15 x i32], ptr %irq, i32 0, i32 1
  %arrayidx107.3294 = getelementptr inbounds [15 x i32], ptr %irq, i32 0, i32 3
  %arrayidx107.1288 = getelementptr inbounds [15 x i32], ptr %irq, i32 0, i32 1
  %arrayidx107.2 = getelementptr inbounds [15 x i32], ptr %irq, i32 0, i32 2
  %arrayidx107.3 = getelementptr inbounds [15 x i32], ptr %irq, i32 0, i32 3
  %arrayidx107.5300 = getelementptr inbounds [15 x i32], ptr %irq, i32 0, i32 5
  %arrayidx107.4 = getelementptr inbounds [15 x i32], ptr %irq, i32 0, i32 4
  %arrayidx107.5 = getelementptr inbounds [15 x i32], ptr %irq, i32 0, i32 5
  %arrayidx107.7306 = getelementptr inbounds [15 x i32], ptr %irq, i32 0, i32 7
  %arrayidx107.6 = getelementptr inbounds [15 x i32], ptr %irq, i32 0, i32 6
  %arrayidx107.7 = getelementptr inbounds [15 x i32], ptr %irq, i32 0, i32 7
  %arrayidx107.9312 = getelementptr inbounds [15 x i32], ptr %irq, i32 0, i32 9
  %arrayidx107.8 = getelementptr inbounds [15 x i32], ptr %irq, i32 0, i32 8
  %arrayidx107.9 = getelementptr inbounds [15 x i32], ptr %irq, i32 0, i32 9
  %arrayidx107.11318 = getelementptr inbounds [15 x i32], ptr %irq, i32 0, i32 11
  %arrayidx107.10 = getelementptr inbounds [15 x i32], ptr %irq, i32 0, i32 10
  %arrayidx107.11 = getelementptr inbounds [15 x i32], ptr %irq, i32 0, i32 11
  %arrayidx107.13324 = getelementptr inbounds [15 x i32], ptr %irq, i32 0, i32 13
  %arrayidx107.12 = getelementptr inbounds [15 x i32], ptr %irq, i32 0, i32 12
  %arrayidx107.13 = getelementptr inbounds [15 x i32], ptr %irq, i32 0, i32 13
  %arrayidx107.14 = getelementptr inbounds [15 x i32], ptr %irq, i32 0, i32 14
  br label %for.body98

for.body98:                                       ; preds = %for.inc120.for.body98_crit_edge, %for.body98.preheader
  %i.1282 = phi i32 [ %inc121, %for.inc120.for.body98_crit_edge ], [ 0, %for.body98.preheader ]
  %arrayidx99 = getelementptr [15 x i32], ptr %irq, i32 0, i32 %i.1282
  %42 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp100 = icmp slt i32 %43, 0
  br i1 %cmp100, label %for.body98.for.inc120_crit_edge, label %for.body105.preheader

for.body98.for.inc120_crit_edge:                  ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc120

for.body105.preheader:                            ; preds = %for.body98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1282)
  %cmp106.not = icmp eq i32 %i.1282, 0
  br i1 %cmp106.not, label %land.lhs.true.1.thread, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body105.preheader
  %44 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %43)
  %cmp109 = icmp eq i32 %45, %43
  br i1 %cmp109, label %land.lhs.true.for.end114_crit_edge, label %for.inc112

land.lhs.true.for.end114_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end114

for.inc112:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.1282)
  %cmp106.not.1 = icmp eq i32 %i.1282, 1
  br i1 %cmp106.not.1, label %for.inc112.land.lhs.true.2_crit_edge, label %land.lhs.true.1

for.inc112.land.lhs.true.2_crit_edge:             ; preds = %for.inc112
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.2

land.lhs.true.1:                                  ; preds = %for.inc112
  %46 = ptrtoint ptr %arrayidx107.1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx107.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %43)
  %cmp109.1 = icmp eq i32 %47, %43
  br i1 %cmp109.1, label %land.lhs.true.1.for.end114_crit_edge, label %for.inc112.1

land.lhs.true.1.for.end114_crit_edge:             ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end114

land.lhs.true.1.thread:                           ; preds = %for.body105.preheader
  %48 = ptrtoint ptr %arrayidx107.1288 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx107.1288, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %43)
  %cmp109.1289 = icmp eq i32 %49, %43
  br i1 %cmp109.1289, label %land.lhs.true.1.thread.for.end114_crit_edge, label %land.lhs.true.1.thread.land.lhs.true.2_crit_edge

land.lhs.true.1.thread.land.lhs.true.2_crit_edge: ; preds = %land.lhs.true.1.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.2

land.lhs.true.1.thread.for.end114_crit_edge:      ; preds = %land.lhs.true.1.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end114

for.inc112.1:                                     ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.1282)
  %cmp106.not.2 = icmp eq i32 %i.1282, 2
  br i1 %cmp106.not.2, label %land.lhs.true.3.thread, label %for.inc112.1.land.lhs.true.2_crit_edge

for.inc112.1.land.lhs.true.2_crit_edge:           ; preds = %for.inc112.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.2

land.lhs.true.2:                                  ; preds = %for.inc112.1.land.lhs.true.2_crit_edge, %land.lhs.true.1.thread.land.lhs.true.2_crit_edge, %for.inc112.land.lhs.true.2_crit_edge
  %50 = ptrtoint ptr %arrayidx107.2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx107.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %43)
  %cmp109.2 = icmp eq i32 %51, %43
  br i1 %cmp109.2, label %land.lhs.true.2.for.end114_crit_edge, label %for.inc112.2

land.lhs.true.2.for.end114_crit_edge:             ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end114

for.inc112.2:                                     ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.1282)
  %cmp106.not.3 = icmp eq i32 %i.1282, 3
  br i1 %cmp106.not.3, label %for.inc112.2.land.lhs.true.4_crit_edge, label %land.lhs.true.3

for.inc112.2.land.lhs.true.4_crit_edge:           ; preds = %for.inc112.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.4

land.lhs.true.3:                                  ; preds = %for.inc112.2
  %52 = ptrtoint ptr %arrayidx107.3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx107.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %43)
  %cmp109.3 = icmp eq i32 %53, %43
  br i1 %cmp109.3, label %land.lhs.true.3.for.end114_crit_edge, label %for.inc112.3

land.lhs.true.3.for.end114_crit_edge:             ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end114

land.lhs.true.3.thread:                           ; preds = %for.inc112.1
  %54 = ptrtoint ptr %arrayidx107.3294 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx107.3294, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %43)
  %cmp109.3295 = icmp eq i32 %55, %43
  br i1 %cmp109.3295, label %land.lhs.true.3.thread.for.end114_crit_edge, label %land.lhs.true.3.thread.land.lhs.true.4_crit_edge

land.lhs.true.3.thread.land.lhs.true.4_crit_edge: ; preds = %land.lhs.true.3.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.4

land.lhs.true.3.thread.for.end114_crit_edge:      ; preds = %land.lhs.true.3.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end114

for.inc112.3:                                     ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.1282)
  %cmp106.not.4 = icmp eq i32 %i.1282, 4
  br i1 %cmp106.not.4, label %land.lhs.true.5.thread, label %for.inc112.3.land.lhs.true.4_crit_edge

for.inc112.3.land.lhs.true.4_crit_edge:           ; preds = %for.inc112.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.4

land.lhs.true.4:                                  ; preds = %for.inc112.3.land.lhs.true.4_crit_edge, %land.lhs.true.3.thread.land.lhs.true.4_crit_edge, %for.inc112.2.land.lhs.true.4_crit_edge
  %56 = ptrtoint ptr %arrayidx107.4 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx107.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %43)
  %cmp109.4 = icmp eq i32 %57, %43
  br i1 %cmp109.4, label %land.lhs.true.4.for.end114_crit_edge, label %for.inc112.4

land.lhs.true.4.for.end114_crit_edge:             ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end114

for.inc112.4:                                     ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.1282)
  %cmp106.not.5 = icmp eq i32 %i.1282, 5
  br i1 %cmp106.not.5, label %for.inc112.4.land.lhs.true.6_crit_edge, label %land.lhs.true.5

for.inc112.4.land.lhs.true.6_crit_edge:           ; preds = %for.inc112.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.6

land.lhs.true.5:                                  ; preds = %for.inc112.4
  %58 = ptrtoint ptr %arrayidx107.5 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx107.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %43)
  %cmp109.5 = icmp eq i32 %59, %43
  br i1 %cmp109.5, label %land.lhs.true.5.for.end114_crit_edge, label %for.inc112.5

land.lhs.true.5.for.end114_crit_edge:             ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end114

land.lhs.true.5.thread:                           ; preds = %for.inc112.3
  %60 = ptrtoint ptr %arrayidx107.5300 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx107.5300, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %43)
  %cmp109.5301 = icmp eq i32 %61, %43
  br i1 %cmp109.5301, label %land.lhs.true.5.thread.for.end114_crit_edge, label %land.lhs.true.5.thread.land.lhs.true.6_crit_edge

land.lhs.true.5.thread.land.lhs.true.6_crit_edge: ; preds = %land.lhs.true.5.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.6

land.lhs.true.5.thread.for.end114_crit_edge:      ; preds = %land.lhs.true.5.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end114

for.inc112.5:                                     ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.1282)
  %cmp106.not.6 = icmp eq i32 %i.1282, 6
  br i1 %cmp106.not.6, label %land.lhs.true.7.thread, label %for.inc112.5.land.lhs.true.6_crit_edge

for.inc112.5.land.lhs.true.6_crit_edge:           ; preds = %for.inc112.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.6

land.lhs.true.6:                                  ; preds = %for.inc112.5.land.lhs.true.6_crit_edge, %land.lhs.true.5.thread.land.lhs.true.6_crit_edge, %for.inc112.4.land.lhs.true.6_crit_edge
  %62 = ptrtoint ptr %arrayidx107.6 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx107.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %43)
  %cmp109.6 = icmp eq i32 %63, %43
  br i1 %cmp109.6, label %land.lhs.true.6.for.end114_crit_edge, label %for.inc112.6

land.lhs.true.6.for.end114_crit_edge:             ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end114

for.inc112.6:                                     ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.1282)
  %cmp106.not.7 = icmp eq i32 %i.1282, 7
  br i1 %cmp106.not.7, label %for.inc112.6.land.lhs.true.8_crit_edge, label %land.lhs.true.7

for.inc112.6.land.lhs.true.8_crit_edge:           ; preds = %for.inc112.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.8

land.lhs.true.7:                                  ; preds = %for.inc112.6
  %64 = ptrtoint ptr %arrayidx107.7 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx107.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %43)
  %cmp109.7 = icmp eq i32 %65, %43
  br i1 %cmp109.7, label %land.lhs.true.7.for.end114_crit_edge, label %for.inc112.7

land.lhs.true.7.for.end114_crit_edge:             ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end114

land.lhs.true.7.thread:                           ; preds = %for.inc112.5
  %66 = ptrtoint ptr %arrayidx107.7306 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx107.7306, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %43)
  %cmp109.7307 = icmp eq i32 %67, %43
  br i1 %cmp109.7307, label %land.lhs.true.7.thread.for.end114_crit_edge, label %land.lhs.true.7.thread.land.lhs.true.8_crit_edge

land.lhs.true.7.thread.land.lhs.true.8_crit_edge: ; preds = %land.lhs.true.7.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.8

land.lhs.true.7.thread.for.end114_crit_edge:      ; preds = %land.lhs.true.7.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end114

for.inc112.7:                                     ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.1282)
  %cmp106.not.8 = icmp eq i32 %i.1282, 8
  br i1 %cmp106.not.8, label %land.lhs.true.9.thread, label %for.inc112.7.land.lhs.true.8_crit_edge

for.inc112.7.land.lhs.true.8_crit_edge:           ; preds = %for.inc112.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.8

land.lhs.true.8:                                  ; preds = %for.inc112.7.land.lhs.true.8_crit_edge, %land.lhs.true.7.thread.land.lhs.true.8_crit_edge, %for.inc112.6.land.lhs.true.8_crit_edge
  %68 = ptrtoint ptr %arrayidx107.8 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx107.8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %43)
  %cmp109.8 = icmp eq i32 %69, %43
  br i1 %cmp109.8, label %land.lhs.true.8.for.end114_crit_edge, label %for.inc112.8

land.lhs.true.8.for.end114_crit_edge:             ; preds = %land.lhs.true.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end114

for.inc112.8:                                     ; preds = %land.lhs.true.8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.1282)
  %cmp106.not.9 = icmp eq i32 %i.1282, 9
  br i1 %cmp106.not.9, label %for.inc112.8.land.lhs.true.10_crit_edge, label %land.lhs.true.9

for.inc112.8.land.lhs.true.10_crit_edge:          ; preds = %for.inc112.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.10

land.lhs.true.9:                                  ; preds = %for.inc112.8
  %70 = ptrtoint ptr %arrayidx107.9 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx107.9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %43)
  %cmp109.9 = icmp eq i32 %71, %43
  br i1 %cmp109.9, label %land.lhs.true.9.for.end114_crit_edge, label %for.inc112.9

land.lhs.true.9.for.end114_crit_edge:             ; preds = %land.lhs.true.9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end114

land.lhs.true.9.thread:                           ; preds = %for.inc112.7
  %72 = ptrtoint ptr %arrayidx107.9312 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx107.9312, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %43)
  %cmp109.9313 = icmp eq i32 %73, %43
  br i1 %cmp109.9313, label %land.lhs.true.9.thread.for.end114_crit_edge, label %land.lhs.true.9.thread.land.lhs.true.10_crit_edge

land.lhs.true.9.thread.land.lhs.true.10_crit_edge: ; preds = %land.lhs.true.9.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.10

land.lhs.true.9.thread.for.end114_crit_edge:      ; preds = %land.lhs.true.9.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end114

for.inc112.9:                                     ; preds = %land.lhs.true.9
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %i.1282)
  %cmp106.not.10 = icmp eq i32 %i.1282, 10
  br i1 %cmp106.not.10, label %land.lhs.true.11.thread, label %for.inc112.9.land.lhs.true.10_crit_edge

for.inc112.9.land.lhs.true.10_crit_edge:          ; preds = %for.inc112.9
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.10

land.lhs.true.10:                                 ; preds = %for.inc112.9.land.lhs.true.10_crit_edge, %land.lhs.true.9.thread.land.lhs.true.10_crit_edge, %for.inc112.8.land.lhs.true.10_crit_edge
  %74 = ptrtoint ptr %arrayidx107.10 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx107.10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %43)
  %cmp109.10 = icmp eq i32 %75, %43
  br i1 %cmp109.10, label %land.lhs.true.10.for.end114_crit_edge, label %for.inc112.10

land.lhs.true.10.for.end114_crit_edge:            ; preds = %land.lhs.true.10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end114

for.inc112.10:                                    ; preds = %land.lhs.true.10
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %i.1282)
  %cmp106.not.11 = icmp eq i32 %i.1282, 11
  br i1 %cmp106.not.11, label %for.inc112.10.land.lhs.true.12_crit_edge, label %land.lhs.true.11

for.inc112.10.land.lhs.true.12_crit_edge:         ; preds = %for.inc112.10
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.12

land.lhs.true.11:                                 ; preds = %for.inc112.10
  %76 = ptrtoint ptr %arrayidx107.11 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx107.11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %43)
  %cmp109.11 = icmp eq i32 %77, %43
  br i1 %cmp109.11, label %land.lhs.true.11.for.end114_crit_edge, label %for.inc112.11

land.lhs.true.11.for.end114_crit_edge:            ; preds = %land.lhs.true.11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end114

land.lhs.true.11.thread:                          ; preds = %for.inc112.9
  %78 = ptrtoint ptr %arrayidx107.11318 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx107.11318, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %43)
  %cmp109.11319 = icmp eq i32 %79, %43
  br i1 %cmp109.11319, label %land.lhs.true.11.thread.for.end114_crit_edge, label %land.lhs.true.11.thread.land.lhs.true.12_crit_edge

land.lhs.true.11.thread.land.lhs.true.12_crit_edge: ; preds = %land.lhs.true.11.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.12

land.lhs.true.11.thread.for.end114_crit_edge:     ; preds = %land.lhs.true.11.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end114

for.inc112.11:                                    ; preds = %land.lhs.true.11
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %i.1282)
  %cmp106.not.12 = icmp eq i32 %i.1282, 12
  br i1 %cmp106.not.12, label %land.lhs.true.13.thread, label %for.inc112.11.land.lhs.true.12_crit_edge

for.inc112.11.land.lhs.true.12_crit_edge:         ; preds = %for.inc112.11
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.12

land.lhs.true.12:                                 ; preds = %for.inc112.11.land.lhs.true.12_crit_edge, %land.lhs.true.11.thread.land.lhs.true.12_crit_edge, %for.inc112.10.land.lhs.true.12_crit_edge
  %80 = ptrtoint ptr %arrayidx107.12 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx107.12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %43)
  %cmp109.12 = icmp eq i32 %81, %43
  br i1 %cmp109.12, label %land.lhs.true.12.for.end114_crit_edge, label %for.inc112.12

land.lhs.true.12.for.end114_crit_edge:            ; preds = %land.lhs.true.12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end114

for.inc112.12:                                    ; preds = %land.lhs.true.12
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %i.1282)
  %cmp106.not.13 = icmp eq i32 %i.1282, 13
  br i1 %cmp106.not.13, label %for.inc112.12.land.lhs.true.14_crit_edge, label %land.lhs.true.13

for.inc112.12.land.lhs.true.14_crit_edge:         ; preds = %for.inc112.12
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.14

land.lhs.true.13:                                 ; preds = %for.inc112.12
  %82 = ptrtoint ptr %arrayidx107.13 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx107.13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %43)
  %cmp109.13 = icmp eq i32 %83, %43
  br i1 %cmp109.13, label %land.lhs.true.13.for.end114_crit_edge, label %for.inc112.13

land.lhs.true.13.for.end114_crit_edge:            ; preds = %land.lhs.true.13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end114

land.lhs.true.13.thread:                          ; preds = %for.inc112.11
  %84 = ptrtoint ptr %arrayidx107.13324 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx107.13324, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %43)
  %cmp109.13325 = icmp eq i32 %85, %43
  br i1 %cmp109.13325, label %land.lhs.true.13.thread.for.end114_crit_edge, label %land.lhs.true.13.thread.land.lhs.true.14_crit_edge

land.lhs.true.13.thread.land.lhs.true.14_crit_edge: ; preds = %land.lhs.true.13.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.14

land.lhs.true.13.thread.for.end114_crit_edge:     ; preds = %land.lhs.true.13.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end114

for.inc112.13:                                    ; preds = %land.lhs.true.13
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %i.1282)
  %cmp106.not.14 = icmp eq i32 %i.1282, 14
  br i1 %cmp106.not.14, label %for.inc112.13.for.inc112.14_crit_edge, label %for.inc112.13.land.lhs.true.14_crit_edge

for.inc112.13.land.lhs.true.14_crit_edge:         ; preds = %for.inc112.13
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.14

for.inc112.13.for.inc112.14_crit_edge:            ; preds = %for.inc112.13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc112.14

land.lhs.true.14:                                 ; preds = %for.inc112.13.land.lhs.true.14_crit_edge, %land.lhs.true.13.thread.land.lhs.true.14_crit_edge, %for.inc112.12.land.lhs.true.14_crit_edge
  %86 = ptrtoint ptr %arrayidx107.14 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx107.14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %43)
  %cmp109.14 = icmp eq i32 %87, %43
  br i1 %cmp109.14, label %land.lhs.true.14.for.end114_crit_edge, label %land.lhs.true.14.for.inc112.14_crit_edge

land.lhs.true.14.for.inc112.14_crit_edge:         ; preds = %land.lhs.true.14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc112.14

land.lhs.true.14.for.end114_crit_edge:            ; preds = %land.lhs.true.14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end114

for.inc112.14:                                    ; preds = %land.lhs.true.14.for.inc112.14_crit_edge, %for.inc112.13.for.inc112.14_crit_edge
  br label %for.end114

for.end114:                                       ; preds = %for.inc112.14, %land.lhs.true.14.for.end114_crit_edge, %land.lhs.true.13.thread.for.end114_crit_edge, %land.lhs.true.13.for.end114_crit_edge, %land.lhs.true.12.for.end114_crit_edge, %land.lhs.true.11.thread.for.end114_crit_edge, %land.lhs.true.11.for.end114_crit_edge, %land.lhs.true.10.for.end114_crit_edge, %land.lhs.true.9.thread.for.end114_crit_edge, %land.lhs.true.9.for.end114_crit_edge, %land.lhs.true.8.for.end114_crit_edge, %land.lhs.true.7.thread.for.end114_crit_edge, %land.lhs.true.7.for.end114_crit_edge, %land.lhs.true.6.for.end114_crit_edge, %land.lhs.true.5.thread.for.end114_crit_edge, %land.lhs.true.5.for.end114_crit_edge, %land.lhs.true.4.for.end114_crit_edge, %land.lhs.true.3.thread.for.end114_crit_edge, %land.lhs.true.3.for.end114_crit_edge, %land.lhs.true.2.for.end114_crit_edge, %land.lhs.true.1.thread.for.end114_crit_edge, %land.lhs.true.1.for.end114_crit_edge, %land.lhs.true.for.end114_crit_edge
  %irq_flags.0 = phi i32 [ 128, %land.lhs.true.for.end114_crit_edge ], [ 128, %land.lhs.true.1.for.end114_crit_edge ], [ 128, %land.lhs.true.2.for.end114_crit_edge ], [ 128, %land.lhs.true.3.for.end114_crit_edge ], [ 128, %land.lhs.true.4.for.end114_crit_edge ], [ 128, %land.lhs.true.5.for.end114_crit_edge ], [ 128, %land.lhs.true.6.for.end114_crit_edge ], [ 128, %land.lhs.true.7.for.end114_crit_edge ], [ 128, %land.lhs.true.8.for.end114_crit_edge ], [ 128, %land.lhs.true.9.for.end114_crit_edge ], [ 128, %land.lhs.true.10.for.end114_crit_edge ], [ 128, %land.lhs.true.11.for.end114_crit_edge ], [ 128, %land.lhs.true.12.for.end114_crit_edge ], [ 128, %land.lhs.true.13.for.end114_crit_edge ], [ 128, %land.lhs.true.14.for.end114_crit_edge ], [ 0, %for.inc112.14 ], [ 128, %land.lhs.true.1.thread.for.end114_crit_edge ], [ 128, %land.lhs.true.3.thread.for.end114_crit_edge ], [ 128, %land.lhs.true.5.thread.for.end114_crit_edge ], [ 128, %land.lhs.true.7.thread.for.end114_crit_edge ], [ 128, %land.lhs.true.9.thread.for.end114_crit_edge ], [ 128, %land.lhs.true.11.thread.for.end114_crit_edge ], [ 128, %land.lhs.true.13.thread.for.end114_crit_edge ]
  %88 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev47, align 4
  %call.i.i269 = call noalias ptr @devm_kmalloc(ptr noundef %89, i32 noundef 260, i32 noundef 3520) #9
  %tobool.not.i270 = icmp eq ptr %call.i.i269, null
  br i1 %tobool.not.i270, label %for.end114.err_no_dma_crit_edge, label %if.end.i

for.end114.err_no_dma_crit_edge:                  ; preds = %for.end114
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_no_dma

if.end.i:                                         ; preds = %for.end114
  %desc_free.i = getelementptr inbounds %struct.virt_dma_chan, ptr %call.i.i269, i32 0, i32 2
  %90 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @bcm2835_dma_desc_free, ptr %desc_free.i, align 4
  call void @vchan_init(ptr noundef nonnull %call.i.i269, ptr noundef %call.i265) #9
  %91 = ptrtoint ptr %base23 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %base23, align 4
  %shl.i = shl i32 %i.1282, 8
  %add.ptr.i = getelementptr i8, ptr %92, i32 %shl.i
  %chan_base.i = getelementptr inbounds %struct.bcm2835_chan, ptr %call.i.i269, i32 0, i32 6
  %93 = ptrtoint ptr %chan_base.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %add.ptr.i, ptr %chan_base.i, align 4
  %ch.i = getelementptr inbounds %struct.bcm2835_chan, ptr %call.i.i269, i32 0, i32 3
  %94 = ptrtoint ptr %ch.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %i.1282, ptr %ch.i, align 4
  %irq_number.i = getelementptr inbounds %struct.bcm2835_chan, ptr %call.i.i269, i32 0, i32 7
  %95 = ptrtoint ptr %irq_number.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %43, ptr %irq_number.i, align 4
  %irq_flags3.i = getelementptr inbounds %struct.bcm2835_chan, ptr %call.i.i269, i32 0, i32 8
  %96 = ptrtoint ptr %irq_flags3.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %irq_flags.0, ptr %irq_flags3.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 32
  %97 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #9, !srcloc !111
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  %98 = and i32 %97, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool8.not.i = icmp eq i32 %98, 0
  br i1 %tobool8.not.i, label %if.end.i.for.inc120_crit_edge, label %if.then9.i

if.end.i.for.inc120_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc120

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %is_lite_channel.i = getelementptr inbounds %struct.bcm2835_chan, ptr %call.i.i269, i32 0, i32 9
  %99 = ptrtoint ptr %is_lite_channel.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 1, ptr %is_lite_channel.i, align 4
  br label %for.inc120

for.inc120:                                       ; preds = %if.then9.i, %if.end.i.for.inc120_crit_edge, %for.body98.for.inc120_crit_edge
  %inc121 = add nuw nsw i32 %i.1282, 1
  %exitcond285.not = icmp eq i32 %inc121, 15
  br i1 %exitcond285.not, label %do.body123, label %for.inc120.for.body98_crit_edge

for.inc120.for.body98_crit_edge:                  ; preds = %for.inc120
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body98

do.body123:                                       ; preds = %for.inc120
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_dma_probe.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcm2835_dma_probe, %do.end133)) #9
          to label %if.then129 [label %do.end133], !srcloc !113

if.then129:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_dma_probe.__UNIQUE_ID_ddebug244, ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef 15) #9
  br label %do.end133

do.end133:                                        ; preds = %if.then129, %do.body123
  %100 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %of_node, align 8
  %call136 = call i32 @of_dma_controller_register(ptr noundef %101, ptr noundef nonnull @bcm2835_dma_xlate, ptr noundef nonnull %call.i265) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.end143, label %do.end141

do.end141:                                        ; preds = %do.end133
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #12
  br label %err_no_dma

if.end143:                                        ; preds = %do.end133
  %call145 = call i32 @dma_async_device_register(ptr noundef nonnull %call.i265) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %do.body153, label %do.end150

do.end150:                                        ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %call145) #12
  br label %err_no_dma

do.body153:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_dma_probe.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcm2835_dma_probe, %cleanup)) #9
          to label %if.then167 [label %cleanup], !srcloc !113

if.then167:                                       ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_dma_probe.__UNIQUE_ID_ddebug245, ptr noundef %dev, ptr noundef nonnull @.str.26) #9
  br label %cleanup

err_no_dma:                                       ; preds = %do.end150, %do.end141, %for.end114.err_no_dma_crit_edge, %do.end69
  %rc.0 = phi i32 [ -22, %do.end69 ], [ %call136, %do.end141 ], [ %call145, %do.end150 ], [ -12, %for.end114.err_no_dma_crit_edge ]
  %102 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %channels, align 4
  %cmp.not31.i = icmp eq ptr %103, %channels
  br i1 %cmp.not31.i, label %err_no_dma.bcm2835_dma_free.exit_crit_edge, label %err_no_dma.for.body.i_crit_edge

err_no_dma.for.body.i_crit_edge:                  ; preds = %err_no_dma
  br label %for.body.i

err_no_dma.bcm2835_dma_free.exit_crit_edge:       ; preds = %err_no_dma
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm2835_dma_free.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %err_no_dma.for.body.i_crit_edge
  %.pn.in32.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %103, %err_no_dma.for.body.i_crit_edge ]
  %104 = ptrtoint ptr %.pn.in32.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %.pn.i = load ptr, ptr %.pn.in32.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in32.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in32.i, i32 0, i32 1
  %105 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %prev.i.i.i, align 4
  %107 = ptrtoint ptr %.pn.in32.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %.pn.in32.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %106, ptr %prev1.i.i.i.i, align 4
  %110 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile ptr %108, ptr %106, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %111 = ptrtoint ptr %.pn.in32.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in32.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in32.i, i32 0, i32 1
  %112 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %task.i = getelementptr i8, ptr %.pn.in32.i, i32 32
  call void @tasklet_kill(ptr noundef %task.i) #9
  %cmp.not.i = icmp eq ptr %.pn.i, %channels
  br i1 %cmp.not.i, label %list_del.exit.i.bcm2835_dma_free.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

list_del.exit.i.bcm2835_dma_free.exit_crit_edge:  ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm2835_dma_free.exit

bcm2835_dma_free.exit:                            ; preds = %list_del.exit.i.bcm2835_dma_free.exit_crit_edge, %err_no_dma.bcm2835_dma_free.exit_crit_edge
  %113 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev47, align 4
  %115 = ptrtoint ptr %zero_page to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %zero_page, align 4
  call void @dma_unmap_page_attrs(ptr noundef %114, i32 noundef %116, i32 noundef 4096, i32 noundef 1, i32 noundef 32) #9
  br label %cleanup

cleanup:                                          ; preds = %bcm2835_dma_free.exit, %if.then167, %do.body153, %do.end60, %if.then20, %if.end8.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %9, %if.then20 ], [ -12, %do.end60 ], [ %rc.0, %bcm2835_dma_free.exit ], [ -12, %if.end8.cleanup_crit_edge ], [ 0, %if.then167 ], [ 0, %do.body153 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %chan_name) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chans_available) #9
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %irq) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_dma_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @dma_async_device_unregister(ptr noundef %1) #9
  %channels.i = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channels.i, align 4
  %cmp.not31.i = icmp eq ptr %3, %channels.i
  br i1 %cmp.not31.i, label %entry.bcm2835_dma_free.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.bcm2835_dma_free.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm2835_dma_free.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn.in32.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %3, %entry.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %.pn.in32.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn.in32.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in32.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in32.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %.pn.in32.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn.in32.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %11 = ptrtoint ptr %.pn.in32.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in32.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in32.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %task.i = getelementptr i8, ptr %.pn.in32.i, i32 32
  tail call void @tasklet_kill(ptr noundef %task.i) #9
  %cmp.not.i = icmp eq ptr %.pn.i, %channels.i
  br i1 %cmp.not.i, label %list_del.exit.i.bcm2835_dma_free.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

list_del.exit.i.bcm2835_dma_free.exit_crit_edge:  ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm2835_dma_free.exit

bcm2835_dma_free.exit:                            ; preds = %list_del.exit.i.bcm2835_dma_free.exit_crit_edge, %entry.bcm2835_dma_free.exit_crit_edge
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %zero_page.i = getelementptr inbounds %struct.bcm2835_dmadev, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %zero_page.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %zero_page.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %14, i32 noundef %16, i32 noundef 4096, i32 noundef 1, i32 noundef 32) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_dma_alloc_chan_resources(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %dev2 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_dma_alloc_chan_resources.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcm2835_dma_alloc_chan_resources, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !113

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ch = getelementptr inbounds %struct.bcm2835_chan, ptr %chan, i32 0, i32 3
  %4 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ch, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_dma_alloc_chan_resources.__UNIQUE_ID_ddebug242, ptr noundef %3, ptr noundef nonnull @.str.28, i32 noundef %5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %init_name.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i27 = phi ptr [ %9, %if.end.i ], [ %7, %do.end.dev_name.exit_crit_edge ]
  %call8 = tail call ptr @dma_pool_create(ptr noundef %retval.0.i27, ptr noundef %3, i32 noundef 32, i32 noundef 32, i32 noundef 0) #9
  %cb_pool = getelementptr inbounds %struct.bcm2835_chan, ptr %chan, i32 0, i32 5
  %10 = ptrtoint ptr %cb_pool to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call8, ptr %cb_pool, align 4
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %do.end14, label %if.end15

do.end14:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.29) #12
  br label %cleanup

if.end15:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %irq_number = getelementptr inbounds %struct.bcm2835_chan, ptr %chan, i32 0, i32 7
  %11 = ptrtoint ptr %irq_number to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq_number, align 4
  %irq_flags = getelementptr inbounds %struct.bcm2835_chan, ptr %chan, i32 0, i32 8
  %13 = ptrtoint ptr %irq_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq_flags, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %12, ptr noundef nonnull @bcm2835_dma_callback, ptr noundef null, i32 noundef %14, ptr noundef nonnull @.str.30, ptr noundef %chan) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end14
  %retval.0 = phi i32 [ %call.i, %if.end15 ], [ -12, %do.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835_dma_free_chan_resources(ptr noundef %chan) #2 align 64 {
entry:
  %head.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i) #9
  %0 = getelementptr inbounds %struct.list_head, ptr %head.i, i32 0, i32 1
  %1 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %head.i, ptr %head.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head.i, ptr %0, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %desc_allocated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %3 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %desc_allocated.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %4, %desc_allocated.i.i
  br i1 %cmp.i.not.i.i.i, label %entry.list_splice_tail_init.exit.i.i_crit_edge, label %if.then.i.i.i

entry.list_splice_tail_init.exit.i.i_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit.i.i

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit14.i.i

if.then.i13.i.i:                                  ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit20.i.i

if.then.i19.i.i:                                  ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit26.i.i

if.then.i25.i.i:                                  ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_get_all_descriptors.exit.i

if.then.i31.i.i:                                  ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.vchan_free_chan_resources.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_free_chan_resources.exit

vchan_free_chan_resources.exit:                   ; preds = %for.body.i.vchan_free_chan_resources.exit_crit_edge, %vchan_get_all_descriptors.exit.i.vchan_free_chan_resources.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #9
  %irq_number = getelementptr inbounds %struct.bcm2835_chan, ptr %chan, i32 0, i32 7
  %57 = ptrtoint ptr %irq_number to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %irq_number, align 4
  %call1 = call ptr @free_irq(i32 noundef %58, ptr noundef %chan) #9
  %cb_pool = getelementptr inbounds %struct.bcm2835_chan, ptr %chan, i32 0, i32 5
  %59 = ptrtoint ptr %cb_pool to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cb_pool, align 4
  call void @dma_pool_destroy(ptr noundef %60) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_dma_free_chan_resources.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcm2835_dma_free_chan_resources, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !113

if.then:                                          ; preds = %vchan_free_chan_resources.exit
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %chan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %62, i32 0, i32 15
  %63 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev, align 4
  %ch = getelementptr inbounds %struct.bcm2835_chan, ptr %chan, i32 0, i32 3
  %65 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ch, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_dma_free_chan_resources.__UNIQUE_ID_ddebug243, ptr noundef %64, ptr noundef nonnull @.str.35, i32 noundef %66) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %vchan_free_chan_resources.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_dma_tx_status(ptr noundef %chan, i32 noundef %cookie, ptr noundef writeonly %txstate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !114
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
  %brmerge = or i1 %tobool.not.i, %or.cond.i.i
  %not.or.cond.i.i = xor i1 %or.cond.i.i, true
  br i1 %brmerge, label %if.then.i.i.cleanup_crit_edge, label %if.then.i.i.do.body2_crit_edge

if.then.i.i.do.body2_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  %brmerge80 = or i1 %tobool.not.i, %or.cond16.i.i
  %not.or.cond16.i.i = xor i1 %or.cond16.i.i, true
  br i1 %brmerge80, label %if.else.i.i.cleanup_crit_edge, label %if.else.i.i.do.body2_crit_edge

if.else.i.i.do.body2_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body2:                                         ; preds = %if.else.i.i.do.body2_crit_edge, %if.then.i.i.do.body2_crit_edge
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %call9 = tail call ptr @vchan_find_desc(ptr noundef %chan, i32 noundef %cookie) #9
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  %size.i = getelementptr i8, ptr %call9, i32 124
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size.i, align 4
  br label %if.end49

if.else:                                          ; preds = %do.body2
  %desc = getelementptr inbounds %struct.bcm2835_chan, ptr %chan, i32 0, i32 4
  %10 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc, align 4
  %tobool14.not = icmp eq ptr %11, null
  br i1 %tobool14.not, label %if.else.if.end49_crit_edge, label %land.lhs.true

if.else.if.end49_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

land.lhs.true:                                    ; preds = %if.else
  %vd16 = getelementptr inbounds %struct.bcm2835_desc, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %vd16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vd16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %cookie)
  %cmp19 = icmp eq i32 %13, %cookie
  br i1 %cmp19, label %if.then21, label %land.lhs.true.if.end49_crit_edge

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then21:                                        ; preds = %land.lhs.true
  %dir = getelementptr inbounds %struct.bcm2835_desc, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dir, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %15, label %if.then21.if.end43_crit_edge [
    i32 1, label %if.then25
    i32 2, label %if.then33
  ]

if.then21.if.end43_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then25:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  %chan_base = getelementptr inbounds %struct.bcm2835_chan, ptr %chan, i32 0, i32 6
  %17 = ptrtoint ptr %chan_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chan_base, align 4
  %add.ptr = getelementptr i8, ptr %18, i32 12
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !111
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  br label %if.end43

if.then33:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  %chan_base36 = getelementptr inbounds %struct.bcm2835_chan, ptr %chan, i32 0, i32 6
  %21 = ptrtoint ptr %chan_base36 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chan_base36, align 4
  %add.ptr37 = getelementptr i8, ptr %22, i32 16
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #9, !srcloc !111
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  br label %if.end43

if.end43:                                         ; preds = %if.then33, %if.then25, %if.then21.if.end43_crit_edge
  %pos.0 = phi i32 [ %20, %if.then25 ], [ %24, %if.then33 ], [ 0, %if.then21.if.end43_crit_edge ]
  %frames.i = getelementptr inbounds %struct.bcm2835_desc, ptr %11, i32 0, i32 3
  %25 = ptrtoint ptr %frames.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %frames.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp27.not.i = icmp eq i32 %26, 0
  br i1 %cmp27.not.i, label %if.end43.if.end49_crit_edge, label %for.body.lr.ph.i

if.end43.if.end49_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

for.body.lr.ph.i:                                 ; preds = %if.end43
  %27 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp1.i = icmp eq i32 %28, 2
  br label %for.body.i

for.body.i:                                       ; preds = %if.end11.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %size.029.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %size.1.i, %if.end11.i.for.body.i_crit_edge ]
  %i.028.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end11.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.bcm2835_desc, ptr %11, i32 0, i32 6, i32 %i.028.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 4
  %length.i = getelementptr inbounds %struct.bcm2835_dma_cb, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %length.i, align 4
  %dst.i = getelementptr inbounds %struct.bcm2835_dma_cb, ptr %30, i32 0, i32 2
  %src.i = getelementptr inbounds %struct.bcm2835_dma_cb, ptr %30, i32 0, i32 1
  %dma.0.in.i = select i1 %cmp1.i, ptr %dst.i, ptr %src.i
  %33 = ptrtoint ptr %dma.0.in.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %dma.0.i = load i32, ptr %dma.0.in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.029.i)
  %tobool.not.i75 = icmp eq i32 %size.029.i, 0
  br i1 %tobool.not.i75, label %if.else3.i, label %if.then2.i

if.then2.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add i32 %32, %size.029.i
  br label %if.end11.i

if.else3.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %dma.0.i, i32 %pos.0)
  %cmp4.not.i = icmp ugt i32 %dma.0.i, %pos.0
  br i1 %cmp4.not.i, label %if.else3.i.if.end11.i_crit_edge, label %land.lhs.true.i

if.else3.i.if.end11.i_crit_edge:                  ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

land.lhs.true.i:                                  ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #11
  %add5.i = add i32 %dma.0.i, %32
  %34 = tail call i32 @llvm.usub.sat.i32(i32 %add5.i, i32 %pos.0) #9
  br label %if.end11.i

if.end11.i:                                       ; preds = %land.lhs.true.i, %if.else3.i.if.end11.i_crit_edge, %if.then2.i
  %size.1.i = phi i32 [ %add.i, %if.then2.i ], [ 0, %if.else3.i.if.end11.i_crit_edge ], [ %34, %land.lhs.true.i ]
  %inc.i = add nuw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %26
  br i1 %exitcond.not.i, label %if.end11.i.if.end49_crit_edge, label %if.end11.i.for.body.i_crit_edge

if.end11.i.for.body.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end11.i.if.end49_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.end49:                                         ; preds = %if.end11.i.if.end49_crit_edge, %if.end43.if.end49_crit_edge, %land.lhs.true.if.end49_crit_edge, %if.else.if.end49_crit_edge, %if.then11
  %size.0.lcssa.i.sink = phi i32 [ %9, %if.then11 ], [ 0, %if.end43.if.end49_crit_edge ], [ 0, %land.lhs.true.if.end49_crit_edge ], [ 0, %if.else.if.end49_crit_edge ], [ %size.1.i, %if.end11.i.if.end49_crit_edge ]
  %residue45 = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %35 = ptrtoint ptr %residue45 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %size.0.lcssa.i.sink, ptr %residue45, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.else.i.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge
  %retval.0.i.i79.shrunk = phi i1 [ true, %if.end49 ], [ %not.or.cond.i.i, %if.then.i.i.cleanup_crit_edge ], [ %not.or.cond16.i.i, %if.else.i.i.cleanup_crit_edge ]
  %retval.0.i.i79 = zext i1 %retval.0.i.i79.shrunk to i32
  ret i32 %retval.0.i.i79
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835_dma_issue_pending(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %vchan_issue_pending.exit
  %desc = getelementptr inbounds %struct.bcm2835_chan, ptr %chan, i32 0, i32 4
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %14 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.not.i.i = icmp eq ptr %15, %desc_issued.i
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 -108
  %tobool.not16.i = icmp eq ptr %add.ptr.i.i, null
  %tobool.not.i = or i1 %cmp.not.i.i, %tobool.not16.i
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %desc, align 4
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %15) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
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
  %add.ptr.i15.i = getelementptr i8, ptr %15, i32 -112
  %25 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr.i15.i, ptr %desc, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !117
  tail call void @arm_heavy_mb() #9
  %paddr.i = getelementptr i8, ptr %15, i32 28
  %26 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %paddr.i, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #9
  %chan_base.i = getelementptr inbounds %struct.bcm2835_chan, ptr %chan, i32 0, i32 6
  %29 = ptrtoint ptr %chan_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chan_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %30, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %28) #9, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @arm_heavy_mb() #9
  %31 = ptrtoint ptr %chan_base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chan_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 16777216) #9, !srcloc !118
  br label %if.end

if.end:                                           ; preds = %list_del.exit.i, %if.then.i, %land.lhs.true.if.end_crit_edge, %vchan_issue_pending.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bcm2835_dma_prep_dma_cyclic(ptr noundef %chan, i32 noundef %buf_addr, i32 noundef %buf_len, i32 noundef %period_len, i32 noundef %direction, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %is_lite_channel.i = getelementptr inbounds %struct.bcm2835_chan, ptr %chan, i32 0, i32 9
  %2 = ptrtoint ptr %is_lite_channel.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_lite_channel.i, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  %cond.i = select i1 %tobool.not.i, i32 1073741824, i32 65532
  %4 = add i32 %direction, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_len)
  %tobool.not = icmp eq i32 %buf_len, 0
  br i1 %tobool.not, label %do.end8, label %if.end11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev10 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37) #12
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  %buf_len.period_len = select i1 %tobool12.not, i32 %buf_len, i32 %period_len
  %not.tobool12.not = xor i1 %tobool12.not, true
  %. = zext i1 %not.tobool12.not to i32
  %rem = urem i32 %buf_len, %buf_len.period_len
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool15.not = icmp eq i32 %rem, 0
  br i1 %tobool15.not, label %if.end11.if.end28_crit_edge, label %do.body17

if.end11.if.end28_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

do.body17:                                        ; preds = %if.end11
  %.b109 = load i1, ptr @bcm2835_dma_prep_dma_cyclic.__print_once, align 1
  br i1 %.b109, label %do.body17.if.end28_crit_edge, label %if.then19

do.body17.if.end28_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then19:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @bcm2835_dma_prep_dma_cyclic.__print_once, align 1
  %dev24 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %10 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev24, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.37, i32 noundef %buf_len, i32 noundef %buf_len.period_len) #12
  br label %if.end28

if.end28:                                         ; preds = %if.then19, %do.body17.if.end28_crit_edge, %if.end11.if.end28_crit_edge
  %dreq = getelementptr inbounds %struct.bcm2835_chan, ptr %chan, i32 0, i32 2
  %12 = ptrtoint ptr %dreq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dreq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not = icmp eq i32 %13, 0
  %and31 = shl i32 %13, 16
  %shl = and i32 %and31, 2031616
  %or32 = or i32 %shl, 8
  %info.0 = select i1 %cmp.not, i32 8, i32 %or32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %direction)
  %cmp34 = icmp eq i32 %direction, 2
  br i1 %cmp34, label %if.then35, label %if.else41

if.then35:                                        ; preds = %if.end28
  %src_addr_width = getelementptr inbounds %struct.bcm2835_chan, ptr %chan, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %src_addr_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp36.not = icmp eq i32 %15, 4
  br i1 %cmp36.not, label %if.end38, label %if.then35.cleanup_crit_edge

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end38:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  %src_addr = getelementptr inbounds %struct.bcm2835_chan, ptr %chan, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %src_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %src_addr, align 4
  %or40 = or i32 %info.0, 1040
  br label %if.end53

if.else41:                                        ; preds = %if.end28
  %dst_addr_width = getelementptr inbounds %struct.bcm2835_chan, ptr %chan, i32 0, i32 1, i32 4
  %18 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dst_addr_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %cmp43.not = icmp eq i32 %19, 4
  br i1 %cmp43.not, label %if.end45, label %if.else41.cleanup_crit_edge

if.else41.cleanup_crit_edge:                      ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end45:                                         ; preds = %if.else41
  %dst_addr = getelementptr inbounds %struct.bcm2835_chan, ptr %chan, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %dst_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dst_addr, align 4
  %or47 = or i32 %info.0, 320
  %zero_page = getelementptr inbounds %struct.bcm2835_dmadev, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %zero_page to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %zero_page, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %buf_addr)
  %cmp48 = icmp eq i32 %23, %buf_addr
  br i1 %cmp48, label %land.lhs.true, label %if.end45.if.end53_crit_edge

if.end45.if.end53_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

land.lhs.true:                                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %is_lite_channel.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %is_lite_channel.i, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool49.not = icmp eq i8 %25, 0
  %or51 = or i32 %info.0, 2368
  %spec.select = select i1 %tobool49.not, i32 %or51, i32 %or47
  br label %if.end53

if.end53:                                         ; preds = %land.lhs.true, %if.end45.if.end53_crit_edge, %if.end38
  %src.0 = phi i32 [ %17, %if.end38 ], [ %buf_addr, %if.end45.if.end53_crit_edge ], [ %buf_addr, %land.lhs.true ]
  %dst.0 = phi i32 [ %buf_addr, %if.end38 ], [ %21, %if.end45.if.end53_crit_edge ], [ %21, %land.lhs.true ]
  %info.1 = phi i32 [ %or40, %if.end38 ], [ %or47, %if.end45.if.end53_crit_edge ], [ %spec.select, %land.lhs.true ]
  %add = add i32 %buf_len.period_len, -1
  %sub = add i32 %add, %buf_len
  %div = udiv i32 %sub, %buf_len.period_len
  %sub.i = add i32 %add, %cond.i
  %div.i = udiv i32 %sub.i, %cond.i
  %mul = mul i32 %div.i, %div
  %call55 = tail call fastcc ptr @bcm2835_dma_create_cb_chain(ptr noundef %chan, i32 noundef %direction, i1 noundef zeroext true, i32 noundef %info.1, i32 noundef %., i32 noundef %mul, i32 noundef %src.0, i32 noundef %dst.0, i32 noundef %buf_len, i32 noundef %buf_len.period_len, i32 noundef 2048)
  %tobool56.not = icmp eq ptr %call55, null
  br i1 %tobool56.not, label %if.end53.cleanup_crit_edge, label %if.end58

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end58:                                         ; preds = %if.end53
  %paddr = getelementptr inbounds %struct.bcm2835_desc, ptr %call55, i32 1, i32 1
  %26 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %paddr, align 4
  %frames60 = getelementptr inbounds %struct.bcm2835_desc, ptr %call55, i32 0, i32 3
  %28 = ptrtoint ptr %frames60 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %frames60, align 4
  %sub61 = add i32 %29, -1
  %arrayidx62 = getelementptr %struct.bcm2835_desc, ptr %call55, i32 0, i32 6, i32 %sub61
  %30 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx62, align 4
  %next = getelementptr inbounds %struct.bcm2835_dma_cb, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %27, ptr %next, align 4
  %vd = getelementptr inbounds %struct.bcm2835_desc, ptr %call55, i32 0, i32 1
  tail call void @dma_async_tx_descriptor_init(ptr noundef %vd, ptr noundef %chan) #9
  %flags2.i = getelementptr inbounds %struct.bcm2835_desc, ptr %call55, i32 0, i32 1, i32 0, i32 1
  %33 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.bcm2835_desc, ptr %call55, i32 0, i32 1, i32 0, i32 4
  %34 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 4
  %desc_free.i = getelementptr inbounds %struct.bcm2835_desc, ptr %call55, i32 0, i32 1, i32 0, i32 5
  %35 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.bcm2835_desc, ptr %call55, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.bcm2835_desc, ptr %call55, i32 0, i32 1, i32 1, i32 1
  %37 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %residue.i, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %node.i = getelementptr inbounds %struct.bcm2835_desc, ptr %call55, i32 0, i32 1, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %39, ptr noundef %desc_allocated.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end58.vchan_tx_prep.exit_crit_edge

if.end58.vchan_tx_prep.exit_crit_edge:            ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %node.i, ptr %prev.i.i, align 4
  %41 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.bcm2835_desc, ptr %call55, i32 0, i32 1, i32 2, i32 1
  %42 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev3.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %node.i, ptr %39, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %if.end58.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %if.end53.cleanup_crit_edge, %if.else41.cleanup_crit_edge, %if.then35.cleanup_crit_edge, %do.end8, %do.end
  %retval.0 = phi ptr [ %vd, %vchan_tx_prep.exit ], [ null, %do.end8 ], [ null, %do.end ], [ null, %if.then35.cleanup_crit_edge ], [ null, %if.else41.cleanup_crit_edge ], [ null, %if.end53.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bcm2835_dma_prep_slave_sg(ptr noundef %chan, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %direction, i32 noundef %flags, ptr nocapture noundef readnone %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %direction, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %1 = icmp ult i32 %0, 2
  br i1 %1, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.44) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dreq = getelementptr inbounds %struct.bcm2835_chan, ptr %chan, i32 0, i32 2
  %6 = ptrtoint ptr %dreq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dreq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  %and = shl i32 %7, 16
  %shl = and i32 %and, 2031616
  %or = or i32 %shl, 8
  %info.0 = select i1 %cmp.not, i32 8, i32 %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %direction)
  %cmp5 = icmp eq i32 %direction, 2
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %src_addr_width = getelementptr inbounds %struct.bcm2835_chan, ptr %chan, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %src_addr_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp7.not = icmp eq i32 %9, 4
  br i1 %cmp7.not, label %if.end9, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %src_addr = getelementptr inbounds %struct.bcm2835_chan, ptr %chan, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %src_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %src_addr, align 4
  br label %if.end18

if.else:                                          ; preds = %if.end
  %dst_addr_width = getelementptr inbounds %struct.bcm2835_chan, ptr %chan, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dst_addr_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp13.not = icmp eq i32 %13, 4
  br i1 %cmp13.not, label %if.end15, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %dst_addr = getelementptr inbounds %struct.bcm2835_chan, ptr %chan, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %dst_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dst_addr, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end15, %if.end9
  %.sink = phi i32 [ 320, %if.end15 ], [ 1040, %if.end9 ]
  %src.0 = phi i32 [ 0, %if.end15 ], [ %11, %if.end9 ]
  %dst.0 = phi i32 [ %15, %if.end15 ], [ 0, %if.end9 ]
  %or17 = or i32 %info.0, %.sink
  %is_lite_channel.i.i = getelementptr inbounds %struct.bcm2835_chan, ptr %chan, i32 0, i32 9
  %16 = ptrtoint ptr %is_lite_channel.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_lite_channel.i.i, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i.i = icmp eq i8 %17, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 1073741824, i32 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %cmp6.not.i = icmp eq i32 %sg_len, 0
  br i1 %cmp6.not.i, label %if.end18.bcm2835_dma_count_frames_for_sg.exit_crit_edge, label %for.body.lr.ph.i

if.end18.bcm2835_dma_count_frames_for_sg.exit_crit_edge: ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm2835_dma_count_frames_for_sg.exit

for.body.lr.ph.i:                                 ; preds = %if.end18
  %add.i.i = add nsw i32 %cond.i.i, -1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %sgent.08.i = phi ptr [ %sgl, %for.body.lr.ph.i ], [ %call2.i, %for.body.i.for.body.i_crit_edge ]
  %frames.07.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sgent.08.i, i32 0, i32 4
  %18 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_length.i, align 4
  %sub.i.i = add i32 %add.i.i, %19
  %div.i.i = udiv i32 %sub.i.i, %cond.i.i
  %add.i = add i32 %div.i.i, %frames.07.i
  %inc.i = add nuw i32 %i.09.i, 1
  %call2.i = tail call ptr @sg_next(ptr noundef %sgent.08.i) #9
  %exitcond.not.i = icmp eq i32 %inc.i, %sg_len
  br i1 %exitcond.not.i, label %for.body.i.bcm2835_dma_count_frames_for_sg.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.bcm2835_dma_count_frames_for_sg.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm2835_dma_count_frames_for_sg.exit

bcm2835_dma_count_frames_for_sg.exit:             ; preds = %for.body.i.bcm2835_dma_count_frames_for_sg.exit_crit_edge, %if.end18.bcm2835_dma_count_frames_for_sg.exit_crit_edge
  %frames.0.lcssa.i = phi i32 [ 0, %if.end18.bcm2835_dma_count_frames_for_sg.exit_crit_edge ], [ %add.i, %for.body.i.bcm2835_dma_count_frames_for_sg.exit_crit_edge ]
  %call20 = tail call fastcc ptr @bcm2835_dma_create_cb_chain(ptr noundef %chan, i32 noundef %direction, i1 noundef zeroext false, i32 noundef %or17, i32 noundef 1, i32 noundef %frames.0.lcssa.i, i32 noundef %src.0, i32 noundef %dst.0, i32 noundef 0, i32 noundef 0, i32 noundef 2048)
  %tobool.not = icmp eq ptr %call20, null
  br i1 %tobool.not, label %bcm2835_dma_count_frames_for_sg.exit.cleanup_crit_edge, label %if.end22

bcm2835_dma_count_frames_for_sg.exit.cleanup_crit_edge: ; preds = %bcm2835_dma_count_frames_for_sg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %bcm2835_dma_count_frames_for_sg.exit
  %20 = ptrtoint ptr %is_lite_channel.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %is_lite_channel.i.i, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i.i51 = icmp eq i8 %21, 0
  %cond.i.i52 = select i1 %tobool.not.i.i51, i32 1073741824, i32 65532
  br i1 %cmp6.not.i, label %if.end22.bcm2835_dma_fill_cb_chain_with_sg.exit_crit_edge, label %for.body.i55.preheader

if.end22.bcm2835_dma_fill_cb_chain_with_sg.exit_crit_edge: ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm2835_dma_fill_cb_chain_with_sg.exit

for.body.i55.preheader:                           ; preds = %if.end22
  %cb_list = getelementptr inbounds %struct.bcm2835_desc, ptr %call20, i32 0, i32 6
  br label %for.body.i55

for.body.i55:                                     ; preds = %for.inc14.i.for.body.i55_crit_edge, %for.body.i55.preheader
  %cb.addr.040.i = phi ptr [ %cb.addr.1.lcssa.i, %for.inc14.i.for.body.i55_crit_edge ], [ %cb_list, %for.body.i55.preheader ]
  %sgent.039.i = phi ptr [ %call15.i, %for.inc14.i.for.body.i55_crit_edge ], [ %sgl, %for.body.i55.preheader ]
  %i.038.i = phi i32 [ %inc.i57, %for.inc14.i.for.body.i55_crit_edge ], [ 0, %for.body.i55.preheader ]
  %dma_length.i54 = getelementptr inbounds %struct.scatterlist, ptr %sgent.039.i, i32 0, i32 4
  %22 = ptrtoint ptr %dma_length.i54 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_length.i54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp3.not31.i = icmp eq i32 %23, 0
  br i1 %cmp3.not31.i, label %for.body.i55.for.inc14.i_crit_edge, label %for.body4.preheader.i

for.body.i55.for.inc14.i_crit_edge:               ; preds = %for.body.i55
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc14.i

for.body4.preheader.i:                            ; preds = %for.body.i55
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sgent.039.i, i32 0, i32 3
  %24 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_address.i, align 4
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.body4.i.for.body4.i_crit_edge, %for.body4.preheader.i
  %cb.addr.135.i = phi ptr [ %incdec.ptr.i, %for.body4.i.for.body4.i_crit_edge ], [ %cb.addr.040.i, %for.body4.preheader.i ]
  %addr.033.i = phi i32 [ %add.i56, %for.body4.i.for.body4.i_crit_edge ], [ %25, %for.body4.preheader.i ]
  %len.032.i = phi i32 [ %sub.i, %for.body4.i.for.body4.i_crit_edge ], [ %23, %for.body4.preheader.i ]
  %26 = ptrtoint ptr %cb.addr.135.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cb.addr.135.i, align 4
  %src.i = getelementptr inbounds %struct.bcm2835_dma_cb, ptr %27, i32 0, i32 1
  %dst.i = getelementptr inbounds %struct.bcm2835_dma_cb, ptr %27, i32 0, i32 2
  %src.sink.i = select i1 %cmp5, ptr %dst.i, ptr %src.i
  %28 = ptrtoint ptr %src.sink.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %addr.033.i, ptr %src.sink.i, align 4
  %29 = tail call i32 @llvm.umin.i32(i32 %len.032.i, i32 %cond.i.i52) #9
  %30 = ptrtoint ptr %cb.addr.135.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cb.addr.135.i, align 4
  %length.i = getelementptr inbounds %struct.bcm2835_dma_cb, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %29, ptr %length.i, align 4
  %33 = load ptr, ptr %cb.addr.135.i, align 4
  %length11.i = getelementptr inbounds %struct.bcm2835_dma_cb, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %length11.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %length11.i, align 4
  %add.i56 = add i32 %35, %addr.033.i
  %sub.i = sub i32 %len.032.i, %35
  %incdec.ptr.i = getelementptr %struct.bcm2835_cb_entry, ptr %cb.addr.135.i, i32 1
  %cmp3.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp3.not.i, label %for.body4.i.for.inc14.i_crit_edge, label %for.body4.i.for.body4.i_crit_edge

for.body4.i.for.body4.i_crit_edge:                ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body4.i

for.body4.i.for.inc14.i_crit_edge:                ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc14.i

for.inc14.i:                                      ; preds = %for.body4.i.for.inc14.i_crit_edge, %for.body.i55.for.inc14.i_crit_edge
  %cb.addr.1.lcssa.i = phi ptr [ %cb.addr.040.i, %for.body.i55.for.inc14.i_crit_edge ], [ %incdec.ptr.i, %for.body4.i.for.inc14.i_crit_edge ]
  %inc.i57 = add nuw i32 %i.038.i, 1
  %call15.i = tail call ptr @sg_next(ptr noundef %sgent.039.i) #9
  %exitcond.not.i58 = icmp eq i32 %inc.i57, %sg_len
  br i1 %exitcond.not.i58, label %for.inc14.i.bcm2835_dma_fill_cb_chain_with_sg.exit_crit_edge, label %for.inc14.i.for.body.i55_crit_edge

for.inc14.i.for.body.i55_crit_edge:               ; preds = %for.inc14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i55

for.inc14.i.bcm2835_dma_fill_cb_chain_with_sg.exit_crit_edge: ; preds = %for.inc14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm2835_dma_fill_cb_chain_with_sg.exit

bcm2835_dma_fill_cb_chain_with_sg.exit:           ; preds = %for.inc14.i.bcm2835_dma_fill_cb_chain_with_sg.exit_crit_edge, %if.end22.bcm2835_dma_fill_cb_chain_with_sg.exit_crit_edge
  %vd = getelementptr inbounds %struct.bcm2835_desc, ptr %call20, i32 0, i32 1
  tail call void @dma_async_tx_descriptor_init(ptr noundef %vd, ptr noundef %chan) #9
  %flags2.i = getelementptr inbounds %struct.bcm2835_desc, ptr %call20, i32 0, i32 1, i32 0, i32 1
  %36 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.bcm2835_desc, ptr %call20, i32 0, i32 1, i32 0, i32 4
  %37 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 4
  %desc_free.i = getelementptr inbounds %struct.bcm2835_desc, ptr %call20, i32 0, i32 1, i32 0, i32 5
  %38 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.bcm2835_desc, ptr %call20, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.bcm2835_desc, ptr %call20, i32 0, i32 1, i32 1, i32 1
  %40 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %residue.i, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %node.i = getelementptr inbounds %struct.bcm2835_desc, ptr %call20, i32 0, i32 1, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %41 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %42, ptr noundef %desc_allocated.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %bcm2835_dma_fill_cb_chain_with_sg.exit.vchan_tx_prep.exit_crit_edge

bcm2835_dma_fill_cb_chain_with_sg.exit.vchan_tx_prep.exit_crit_edge: ; preds = %bcm2835_dma_fill_cb_chain_with_sg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %bcm2835_dma_fill_cb_chain_with_sg.exit
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %node.i, ptr %prev.i.i, align 4
  %44 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.bcm2835_desc, ptr %call20, i32 0, i32 1, i32 2, i32 1
  %45 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev3.i.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %node.i, ptr %42, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %bcm2835_dma_fill_cb_chain_with_sg.exit.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %bcm2835_dma_count_frames_for_sg.exit.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ %vd, %vchan_tx_prep.exit ], [ null, %do.end ], [ null, %if.then6.cleanup_crit_edge ], [ null, %if.else.cleanup_crit_edge ], [ null, %bcm2835_dma_count_frames_for_sg.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bcm2835_dma_prep_dma_memcpy(ptr noundef %chan, i32 noundef %dst, i32 noundef %src, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src)
  %tobool.not = icmp eq i32 %src, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dst)
  %tobool2.not = icmp eq i32 %dst, 0
  %or.cond = or i1 %tobool2.not, %tobool.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool4.not = icmp eq i32 %len, 0
  %or.cond23 = or i1 %or.cond, %tobool4.not
  br i1 %or.cond23, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_lite_channel.i = getelementptr inbounds %struct.bcm2835_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %is_lite_channel.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_lite_channel.i, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  %cond.i = select i1 %tobool.not.i, i32 1073741824, i32 65532
  %add.i = add i32 %len, -1
  %sub.i = add i32 %add.i, %cond.i
  %div.i = udiv i32 %sub.i, %cond.i
  %call6 = tail call fastcc ptr @bcm2835_dma_create_cb_chain(ptr noundef %chan, i32 noundef 0, i1 noundef zeroext false, i32 noundef 272, i32 noundef 9, i32 noundef %div.i, i32 noundef %src, i32 noundef %dst, i32 noundef %len, i32 noundef 0, i32 noundef 3264)
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %vd = getelementptr inbounds %struct.bcm2835_desc, ptr %call6, i32 0, i32 1
  tail call void @dma_async_tx_descriptor_init(ptr noundef %vd, ptr noundef %chan) #9
  %flags2.i = getelementptr inbounds %struct.bcm2835_desc, ptr %call6, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.bcm2835_desc, ptr %call6, i32 0, i32 1, i32 0, i32 4
  %3 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 4
  %desc_free.i = getelementptr inbounds %struct.bcm2835_desc, ptr %call6, i32 0, i32 1, i32 0, i32 5
  %4 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.bcm2835_desc, ptr %call6, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.bcm2835_desc, ptr %call6, i32 0, i32 1, i32 1, i32 1
  %6 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %residue.i, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %node.i = getelementptr inbounds %struct.bcm2835_desc, ptr %call6, i32 0, i32 1, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %8, ptr noundef %desc_allocated.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end9.vchan_tx_prep.exit_crit_edge

if.end9.vchan_tx_prep.exit_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %node.i, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.bcm2835_desc, ptr %call6, i32 0, i32 1, i32 2, i32 1
  %11 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev3.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %node.i, ptr %8, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %if.end9.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %vd, %vchan_tx_prep.exit ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bcm2835_dma_slave_config(ptr nocapture noundef writeonly %chan, ptr nocapture noundef readonly %cfg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg1 = getelementptr inbounds %struct.bcm2835_chan, ptr %chan, i32 0, i32 1
  %0 = call ptr @memcpy(ptr %cfg1, ptr %cfg, i32 48)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_dma_terminate_all(ptr noundef %chan) #2 align 64 {
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
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %desc = getelementptr inbounds %struct.bcm2835_chan, ptr %chan, i32 0, i32 4
  %3 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %vd = getelementptr inbounds %struct.bcm2835_desc, ptr %4, i32 0, i32 1
  %chan.i = getelementptr inbounds %struct.bcm2835_desc, ptr %4, i32 0, i32 1, i32 0, i32 3
  %5 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chan.i, align 4
  %node.i = getelementptr inbounds %struct.bcm2835_desc, ptr %4, i32 0, i32 1, i32 2
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %6, i32 0, i32 8
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %6, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %8, ptr noundef %desc_terminated.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.list_add_tail.exit.i_crit_edge

if.then.list_add_tail.exit.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %node.i, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %desc_terminated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.bcm2835_desc, ptr %4, i32 0, i32 1, i32 2, i32 1
  %11 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev3.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %node.i, ptr %8, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.then.list_add_tail.exit.i_crit_edge
  %cyclic.i = getelementptr inbounds %struct.virt_dma_chan, ptr %6, i32 0, i32 9
  %13 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cyclic.i, align 4
  %cmp.i = icmp eq ptr %14, %vd
  br i1 %cmp.i, label %if.then.i, label %list_add_tail.exit.i.vchan_terminate_vdesc.exit_crit_edge

list_add_tail.exit.i.vchan_terminate_vdesc.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_terminate_vdesc.exit

if.then.i:                                        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %cyclic.i, align 4
  br label %vchan_terminate_vdesc.exit

vchan_terminate_vdesc.exit:                       ; preds = %if.then.i, %list_add_tail.exit.i.vchan_terminate_vdesc.exit_crit_edge
  %16 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %desc, align 4
  %chan_base1.i = getelementptr inbounds %struct.bcm2835_chan, ptr %chan, i32 0, i32 6
  %17 = ptrtoint ptr %chan_base1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chan_base1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 4
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !111
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %vchan_terminate_vdesc.exit.if.end_crit_edge, label %do.body.i

vchan_terminate_vdesc.exit.if.end_crit_edge:      ; preds = %vchan_terminate_vdesc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body.i:                                        ; preds = %vchan_terminate_vdesc.exit
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #9, !srcloc !118
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #9, !srcloc !111
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !123
  %21 = and i32 %20, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool10.not37.i = icmp eq i32 %21, 0
  br i1 %tobool10.not37.i, label %do.body.i.do.body27.i_crit_edge, label %do.body.i.land.rhs.i_crit_edge

do.body.i.land.rhs.i_crit_edge:                   ; preds = %do.body.i
  br label %land.rhs.i

do.body.i.do.body27.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27.i

land.rhs.i:                                       ; preds = %do.end16.i.land.rhs.i_crit_edge, %do.body.i.land.rhs.i_crit_edge
  %timeout.038.i = phi i32 [ %dec.i, %do.end16.i.land.rhs.i_crit_edge ], [ 10000, %do.body.i.land.rhs.i_crit_edge ]
  %dec.i = add nsw i32 %timeout.038.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool11.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool11.not.i, label %do.end25.critedge.i, label %do.end16.i

do.end16.i:                                       ; preds = %land.rhs.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !124
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !125
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #9, !srcloc !111
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !123
  %23 = and i32 %22, 1073741824
  %tobool10.not.i = icmp eq i32 %23, 0
  br i1 %tobool10.not.i, label %do.end16.i.do.body27.i_crit_edge, label %do.end16.i.land.rhs.i_crit_edge

do.end16.i.land.rhs.i_crit_edge:                  ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

do.end16.i.do.body27.i_crit_edge:                 ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27.i

do.end25.critedge.i:                              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chan, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %25, i32 0, i32 15
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.45) #12
  br label %do.body27.i

do.body27.i:                                      ; preds = %do.end25.critedge.i, %do.end16.i.do.body27.i_crit_edge, %do.body.i.do.body27.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !126
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 128) #9, !srcloc !118
  br label %if.end

if.end:                                           ; preds = %do.body27.i, %vchan_terminate_vdesc.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %28 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %desc_allocated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %29, %desc_allocated.i
  br i1 %cmp.i.not.i.i, label %if.end.list_splice_tail_init.exit.i_crit_edge, label %if.then.i.i

if.end.list_splice_tail_init.exit.i_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %0, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i20 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i20 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev3.i.i.i20, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %29, ptr %31, align 4
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %head, ptr %33, align 4
  store ptr %33, ptr %0, align 4
  %37 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %desc_allocated.i, ptr %desc_allocated.i, align 4
  store ptr %desc_allocated.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_tail_init.exit.i

list_splice_tail_init.exit.i:                     ; preds = %if.then.i.i, %if.end.list_splice_tail_init.exit.i_crit_edge
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %38 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i9.i = icmp eq ptr %39, %desc_submitted.i
  br i1 %cmp.i.not.i9.i, label %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge, label %if.then.i13.i

list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge: ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit14.i

if.then.i13.i:                                    ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %0, align 4
  %prev2.i.i11.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %42 = ptrtoint ptr %prev2.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev2.i.i11.i, align 4
  %prev3.i.i12.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %44 = ptrtoint ptr %prev3.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev3.i.i12.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %39, ptr %41, align 4
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %head, ptr %43, align 4
  store ptr %43, ptr %0, align 4
  %47 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %desc_submitted.i, ptr %desc_submitted.i, align 4
  store ptr %desc_submitted.i, ptr %prev2.i.i11.i, align 4
  br label %list_splice_tail_init.exit14.i

list_splice_tail_init.exit14.i:                   ; preds = %if.then.i13.i, %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %48 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.not.i15.i = icmp eq ptr %49, %desc_issued.i
  br i1 %cmp.i.not.i15.i, label %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge, label %if.then.i19.i

list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit20.i

if.then.i19.i:                                    ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %0, align 4
  %prev2.i.i17.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %52 = ptrtoint ptr %prev2.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev2.i.i17.i, align 4
  %prev3.i.i18.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %54 = ptrtoint ptr %prev3.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev3.i.i18.i, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %49, ptr %51, align 4
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %head, ptr %53, align 4
  store ptr %53, ptr %0, align 4
  %57 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %desc_issued.i, ptr %desc_issued.i, align 4
  store ptr %desc_issued.i, ptr %prev2.i.i17.i, align 4
  br label %list_splice_tail_init.exit20.i

list_splice_tail_init.exit20.i:                   ; preds = %if.then.i19.i, %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7
  %58 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %desc_completed.i, align 4
  %cmp.i.not.i21.i = icmp eq ptr %59, %desc_completed.i
  br i1 %cmp.i.not.i21.i, label %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge, label %if.then.i25.i

list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit26.i

if.then.i25.i:                                    ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %0, align 4
  %prev2.i.i23.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7, i32 1
  %62 = ptrtoint ptr %prev2.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev2.i.i23.i, align 4
  %prev3.i.i24.i = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %64 = ptrtoint ptr %prev3.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %prev3.i.i24.i, align 4
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %59, ptr %61, align 4
  %66 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %head, ptr %63, align 4
  store ptr %63, ptr %0, align 4
  %67 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %desc_completed.i, ptr %desc_completed.i, align 4
  store ptr %desc_completed.i, ptr %prev2.i.i23.i, align 4
  br label %list_splice_tail_init.exit26.i

list_splice_tail_init.exit26.i:                   ; preds = %if.then.i25.i, %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge
  %desc_terminated.i21 = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %68 = ptrtoint ptr %desc_terminated.i21 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile ptr, ptr %desc_terminated.i21, align 4
  %cmp.i.not.i27.i = icmp eq ptr %69, %desc_terminated.i21
  br i1 %cmp.i.not.i27.i, label %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge, label %if.then.i31.i

list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge: ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_get_all_descriptors.exit

if.then.i31.i:                                    ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %0, align 4
  %prev2.i.i29.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  %72 = ptrtoint ptr %prev2.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %prev2.i.i29.i, align 4
  %prev3.i.i30.i = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %74 = ptrtoint ptr %prev3.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %71, ptr %prev3.i.i30.i, align 4
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %69, ptr %71, align 4
  %76 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %head, ptr %73, align 4
  store ptr %73, ptr %0, align 4
  %77 = ptrtoint ptr %desc_terminated.i21 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %desc_terminated.i21, ptr %desc_terminated.i21, align 4
  store ptr %desc_terminated.i21, ptr %prev2.i.i29.i, align 4
  br label %vchan_get_all_descriptors.exit

vchan_get_all_descriptors.exit:                   ; preds = %if.then.i31.i, %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835_dma_synchronize(ptr noundef %chan) #2 align 64 {
entry:
  %head.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i) #9
  %0 = getelementptr inbounds %struct.list_head, ptr %head.i, i32 0, i32 1
  %1 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %head.i, ptr %head.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head.i, ptr %0, align 4
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 1
  call void @tasklet_kill(ptr noundef %task.i) #9
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %3 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %desc_terminated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %4, %desc_terminated.i
  br i1 %cmp.i.not.i.i, label %entry.vchan_synchronize.exit_crit_edge, label %if.then.i.i

entry.vchan_synchronize.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_synchronize.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %0, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %4, ptr %6, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %head.i, ptr %8, align 4
  store ptr %8, ptr %0, align 4
  %12 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %desc_terminated.i, ptr %desc_terminated.i, align 4
  store ptr %desc_terminated.i, ptr %prev2.i.i.i, align 4
  br label %vchan_synchronize.exit

vchan_synchronize.exit:                           ; preds = %if.then.i.i, %entry.vchan_synchronize.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bcm2835_dma_xlate(ptr nocapture noundef readonly %spec, ptr nocapture noundef readonly %ofdma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %of_dma_data = getelementptr inbounds %struct.of_dma, ptr %ofdma, i32 0, i32 5
  %0 = ptrtoint ptr %of_dma_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_dma_data, align 4
  %call = tail call ptr @dma_get_any_slave_channel(ptr noundef %1) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %spec, i32 0, i32 2
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args, align 4
  %dreq = getelementptr inbounds %struct.bcm2835_chan, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %dreq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %dreq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_dma_callback(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_flags = getelementptr inbounds %struct.bcm2835_chan, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %irq_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_flags, align 4
  %and = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body6_crit_edge, label %if.then

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body6

if.then:                                          ; preds = %entry
  %chan_base = getelementptr inbounds %struct.bcm2835_chan, ptr %data, i32 0, i32 6
  %2 = ptrtoint ptr %chan_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan_base, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  %5 = and i32 %4, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.then.do.body6_crit_edge

if.then.do.body6_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body6:                                         ; preds = %if.then.do.body6_crit_edge, %entry.do.body6_crit_edge
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %data, i32 0, i32 3
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !128
  tail call void @arm_heavy_mb() #9
  %chan_base15 = getelementptr inbounds %struct.bcm2835_chan, ptr %data, i32 0, i32 6
  %6 = ptrtoint ptr %chan_base15 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chan_base15, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 83886080) #9, !srcloc !118
  %desc = getelementptr inbounds %struct.bcm2835_chan, ptr %data, i32 0, i32 4
  %8 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc, align 4
  %tobool17.not = icmp eq ptr %9, null
  br i1 %tobool17.not, label %do.body6.if.end34_crit_edge, label %if.then18

do.body6.if.end34_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then18:                                        ; preds = %do.body6
  %cyclic = getelementptr inbounds %struct.bcm2835_desc, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %cyclic to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %cyclic, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool19.not = icmp eq i8 %11, 0
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.then18
  %vd = getelementptr inbounds %struct.bcm2835_desc, ptr %9, i32 0, i32 1
  %chan.i = getelementptr inbounds %struct.bcm2835_desc, ptr %9, i32 0, i32 1, i32 0, i32 3
  %12 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chan.i, align 4
  %cyclic.i = getelementptr inbounds %struct.virt_dma_chan, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %vd, ptr %cyclic.i, align 4
  %state.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %13, i32 0, i32 1, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then20.if.end34_crit_edge

if.then20.if.end34_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then.i.i:                                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %13, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i) #9
  br label %if.end34

if.else:                                          ; preds = %if.then18
  %15 = ptrtoint ptr %chan_base15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chan_base15, align 4
  %add.ptr24 = getelementptr i8, ptr %16, i32 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #9, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool28.not = icmp eq i32 %17, 0
  br i1 %tobool28.not, label %if.then29, label %if.else.if.end34_crit_edge

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then29:                                        ; preds = %if.else
  %18 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %desc, align 4
  %vd31 = getelementptr inbounds %struct.bcm2835_desc, ptr %19, i32 0, i32 1
  %chan.i50 = getelementptr inbounds %struct.bcm2835_desc, ptr %19, i32 0, i32 1, i32 0, i32 3
  %20 = ptrtoint ptr %chan.i50 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chan.i50, align 4
  %22 = ptrtoint ptr %vd31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vd31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp.i.i = icmp slt i32 %23, 1
  br i1 %cmp.i.i, label %do.body2.i.i, label %dma_cookie_complete.exit.i, !prof !130

do.body2.i.i:                                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #9, !srcloc !131
  unreachable

dma_cookie_complete.exit.i:                       ; preds = %if.then29
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %21, i32 0, i32 3
  %24 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %completed_cookie.i.i, align 4
  %25 = ptrtoint ptr %vd31 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %vd31, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcm2835_dma_callback, %do.end.i)) #9
          to label %if.then.i [label %do.end.i], !srcloc !113

if.then.i:                                        ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %21, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %27, i32 0, i32 15
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vchan_cookie_complete.__UNIQUE_ID_ddebug236, ptr noundef %29, ptr noundef nonnull @.str.33, ptr noundef %vd31, i32 noundef %23) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %dma_cookie_complete.exit.i
  %node.i = getelementptr inbounds %struct.bcm2835_desc, ptr %19, i32 0, i32 1, i32 2
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %21, i32 0, i32 7
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %21, i32 0, i32 7, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %31, ptr noundef %desc_completed.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i.list_add_tail.exit.i_crit_edge

do.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %node.i, ptr %prev.i.i, align 4
  %33 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %desc_completed.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.bcm2835_desc, ptr %19, i32 0, i32 1, i32 2, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev3.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %node.i, ptr %31, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.end.i.list_add_tail.exit.i_crit_edge
  %state.i.i51 = getelementptr inbounds %struct.virt_dma_chan, ptr %21, i32 0, i32 1, i32 1
  %call.i.i52 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i51) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i52)
  %tobool.not.i.i53 = icmp eq i32 %call.i.i52, 0
  br i1 %tobool.not.i.i53, label %if.then.i.i55, label %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge

list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_cookie_complete.exit

if.then.i.i55:                                    ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %task.i54 = getelementptr inbounds %struct.virt_dma_chan, ptr %21, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i54) #9
  br label %vchan_cookie_complete.exit

vchan_cookie_complete.exit:                       ; preds = %if.then.i.i55, %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge
  %desc_issued.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %data, i32 0, i32 6
  %36 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %desc_issued.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %37, %desc_issued.i.i
  %add.ptr.i.i = getelementptr i8, ptr %37, i32 -108
  %tobool.not16.i = icmp eq ptr %add.ptr.i.i, null
  %tobool.not.i = or i1 %cmp.not.i.i, %tobool.not16.i
  br i1 %tobool.not.i, label %if.then.i56, label %if.end.i

if.then.i56:                                      ; preds = %vchan_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %desc, align 4
  br label %if.end34

if.end.i:                                         ; preds = %vchan_cookie_complete.exit
  %call.i.i.i57 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %37) #9
  br i1 %call.i.i.i57, label %if.end.i.i.i58, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i58:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %37, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev1.i.i.i.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %42, ptr %40, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i58, %if.end.i.list_del.exit.i_crit_edge
  %45 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 256 to ptr), ptr %37, align 4
  %prev.i.i59 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i59 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i59, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %37, i32 -112
  %47 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %add.ptr.i15.i, ptr %desc, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !117
  tail call void @arm_heavy_mb() #9
  %paddr.i = getelementptr i8, ptr %37, i32 28
  %48 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %paddr.i, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #9
  %51 = ptrtoint ptr %chan_base15 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %chan_base15, align 4
  %add.ptr.i = getelementptr i8, ptr %52, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %50) #9, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @arm_heavy_mb() #9
  %53 = ptrtoint ptr %chan_base15 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %chan_base15, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 16777216) #9, !srcloc !118
  br label %if.end34

if.end34:                                         ; preds = %list_del.exit.i, %if.then.i56, %if.else.if.end34_crit_edge, %if.then.i.i, %if.then20.if.end34_crit_edge, %do.body6.if.end34_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end34 ], [ 0, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vchan_find_desc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @bcm2835_dma_create_cb_chain(ptr noundef %chan, i32 noundef %direction, i1 noundef zeroext %cyclic, i32 noundef %info, i32 noundef %finalextrainfo, i32 noundef %frames, i32 noundef %src, i32 noundef %dst, i32 noundef %buf_len, i32 noundef %period_len, i32 noundef %gfp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %cyclic to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frames)
  %tobool.not = icmp eq i32 %frames, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end8.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  %or.i = or i32 %gfp, 256
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %frames, i32 8) #9
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %2, i32 136) #9
  %retval.0.i = select i1 %1, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef %or.i) #13
  %tobool3.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool3.not, label %if.end8.i.i.cleanup_crit_edge, label %for.body.lr.ph

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end8.i.i
  %3 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %chan, ptr %call9.i.i, align 128
  %dir = getelementptr inbounds %struct.bcm2835_desc, ptr %call9.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %direction, ptr %dir, align 8
  %cyclic8 = getelementptr inbounds %struct.bcm2835_desc, ptr %call9.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %cyclic8 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %cyclic8, align 4
  %cb_pool = getelementptr inbounds %struct.bcm2835_chan, ptr %chan, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_len)
  %tobool19.not = icmp eq i32 %buf_len, 0
  %spec.select = select i1 %cyclic, i32 %finalextrainfo, i32 0
  %is_lite_channel.i.i = getelementptr inbounds %struct.bcm2835_chan, ptr %chan, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %period_len)
  %tobool.not.i = icmp eq i32 %period_len, 0
  %or.i113 = or i32 %spec.select, %info
  %and = and i32 %info, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  %and39 = and i32 %info, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  %size = getelementptr inbounds %struct.bcm2835_desc, ptr %call9.i.i, i32 0, i32 4
  %frames47 = getelementptr inbounds %struct.bcm2835_desc, ptr %call9.i.i, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end44.for.body_crit_edge, %for.body.lr.ph
  %frame.0119 = phi i32 [ 0, %for.body.lr.ph ], [ %inc48, %if.end44.for.body_crit_edge ]
  %len.0118 = phi i32 [ %buf_len, %for.body.lr.ph ], [ %len.1, %if.end44.for.body_crit_edge ]
  %src.addr.0117 = phi i32 [ %src, %for.body.lr.ph ], [ %src.addr.1, %if.end44.for.body_crit_edge ]
  %dst.addr.0116 = phi i32 [ %dst, %for.body.lr.ph ], [ %dst.addr.1, %if.end44.for.body_crit_edge ]
  %total_len.0115 = phi i32 [ 0, %for.body.lr.ph ], [ %total_len.2, %if.end44.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.bcm2835_desc, ptr %call9.i.i, i32 0, i32 6, i32 %frame.0119
  %6 = ptrtoint ptr %cb_pool to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cb_pool, align 4
  %paddr = getelementptr %struct.bcm2835_desc, ptr %call9.i.i, i32 0, i32 6, i32 %frame.0119, i32 1
  %call10 = tail call ptr @dma_pool_alloc(ptr noundef %7, i32 noundef %gfp, ptr noundef %paddr) #9
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call10, ptr %arrayidx, align 8
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %for.body.error_cb_crit_edge, label %if.end14

for.body.error_cb_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_cb

if.end14:                                         ; preds = %for.body
  %9 = ptrtoint ptr %call10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %info, ptr %call10, align 4
  %src17 = getelementptr inbounds %struct.bcm2835_dma_cb, ptr %call10, i32 0, i32 1
  %10 = ptrtoint ptr %src17 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %src.addr.0117, ptr %src17, align 4
  %dst18 = getelementptr inbounds %struct.bcm2835_dma_cb, ptr %call10, i32 0, i32 2
  %11 = ptrtoint ptr %dst18 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %dst.addr.0116, ptr %dst18, align 4
  %stride = getelementptr inbounds %struct.bcm2835_dma_cb, ptr %call10, i32 0, i32 4
  %12 = ptrtoint ptr %stride to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %stride, align 4
  %next = getelementptr inbounds %struct.bcm2835_dma_cb, ptr %call10, i32 0, i32 5
  %13 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %next, align 4
  br i1 %tobool19.not, label %if.end14.if.end22_crit_edge, label %if.then20

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then20:                                        ; preds = %if.end14
  %14 = ptrtoint ptr %is_lite_channel.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %is_lite_channel.i.i, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i.i = icmp eq i8 %15, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 1073741824, i32 65532
  %16 = tail call i32 @llvm.umin.i32(i32 %cond.i.i, i32 %len.0118) #9
  %length.i = getelementptr inbounds %struct.bcm2835_dma_cb, ptr %call10, i32 0, i32 3
  %17 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %length.i, align 4
  br i1 %tobool.not.i, label %if.then20.bcm2835_dma_create_cb_set_length.exit_crit_edge, label %if.end.i

if.then20.bcm2835_dma_create_cb_set_length.exit_crit_edge: ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm2835_dma_create_cb_set_length.exit

if.end.i:                                         ; preds = %if.then20
  %add.i = add i32 %16, %total_len.0115
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %period_len)
  %cmp2.i = icmp ult i32 %add.i, %period_len
  br i1 %cmp2.i, label %if.end.i.bcm2835_dma_create_cb_set_length.exit_crit_edge, label %if.end6.i

if.end.i.bcm2835_dma_create_cb_set_length.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm2835_dma_create_cb_set_length.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = sub i32 %period_len, %total_len.0115
  %18 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub.i, ptr %length.i, align 4
  %19 = ptrtoint ptr %call10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or.i113, ptr %call10, align 4
  br label %bcm2835_dma_create_cb_set_length.exit

bcm2835_dma_create_cb_set_length.exit:            ; preds = %if.end6.i, %if.end.i.bcm2835_dma_create_cb_set_length.exit_crit_edge, %if.then20.bcm2835_dma_create_cb_set_length.exit_crit_edge
  %total_len.1 = phi i32 [ %total_len.0115, %if.then20.bcm2835_dma_create_cb_set_length.exit_crit_edge ], [ 0, %if.end6.i ], [ %add.i, %if.end.i.bcm2835_dma_create_cb_set_length.exit_crit_edge ]
  %20 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length.i, align 4
  %sub = sub i32 %len.0118, %21
  br label %if.end22

if.end22:                                         ; preds = %bcm2835_dma_create_cb_set_length.exit, %if.end14.if.end22_crit_edge
  %total_len.2 = phi i32 [ %total_len.0115, %if.end14.if.end22_crit_edge ], [ %total_len.1, %bcm2835_dma_create_cb_set_length.exit ]
  %len.1 = phi i32 [ %len.0118, %if.end14.if.end22_crit_edge ], [ %sub, %bcm2835_dma_create_cb_set_length.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frame.0119)
  %tobool23.not = icmp eq i32 %frame.0119, 0
  br i1 %tobool23.not, label %if.end22.if.end31_crit_edge, label %if.then24

if.end22.if.end31_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %paddr, align 4
  %sub27 = add i32 %frame.0119, -1
  %arrayidx28 = getelementptr %struct.bcm2835_desc, ptr %call9.i.i, i32 0, i32 6, i32 %sub27
  %24 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx28, align 8
  %next30 = getelementptr inbounds %struct.bcm2835_dma_cb, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %next30 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %23, ptr %next30, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then24, %if.end22.if.end31_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src.addr.0117)
  %tobool32.not = icmp eq i32 %src.addr.0117, 0
  %brmerge = or i1 %tobool32.not, %tobool33.not
  br i1 %brmerge, label %if.end31.if.end36_crit_edge, label %if.then34

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %length35 = getelementptr inbounds %struct.bcm2835_dma_cb, ptr %call10, i32 0, i32 3
  %27 = ptrtoint ptr %length35 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %length35, align 4
  %add = add i32 %28, %src.addr.0117
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end31.if.end36_crit_edge
  %src.addr.1 = phi i32 [ %add, %if.then34 ], [ %src.addr.0117, %if.end31.if.end36_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dst.addr.0116)
  %tobool37.not = icmp eq i32 %dst.addr.0116, 0
  %brmerge121 = or i1 %tobool37.not, %tobool40.not
  br i1 %brmerge121, label %if.end36.if.end44_crit_edge, label %if.then41

if.end36.if.end44_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %length42 = getelementptr inbounds %struct.bcm2835_dma_cb, ptr %call10, i32 0, i32 3
  %29 = ptrtoint ptr %length42 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %length42, align 4
  %add43 = add i32 %30, %dst.addr.0116
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.end36.if.end44_crit_edge
  %dst.addr.1 = phi i32 [ %add43, %if.then41 ], [ %dst.addr.0116, %if.end36.if.end44_crit_edge ]
  %length45 = getelementptr inbounds %struct.bcm2835_dma_cb, ptr %call10, i32 0, i32 3
  %31 = ptrtoint ptr %length45 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %length45, align 4
  %33 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size, align 128
  %add46 = add i32 %34, %32
  store i32 %add46, ptr %size, align 128
  %35 = ptrtoint ptr %frames47 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %frames47, align 4
  %inc = add i32 %36, 1
  store i32 %inc, ptr %frames47, align 4
  %inc48 = add nuw i32 %frame.0119, 1
  %exitcond.not = icmp eq i32 %inc48, %frames
  br i1 %exitcond.not, label %for.end, label %if.end44.for.body_crit_edge

if.end44.for.body_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end44
  %frames50 = getelementptr inbounds %struct.bcm2835_desc, ptr %call9.i.i, i32 0, i32 3
  %37 = ptrtoint ptr %frames50 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %frames50, align 4
  %sub51 = add i32 %38, -1
  %arrayidx52 = getelementptr %struct.bcm2835_desc, ptr %call9.i.i, i32 0, i32 6, i32 %sub51
  %39 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx52, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %or = or i32 %42, %finalextrainfo
  store i32 %or, ptr %40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_len)
  %tobool55.not = icmp eq i32 %buf_len, 0
  br i1 %tobool55.not, label %for.end.cleanup_crit_edge, label %land.lhs.true56

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true56:                                  ; preds = %for.end
  %size57 = getelementptr inbounds %struct.bcm2835_desc, ptr %call9.i.i, i32 0, i32 4
  %43 = ptrtoint ptr %size57 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %size57, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %buf_len)
  %cmp58.not = icmp eq i32 %44, %buf_len
  br i1 %cmp58.not, label %land.lhs.true56.cleanup_crit_edge, label %land.lhs.true56.error_cb_crit_edge

land.lhs.true56.error_cb_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_cb

land.lhs.true56.cleanup_crit_edge:                ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

error_cb:                                         ; preds = %land.lhs.true56.error_cb_crit_edge, %for.body.error_cb_crit_edge
  %frames.i = getelementptr inbounds %struct.bcm2835_desc, ptr %call9.i.i, i32 0, i32 3
  %45 = ptrtoint ptr %frames.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %frames.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp10.not.i = icmp eq i32 %46, 0
  br i1 %cmp10.not.i, label %error_cb.bcm2835_dma_free_cb_chain.exit_crit_edge, label %error_cb.for.body.i_crit_edge

error_cb.for.body.i_crit_edge:                    ; preds = %error_cb
  br label %for.body.i

error_cb.bcm2835_dma_free_cb_chain.exit_crit_edge: ; preds = %error_cb
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm2835_dma_free_cb_chain.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %error_cb.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %error_cb.for.body.i_crit_edge ]
  %47 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call9.i.i, align 128
  %cb_pool.i = getelementptr inbounds %struct.bcm2835_chan, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %cb_pool.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cb_pool.i, align 4
  %arrayidx.i = getelementptr %struct.bcm2835_desc, ptr %call9.i.i, i32 0, i32 6, i32 %i.011.i
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i, align 8
  %paddr.i = getelementptr %struct.bcm2835_desc, ptr %call9.i.i, i32 0, i32 6, i32 %i.011.i, i32 1
  %53 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %paddr.i, align 4
  tail call void @dma_pool_free(ptr noundef %50, ptr noundef %52, i32 noundef %54) #9
  %inc.i = add nuw i32 %i.011.i, 1
  %55 = ptrtoint ptr %frames.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %frames.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %56
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.bcm2835_dma_free_cb_chain.exit_crit_edge

for.body.i.bcm2835_dma_free_cb_chain.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm2835_dma_free_cb_chain.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

bcm2835_dma_free_cb_chain.exit:                   ; preds = %for.body.i.bcm2835_dma_free_cb_chain.exit_crit_edge, %error_cb.bcm2835_dma_free_cb_chain.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %bcm2835_dma_free_cb_chain.exit, %land.lhs.true56.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end8.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %bcm2835_dma_free_cb_chain.exit ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end8.i.i.cleanup_crit_edge ], [ %call9.i.i, %land.lhs.true56.cleanup_crit_edge ], [ %call9.i.i, %for.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835_dma_desc_free(ptr noundef %vd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %vd, i32 -4
  %frames.i = getelementptr i8, ptr %vd, i32 120
  %0 = ptrtoint ptr %frames.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %frames.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp10.not.i = icmp eq i32 %1, 0
  br i1 %cmp10.not.i, label %entry.bcm2835_dma_free_cb_chain.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.bcm2835_dma_free_cb_chain.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm2835_dma_free_cb_chain.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %cb_pool.i = getelementptr inbounds %struct.bcm2835_chan, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %cb_pool.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cb_pool.i, align 4
  %arrayidx.i = getelementptr %struct.bcm2835_desc, ptr %add.ptr, i32 0, i32 6, i32 %i.011.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %paddr.i = getelementptr %struct.bcm2835_desc, ptr %add.ptr, i32 0, i32 6, i32 %i.011.i, i32 1
  %8 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %paddr.i, align 4
  tail call void @dma_pool_free(ptr noundef %5, ptr noundef %7, i32 noundef %9) #9
  %inc.i = add nuw i32 %i.011.i, 1
  %10 = ptrtoint ptr %frames.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %frames.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %11
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.bcm2835_dma_free_cb_chain.exit_crit_edge

for.body.i.bcm2835_dma_free_cb_chain.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm2835_dma_free_cb_chain.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

bcm2835_dma_free_cb_chain.exit:                   ; preds = %for.body.i.bcm2835_dma_free_cb_chain.exit_crit_edge, %entry.bcm2835_dma_free_cb_chain.exit_crit_edge
  tail call void @kfree(ptr noundef %add.ptr) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_get_any_slave_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !33, !34, !36, !38, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !59, !60, !61, !63, !64, !65, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !{ptr @__initcall__kmod_bcm2835_dma__246_1043_bcm2835_dma_driver_init6, !1, !"__initcall__kmod_bcm2835_dma__246_1043_bcm2835_dma_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/dma/bcm2835-dma.c", i32 1043, i32 1}
!2 = !{ptr @__exitcall_bcm2835_dma_driver_exit, !1, !"__exitcall_bcm2835_dma_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias247, !4, !"__UNIQUE_ID_alias247", i1 false, i1 false}
!4 = !{!"../drivers/dma/bcm2835-dma.c", i32 1045, i32 1}
!5 = !{ptr @__UNIQUE_ID_description248, !6, !"__UNIQUE_ID_description248", i1 false, i1 false}
!6 = !{!"../drivers/dma/bcm2835-dma.c", i32 1046, i32 1}
!7 = !{ptr @__UNIQUE_ID_author249, !8, !"__UNIQUE_ID_author249", i1 false, i1 false}
!8 = !{!"../drivers/dma/bcm2835-dma.c", i32 1047, i32 1}
!9 = !{ptr @__UNIQUE_ID_file250, !10, !"__UNIQUE_ID_file250", i1 false, i1 false}
!10 = !{!"../drivers/dma/bcm2835-dma.c", i32 1048, i32 1}
!11 = !{ptr @__UNIQUE_ID_license251, !10, !"__UNIQUE_ID_license251", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/dma/bcm2835-dma.c", i32 1038, i32 11}
!14 = !{ptr @bcm2835_dma_driver, !15, !"bcm2835_dma_driver", i1 false, i1 false}
!15 = !{!"../drivers/dma/bcm2835-dma.c", i32 1034, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/dma/bcm2835-dma.c", i32 895, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @bcm2835_dma_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @bcm2835_dma_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/dma/bcm2835-dma.c", i32 941, i32 3}
!26 = !{ptr @bcm2835_dma_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @bcm2835_dma_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/dma/bcm2835-dma.c", i32 947, i32 4}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/dma/bcm2835-dma.c", i32 949, i32 3}
!32 = !{ptr @bcm2835_dma_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @bcm2835_dma_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/dma/bcm2835-dma.c", i32 963, i32 42}
!36 = distinct !{null, !37, !"__print_once", i1 false, i1 false}
!37 = !{!"../drivers/dma/bcm2835-dma.c", i32 969, i32 3}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @bcm2835_dma_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!41 = !{ptr @bcm2835_dma_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/dma/bcm2835-dma.c", i32 998, i32 2}
!44 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @bcm2835_dma_probe.__UNIQUE_ID_ddebug244, !43, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/dma/bcm2835-dma.c", i32 1004, i32 3}
!48 = !{ptr @bcm2835_dma_probe._entry.20, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @bcm2835_dma_probe._entry_ptr.22, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/dma/bcm2835-dma.c", i32 1010, i32 3}
!52 = !{ptr @bcm2835_dma_probe._entry.23, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @bcm2835_dma_probe._entry_ptr.25, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/dma/bcm2835-dma.c", i32 1015, i32 2}
!56 = !{ptr @bcm2835_dma_probe.__UNIQUE_ID_ddebug245, !55, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/dma/bcm2835-dma.c", i32 505, i32 2}
!59 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @bcm2835_dma_alloc_chan_resources.__UNIQUE_ID_ddebug242, !58, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/dma/bcm2835-dma.c", i32 514, i32 3}
!63 = !{ptr @bcm2835_dma_alloc_chan_resources._entry, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @bcm2835_dma_alloc_chan_resources._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/dma/bcm2835-dma.c", i32 519, i32 21}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/dma/virt-dma.h", i32 101, i32 2}
!69 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug236, !68, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/dma/bcm2835-dma.c", i32 530, i32 2}
!74 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @bcm2835_dma_free_chan_resources.__UNIQUE_ID_ddebug243, !73, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/dma/bcm2835-dma.c", i32 708, i32 3}
!78 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @bcm2835_dma_prep_dma_cyclic._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @bcm2835_dma_prep_dma_cyclic._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/dma/bcm2835-dma.c", i32 713, i32 3}
!83 = !{ptr @bcm2835_dma_prep_dma_cyclic._entry.38, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @bcm2835_dma_prep_dma_cyclic._entry_ptr.40, !82, !"_entry_ptr", i1 false, i1 false}
!85 = distinct !{null, !86, !"__print_once", i1 false, i1 false}
!86 = !{!"../drivers/dma/bcm2835-dma.c", i32 728, i32 3}
!87 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @bcm2835_dma_prep_dma_cyclic._entry.41, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @bcm2835_dma_prep_dma_cyclic._entry_ptr.43, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/dma/bcm2835-dma.c", i32 654, i32 3}
!92 = !{ptr @bcm2835_dma_prep_slave_sg._entry, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @bcm2835_dma_prep_slave_sg._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/dma/bcm2835-dma.c", i32 432, i32 3}
!96 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @bcm2835_dma_abort._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @bcm2835_dma_abort._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @bcm2835_dma_of_match, !100, !"bcm2835_dma_of_match", i1 false, i1 false}
!100 = !{!"../drivers/dma/bcm2835-dma.c", i32 856, i32 34}
!101 = !{i32 1, !"wchar_size", i32 2}
!102 = !{i32 1, !"min_enum_size", i32 4}
!103 = !{i32 8, !"branch-target-enforcement", i32 0}
!104 = !{i32 8, !"sign-return-address", i32 0}
!105 = !{i32 8, !"sign-return-address-all", i32 0}
!106 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!107 = !{i32 7, !"uwtable", i32 1}
!108 = !{i32 7, !"frame-pointer", i32 2}
!109 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!110 = !{!"auto-init"}
!111 = !{i64 6294668}
!112 = !{i64 2154410075}
!113 = !{i64 2148359839, i64 2148359844, i64 2148359857, i64 2148359901, i64 2148359935, i64 2148359956}
!114 = !{i64 2154324612}
!115 = !{i64 2154398596}
!116 = !{i64 2154399095}
!117 = !{i64 2154388388}
!118 = !{i64 6294250}
!119 = !{i64 2154388940}
!120 = !{i8 0, i8 2}
!121 = !{i64 2154384583}
!122 = !{i64 2154384799}
!123 = !{i64 2154385454}
!124 = !{i64 2154385811}
!125 = !{i64 2154385653}
!126 = !{i64 2154387890}
!127 = !{i64 2154389699}
!128 = !{i64 2154390574}
!129 = !{i64 2154391412}
!130 = !{!"branch_weights", i32 1, i32 2000}
!131 = !{i64 2154323112, i64 2154323599, i64 2154323149, i64 2154323205, i64 2154323239, i64 2154323263, i64 2154323304, i64 2154323325, i64 2154323353, i64 2154323387}
