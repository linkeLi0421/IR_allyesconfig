; ModuleID = '/llk/IR_all_yes/drivers/dma/owl-dma.c_pt.bc'
source_filename = "../drivers/dma/owl-dma.c"
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
%struct.owl_dma = type { %struct.dma_device, ptr, ptr, %struct.spinlock, ptr, i32, i32, ptr, i32, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.owl_dma_pchan = type { i32, ptr, ptr }
%struct.owl_dma_vchan = type { %struct.virt_dma_chan, ptr, ptr, %struct.dma_slave_config, i8 }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.owl_dma_txd = type { %struct.virt_dma_desc, %struct.list_head, i8 }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }
%struct.owl_dma_lli = type { [9 x i32], i32, %struct.list_head }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_owl_dma__244_1267_owl_dma_init4 = internal global ptr @owl_dma_init, section ".initcall4.init", align 4
@owl_dma_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @owl_dma_probe, ptr @owl_dma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @owl_dma_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_owl_dma_exit = internal global ptr @owl_dma_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author245 = internal constant [51 x i8] c"owl_dma.author=David Liu <liuwei@actions-semi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author246 = internal constant [72 x i8] c"owl_dma.author=Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description247 = internal constant [53 x i8] c"owl_dma.description=Actions Semi Owl SoCs DMA driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file248 = internal constant [33 x i8] c"owl_dma.file=drivers/dma/owl-dma\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [20 x i8] c"owl_dma.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dma-owl\00", [24 x i8] zeroinitializer }, align 32
@owl_dma_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"actions,s500-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"actions,s700-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"actions,s900-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dma-channels\00", [19 x i8] zeroinitializer }, align 32
@owl_dma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1106, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"can't get dma-channels\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"owl_dma_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/dma/owl-dma.c\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@owl_dma_probe._entry_ptr = internal global ptr @owl_dma_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dma-requests\00", [19 x i8] zeroinitializer }, align 32
@owl_dma_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1112, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"can't get dma-requests\0A\00", [40 x i8] zeroinitializer }, align 32
@owl_dma_probe._entry_ptr.10 = internal global ptr @owl_dma_probe._entry.8, section ".printk_index", align 4
@owl_dma_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 1117, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"dma-channels %d, dma-requests %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@owl_dma_probe._entry_ptr.14 = internal global ptr @owl_dma_probe._entry.11, section ".printk_index", align 4
@owl_dma_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&od->lock\00", [22 x i8] zeroinitializer }, align 32
@owl_dma_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 1153, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unable to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@owl_dma_probe._entry_ptr.18 = internal global ptr @owl_dma_probe._entry.16, section ".printk_index", align 4
@owl_dma_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 1166, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@owl_dma_probe._entry_ptr.21 = internal global ptr @owl_dma_probe._entry.19, section ".printk_index", align 4
@owl_dma_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 1202, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"unable to allocate DMA descriptor pool\0A\00", [56 x i8] zeroinitializer }, align 32
@owl_dma_probe._entry_ptr.24 = internal global ptr @owl_dma_probe._entry.22, section ".printk_index", align 4
@owl_dma_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 1210, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to register DMA engine device\0A\00", [58 x i8] zeroinitializer }, align 32
@owl_dma_probe._entry_ptr.27 = internal global ptr @owl_dma_probe._entry.25, section ".printk_index", align 4
@owl_dma_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.3, ptr @.str.4, i32 1218, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"of_dma_controller_register failed\0A\00", [61 x i8] zeroinitializer }, align 32
@owl_dma_probe._entry_ptr.30 = internal global ptr @owl_dma_probe._entry.28, section ".printk_index", align 4
@owl_dma_phy_alloc_and_start.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.32, ptr @.str.4, ptr @.str.33, i8 0, i8 -45, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"owl_dma\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"owl_dma_phy_alloc_and_start\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"allocated pchan %d\0A\00", [44 x i8] zeroinitializer }, align 32
@owl_dma_start_next_txd.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.34, ptr @.str.4, ptr @.str.35, i8 0, i8 -113, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"owl_dma_start_next_txd\00", [41 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"starting pchan %d\0A\00", [45 x i8] zeroinitializer }, align 32
@owl_dma_prep_memcpy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.4, i32 890, ptr @.str.38, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to allocate lli\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"owl_dma_prep_memcpy\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@owl_dma_prep_memcpy._entry_ptr = internal global ptr @owl_dma_prep_memcpy._entry, section ".printk_index", align 4
@owl_dma_prep_memcpy._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.37, ptr @.str.4, i32 900, ptr @.str.38, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to config lli\0A\00", [42 x i8] zeroinitializer }, align 32
@owl_dma_prep_memcpy._entry_ptr.41 = internal global ptr @owl_dma_prep_memcpy._entry.39, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@owl_dma_prep_slave_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.4, i32 943, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"frame length exceeds max supported length\00", [54 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"owl_dma_prep_slave_sg\00", [42 x i8] zeroinitializer }, align 32
@owl_dma_prep_slave_sg._entry_ptr = internal global ptr @owl_dma_prep_slave_sg._entry, section ".printk_index", align 4
@owl_dma_prep_slave_sg._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.4, i32 949, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to allocate lli\00", [41 x i8] zeroinitializer }, align 32
@owl_dma_prep_slave_sg._entry_ptr.46 = internal global ptr @owl_dma_prep_slave_sg._entry.44, section ".printk_index", align 4
@owl_dma_prep_slave_sg._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.4, i32 964, ptr @.str.38, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to config lli\00", [43 x i8] zeroinitializer }, align 32
@owl_dma_prep_slave_sg._entry_ptr.49 = internal global ptr @owl_dma_prep_slave_sg._entry.47, section ".printk_index", align 4
@owl_prep_dma_cyclic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.50, ptr @.str.4, i32 1005, ptr @.str.38, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"owl_prep_dma_cyclic\00", [44 x i8] zeroinitializer }, align 32
@owl_prep_dma_cyclic._entry_ptr = internal global ptr @owl_prep_dma_cyclic._entry, section ".printk_index", align 4
@owl_prep_dma_cyclic._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.50, ptr @.str.4, i32 1020, ptr @.str.38, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@owl_prep_dma_cyclic._entry_ptr.52 = internal global ptr @owl_prep_dma_cyclic._entry.51, section ".printk_index", align 4
@owl_dma_resume.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.53, ptr @.str.4, ptr @.str.54, i8 0, i8 -67, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"owl_dma_resume\00", [17 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vchan %p: resume\0A\00", [46 x i8] zeroinitializer }, align 32
@owl_dma_terminate_pchan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.4, i32 515, ptr @.str.38, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"terminating pchan %d that still has pending irq\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"owl_dma_terminate_pchan\00", [40 x i8] zeroinitializer }, align 32
@owl_dma_terminate_pchan._entry_ptr = internal global ptr @owl_dma_terminate_pchan._entry, section ".printk_index", align 4
@owl_dma_interrupt.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.57, ptr @.str.4, ptr @.str.58, i8 0, i8 -100, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"owl_dma_interrupt\00", [46 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"global and channel IRQ pending match err\0A\00", [54 x i8] zeroinitializer }, align 32
@owl_dma_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.4, i32 647, ptr @.str.38, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"no vchan attached on pchan %d\0A\00", [33 x i8] zeroinitializer }, align 32
@owl_dma_interrupt._entry_ptr = internal global ptr @owl_dma_interrupt._entry, section ".printk_index", align 4
@vchan_cookie_complete.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.60, ptr @.str.61, ptr @.str.62, i8 0, i8 25, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vchan_cookie_complete\00", [42 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/dma/virt-dma.h\00", [41 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"txd %p[%x]: marked complete\0A\00", [35 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.64 = private unnamed_addr constant [15 x i8] c"owl_dma_driver\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1254, i32 31 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1258, i32 11 }
@___asan_gen_.70 = private unnamed_addr constant [14 x i8] c"owl_dma_match\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1082, i32 34 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1104, i32 33 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1106, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1110, i32 33 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1112, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1116, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1127, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1153, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1166, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1202, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1210, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1218, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 846, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 575, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 890, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 900, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 942, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 949, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 964, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1005, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1020, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 759, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 513, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 625, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.236 = private constant [25 x i8] c"../drivers/dma/owl-dma.c\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 646, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.245 = private unnamed_addr constant [26 x i8] c"../drivers/dma/virt-dma.h\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 101, i32 2 }
@llvm.compiler.used = appending global [86 x ptr] [ptr @__UNIQUE_ID_author245, ptr @__UNIQUE_ID_author246, ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_file248, ptr @__UNIQUE_ID_license249, ptr @__exitcall_owl_dma_exit, ptr @__initcall__kmod_owl_dma__244_1267_owl_dma_init4, ptr @owl_dma_exit, ptr @owl_dma_interrupt._entry, ptr @owl_dma_interrupt._entry_ptr, ptr @owl_dma_prep_memcpy._entry, ptr @owl_dma_prep_memcpy._entry.39, ptr @owl_dma_prep_memcpy._entry_ptr, ptr @owl_dma_prep_memcpy._entry_ptr.41, ptr @owl_dma_prep_slave_sg._entry, ptr @owl_dma_prep_slave_sg._entry.44, ptr @owl_dma_prep_slave_sg._entry.47, ptr @owl_dma_prep_slave_sg._entry_ptr, ptr @owl_dma_prep_slave_sg._entry_ptr.46, ptr @owl_dma_prep_slave_sg._entry_ptr.49, ptr @owl_dma_probe._entry, ptr @owl_dma_probe._entry.11, ptr @owl_dma_probe._entry.16, ptr @owl_dma_probe._entry.19, ptr @owl_dma_probe._entry.22, ptr @owl_dma_probe._entry.25, ptr @owl_dma_probe._entry.28, ptr @owl_dma_probe._entry.8, ptr @owl_dma_probe._entry_ptr, ptr @owl_dma_probe._entry_ptr.10, ptr @owl_dma_probe._entry_ptr.14, ptr @owl_dma_probe._entry_ptr.18, ptr @owl_dma_probe._entry_ptr.21, ptr @owl_dma_probe._entry_ptr.24, ptr @owl_dma_probe._entry_ptr.27, ptr @owl_dma_probe._entry_ptr.30, ptr @owl_dma_terminate_pchan._entry, ptr @owl_dma_terminate_pchan._entry_ptr, ptr @owl_prep_dma_cyclic._entry, ptr @owl_prep_dma_cyclic._entry.51, ptr @owl_prep_dma_cyclic._entry_ptr, ptr @owl_prep_dma_cyclic._entry_ptr.52, ptr @owl_dma_driver, ptr @.str, ptr @owl_dma_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @owl_dma_probe.__key, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_dma_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_dma_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_dma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_dma_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_dma_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_dma_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_dma_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_dma_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_dma_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_dma_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_dma_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_dma_prep_memcpy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_dma_prep_memcpy._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_dma_prep_slave_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_dma_prep_slave_sg._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_dma_prep_slave_sg._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_prep_dma_cyclic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_prep_dma_cyclic._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_dma_terminate_pchan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_dma_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_dma_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @owl_dma_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @owl_dma_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @owl_dma_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_dma_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %nr_channels = alloca i32, align 4
  %nr_requests = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_channels) #9
  %2 = ptrtoint ptr %nr_channels to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %nr_channels, align 4, !annotation !133
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_requests) #9
  %3 = ptrtoint ptr %nr_requests to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %nr_requests, align 4, !annotation !133
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 444, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %base = getelementptr inbounds %struct.owl_dma, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %nr_channels, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool10.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool10.not, label %if.end13, label %do.end

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #12
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %call.i.i246 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef nonnull %nr_requests, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i246)
  %tobool15.not = icmp sgt i32 %call.i.i246, -1
  br i1 %tobool15.not, label %do.end24, label %do.end19

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #12
  br label %cleanup

do.end24:                                         ; preds = %if.end13
  %6 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_channels, align 4
  %8 = ptrtoint ptr %nr_requests to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_requests, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %7, i32 noundef %9) #12
  %call27 = call ptr @of_device_get_match_data(ptr noundef %dev) #9
  %10 = ptrtoint ptr %call27 to i32
  %devid = getelementptr inbounds %struct.owl_dma, ptr %call.i, i32 0, i32 10
  %11 = ptrtoint ptr %devid to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %devid, align 4
  %12 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_channels, align 4
  %nr_pchans = getelementptr inbounds %struct.owl_dma, ptr %call.i, i32 0, i32 6
  %14 = ptrtoint ptr %nr_pchans to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %nr_pchans, align 4
  %15 = ptrtoint ptr %nr_requests to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr_requests, align 4
  %nr_vchans = getelementptr inbounds %struct.owl_dma, ptr %call.i, i32 0, i32 8
  %17 = ptrtoint ptr %nr_vchans to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %nr_vchans, align 4
  %coherent_dma_mask = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 19
  %18 = ptrtoint ptr %coherent_dma_mask to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 4294967295, ptr %coherent_dma_mask, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.owl_dma, ptr %call.i, i32 0, i32 3
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @owl_dma_probe.__key, i16 noundef signext 3) #9
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 6
  call void @_set_bit(i32 noundef 0, ptr noundef %cap_mask) #9
  call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #9
  call void @_set_bit(i32 noundef 12, ptr noundef %cap_mask) #9
  %dev39 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 15
  %20 = ptrtoint ptr %dev39 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev, ptr %dev39, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 29
  %21 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @owl_dma_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_tx_status = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 49
  %22 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @owl_dma_tx_status, ptr %device_tx_status, align 4
  %device_issue_pending = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 50
  %23 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @owl_dma_issue_pending, ptr %device_issue_pending, align 4
  %device_prep_dma_memcpy = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 30
  %24 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @owl_dma_prep_memcpy, ptr %device_prep_dma_memcpy, align 4
  %device_prep_slave_sg = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 39
  %25 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @owl_dma_prep_slave_sg, ptr %device_prep_slave_sg, align 4
  %device_prep_dma_cyclic = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 40
  %26 = ptrtoint ptr %device_prep_dma_cyclic to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @owl_prep_dma_cyclic, ptr %device_prep_dma_cyclic, align 4
  %device_config = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 44
  %27 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @owl_dma_config, ptr %device_config, align 4
  %device_pause = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 45
  %28 = ptrtoint ptr %device_pause to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @owl_dma_pause, ptr %device_pause, align 4
  %device_resume = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 46
  %29 = ptrtoint ptr %device_resume to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @owl_dma_resume, ptr %device_resume, align 4
  %device_terminate_all = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 47
  %30 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @owl_dma_terminate_all, ptr %device_terminate_all, align 4
  %src_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 19
  %31 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 16, ptr %src_addr_widths, align 4
  %dst_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 20
  %32 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 16, ptr %dst_addr_widths, align 4
  %directions = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 21
  %33 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %directions, align 4
  %residue_granularity = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 26
  %34 = ptrtoint ptr %residue_granularity to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %residue_granularity, align 4
  %channels = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3
  %35 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3, i32 1
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %channels, ptr %prev.i, align 4
  %call56 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #9
  %clk = getelementptr inbounds %struct.owl_dma, ptr %call.i, i32 0, i32 2
  %37 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call56, ptr %clk, align 4
  %cmp.i247 = icmp ugt ptr %call56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i247, label %do.end62, label %if.end66

do.end62:                                         ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #12
  %38 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clk, align 4
  %40 = ptrtoint ptr %39 to i32
  br label %cleanup

if.end66:                                         ; preds = %do.end24
  %call67 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  %irq = getelementptr inbounds %struct.owl_dma, ptr %call.i, i32 0, i32 5
  %41 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call67, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %42 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %43, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end66.dev_name.exit_crit_edge

if.end66.dev_name.exit_crit_edge:                 ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end66.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %45, %if.end.i ], [ %43, %if.end66.dev_name.exit_crit_edge ]
  %call.i248 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call67, ptr noundef nonnull @owl_dma_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i248)
  %tobool73.not = icmp eq i32 %call.i248, 0
  br i1 %tobool73.not, label %if.end79, label %do.end77

do.end77:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #12
  br label %cleanup

if.end79:                                         ; preds = %dev_name.exit
  %46 = ptrtoint ptr %nr_pchans to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nr_pchans, align 4
  %48 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %47, i32 12) #9
  %49 = extractvalue { i32, i1 } %48, 1
  br i1 %49, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !134

devm_kcalloc.exit.thread:                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  %pchans259 = getelementptr inbounds %struct.owl_dma, ptr %call.i, i32 0, i32 7
  %50 = ptrtoint ptr %pchans259 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %pchans259, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end79
  %51 = extractvalue { i32, i1 } %48, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %51, i32 noundef 3520) #9
  %pchans = getelementptr inbounds %struct.owl_dma, ptr %call.i, i32 0, i32 7
  %52 = ptrtoint ptr %pchans to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call5.i.i, ptr %pchans, align 4
  %tobool84.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool84.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %53 = ptrtoint ptr %nr_pchans to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nr_pchans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp264.not = icmp eq i32 %54, 0
  br i1 %cmp264.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0265 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %55 = ptrtoint ptr %pchans to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pchans, align 4
  %arrayidx = getelementptr %struct.owl_dma_pchan, ptr %56, i32 %i.0265
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %i.0265, ptr %arrayidx, align 4
  %58 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base, align 4
  %mul = shl i32 %i.0265, 8
  %add = add i32 %mul, 256
  %add.ptr = getelementptr i8, ptr %59, i32 %add
  %base90 = getelementptr %struct.owl_dma_pchan, ptr %56, i32 %i.0265, i32 1
  %60 = ptrtoint ptr %base90 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %add.ptr, ptr %base90, align 4
  %inc = add nuw i32 %i.0265, 1
  %61 = ptrtoint ptr %nr_pchans to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nr_pchans, align 4
  %cmp = icmp ult i32 %inc, %62
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %63 = ptrtoint ptr %nr_vchans to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %nr_vchans, align 4
  %65 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %64, i32 240) #9
  %66 = extractvalue { i32, i1 } %65, 1
  br i1 %66, label %devm_kcalloc.exit252.thread, label %devm_kcalloc.exit252, !prof !134

devm_kcalloc.exit252.thread:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %vchans262 = getelementptr inbounds %struct.owl_dma, ptr %call.i, i32 0, i32 9
  %67 = ptrtoint ptr %vchans262 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %vchans262, align 4
  br label %cleanup

devm_kcalloc.exit252:                             ; preds = %for.end
  %68 = extractvalue { i32, i1 } %65, 0
  %call5.i.i249 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %68, i32 noundef 3520) #9
  %vchans = getelementptr inbounds %struct.owl_dma, ptr %call.i, i32 0, i32 9
  %69 = ptrtoint ptr %vchans to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call5.i.i249, ptr %vchans, align 4
  %tobool95.not = icmp eq ptr %call5.i.i249, null
  br i1 %tobool95.not, label %devm_kcalloc.exit252.cleanup_crit_edge, label %for.cond98.preheader

devm_kcalloc.exit252.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit252
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond98.preheader:                             ; preds = %devm_kcalloc.exit252
  %70 = ptrtoint ptr %nr_vchans to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %nr_vchans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp100266.not = icmp eq i32 %71, 0
  br i1 %cmp100266.not, label %for.cond98.preheader.for.end108_crit_edge, label %for.cond98.preheader.for.body101_crit_edge

for.cond98.preheader.for.body101_crit_edge:       ; preds = %for.cond98.preheader
  br label %for.body101

for.cond98.preheader.for.end108_crit_edge:        ; preds = %for.cond98.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end108

for.body101:                                      ; preds = %for.body101.for.body101_crit_edge, %for.cond98.preheader.for.body101_crit_edge
  %i.1267 = phi i32 [ %inc107, %for.body101.for.body101_crit_edge ], [ 0, %for.cond98.preheader.for.body101_crit_edge ]
  %72 = ptrtoint ptr %vchans to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %vchans, align 4
  %arrayidx103 = getelementptr %struct.owl_dma_vchan, ptr %73, i32 %i.1267
  %desc_free = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx103, i32 0, i32 2
  %74 = ptrtoint ptr %desc_free to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @owl_dma_desc_free, ptr %desc_free, align 4
  call void @vchan_init(ptr noundef %arrayidx103, ptr noundef nonnull %call.i) #9
  %inc107 = add nuw i32 %i.1267, 1
  %75 = ptrtoint ptr %nr_vchans to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %nr_vchans, align 4
  %cmp100 = icmp ult i32 %inc107, %76
  br i1 %cmp100, label %for.body101.for.body101_crit_edge, label %for.body101.for.end108_crit_edge

for.body101.for.end108_crit_edge:                 ; preds = %for.body101
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end108

for.body101.for.body101_crit_edge:                ; preds = %for.body101
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body101

for.end108:                                       ; preds = %for.body101.for.end108_crit_edge, %for.cond98.preheader.for.end108_crit_edge
  %77 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev39, align 4
  %init_name.i253 = getelementptr inbounds %struct.device, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %init_name.i253 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %init_name.i253, align 8
  %tobool.not.i254 = icmp eq ptr %80, null
  br i1 %tobool.not.i254, label %if.end.i255, label %for.end108.dev_name.exit257_crit_edge

for.end108.dev_name.exit257_crit_edge:            ; preds = %for.end108
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit257

if.end.i255:                                      ; preds = %for.end108
  call void @__sanitizer_cov_trace_pc() #11
  %81 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %78, align 4
  br label %dev_name.exit257

dev_name.exit257:                                 ; preds = %if.end.i255, %for.end108.dev_name.exit257_crit_edge
  %retval.0.i256 = phi ptr [ %82, %if.end.i255 ], [ %80, %for.end108.dev_name.exit257_crit_edge ]
  %call114 = call ptr @dma_pool_create(ptr noundef %retval.0.i256, ptr noundef %78, i32 noundef 48, i32 noundef 4, i32 noundef 0) #9
  %lli_pool = getelementptr inbounds %struct.owl_dma, ptr %call.i, i32 0, i32 4
  %83 = ptrtoint ptr %lli_pool to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call114, ptr %lli_pool, align 4
  %tobool116.not = icmp eq ptr %call114, null
  br i1 %tobool116.not, label %do.end120, label %if.end122

do.end120:                                        ; preds = %dev_name.exit257
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #12
  br label %cleanup

if.end122:                                        ; preds = %dev_name.exit257
  %84 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %clk, align 4
  call fastcc void @clk_prepare_enable(ptr noundef %85)
  %call126 = call i32 @dma_async_device_register(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.end133, label %do.end131

do.end131:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #12
  br label %err_pool_free

if.end133:                                        ; preds = %if.end122
  %86 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %of_node, align 8
  %call136 = call i32 @of_dma_controller_register(ptr noundef %87, ptr noundef nonnull @owl_dma_of_xlate, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.end133.cleanup_crit_edge, label %do.end141

if.end133.cleanup_crit_edge:                      ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end141:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #12
  call void @dma_async_device_unregister(ptr noundef nonnull %call.i) #9
  br label %err_pool_free

err_pool_free:                                    ; preds = %do.end141, %do.end131
  %ret.0 = phi i32 [ %call126, %do.end131 ], [ %call136, %do.end141 ]
  %88 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %89) #9
  call void @clk_unprepare(ptr noundef %89) #9
  %90 = ptrtoint ptr %lli_pool to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %lli_pool, align 4
  call void @dma_pool_destroy(ptr noundef %91) #9
  br label %cleanup

cleanup:                                          ; preds = %err_pool_free, %if.end133.cleanup_crit_edge, %do.end120, %devm_kcalloc.exit252.cleanup_crit_edge, %devm_kcalloc.exit252.thread, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %do.end77, %do.end62, %do.end19, %do.end, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then5 ], [ %call.i.i, %do.end ], [ %call.i.i246, %do.end19 ], [ %40, %do.end62 ], [ %call.i248, %do.end77 ], [ %ret.0, %err_pool_free ], [ -12, %do.end120 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit252.cleanup_crit_edge ], [ 0, %if.end133.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %devm_kcalloc.exit252.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_requests) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_channels) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_dma_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  tail call void @of_dma_controller_free(ptr noundef %3) #9
  tail call void @dma_async_device_unregister(ptr noundef %1) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !135
  tail call void @arm_heavy_mb() #9
  %base.i = getelementptr inbounds %struct.owl_dma, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !136
  %dev2 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2, align 4
  %irq = getelementptr inbounds %struct.owl_dma, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  tail call void @devm_free_irq(ptr noundef %7, i32 noundef %9, ptr noundef %1) #9
  %channels.i = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %channels.i, align 4
  %cmp.not28.i = icmp eq ptr %11, %channels.i
  br i1 %cmp.not28.i, label %entry.owl_dma_free.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.owl_dma_free.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %owl_dma_free.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn.in29.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %11, %entry.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %.pn.in29.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i = load ptr, ptr %.pn.in29.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in29.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in29.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i.i, align 4
  %15 = ptrtoint ptr %.pn.in29.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %.pn.in29.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %19 = ptrtoint ptr %.pn.in29.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in29.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in29.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %task.i = getelementptr i8, ptr %.pn.in29.i, i32 32
  tail call void @tasklet_kill(ptr noundef %task.i) #9
  %cmp.not.i = icmp eq ptr %.pn.i, %channels.i
  br i1 %cmp.not.i, label %list_del.exit.i.owl_dma_free.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

list_del.exit.i.owl_dma_free.exit_crit_edge:      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %owl_dma_free.exit

owl_dma_free.exit:                                ; preds = %list_del.exit.i.owl_dma_free.exit_crit_edge, %entry.owl_dma_free.exit_crit_edge
  %clk = getelementptr inbounds %struct.owl_dma, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %22) #9
  tail call void @clk_unprepare(ptr noundef %22) #9
  %lli_pool = getelementptr inbounds %struct.owl_dma, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %lli_pool to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lli_pool, align 4
  tail call void @dma_pool_destroy(ptr noundef %24) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @owl_dma_free_chan_resources(ptr noundef %chan) #0 align 64 {
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
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_dma_tx_status(ptr noundef %chan, i32 noundef %cookie, ptr noundef writeonly %state) #0 align 64 {
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !137
  %tobool.not.i = icmp eq ptr %state, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %state, align 4
  %used2.i = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 1
  %5 = ptrtoint ptr %used2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %1, ptr %used2.i, align 4
  %residue.i = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 2
  %6 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %residue.i, align 4
  %in_flight_bytes.i = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 3
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
  %brmerge56 = or i1 %tobool.not.i, %or.cond16.i.i
  %not.or.cond16.i.i = xor i1 %or.cond16.i.i, true
  br i1 %brmerge56, label %if.else.i.i.cleanup_crit_edge, label %if.else.i.i.do.body2_crit_edge

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
  %lli_list = getelementptr inbounds %struct.owl_dma_txd, ptr %call9, i32 0, i32 1
  %8 = ptrtoint ptr %lli_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn60 = load ptr, ptr %lli_list, align 4
  %cmp15.not61 = icmp eq ptr %.pn60, %lli_list
  br i1 %cmp15.not61, label %if.then11.dma_set_residue.exit_crit_edge, label %if.then11.for.body_crit_edge

if.then11.for.body_crit_edge:                     ; preds = %if.then11
  br label %for.body

if.then11.dma_set_residue.exit_crit_edge:         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_set_residue.exit

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then11.for.body_crit_edge
  %.pn63 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn60, %if.then11.for.body_crit_edge ]
  %bytes.062 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %if.then11.for.body_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %.pn63, i32 -28
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %10, 1048575
  %add = add i32 %and.i, %bytes.062
  %11 = ptrtoint ptr %.pn63 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn63, align 4
  %cmp15.not = icmp eq ptr %.pn, %lli_list
  br i1 %cmp15.not, label %for.body.dma_set_residue.exit_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.dma_set_residue.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_set_residue.exit

if.else:                                          ; preds = %do.body2
  %pchan1.i = getelementptr inbounds %struct.owl_dma_vchan, ptr %chan, i32 0, i32 1
  %12 = ptrtoint ptr %pchan1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pchan1.i, align 4
  %txd2.i = getelementptr inbounds %struct.owl_dma_vchan, ptr %chan, i32 0, i32 2
  %14 = ptrtoint ptr %txd2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %txd2.i, align 4
  %tobool.not.i47 = icmp eq ptr %13, null
  %tobool3.not.i = icmp eq ptr %15, null
  %or.cond.i = select i1 %tobool.not.i47, i1 true, i1 %tobool3.not.i
  br i1 %or.cond.i, label %if.else.dma_set_residue.exit_crit_edge, label %if.end.i48

if.else.dma_set_residue.exit_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_set_residue.exit

if.end.i48:                                       ; preds = %if.else
  %base.i.i = getelementptr inbounds %struct.owl_dma_pchan, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 24
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !138
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !139
  %20 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i.i, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #9, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !139
  %23 = and i32 %22, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool5.not.i = icmp eq i32 %23, 0
  br i1 %tobool5.not.i, label %if.end.i48.dma_set_residue.exit_crit_edge, label %if.then6.i

if.end.i48.dma_set_residue.exit_crit_edge:        ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_set_residue.exit

if.then6.i:                                       ; preds = %if.end.i48
  %24 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i59.i = getelementptr i8, ptr %25, i32 56
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59.i) #9, !srcloc !138
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !139
  %lli_list.i = getelementptr inbounds %struct.owl_dma_txd, ptr %15, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then6.i
  %.pn.in.i = phi ptr [ %lli_list.i, %if.then6.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %28 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %lli_list.i
  br i1 %cmp.not.i, label %for.cond.i.dma_set_residue.exit_crit_edge, label %for.body.i

for.cond.i.dma_set_residue.exit_crit_edge:        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_set_residue.exit

for.body.i:                                       ; preds = %for.cond.i
  %phys.i = getelementptr i8, ptr %.pn.i, i32 -4
  %29 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %phys.i, align 4
  %cmp9.i = icmp eq i32 %30, %27
  br i1 %cmp9.i, label %for.cond16.preheader.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.cond16.preheader.i:                           ; preds = %for.body.i
  %31 = ptrtoint ptr %lli_list.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn5661.i = load ptr, ptr %lli_list.i, align 4
  %cmp19.not62.i = icmp eq ptr %.pn5661.i, %lli_list.i
  br i1 %cmp19.not62.i, label %for.cond16.preheader.i.dma_set_residue.exit_crit_edge, label %for.cond16.preheader.i.for.body21.i_crit_edge

for.cond16.preheader.i.for.body21.i_crit_edge:    ; preds = %for.cond16.preheader.i
  br label %for.body21.i

for.cond16.preheader.i.dma_set_residue.exit_crit_edge: ; preds = %for.cond16.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_set_residue.exit

for.body21.i:                                     ; preds = %for.body21.i.for.body21.i_crit_edge, %for.cond16.preheader.i.for.body21.i_crit_edge
  %.pn5664.i = phi ptr [ %.pn56.i, %for.body21.i.for.body21.i_crit_edge ], [ %.pn5661.i, %for.cond16.preheader.i.for.body21.i_crit_edge ]
  %bytes.063.i = phi i32 [ %add.i, %for.body21.i.for.body21.i_crit_edge ], [ %19, %for.cond16.preheader.i.for.body21.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %.pn5664.i, i32 -28
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %33, 1048575
  %add.i = add i32 %and.i.i, %bytes.063.i
  %34 = ptrtoint ptr %.pn5664.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn56.i = load ptr, ptr %.pn5664.i, align 4
  %cmp19.not.i = icmp eq ptr %.pn56.i, %lli_list.i
  br i1 %cmp19.not.i, label %for.body21.i.dma_set_residue.exit_crit_edge, label %for.body21.i.for.body21.i_crit_edge

for.body21.i.for.body21.i_crit_edge:              ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body21.i

for.body21.i.dma_set_residue.exit_crit_edge:      ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_set_residue.exit

dma_set_residue.exit:                             ; preds = %for.body21.i.dma_set_residue.exit_crit_edge, %for.cond16.preheader.i.dma_set_residue.exit_crit_edge, %for.cond.i.dma_set_residue.exit_crit_edge, %if.end.i48.dma_set_residue.exit_crit_edge, %if.else.dma_set_residue.exit_crit_edge, %for.body.dma_set_residue.exit_crit_edge, %if.then11.dma_set_residue.exit_crit_edge
  %bytes.1 = phi i32 [ 0, %if.else.dma_set_residue.exit_crit_edge ], [ %19, %if.end.i48.dma_set_residue.exit_crit_edge ], [ %19, %for.cond16.preheader.i.dma_set_residue.exit_crit_edge ], [ 0, %if.then11.dma_set_residue.exit_crit_edge ], [ %add.i, %for.body21.i.dma_set_residue.exit_crit_edge ], [ %19, %for.cond.i.dma_set_residue.exit_crit_edge ], [ %add, %for.body.dma_set_residue.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #9
  %residue1.i = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 2
  %35 = ptrtoint ptr %residue1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %bytes.1, ptr %residue1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %dma_set_residue.exit, %if.else.i.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge
  %retval.0.i.i55.shrunk = phi i1 [ true, %dma_set_residue.exit ], [ %not.or.cond.i.i, %if.then.i.i.cleanup_crit_edge ], [ %not.or.cond16.i.i, %if.else.i.i.cleanup_crit_edge ]
  %retval.0.i.i55 = zext i1 %retval.0.i.i55.shrunk to i32
  ret i32 %retval.0.i.i55
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @owl_dma_issue_pending(ptr noundef %chan) #0 align 64 {
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
  br i1 %cmp.i.i.not, label %vchan_issue_pending.exit.if.end9_crit_edge, label %if.then

vchan_issue_pending.exit.if.end9_crit_edge:       ; preds = %vchan_issue_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then:                                          ; preds = %vchan_issue_pending.exit
  %pchan = getelementptr inbounds %struct.owl_dma_vchan, ptr %chan, i32 0, i32 1
  %12 = ptrtoint ptr %pchan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pchan, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.then8, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @owl_dma_phy_alloc_and_start(ptr noundef %chan)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.then.if.end9_crit_edge, %vchan_issue_pending.exit.if.end9_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @owl_dma_prep_memcpy(ptr noundef %chan, i32 noundef %dst, i32 noundef %src, i32 noundef %len, i32 noundef %flags) #0 align 64 {
entry:
  %phys.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2304, i32 noundef 128) #13
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %lli_list = getelementptr inbounds %struct.owl_dma_txd, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %lli_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %lli_list, ptr %lli_list, align 4
  %prev.i = getelementptr inbounds %struct.owl_dma_txd, ptr %call7.i.i, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %lli_list, ptr %prev.i, align 8
  %lli_pool.i = getelementptr inbounds %struct.owl_dma, ptr %1, i32 0, i32 4
  %cyclic = getelementptr inbounds %struct.owl_dma_txd, ptr %call7.i.i, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %owl_dma_add_lli.exit.for.body_crit_edge, %for.body.lr.ph
  %offset.070 = phi i32 [ 0, %for.body.lr.ph ], [ %add23, %owl_dma_add_lli.exit.for.body_crit_edge ]
  %prev.069 = phi ptr [ null, %for.body.lr.ph ], [ %call.i, %owl_dma_add_lli.exit.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys.i) #9
  %5 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %phys.i, align 4, !annotation !133
  %6 = ptrtoint ptr %lli_pool.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lli_pool.i, align 4
  %call.i = call ptr @dma_pool_alloc(ptr noundef %7, i32 noundef 2048, ptr noundef nonnull %phys.i) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i67, label %if.end10

if.end10:                                         ; preds = %for.body
  %node.i = getelementptr inbounds %struct.owl_dma_lli, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %node.i, ptr %node.i, align 4
  %prev.i.i = getelementptr inbounds %struct.owl_dma_lli, ptr %call.i, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %node.i, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %phys.i, align 4
  %phys1.i = getelementptr inbounds %struct.owl_dma_lli, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %phys1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %phys1.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.i) #9
  %sub = sub i32 %len, %offset.070
  %13 = call i32 @llvm.umin.i32(i32 %sub, i32 1048575)
  %add = add i32 %offset.070, %src
  %add12 = add i32 %offset.070, %dst
  %14 = ptrtoint ptr %cyclic to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cyclic, align 4, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool13.not = icmp eq i8 %15, 0
  %16 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chan, align 4
  %arrayidx.i = getelementptr [9 x i32], ptr %call.i, i32 0, i32 6
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 5898560, ptr %arrayidx.i, align 4
  %spec.select76.i = select i1 %tobool13.not, i32 524288, i32 262144
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %call.i, align 4
  %arrayidx32.i = getelementptr [9 x i32], ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add, ptr %arrayidx32.i, align 4
  %arrayidx34.i = getelementptr [9 x i32], ptr %call.i, i32 0, i32 2
  %21 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add12, ptr %arrayidx34.i, align 4
  %arrayidx36.i = getelementptr [9 x i32], ptr %call.i, i32 0, i32 4
  %22 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %arrayidx36.i, align 4
  %arrayidx38.i = getelementptr [9 x i32], ptr %call.i, i32 0, i32 5
  %23 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %arrayidx38.i, align 4
  %devid.i = getelementptr inbounds %struct.owl_dma, ptr %17, i32 0, i32 10
  %24 = ptrtoint ptr %devid.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %devid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp39.i = icmp eq i32 %25, 1
  %or48.i = or i32 %13, 1048576
  %or48.i.sink = select i1 %cmp39.i, i32 %13, i32 %or48.i
  %or44.i = zext i1 %cmp39.i to i32
  %or44.sink.i = or i32 %spec.select76.i, %or44.i
  %26 = getelementptr [9 x i32], ptr %call.i, i32 0, i32 3
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or48.i.sink, ptr %26, align 4
  %arrayidx46.i = getelementptr [9 x i32], ptr %call.i, i32 0, i32 7
  %28 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or44.sink.i, ptr %arrayidx46.i, align 4
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i, align 8
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %30, ptr noundef %lli_list) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end10.if.end.i58_crit_edge

if.end10.if.end.i58_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i58

if.end.i.i.i:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %node.i, ptr %prev.i, align 8
  %32 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %lli_list, ptr %node.i, align 4
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %node.i, ptr %30, align 4
  br label %if.end.i58

if.end.i58:                                       ; preds = %if.end.i.i.i, %if.end10.if.end.i58_crit_edge
  %tobool1.not.i = icmp eq ptr %prev.069, null
  br i1 %tobool1.not.i, label %if.end.i58.owl_dma_add_lli.exit_crit_edge, label %if.then2.i

if.end.i58.owl_dma_add_lli.exit_crit_edge:        ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #11
  br label %owl_dma_add_lli.exit

if.then2.i:                                       ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %phys1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %phys1.i, align 4
  %37 = ptrtoint ptr %prev.069 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %prev.069, align 4
  %arrayidx4.i = getelementptr [9 x i32], ptr %prev.069, i32 0, i32 6
  %38 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx4.i, align 4
  %or.i = or i32 %39, 1073741824
  store i32 %or.i, ptr %arrayidx4.i, align 4
  br label %owl_dma_add_lli.exit

owl_dma_add_lli.exit:                             ; preds = %if.then2.i, %if.end.i58.owl_dma_add_lli.exit_crit_edge
  %add23 = add i32 %13, %offset.070
  %cmp = icmp ult i32 %add23, %len
  br i1 %cmp, label %owl_dma_add_lli.exit.for.body_crit_edge, label %for.end

owl_dma_add_lli.exit.for.body_crit_edge:          ; preds = %owl_dma_add_lli.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %owl_dma_add_lli.exit
  call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call7.i.i, ptr noundef %chan) #9
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 4
  %41 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 8
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 5
  %42 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %residue.i, align 8
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %node.i60 = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i61 = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %45 = ptrtoint ptr %prev.i.i61 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i61, align 4
  %call.i.i.i62 = call zeroext i1 @__list_add_valid(ptr noundef %node.i60, ptr noundef %46, ptr noundef %desc_allocated.i) #9
  br i1 %call.i.i.i62, label %if.end.i.i.i64, label %for.end.vchan_tx_prep.exit_crit_edge

for.end.vchan_tx_prep.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_tx_prep.exit

if.end.i.i.i64:                                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %prev.i.i61 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %node.i60, ptr %prev.i.i61, align 4
  %48 = ptrtoint ptr %node.i60 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %desc_allocated.i, ptr %node.i60, align 4
  %prev3.i.i.i63 = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 2, i32 1
  %49 = ptrtoint ptr %prev3.i.i.i63 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev3.i.i.i63, align 8
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %node.i60, ptr %46, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i64, %for.end.vchan_tx_prep.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #9
  br label %cleanup

if.end.i67:                                       ; preds = %for.body
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.i) #9
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %51 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %52, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %device.i, ptr noundef nonnull @.str.36) #12
  %53 = ptrtoint ptr %lli_list to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %lli_list, align 4
  %cmp.not25.i = icmp eq ptr %54, %lli_list
  br i1 %cmp.not25.i, label %if.end.i67.owl_dma_free_txd.exit_crit_edge, label %if.end.i67.for.body.i_crit_edge

if.end.i67.for.body.i_crit_edge:                  ; preds = %if.end.i67
  br label %for.body.i

if.end.i67.owl_dma_free_txd.exit_crit_edge:       ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #11
  br label %owl_dma_free_txd.exit

for.body.i:                                       ; preds = %owl_dma_free_lli.exit.i.for.body.i_crit_edge, %if.end.i67.for.body.i_crit_edge
  %.pn.in26.i = phi ptr [ %.pn.i, %owl_dma_free_lli.exit.i.for.body.i_crit_edge ], [ %54, %if.end.i67.for.body.i_crit_edge ]
  %lli.0.i = getelementptr i8, ptr %.pn.in26.i, i32 -40
  %55 = ptrtoint ptr %.pn.in26.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pn.i = load ptr, ptr %.pn.in26.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in26.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body.i.owl_dma_free_lli.exit.i_crit_edge

for.body.i.owl_dma_free_lli.exit.i_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %owl_dma_free_lli.exit.i

if.end.i.i.i.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i = getelementptr i8, ptr %.pn.in26.i, i32 4
  %56 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev.i.i.i.i, align 4
  %58 = ptrtoint ptr %.pn.in26.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %.pn.in26.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev1.i.i.i.i.i, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %59, ptr %57, align 4
  br label %owl_dma_free_lli.exit.i

owl_dma_free_lli.exit.i:                          ; preds = %if.end.i.i.i.i, %for.body.i.owl_dma_free_lli.exit.i_crit_edge
  %62 = ptrtoint ptr %.pn.in26.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in26.i, align 4
  %prev.i.i.i = getelementptr i8, ptr %.pn.in26.i, i32 4
  %63 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %64 = ptrtoint ptr %lli_pool.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %lli_pool.i, align 4
  %phys.i.i = getelementptr i8, ptr %.pn.in26.i, i32 -4
  %66 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %phys.i.i, align 4
  call void @dma_pool_free(ptr noundef %65, ptr noundef %lli.0.i, i32 noundef %67) #9
  %cmp.not.i = icmp eq ptr %.pn.i, %lli_list
  br i1 %cmp.not.i, label %owl_dma_free_lli.exit.i.owl_dma_free_txd.exit_crit_edge, label %owl_dma_free_lli.exit.i.for.body.i_crit_edge

owl_dma_free_lli.exit.i.for.body.i_crit_edge:     ; preds = %owl_dma_free_lli.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

owl_dma_free_lli.exit.i.owl_dma_free_txd.exit_crit_edge: ; preds = %owl_dma_free_lli.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %owl_dma_free_txd.exit

owl_dma_free_txd.exit:                            ; preds = %owl_dma_free_lli.exit.i.owl_dma_free_txd.exit_crit_edge, %if.end.i67.owl_dma_free_txd.exit_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %owl_dma_free_txd.exit, %vchan_tx_prep.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %owl_dma_free_txd.exit ], [ %call7.i.i, %vchan_tx_prep.exit ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @owl_dma_prep_slave_sg(ptr noundef %chan, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %dir, i32 noundef %flags, ptr nocapture noundef readnone %context) #0 align 64 {
entry:
  %phys.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2304, i32 noundef 128) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %lli_list = getelementptr inbounds %struct.owl_dma_txd, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %lli_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %lli_list, ptr %lli_list, align 4
  %prev.i = getelementptr inbounds %struct.owl_dma_txd, ptr %call7.i.i, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %lli_list, ptr %prev.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %cmp89.not = icmp eq i32 %sg_len, 0
  br i1 %cmp89.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %lli_pool.i = getelementptr inbounds %struct.owl_dma, ptr %1, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp14 = icmp eq i32 %dir, 1
  %src_addr = getelementptr inbounds %struct.owl_dma_vchan, ptr %chan, i32 0, i32 3, i32 1
  %cyclic = getelementptr inbounds %struct.owl_dma_txd, ptr %call7.i.i, i32 0, i32 2
  %drq10.i = getelementptr inbounds %struct.owl_dma_vchan, ptr %chan, i32 0, i32 4
  %src_addr_width.i = getelementptr inbounds %struct.owl_dma_vchan, ptr %chan, i32 0, i32 3, i32 3
  %dst_addr = getelementptr inbounds %struct.owl_dma_vchan, ptr %chan, i32 0, i32 3, i32 2
  %dst_addr_width.i = getelementptr inbounds %struct.owl_dma_vchan, ptr %chan, i32 0, i32 3, i32 4
  br label %for.body

for.body:                                         ; preds = %owl_dma_add_lli.exit.for.body_crit_edge, %for.body.lr.ph
  %i.092 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %owl_dma_add_lli.exit.for.body_crit_edge ]
  %sg.091 = phi ptr [ %sgl, %for.body.lr.ph ], [ %call27, %owl_dma_add_lli.exit.for.body_crit_edge ]
  %prev.090 = phi ptr [ null, %for.body.lr.ph ], [ %call.i, %owl_dma_add_lli.exit.for.body_crit_edge ]
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.091, i32 0, i32 3
  %5 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dma_address, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.091, i32 0, i32 4
  %7 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %8)
  %cmp3 = icmp ugt i32 %8, 1048575
  br i1 %cmp3, label %do.end, label %if.end5

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.42) #12
  br label %if.end.i76

if.end5:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys.i) #9
  %11 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %phys.i, align 4, !annotation !133
  %12 = ptrtoint ptr %lli_pool.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lli_pool.i, align 4
  %call.i = call ptr @dma_pool_alloc(ptr noundef %13, i32 noundef 2048, ptr noundef nonnull %phys.i) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end11, label %if.end13

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.i) #9
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %15, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.45) #12
  br label %if.end.i76

if.end13:                                         ; preds = %if.end5
  %node.i = getelementptr inbounds %struct.owl_dma_lli, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %node.i, ptr %node.i, align 4
  %prev.i.i = getelementptr inbounds %struct.owl_dma_lli, ptr %call.i, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %node.i, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %phys.i, align 4
  %phys1.i = getelementptr inbounds %struct.owl_dma_lli, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %phys1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %phys1.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.i) #9
  br i1 %cmp14, label %if.end16.thread, label %if.end16

if.end16.thread:                                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %dst_addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dst_addr, align 4
  %23 = ptrtoint ptr %cyclic to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %cyclic, align 4, !range !140
  %25 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chan, align 4
  %27 = ptrtoint ptr %drq10.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %drq10.i, align 4
  %29 = and i8 %28, 63
  %and.i = zext i8 %29 to i32
  %30 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dst_addr_width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp.i = icmp eq i32 %31, 1
  %spec.select.v.i = select i1 %cmp.i, i32 268501504, i32 66048
  %spec.select.i = or i32 %spec.select.v.i, %and.i
  br label %sw.epilog.i

if.end16:                                         ; preds = %if.end13
  %32 = ptrtoint ptr %src_addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %src_addr, align 4
  %34 = ptrtoint ptr %cyclic to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %cyclic, align 4, !range !140
  %36 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chan, align 4
  %38 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values)
  switch i32 %dir, label %do.end23 [
    i32 0, label %if.end16.sw.epilog.i_crit_edge
    i32 2, label %sw.bb9.i
  ]

if.end16.sw.epilog.i_crit_edge:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb9.i:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %drq10.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %drq10.i, align 4
  %41 = and i8 %40, 63
  %and12.i = zext i8 %41 to i32
  %42 = ptrtoint ptr %src_addr_width.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %src_addr_width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp19.i = icmp eq i32 %43, 1
  %spec.select75.v.i = select i1 %cmp19.i, i32 268699648, i32 264192
  %spec.select75.i = or i32 %spec.select75.v.i, %and12.i
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb9.i, %if.end16.sw.epilog.i_crit_edge, %if.end16.thread
  %44 = phi ptr [ %37, %if.end16.sw.epilog.i_crit_edge ], [ %26, %if.end16.thread ], [ %37, %sw.bb9.i ]
  %tobool1786.in = phi i8 [ %35, %if.end16.sw.epilog.i_crit_edge ], [ %24, %if.end16.thread ], [ %35, %sw.bb9.i ]
  %dst.084 = phi i32 [ %6, %if.end16.sw.epilog.i_crit_edge ], [ %22, %if.end16.thread ], [ %6, %sw.bb9.i ]
  %src.082 = phi i32 [ %33, %if.end16.sw.epilog.i_crit_edge ], [ %6, %if.end16.thread ], [ %33, %sw.bb9.i ]
  %mode.0.i = phi i32 [ 330240, %if.end16.sw.epilog.i_crit_edge ], [ %spec.select.i, %if.end16.thread ], [ %spec.select75.i, %sw.bb9.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tobool1786.in)
  %tobool1786.not = icmp eq i8 %tobool1786.in, 0
  %shr.i.i = and i32 %mode.0.i, -268435456
  %45 = shl i32 %mode.0.i, 4
  %shl3.i.i = and i32 %45, 267386880
  %46 = shl i32 %mode.0.i, 8
  %shl6.i.i = and i32 %46, 983040
  %and9.i.i = shl i32 %mode.0.i, 10
  %shl10.i.i = and i32 %and9.i.i, 64512
  %or.i.i = or i32 %shr.i.i, %shl3.i.i
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %or11.i.i = or i32 %or7.i.i, %shl10.i.i
  %or19.i.i = or i32 %or11.i.i, 320
  %arrayidx.i = getelementptr [9 x i32], ptr %call.i, i32 0, i32 6
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or19.i.i, ptr %arrayidx.i, align 4
  %spec.select76.i = select i1 %tobool1786.not, i32 524288, i32 262144
  %48 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %call.i, align 4
  %arrayidx32.i = getelementptr [9 x i32], ptr %call.i, i32 0, i32 1
  %49 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %src.082, ptr %arrayidx32.i, align 4
  %arrayidx34.i = getelementptr [9 x i32], ptr %call.i, i32 0, i32 2
  %50 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %dst.084, ptr %arrayidx34.i, align 4
  %arrayidx36.i = getelementptr [9 x i32], ptr %call.i, i32 0, i32 4
  %51 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %arrayidx36.i, align 4
  %arrayidx38.i = getelementptr [9 x i32], ptr %call.i, i32 0, i32 5
  %52 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %arrayidx38.i, align 4
  %devid.i = getelementptr inbounds %struct.owl_dma, ptr %44, i32 0, i32 10
  %53 = ptrtoint ptr %devid.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %devid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp39.i = icmp eq i32 %54, 1
  %or48.i = or i32 %8, 1048576
  %or48.i.sink = select i1 %cmp39.i, i32 %8, i32 %or48.i
  %or44.i = zext i1 %cmp39.i to i32
  %or44.sink.i = or i32 %spec.select76.i, %or44.i
  %55 = getelementptr [9 x i32], ptr %call.i, i32 0, i32 3
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or48.i.sink, ptr %55, align 4
  %arrayidx46.i = getelementptr [9 x i32], ptr %call.i, i32 0, i32 7
  %57 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %or44.sink.i, ptr %arrayidx46.i, align 4
  %58 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i, align 8
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %59, ptr noundef %lli_list) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %sw.epilog.i.if.end.i67_crit_edge

sw.epilog.i.if.end.i67_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i67

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i63 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %60 = ptrtoint ptr %dev.i63 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i63, align 4
  %device.i64 = getelementptr inbounds %struct.dma_chan_dev, ptr %61, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %device.i64, ptr noundef nonnull @.str.48) #12
  br label %if.end.i76

if.end.i.i.i:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %node.i, ptr %prev.i, align 8
  %63 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %lli_list, ptr %node.i, align 4
  %64 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %59, ptr %prev.i.i, align 4
  %65 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %node.i, ptr %59, align 4
  br label %if.end.i67

if.end.i67:                                       ; preds = %if.end.i.i.i, %sw.epilog.i.if.end.i67_crit_edge
  %tobool1.not.i = icmp eq ptr %prev.090, null
  br i1 %tobool1.not.i, label %if.end.i67.owl_dma_add_lli.exit_crit_edge, label %if.then2.i

if.end.i67.owl_dma_add_lli.exit_crit_edge:        ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #11
  br label %owl_dma_add_lli.exit

if.then2.i:                                       ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %phys1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %phys1.i, align 4
  %68 = ptrtoint ptr %prev.090 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %prev.090, align 4
  %arrayidx4.i = getelementptr [9 x i32], ptr %prev.090, i32 0, i32 6
  %69 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx4.i, align 4
  %or.i = or i32 %70, 1073741824
  store i32 %or.i, ptr %arrayidx4.i, align 4
  br label %owl_dma_add_lli.exit

owl_dma_add_lli.exit:                             ; preds = %if.then2.i, %if.end.i67.owl_dma_add_lli.exit_crit_edge
  %inc = add nuw i32 %i.092, 1
  %call27 = call ptr @sg_next(ptr noundef %sg.091) #9
  %exitcond.not = icmp eq i32 %inc, %sg_len
  br i1 %exitcond.not, label %owl_dma_add_lli.exit.for.end_crit_edge, label %owl_dma_add_lli.exit.for.body_crit_edge

owl_dma_add_lli.exit.for.body_crit_edge:          ; preds = %owl_dma_add_lli.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

owl_dma_add_lli.exit.for.end_crit_edge:           ; preds = %owl_dma_add_lli.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %owl_dma_add_lli.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call7.i.i, ptr noundef %chan) #9
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 4
  %72 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 8
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 5
  %73 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 1
  %74 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 1, i32 1
  %75 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %residue.i, align 8
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %node.i69 = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i70 = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %76 = ptrtoint ptr %prev.i.i70 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %prev.i.i70, align 4
  %call.i.i.i71 = call zeroext i1 @__list_add_valid(ptr noundef %node.i69, ptr noundef %77, ptr noundef %desc_allocated.i) #9
  br i1 %call.i.i.i71, label %if.end.i.i.i73, label %for.end.vchan_tx_prep.exit_crit_edge

for.end.vchan_tx_prep.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_tx_prep.exit

if.end.i.i.i73:                                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %prev.i.i70 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %node.i69, ptr %prev.i.i70, align 4
  %79 = ptrtoint ptr %node.i69 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %desc_allocated.i, ptr %node.i69, align 4
  %prev3.i.i.i72 = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 2, i32 1
  %80 = ptrtoint ptr %prev3.i.i.i72 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %77, ptr %prev3.i.i.i72, align 8
  %81 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %node.i69, ptr %77, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i73, %for.end.vchan_tx_prep.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #9
  br label %cleanup

if.end.i76:                                       ; preds = %do.end23, %do.end11, %do.end
  %82 = ptrtoint ptr %lli_list to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %lli_list, align 4
  %cmp.not25.i = icmp eq ptr %83, %lli_list
  br i1 %cmp.not25.i, label %if.end.i76.owl_dma_free_txd.exit_crit_edge, label %if.end.i76.for.body.i_crit_edge

if.end.i76.for.body.i_crit_edge:                  ; preds = %if.end.i76
  br label %for.body.i

if.end.i76.owl_dma_free_txd.exit_crit_edge:       ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #11
  br label %owl_dma_free_txd.exit

for.body.i:                                       ; preds = %owl_dma_free_lli.exit.i.for.body.i_crit_edge, %if.end.i76.for.body.i_crit_edge
  %.pn.in26.i = phi ptr [ %.pn.i, %owl_dma_free_lli.exit.i.for.body.i_crit_edge ], [ %83, %if.end.i76.for.body.i_crit_edge ]
  %lli.0.i = getelementptr i8, ptr %.pn.in26.i, i32 -40
  %84 = ptrtoint ptr %.pn.in26.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %.pn.i = load ptr, ptr %.pn.in26.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in26.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body.i.owl_dma_free_lli.exit.i_crit_edge

for.body.i.owl_dma_free_lli.exit.i_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %owl_dma_free_lli.exit.i

if.end.i.i.i.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i = getelementptr i8, ptr %.pn.in26.i, i32 4
  %85 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %prev.i.i.i.i, align 4
  %87 = ptrtoint ptr %.pn.in26.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %.pn.in26.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %86, ptr %prev1.i.i.i.i.i, align 4
  %90 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %88, ptr %86, align 4
  br label %owl_dma_free_lli.exit.i

owl_dma_free_lli.exit.i:                          ; preds = %if.end.i.i.i.i, %for.body.i.owl_dma_free_lli.exit.i_crit_edge
  %91 = ptrtoint ptr %.pn.in26.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in26.i, align 4
  %prev.i.i.i = getelementptr i8, ptr %.pn.in26.i, i32 4
  %92 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %93 = ptrtoint ptr %lli_pool.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %lli_pool.i, align 4
  %phys.i.i = getelementptr i8, ptr %.pn.in26.i, i32 -4
  %95 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %phys.i.i, align 4
  call void @dma_pool_free(ptr noundef %94, ptr noundef %lli.0.i, i32 noundef %96) #9
  %cmp.not.i = icmp eq ptr %.pn.i, %lli_list
  br i1 %cmp.not.i, label %owl_dma_free_lli.exit.i.owl_dma_free_txd.exit_crit_edge, label %owl_dma_free_lli.exit.i.for.body.i_crit_edge

owl_dma_free_lli.exit.i.for.body.i_crit_edge:     ; preds = %owl_dma_free_lli.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

owl_dma_free_lli.exit.i.owl_dma_free_txd.exit_crit_edge: ; preds = %owl_dma_free_lli.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %owl_dma_free_txd.exit

owl_dma_free_txd.exit:                            ; preds = %owl_dma_free_lli.exit.i.owl_dma_free_txd.exit_crit_edge, %if.end.i76.owl_dma_free_txd.exit_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %owl_dma_free_txd.exit, %vchan_tx_prep.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %owl_dma_free_txd.exit ], [ %call7.i.i, %vchan_tx_prep.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @owl_prep_dma_cyclic(ptr noundef %chan, i32 noundef %buf_addr, i32 noundef %buf_len, i32 noundef %period_len, i32 noundef %dir, i32 noundef %flags) #0 align 64 {
entry:
  %phys.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %div = udiv i32 %buf_len, %period_len
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2304, i32 noundef 128) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %lli_list = getelementptr inbounds %struct.owl_dma_txd, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %lli_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %lli_list, ptr %lli_list, align 4
  %prev.i = getelementptr inbounds %struct.owl_dma_txd, ptr %call7.i.i, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %lli_list, ptr %prev.i, align 8
  %cyclic = getelementptr inbounds %struct.owl_dma_txd, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %cyclic to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %cyclic, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %period_len, i32 %buf_len)
  %cmp124.not = icmp ugt i32 %period_len, %buf_len
  br i1 %cmp124.not, label %if.end.owl_dma_add_lli.exit84_crit_edge, label %for.body.lr.ph

if.end.owl_dma_add_lli.exit84_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %owl_dma_add_lli.exit84

for.body.lr.ph:                                   ; preds = %if.end
  %lli_pool.i = getelementptr inbounds %struct.owl_dma, ptr %1, i32 0, i32 4
  %src_addr = getelementptr inbounds %struct.owl_dma_vchan, ptr %chan, i32 0, i32 3, i32 1
  %drq10.i = getelementptr inbounds %struct.owl_dma_vchan, ptr %chan, i32 0, i32 4
  %src_addr_width.i = getelementptr inbounds %struct.owl_dma_vchan, ptr %chan, i32 0, i32 3, i32 3
  %dst_addr = getelementptr inbounds %struct.owl_dma_vchan, ptr %chan, i32 0, i32 3, i32 2
  %dst_addr_width.i = getelementptr inbounds %struct.owl_dma_vchan, ptr %chan, i32 0, i32 3, i32 4
  %or48.i = or i32 %period_len, 1048576
  %umax = call i32 @llvm.umax.i32(i32 %div, i32 1)
  br label %for.body

for.body:                                         ; preds = %owl_dma_add_lli.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0129 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %owl_dma_add_lli.exit.for.body_crit_edge ]
  %dst.0128 = phi i32 [ 0, %for.body.lr.ph ], [ %dst.1100, %owl_dma_add_lli.exit.for.body_crit_edge ]
  %src.0127 = phi i32 [ 0, %for.body.lr.ph ], [ %src.197, %owl_dma_add_lli.exit.for.body_crit_edge ]
  %first.0126 = phi ptr [ null, %for.body.lr.ph ], [ %spec.select, %owl_dma_add_lli.exit.for.body_crit_edge ]
  %prev.0125 = phi ptr [ null, %for.body.lr.ph ], [ %call.i, %owl_dma_add_lli.exit.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys.i) #9
  %6 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %phys.i, align 4, !annotation !133
  %7 = ptrtoint ptr %lli_pool.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lli_pool.i, align 4
  %call.i = call ptr @dma_pool_alloc(ptr noundef %8, i32 noundef 2048, ptr noundef nonnull %phys.i) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end, label %if.end7

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.i) #9
  br label %if.end.i92

if.end7:                                          ; preds = %for.body
  %node.i = getelementptr inbounds %struct.owl_dma_lli, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %node.i, ptr %node.i, align 4
  %prev.i.i = getelementptr inbounds %struct.owl_dma_lli, ptr %call.i, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %node.i, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %phys.i, align 4
  %phys1.i = getelementptr inbounds %struct.owl_dma_lli, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %phys1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %phys1.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.i) #9
  %14 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %dir, label %if.end7.if.end.i92_crit_edge [
    i32 1, label %if.end15.thread
    i32 2, label %if.end15.thread104
    i32 0, label %if.end7.sw.epilog.i_crit_edge
  ]

if.end7.sw.epilog.i_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.end7.if.end.i92_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i92

if.end15.thread:                                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %mul = mul i32 %i.0129, %period_len
  %add = add i32 %mul, %buf_addr
  %15 = ptrtoint ptr %dst_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dst_addr, align 4
  %17 = ptrtoint ptr %drq10.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %drq10.i, align 4
  %19 = and i8 %18, 63
  %and.i = zext i8 %19 to i32
  %20 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dst_addr_width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp.i = icmp eq i32 %21, 1
  %spec.select.v.i = select i1 %cmp.i, i32 268501504, i32 66048
  %spec.select.i = or i32 %spec.select.v.i, %and.i
  br label %sw.epilog.i

if.end15.thread104:                               ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %src_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %src_addr, align 4
  %mul12 = mul i32 %i.0129, %period_len
  %add13 = add i32 %mul12, %buf_addr
  %24 = ptrtoint ptr %drq10.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %drq10.i, align 4
  %26 = and i8 %25, 63
  %and12.i = zext i8 %26 to i32
  %27 = ptrtoint ptr %src_addr_width.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %src_addr_width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp19.i = icmp eq i32 %28, 1
  %spec.select75.v.i = select i1 %cmp19.i, i32 268699648, i32 264192
  %spec.select75.i = or i32 %spec.select75.v.i, %and12.i
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end15.thread104, %if.end15.thread, %if.end7.sw.epilog.i_crit_edge
  %dst.1100 = phi i32 [ %16, %if.end15.thread ], [ %add13, %if.end15.thread104 ], [ %dst.0128, %if.end7.sw.epilog.i_crit_edge ]
  %src.197 = phi i32 [ %add, %if.end15.thread ], [ %23, %if.end15.thread104 ], [ %src.0127, %if.end7.sw.epilog.i_crit_edge ]
  %mode.0.i = phi i32 [ %spec.select.i, %if.end15.thread ], [ %spec.select75.i, %if.end15.thread104 ], [ 330240, %if.end7.sw.epilog.i_crit_edge ]
  %29 = ptrtoint ptr %cyclic to i32
  call void @__asan_load1_noabort(i32 %29)
  %tobool17103.in = load i8, ptr %cyclic, align 4, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tobool17103.in)
  %tobool17103.not = icmp eq i8 %tobool17103.in, 0
  %30 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chan, align 4
  %shr.i.i = and i32 %mode.0.i, -268435456
  %32 = shl i32 %mode.0.i, 4
  %shl3.i.i = and i32 %32, 267386880
  %33 = shl i32 %mode.0.i, 8
  %shl6.i.i = and i32 %33, 983040
  %and9.i.i = shl i32 %mode.0.i, 10
  %shl10.i.i = and i32 %and9.i.i, 64512
  %or.i.i = or i32 %shr.i.i, %shl3.i.i
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %or11.i.i = or i32 %or7.i.i, %shl10.i.i
  %or19.i.i = or i32 %or11.i.i, 320
  %arrayidx.i = getelementptr [9 x i32], ptr %call.i, i32 0, i32 6
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or19.i.i, ptr %arrayidx.i, align 4
  %spec.select76.i = select i1 %tobool17103.not, i32 524288, i32 262144
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %call.i, align 4
  %arrayidx32.i = getelementptr [9 x i32], ptr %call.i, i32 0, i32 1
  %36 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %src.197, ptr %arrayidx32.i, align 4
  %arrayidx34.i = getelementptr [9 x i32], ptr %call.i, i32 0, i32 2
  %37 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %dst.1100, ptr %arrayidx34.i, align 4
  %arrayidx36.i = getelementptr [9 x i32], ptr %call.i, i32 0, i32 4
  %38 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %arrayidx36.i, align 4
  %arrayidx38.i = getelementptr [9 x i32], ptr %call.i, i32 0, i32 5
  %39 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %arrayidx38.i, align 4
  %devid.i = getelementptr inbounds %struct.owl_dma, ptr %31, i32 0, i32 10
  %40 = ptrtoint ptr %devid.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %devid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp39.i = icmp eq i32 %41, 1
  %spec.select139 = select i1 %cmp39.i, i32 %period_len, i32 %or48.i
  %or44.i = zext i1 %cmp39.i to i32
  %spec.select140 = or i32 %spec.select76.i, %or44.i
  %42 = getelementptr [9 x i32], ptr %call.i, i32 0, i32 3
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %spec.select139, ptr %42, align 4
  %arrayidx46.i = getelementptr [9 x i32], ptr %call.i, i32 0, i32 7
  %44 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %spec.select140, ptr %arrayidx46.i, align 4
  %tobool26.not = icmp eq ptr %first.0126, null
  %spec.select = select i1 %tobool26.not, ptr %call.i, ptr %first.0126
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i, align 8
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %46, ptr noundef %lli_list) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %sw.epilog.i.if.end.i76_crit_edge

sw.epilog.i.if.end.i76_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i76

if.end.i.i.i:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %node.i, ptr %prev.i, align 8
  %48 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %lli_list, ptr %node.i, align 4
  %49 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %node.i, ptr %46, align 4
  br label %if.end.i76

if.end.i76:                                       ; preds = %if.end.i.i.i, %sw.epilog.i.if.end.i76_crit_edge
  %tobool1.not.i = icmp eq ptr %prev.0125, null
  br i1 %tobool1.not.i, label %if.end.i76.owl_dma_add_lli.exit_crit_edge, label %if.then2.i

if.end.i76.owl_dma_add_lli.exit_crit_edge:        ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #11
  br label %owl_dma_add_lli.exit

if.then2.i:                                       ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %phys1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %phys1.i, align 4
  %53 = ptrtoint ptr %prev.0125 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %prev.0125, align 4
  %arrayidx4.i = getelementptr [9 x i32], ptr %prev.0125, i32 0, i32 6
  %54 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx4.i, align 4
  %or.i = or i32 %55, 1073741824
  store i32 %or.i, ptr %arrayidx4.i, align 4
  br label %owl_dma_add_lli.exit

owl_dma_add_lli.exit:                             ; preds = %if.then2.i, %if.end.i76.owl_dma_add_lli.exit_crit_edge
  %inc = add nuw i32 %i.0129, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %if.then2.i83, label %owl_dma_add_lli.exit.for.body_crit_edge

owl_dma_add_lli.exit.for.body_crit_edge:          ; preds = %owl_dma_add_lli.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.then2.i83:                                     ; preds = %owl_dma_add_lli.exit
  call void @__sanitizer_cov_trace_pc() #11
  %phys.i80 = getelementptr inbounds %struct.owl_dma_lli, ptr %spec.select, i32 0, i32 1
  %56 = ptrtoint ptr %phys.i80 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %phys.i80, align 4
  %58 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %call.i, align 4
  %arrayidx4.i81 = getelementptr [9 x i32], ptr %call.i, i32 0, i32 6
  %59 = ptrtoint ptr %arrayidx4.i81 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx4.i81, align 4
  %or.i82 = or i32 %60, 1073741824
  store i32 %or.i82, ptr %arrayidx4.i81, align 4
  br label %owl_dma_add_lli.exit84

owl_dma_add_lli.exit84:                           ; preds = %if.then2.i83, %if.end.owl_dma_add_lli.exit84_crit_edge
  call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call7.i.i, ptr noundef %chan) #9
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 1
  %61 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 4
  %62 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 8
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 5
  %63 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 1
  %64 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 1, i32 1
  %65 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %residue.i, align 8
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %node.i85 = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i86 = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %66 = ptrtoint ptr %prev.i.i86 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prev.i.i86, align 4
  %call.i.i.i87 = call zeroext i1 @__list_add_valid(ptr noundef %node.i85, ptr noundef %67, ptr noundef %desc_allocated.i) #9
  br i1 %call.i.i.i87, label %if.end.i.i.i89, label %owl_dma_add_lli.exit84.vchan_tx_prep.exit_crit_edge

owl_dma_add_lli.exit84.vchan_tx_prep.exit_crit_edge: ; preds = %owl_dma_add_lli.exit84
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_tx_prep.exit

if.end.i.i.i89:                                   ; preds = %owl_dma_add_lli.exit84
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %prev.i.i86 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %node.i85, ptr %prev.i.i86, align 4
  %69 = ptrtoint ptr %node.i85 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %desc_allocated.i, ptr %node.i85, align 4
  %prev3.i.i.i88 = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 2, i32 1
  %70 = ptrtoint ptr %prev3.i.i.i88 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %67, ptr %prev3.i.i.i88, align 8
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %node.i85, ptr %67, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i89, %owl_dma_add_lli.exit84.vchan_tx_prep.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #9
  br label %cleanup

if.end.i92:                                       ; preds = %if.end7.if.end.i92_crit_edge, %do.end
  %.str.45.sink = phi ptr [ @.str.45, %do.end ], [ @.str.48, %if.end7.if.end.i92_crit_edge ]
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %72 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %73, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %device.i, ptr noundef nonnull %.str.45.sink) #12
  %74 = ptrtoint ptr %lli_list to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %lli_list, align 4
  %cmp.not25.i = icmp eq ptr %75, %lli_list
  br i1 %cmp.not25.i, label %if.end.i92.owl_dma_free_txd.exit_crit_edge, label %if.end.i92.for.body.i_crit_edge

if.end.i92.for.body.i_crit_edge:                  ; preds = %if.end.i92
  br label %for.body.i

if.end.i92.owl_dma_free_txd.exit_crit_edge:       ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #11
  br label %owl_dma_free_txd.exit

for.body.i:                                       ; preds = %owl_dma_free_lli.exit.i.for.body.i_crit_edge, %if.end.i92.for.body.i_crit_edge
  %.pn.in26.i = phi ptr [ %.pn.i, %owl_dma_free_lli.exit.i.for.body.i_crit_edge ], [ %75, %if.end.i92.for.body.i_crit_edge ]
  %lli.0.i = getelementptr i8, ptr %.pn.in26.i, i32 -40
  %76 = ptrtoint ptr %.pn.in26.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %.pn.i = load ptr, ptr %.pn.in26.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in26.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body.i.owl_dma_free_lli.exit.i_crit_edge

for.body.i.owl_dma_free_lli.exit.i_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %owl_dma_free_lli.exit.i

if.end.i.i.i.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i = getelementptr i8, ptr %.pn.in26.i, i32 4
  %77 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %prev.i.i.i.i, align 4
  %79 = ptrtoint ptr %.pn.in26.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %.pn.in26.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %78, ptr %prev1.i.i.i.i.i, align 4
  %82 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %80, ptr %78, align 4
  br label %owl_dma_free_lli.exit.i

owl_dma_free_lli.exit.i:                          ; preds = %if.end.i.i.i.i, %for.body.i.owl_dma_free_lli.exit.i_crit_edge
  %83 = ptrtoint ptr %.pn.in26.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in26.i, align 4
  %prev.i.i.i = getelementptr i8, ptr %.pn.in26.i, i32 4
  %84 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %85 = ptrtoint ptr %lli_pool.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %lli_pool.i, align 4
  %phys.i.i = getelementptr i8, ptr %.pn.in26.i, i32 -4
  %87 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %phys.i.i, align 4
  call void @dma_pool_free(ptr noundef %86, ptr noundef %lli.0.i, i32 noundef %88) #9
  %cmp.not.i = icmp eq ptr %.pn.i, %lli_list
  br i1 %cmp.not.i, label %owl_dma_free_lli.exit.i.owl_dma_free_txd.exit_crit_edge, label %owl_dma_free_lli.exit.i.for.body.i_crit_edge

owl_dma_free_lli.exit.i.for.body.i_crit_edge:     ; preds = %owl_dma_free_lli.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

owl_dma_free_lli.exit.i.owl_dma_free_txd.exit_crit_edge: ; preds = %owl_dma_free_lli.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %owl_dma_free_txd.exit

owl_dma_free_txd.exit:                            ; preds = %owl_dma_free_lli.exit.i.owl_dma_free_txd.exit_crit_edge, %if.end.i92.owl_dma_free_txd.exit_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %owl_dma_free_txd.exit, %vchan_tx_prep.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %owl_dma_free_txd.exit ], [ %call7.i.i, %vchan_tx_prep.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @owl_dma_config(ptr nocapture noundef writeonly %chan, ptr nocapture noundef readonly %config) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 3
  %0 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src_addr_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp = icmp eq i32 %1, 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 4
  %2 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dst_addr_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp1 = icmp eq i32 %3, 8
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %cfg = getelementptr inbounds %struct.owl_dma_vchan, ptr %chan, i32 0, i32 3
  %4 = call ptr @memcpy(ptr %cfg, ptr %config, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_dma_pause(ptr noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %pchan = getelementptr inbounds %struct.owl_dma_vchan, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %pchan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pchan, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !141
  tail call void @arm_heavy_mb() #9
  %base.i.i = getelementptr inbounds %struct.owl_dma_pchan, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 671088640) #9, !srcloc !136
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_dma_resume(ptr noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pchan = getelementptr inbounds %struct.owl_dma_vchan, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %pchan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pchan, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  %txd = getelementptr inbounds %struct.owl_dma_vchan, ptr %chan, i32 0, i32 2
  %2 = ptrtoint ptr %txd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %txd, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @owl_dma_resume.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@owl_dma_resume, %do.body11)) #9
          to label %if.then7 [label %do.body11], !srcloc !142

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %5, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @owl_dma_resume.__UNIQUE_ID_ddebug240, ptr noundef %device.i, ptr noundef nonnull @.str.54, ptr noundef %chan) #9
  br label %do.body11

do.body11:                                        ; preds = %if.then7, %do.body
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %6 = ptrtoint ptr %pchan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pchan, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !141
  tail call void @arm_heavy_mb() #9
  %base.i.i = getelementptr inbounds %struct.owl_dma_pchan, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 671088640) #9, !srcloc !136
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call15) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body11, %land.lhs.true.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_dma_terminate_all(ptr noundef %chan) #0 align 64 {
entry:
  %head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head) #9
  %2 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %3 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %head, ptr %head, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %head, ptr %2, align 4
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call4 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %pchan = getelementptr inbounds %struct.owl_dma_vchan, ptr %chan, i32 0, i32 1
  %5 = ptrtoint ptr %pchan to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pchan, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @owl_dma_phy_free(ptr noundef %1, ptr noundef %chan)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %txd = getelementptr inbounds %struct.owl_dma_vchan, ptr %chan, i32 0, i32 2
  %7 = ptrtoint ptr %txd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %txd, align 4
  %tobool7.not = icmp eq ptr %8, null
  br i1 %tobool7.not, label %if.end.if.end11_crit_edge, label %if.end.i.i

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end.i.i:                                       ; preds = %if.end
  %lli_list.i.i = getelementptr inbounds %struct.owl_dma_txd, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %lli_list.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lli_list.i.i, align 4
  %cmp.not25.i.i = icmp eq ptr %10, %lli_list.i.i
  br i1 %cmp.not25.i.i, label %if.end.i.i.owl_dma_desc_free.exit_crit_edge, label %for.body.lr.ph.i.i

if.end.i.i.owl_dma_desc_free.exit_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %owl_dma_desc_free.exit

for.body.lr.ph.i.i:                               ; preds = %if.end.i.i
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %8, i32 0, i32 3
  %11 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chan.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %lli_pool.i.i.i = getelementptr inbounds %struct.owl_dma, ptr %14, i32 0, i32 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %owl_dma_free_lli.exit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %.pn.in26.i.i = phi ptr [ %10, %for.body.lr.ph.i.i ], [ %.pn.i.i, %owl_dma_free_lli.exit.i.i.for.body.i.i_crit_edge ]
  %lli.0.i.i = getelementptr i8, ptr %.pn.in26.i.i, i32 -40
  %15 = ptrtoint ptr %.pn.in26.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn.i.i = load ptr, ptr %.pn.in26.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in26.i.i) #9
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %for.body.i.i.owl_dma_free_lli.exit.i.i_crit_edge

for.body.i.i.owl_dma_free_lli.exit.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %owl_dma_free_lli.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i.i = getelementptr i8, ptr %.pn.in26.i.i, i32 4
  %16 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %.pn.in26.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %.pn.in26.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %owl_dma_free_lli.exit.i.i

owl_dma_free_lli.exit.i.i:                        ; preds = %if.end.i.i.i.i.i, %for.body.i.i.owl_dma_free_lli.exit.i.i_crit_edge
  %22 = ptrtoint ptr %.pn.in26.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in26.i.i, align 4
  %prev.i.i.i.i = getelementptr i8, ptr %.pn.in26.i.i, i32 4
  %23 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i, align 4
  %24 = ptrtoint ptr %lli_pool.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lli_pool.i.i.i, align 4
  %phys.i.i.i = getelementptr i8, ptr %.pn.in26.i.i, i32 -4
  %26 = ptrtoint ptr %phys.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %phys.i.i.i, align 4
  call void @dma_pool_free(ptr noundef %25, ptr noundef %lli.0.i.i, i32 noundef %27) #9
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %lli_list.i.i
  br i1 %cmp.not.i.i, label %owl_dma_free_lli.exit.i.i.owl_dma_desc_free.exit_crit_edge, label %owl_dma_free_lli.exit.i.i.for.body.i.i_crit_edge

owl_dma_free_lli.exit.i.i.for.body.i.i_crit_edge: ; preds = %owl_dma_free_lli.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

owl_dma_free_lli.exit.i.i.owl_dma_desc_free.exit_crit_edge: ; preds = %owl_dma_free_lli.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %owl_dma_desc_free.exit

owl_dma_desc_free.exit:                           ; preds = %owl_dma_free_lli.exit.i.i.owl_dma_desc_free.exit_crit_edge, %if.end.i.i.owl_dma_desc_free.exit_crit_edge
  call void @kfree(ptr noundef nonnull %8) #9
  %28 = ptrtoint ptr %txd to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %txd, align 4
  br label %if.end11

if.end11:                                         ; preds = %owl_dma_desc_free.exit, %if.end.if.end11_crit_edge
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %29 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %desc_allocated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %30, %desc_allocated.i
  br i1 %cmp.i.not.i.i, label %if.end11.list_splice_tail_init.exit.i_crit_edge, label %if.then.i.i

if.end11.list_splice_tail_init.exit.i_crit_edge:  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit.i

if.then.i.i:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %2, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %33 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %35 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev3.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %30, ptr %32, align 4
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %head, ptr %34, align 4
  store ptr %34, ptr %2, align 4
  %38 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %desc_allocated.i, ptr %desc_allocated.i, align 4
  store ptr %desc_allocated.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_tail_init.exit.i

list_splice_tail_init.exit.i:                     ; preds = %if.then.i.i, %if.end11.list_splice_tail_init.exit.i_crit_edge
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %39 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i9.i = icmp eq ptr %40, %desc_submitted.i
  br i1 %cmp.i.not.i9.i, label %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge, label %if.then.i13.i

list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge: ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit14.i

if.then.i13.i:                                    ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %2, align 4
  %prev2.i.i11.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %43 = ptrtoint ptr %prev2.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev2.i.i11.i, align 4
  %prev3.i.i12.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %45 = ptrtoint ptr %prev3.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev3.i.i12.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %40, ptr %42, align 4
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %head, ptr %44, align 4
  store ptr %44, ptr %2, align 4
  %48 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %desc_submitted.i, ptr %desc_submitted.i, align 4
  store ptr %desc_submitted.i, ptr %prev2.i.i11.i, align 4
  br label %list_splice_tail_init.exit14.i

list_splice_tail_init.exit14.i:                   ; preds = %if.then.i13.i, %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %49 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.not.i15.i = icmp eq ptr %50, %desc_issued.i
  br i1 %cmp.i.not.i15.i, label %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge, label %if.then.i19.i

list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit20.i

if.then.i19.i:                                    ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %2, align 4
  %prev2.i.i17.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %53 = ptrtoint ptr %prev2.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev2.i.i17.i, align 4
  %prev3.i.i18.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %55 = ptrtoint ptr %prev3.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev3.i.i18.i, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %50, ptr %52, align 4
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %head, ptr %54, align 4
  store ptr %54, ptr %2, align 4
  %58 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %desc_issued.i, ptr %desc_issued.i, align 4
  store ptr %desc_issued.i, ptr %prev2.i.i17.i, align 4
  br label %list_splice_tail_init.exit20.i

list_splice_tail_init.exit20.i:                   ; preds = %if.then.i19.i, %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7
  %59 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %desc_completed.i, align 4
  %cmp.i.not.i21.i = icmp eq ptr %60, %desc_completed.i
  br i1 %cmp.i.not.i21.i, label %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge, label %if.then.i25.i

list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit26.i

if.then.i25.i:                                    ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %2, align 4
  %prev2.i.i23.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7, i32 1
  %63 = ptrtoint ptr %prev2.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev2.i.i23.i, align 4
  %prev3.i.i24.i = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %65 = ptrtoint ptr %prev3.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %prev3.i.i24.i, align 4
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %60, ptr %62, align 4
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %head, ptr %64, align 4
  store ptr %64, ptr %2, align 4
  %68 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %desc_completed.i, ptr %desc_completed.i, align 4
  store ptr %desc_completed.i, ptr %prev2.i.i23.i, align 4
  br label %list_splice_tail_init.exit26.i

list_splice_tail_init.exit26.i:                   ; preds = %if.then.i25.i, %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %69 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile ptr, ptr %desc_terminated.i, align 4
  %cmp.i.not.i27.i = icmp eq ptr %70, %desc_terminated.i
  br i1 %cmp.i.not.i27.i, label %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge, label %if.then.i31.i

list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge: ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_get_all_descriptors.exit

if.then.i31.i:                                    ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %2, align 4
  %prev2.i.i29.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  %73 = ptrtoint ptr %prev2.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev2.i.i29.i, align 4
  %prev3.i.i30.i = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  %75 = ptrtoint ptr %prev3.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev3.i.i30.i, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %70, ptr %72, align 4
  %77 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %head, ptr %74, align 4
  store ptr %74, ptr %2, align 4
  %78 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %desc_terminated.i, ptr %desc_terminated.i, align 4
  store ptr %desc_terminated.i, ptr %prev2.i.i29.i, align 4
  br label %vchan_get_all_descriptors.exit

vchan_get_all_descriptors.exit:                   ; preds = %if.then.i31.i, %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_dma_interrupt(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  %pending = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pending) #9
  %lock = getelementptr inbounds %struct.owl_dma, ptr %dev_id, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %base.i = getelementptr inbounds %struct.owl_dma, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !138
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !143
  %4 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pending, align 4
  %nr_pchans = getelementptr inbounds %struct.owl_dma, ptr %dev_id, i32 0, i32 6
  %5 = ptrtoint ptr %nr_pchans to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_pchans, align 4
  %call1 = call i32 @_find_next_bit_be(ptr noundef nonnull %pending, i32 noundef %6, i32 noundef 0) #9
  %7 = ptrtoint ptr %nr_pchans to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_pchans, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %8)
  %cmp127 = icmp ult i32 %call1, %8
  br i1 %cmp127, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pchans = getelementptr inbounds %struct.owl_dma, ptr %dev_id, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0128 = phi i32 [ %call1, %for.body.lr.ph ], [ %call4, %for.body.for.body_crit_edge ]
  %9 = ptrtoint ptr %pchans to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pchans, align 4
  %base.i113 = getelementptr %struct.owl_dma_pchan, ptr %10, i32 %i.0128, i32 1
  %11 = ptrtoint ptr %base.i113 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i113, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 68
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !145
  call void @arm_heavy_mb() #9
  %14 = ptrtoint ptr %base.i113 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i113, align 4
  %add.ptr3.i = getelementptr i8, ptr %15, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 -16777216) #9, !srcloc !136
  %16 = ptrtoint ptr %nr_pchans to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_pchans, align 4
  %add = add nuw i32 %i.0128, 1
  %call4 = call i32 @_find_next_bit_be(ptr noundef nonnull %pending, i32 noundef %17, i32 noundef %add) #9
  %18 = ptrtoint ptr %nr_pchans to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr_pchans, align 4
  %cmp = icmp ult i32 %call4, %19
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %20 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pending, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !135
  call void @arm_heavy_mb() #9
  %22 = call i32 @llvm.bswap.i32(i32 %21) #9
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #9, !srcloc !136
  %25 = ptrtoint ptr %nr_pchans to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr_pchans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp7129.not = icmp eq i32 %26, 0
  br i1 %cmp7129.not, label %for.end.for.end26_crit_edge, label %for.body8.lr.ph

for.end.for.end26_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end26

for.body8.lr.ph:                                  ; preds = %for.end
  %pchans9 = getelementptr inbounds %struct.owl_dma, ptr %dev_id, i32 0, i32 7
  %dev = getelementptr inbounds %struct.dma_device, ptr %dev_id, i32 0, i32 15
  br label %for.body8

for.body8:                                        ; preds = %for.inc25.for.body8_crit_edge, %for.body8.lr.ph
  %i.1130 = phi i32 [ 0, %for.body8.lr.ph ], [ %inc, %for.inc25.for.body8_crit_edge ]
  %27 = ptrtoint ptr %pchans9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pchans9, align 4
  %base.i115 = getelementptr %struct.owl_dma_pchan, ptr %28, i32 %i.1130, i32 1
  %29 = ptrtoint ptr %base.i115 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i115, align 4
  %add.ptr.i116 = getelementptr i8, ptr %30, i32 64
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i116) #9, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !139
  %32 = ptrtoint ptr %base.i115 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i115, align 4
  %add.ptr.i118 = getelementptr i8, ptr %33, i32 68
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i118) #9, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !139
  %35 = and i32 %34, %31
  %36 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i, align 4
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #9, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !143
  %39 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i, align 4
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #9, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not = icmp eq i32 %35, 0
  br i1 %tobool.not, label %for.body8.for.inc25_crit_edge, label %land.lhs.true

for.body8.for.inc25_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc25

land.lhs.true:                                    ; preds = %for.body8
  %42 = call i32 @llvm.bswap.i32(i32 %41) #9
  %shl = shl nuw i32 1, %i.1130
  %and15 = and i32 %42, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %do.body, label %land.lhs.true.for.inc25_crit_edge

land.lhs.true.for.inc25_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc25

do.body:                                          ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @owl_dma_interrupt.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@owl_dma_interrupt, %do.end)) #9
          to label %if.then22 [label %do.end], !srcloc !142

if.then22:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @owl_dma_interrupt.__UNIQUE_ID_ddebug239, ptr noundef %44, ptr noundef nonnull @.str.58) #9
  br label %do.end

do.end:                                           ; preds = %if.then22, %do.body
  %45 = ptrtoint ptr %base.i115 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i115, align 4
  %add.ptr.i122 = getelementptr i8, ptr %46, i32 68
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i122) #9, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !145
  call void @arm_heavy_mb() #9
  %48 = ptrtoint ptr %base.i115 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i115, align 4
  %add.ptr3.i123 = getelementptr i8, ptr %49, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i123, i32 -16777216) #9, !srcloc !136
  %50 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pending, align 4
  %or = or i32 %51, %shl
  store i32 %or, ptr %pending, align 4
  br label %for.inc25

for.inc25:                                        ; preds = %do.end, %land.lhs.true.for.inc25_crit_edge, %for.body8.for.inc25_crit_edge
  %inc = add nuw i32 %i.1130, 1
  %52 = ptrtoint ptr %nr_pchans to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nr_pchans, align 4
  %cmp7 = icmp ult i32 %inc, %53
  br i1 %cmp7, label %for.inc25.for.body8_crit_edge, label %for.inc25.for.end26_crit_edge

for.inc25.for.end26_crit_edge:                    ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end26

for.inc25.for.body8_crit_edge:                    ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body8

for.end26:                                        ; preds = %for.inc25.for.end26_crit_edge, %for.end.for.end26_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #9
  %54 = ptrtoint ptr %nr_pchans to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nr_pchans, align 4
  %call29 = call i32 @_find_next_bit_be(ptr noundef nonnull %pending, i32 noundef %55, i32 noundef 0) #9
  %56 = ptrtoint ptr %nr_pchans to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nr_pchans, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call29, i32 %57)
  %cmp32132 = icmp ult i32 %call29, %57
  br i1 %cmp32132, label %for.body33.lr.ph, label %for.end26.for.end63_crit_edge

for.end26.for.end63_crit_edge:                    ; preds = %for.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end63

for.body33.lr.ph:                                 ; preds = %for.end26
  %pchans34 = getelementptr inbounds %struct.owl_dma, ptr %dev_id, i32 0, i32 7
  %dev43 = getelementptr inbounds %struct.dma_device, ptr %dev_id, i32 0, i32 15
  br label %for.body33

for.body33:                                       ; preds = %cleanup.for.body33_crit_edge, %for.body33.lr.ph
  %i.2133 = phi i32 [ %call29, %for.body33.lr.ph ], [ %call62, %cleanup.for.body33_crit_edge ]
  %58 = ptrtoint ptr %pchans34 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pchans34, align 4
  %vchan36 = getelementptr %struct.owl_dma_pchan, ptr %59, i32 %i.2133, i32 2
  %60 = ptrtoint ptr %vchan36 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %vchan36, align 4
  %tobool37.not = icmp eq ptr %61, null
  br i1 %tobool37.not, label %do.end41, label %if.end44

do.end41:                                         ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx35 = getelementptr %struct.owl_dma_pchan, ptr %59, i32 %i.2133
  %62 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev43, align 4
  %64 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx35, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %63, ptr noundef nonnull @.str.59, i32 noundef %65) #12
  br label %cleanup

if.end44:                                         ; preds = %for.body33
  %lock45 = getelementptr inbounds %struct.virt_dma_chan, ptr %61, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %lock45) #9
  %txd46 = getelementptr inbounds %struct.owl_dma_vchan, ptr %61, i32 0, i32 2
  %66 = ptrtoint ptr %txd46 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %txd46, align 4
  %tobool47.not = icmp eq ptr %67, null
  br i1 %tobool47.not, label %if.end44.if.end56_crit_edge, label %if.then48

if.end44.if.end56_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then48:                                        ; preds = %if.end44
  %68 = ptrtoint ptr %txd46 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %txd46, align 4
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %67, i32 0, i32 3
  %69 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %chan.i, align 4
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %72)
  %cmp.i.i = icmp slt i32 %72, 1
  br i1 %cmp.i.i, label %do.body2.i.i, label %dma_cookie_complete.exit.i, !prof !134

do.body2.i.i:                                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #9, !srcloc !146
  unreachable

dma_cookie_complete.exit.i:                       ; preds = %if.then48
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %70, i32 0, i32 3
  %73 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %completed_cookie.i.i, align 4
  %74 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %67, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@owl_dma_interrupt, %do.end.i)) #9
          to label %if.then.i [label %do.end.i], !srcloc !142

if.then.i:                                        ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %70, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %76, i32 0, i32 15
  %77 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vchan_cookie_complete.__UNIQUE_ID_ddebug236, ptr noundef %78, ptr noundef nonnull @.str.62, ptr noundef nonnull %67, i32 noundef %72) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %dma_cookie_complete.exit.i
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %67, i32 0, i32 2
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %70, i32 0, i32 7
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %70, i32 0, i32 7, i32 1
  %79 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %80, ptr noundef %desc_completed.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i.list_add_tail.exit.i_crit_edge

do.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %81 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %node.i, ptr %prev.i.i, align 4
  %82 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %desc_completed.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %67, i32 0, i32 2, i32 1
  %83 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %80, ptr %prev3.i.i.i, align 4
  %84 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %node.i, ptr %80, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.end.i.list_add_tail.exit.i_crit_edge
  %state.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %70, i32 0, i32 1, i32 1
  %call.i.i = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge

list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_cookie_complete.exit

if.then.i.i:                                      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %70, i32 0, i32 1
  call void @__tasklet_schedule(ptr noundef %task.i) #9
  br label %vchan_cookie_complete.exit

vchan_cookie_complete.exit:                       ; preds = %if.then.i.i, %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %61, i32 0, i32 6
  %85 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.not.i = icmp eq ptr %86, %desc_issued.i
  %add.ptr.i124 = getelementptr i8, ptr %86, i32 -108
  %tobool52.not126 = icmp eq ptr %add.ptr.i124, null
  %tobool52.not = or i1 %cmp.not.i, %tobool52.not126
  br i1 %tobool52.not, label %if.else, label %if.then53

if.then53:                                        ; preds = %vchan_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @owl_dma_start_next_txd(ptr noundef nonnull %61)
  br label %if.end56

if.else:                                          ; preds = %vchan_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @owl_dma_phy_free(ptr noundef %dev_id, ptr noundef nonnull %61)
  br label %if.end56

if.end56:                                         ; preds = %if.else, %if.then53, %if.end44.if.end56_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock45) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %do.end41
  %87 = ptrtoint ptr %nr_pchans to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %nr_pchans, align 4
  %add61 = add nuw i32 %i.2133, 1
  %call62 = call i32 @_find_next_bit_be(ptr noundef nonnull %pending, i32 noundef %88, i32 noundef %add61) #9
  %89 = ptrtoint ptr %nr_pchans to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %nr_pchans, align 4
  %cmp32 = icmp ult i32 %call62, %90
  br i1 %cmp32, label %cleanup.for.body33_crit_edge, label %cleanup.for.end63_crit_edge

cleanup.for.end63_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end63

cleanup.for.body33_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body33

for.end63:                                        ; preds = %cleanup.for.end63_crit_edge, %for.end26.for.end63_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pending) #9
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @owl_dma_desc_free(ptr noundef %vd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chan = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %vd, i32 0, i32 3
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %vd, null
  br i1 %tobool.not.i, label %entry.owl_dma_free_txd.exit_crit_edge, label %if.end.i, !prof !134

entry.owl_dma_free_txd.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %owl_dma_free_txd.exit

if.end.i:                                         ; preds = %entry
  %lli_list.i = getelementptr inbounds %struct.owl_dma_txd, ptr %vd, i32 0, i32 1
  %4 = ptrtoint ptr %lli_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lli_list.i, align 4
  %cmp.not25.i = icmp eq ptr %5, %lli_list.i
  br i1 %cmp.not25.i, label %if.end.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %lli_pool.i.i = getelementptr inbounds %struct.owl_dma, ptr %3, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %owl_dma_free_lli.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn.in26.i = phi ptr [ %5, %for.body.lr.ph.i ], [ %.pn.i, %owl_dma_free_lli.exit.i.for.body.i_crit_edge ]
  %lli.0.i = getelementptr i8, ptr %.pn.in26.i, i32 -40
  %6 = ptrtoint ptr %.pn.in26.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load ptr, ptr %.pn.in26.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in26.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body.i.owl_dma_free_lli.exit.i_crit_edge

for.body.i.owl_dma_free_lli.exit.i_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %owl_dma_free_lli.exit.i

if.end.i.i.i.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i = getelementptr i8, ptr %.pn.in26.i, i32 4
  %7 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i.i, align 4
  %9 = ptrtoint ptr %.pn.in26.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %.pn.in26.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %owl_dma_free_lli.exit.i

owl_dma_free_lli.exit.i:                          ; preds = %if.end.i.i.i.i, %for.body.i.owl_dma_free_lli.exit.i_crit_edge
  %13 = ptrtoint ptr %.pn.in26.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in26.i, align 4
  %prev.i.i.i = getelementptr i8, ptr %.pn.in26.i, i32 4
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %15 = ptrtoint ptr %lli_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lli_pool.i.i, align 4
  %phys.i.i = getelementptr i8, ptr %.pn.in26.i, i32 -4
  %17 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %phys.i.i, align 4
  tail call void @dma_pool_free(ptr noundef %16, ptr noundef %lli.0.i, i32 noundef %18) #9
  %cmp.not.i = icmp eq ptr %.pn.i, %lli_list.i
  br i1 %cmp.not.i, label %owl_dma_free_lli.exit.i.for.end.i_crit_edge, label %owl_dma_free_lli.exit.i.for.body.i_crit_edge

owl_dma_free_lli.exit.i.for.body.i_crit_edge:     ; preds = %owl_dma_free_lli.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

owl_dma_free_lli.exit.i.for.end.i_crit_edge:      ; preds = %owl_dma_free_lli.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %owl_dma_free_lli.exit.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %vd) #9
  br label %owl_dma_free_txd.exit

owl_dma_free_txd.exit:                            ; preds = %for.end.i, %entry.owl_dma_free_txd.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clk_prepare_enable(ptr noundef %clk) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %clk) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @owl_dma_of_xlate(ptr nocapture noundef readonly %dma_spec, ptr nocapture noundef readonly %ofdma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %of_dma_data = getelementptr inbounds %struct.of_dma, ptr %ofdma, i32 0, i32 5
  %0 = ptrtoint ptr %of_dma_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_dma_data, align 4
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args, align 4
  %conv = trunc i32 %3 to i8
  %conv1 = and i32 %3, 255
  %nr_vchans = getelementptr inbounds %struct.owl_dma, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %nr_vchans to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_vchans, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1, i32 %5)
  %cmp = icmp ugt i32 %conv1, %5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @dma_get_any_slave_channel(ptr noundef %1) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %drq6 = getelementptr inbounds %struct.owl_dma_vchan, ptr %call, i32 0, i32 4
  %6 = ptrtoint ptr %drq6 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %drq6, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.end4 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vchan_find_desc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @owl_dma_phy_alloc_and_start(ptr noundef %vchan) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vchan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vchan, align 4
  %nr_pchans.i = getelementptr inbounds %struct.owl_dma, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %nr_pchans.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_pchans.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp20.not.i = icmp eq i32 %3, 0
  br i1 %cmp20.not.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %pchans.i = getelementptr inbounds %struct.owl_dma, ptr %1, i32 0, i32 7
  %lock.i = getelementptr inbounds %struct.owl_dma, ptr %1, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.021.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %pchans.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pchans.i, align 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %vchan6.i = getelementptr %struct.owl_dma_pchan, ptr %5, i32 %i.021.i, i32 2
  %6 = ptrtoint ptr %vchan6.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vchan6.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %vchan6.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %vchan, ptr %vchan6.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #9
  br label %owl_dma_get_pchan.exit

if.end.i:                                         ; preds = %for.body.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #9
  %inc.i = add nuw i32 %i.021.i, 1
  %9 = ptrtoint ptr %nr_pchans.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_pchans.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %10
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.owl_dma_get_pchan.exit_crit_edge

if.end.i.owl_dma_get_pchan.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %owl_dma_get_pchan.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

owl_dma_get_pchan.exit:                           ; preds = %if.end.i.owl_dma_get_pchan.exit_crit_edge, %if.then.i
  %pchan.1.i = getelementptr %struct.owl_dma_pchan, ptr %5, i32 %i.021.i
  %tobool.not = icmp eq ptr %pchan.1.i, null
  br i1 %tobool.not, label %owl_dma_get_pchan.exit.cleanup_crit_edge, label %do.body

owl_dma_get_pchan.exit.cleanup_crit_edge:         ; preds = %owl_dma_get_pchan.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %owl_dma_get_pchan.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @owl_dma_phy_alloc_and_start.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@owl_dma_phy_alloc_and_start, %do.end)) #9
          to label %if.then7 [label %do.end], !srcloc !142

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %13 = ptrtoint ptr %pchan.1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pchan.1.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @owl_dma_phy_alloc_and_start.__UNIQUE_ID_ddebug241, ptr noundef %12, ptr noundef nonnull @.str.33, i32 noundef %14) #9
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %pchan9 = getelementptr inbounds %struct.owl_dma_vchan, ptr %vchan, i32 0, i32 1
  %15 = ptrtoint ptr %pchan9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %pchan.1.i, ptr %pchan9, align 4
  tail call fastcc void @owl_dma_start_next_txd(ptr noundef %vchan)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %owl_dma_get_pchan.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @owl_dma_start_next_txd(ptr noundef %vchan) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vchan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vchan, align 4
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %vchan, i32 0, i32 6
  %2 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.not.i = icmp eq ptr %3, %desc_issued.i
  %add.ptr.i = getelementptr i8, ptr %3, i32 -108
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %add.ptr.i
  %pchan3 = getelementptr inbounds %struct.owl_dma_vchan, ptr %vchan, i32 0, i32 1
  %4 = ptrtoint ptr %pchan3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pchan3, align 4
  %node = getelementptr inbounds %struct.virt_dma_desc, ptr %spec.select.i, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %spec.select.i, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %12 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.virt_dma_desc, ptr %spec.select.i, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %txd5 = getelementptr inbounds %struct.owl_dma_vchan, ptr %vchan, i32 0, i32 2
  %14 = ptrtoint ptr %txd5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %spec.select.i, ptr %txd5, align 4
  %base.i.i = getelementptr inbounds %struct.owl_dma, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i15 = getelementptr i8, ptr %16, i32 44
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i15) #9, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !143
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %5, align 4
  %20 = xor i32 %17, -1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #9
  %22 = shl nuw i32 1, %19
  %23 = and i32 %22, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not16 = icmp eq i32 %23, 0
  br i1 %tobool.not16, label %list_del.exit.while.end_crit_edge, label %list_del.exit.do.end_crit_edge

list_del.exit.do.end_crit_edge:                   ; preds = %list_del.exit
  br label %do.end

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %list_del.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !148
  %24 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 44
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !143
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %5, align 4
  %29 = xor i32 %26, -1
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #9
  %31 = shl nuw i32 1, %28
  %32 = and i32 %31, %30
  %tobool.not = icmp eq i32 %32, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %list_del.exit.while.end_crit_edge
  %lli_list = getelementptr inbounds %struct.owl_dma_txd, ptr %spec.select.i, i32 0, i32 1
  %33 = ptrtoint ptr %lli_list to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lli_list, align 4
  %cyclic = getelementptr inbounds %struct.owl_dma_txd, ptr %spec.select.i, i32 0, i32 2
  %35 = ptrtoint ptr %cyclic to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %cyclic, align 4, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool13.not = icmp eq i8 %36, 0
  %. = select i1 %tobool13.not, i32 33554432, i32 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !141
  tail call void @arm_heavy_mb() #9
  %base.i = getelementptr inbounds %struct.owl_dma_pchan, ptr %5, i32 0, i32 1
  %37 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 64) #9, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !141
  tail call void @arm_heavy_mb() #9
  %39 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i, align 4
  %add.ptr.i2 = getelementptr i8, ptr %40, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 327680) #9, !srcloc !136
  %phys = getelementptr i8, ptr %34, i32 -4
  %41 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %phys, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !141
  tail call void @arm_heavy_mb() #9
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #9
  %44 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %45, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %43) #9, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !141
  tail call void @arm_heavy_mb() #9
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %47, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 %.) #9, !srcloc !136
  %48 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %49, i32 68
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8) #9, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !145
  tail call void @arm_heavy_mb() #9
  %51 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %52, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 -16777216) #9, !srcloc !136
  %lock = getelementptr inbounds %struct.owl_dma, ptr %1, i32 0, i32 3
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %53 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %5, align 4
  %shl = shl nuw i32 1, %54
  %55 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %56, i32 16
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #9, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  tail call void @arm_heavy_mb() #9
  %58 = tail call i32 @llvm.bswap.i32(i32 %shl) #9
  %59 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i.i, align 4
  %add.ptr3.i11 = getelementptr i8, ptr %60, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i11, i32 %58) #9, !srcloc !136
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call18) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @owl_dma_start_next_txd.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@owl_dma_start_next_txd, %do.end38)) #9
          to label %if.then31 [label %do.end38], !srcloc !142

if.then31:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %vchan, i32 0, i32 5
  %61 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @owl_dma_start_next_txd.__UNIQUE_ID_ddebug238, ptr noundef %device.i, ptr noundef nonnull @.str.35, i32 noundef %64) #9
  br label %do.end38

do.end38:                                         ; preds = %if.then31, %while.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !141
  tail call void @arm_heavy_mb() #9
  %65 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %66, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 16777216) #9, !srcloc !136
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @owl_dma_phy_free(ptr noundef %od, ptr nocapture noundef %vchan) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pchan = getelementptr inbounds %struct.owl_dma_vchan, ptr %vchan, i32 0, i32 1
  %0 = ptrtoint ptr %pchan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pchan, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !141
  tail call void @arm_heavy_mb() #9
  %base.i.i = getelementptr inbounds %struct.owl_dma_pchan, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #9, !srcloc !136
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %5, i32 68
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i) #9, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !145
  tail call void @arm_heavy_mb() #9
  %7 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %8, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 -16777216) #9, !srcloc !136
  %lock.i = getelementptr inbounds %struct.owl_dma, ptr %od, i32 0, i32 3
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  %shl.i = shl nuw i32 1, %10
  %base.i28.i = getelementptr inbounds %struct.owl_dma, ptr %od, i32 0, i32 1
  %11 = ptrtoint ptr %base.i28.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i28.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %12, i32 16
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #9, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  tail call void @arm_heavy_mb() #9
  %14 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #9
  %15 = ptrtoint ptr %base.i28.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i28.i, align 4
  %add.ptr3.i30.i = getelementptr i8, ptr %16, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i30.i, i32 %14) #9, !srcloc !136
  %17 = ptrtoint ptr %base.i28.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i28.i, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #9, !srcloc !138
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !143
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %1, align 4
  %shl7.i = shl nuw i32 1, %22
  %and.i = and i32 %shl7.i, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.owl_dma_terminate_pchan.exit_crit_edge, label %do.end10.i

entry.owl_dma_terminate_pchan.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %owl_dma_terminate_pchan.exit

do.end10.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %od, i32 0, i32 15
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.55, i32 noundef %22) #12
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %1, align 4
  %shl13.i = shl nuw i32 1, %26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !135
  tail call void @arm_heavy_mb() #9
  %27 = tail call i32 @llvm.bswap.i32(i32 %shl13.i) #9
  %28 = ptrtoint ptr %base.i28.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i28.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #9, !srcloc !136
  br label %owl_dma_terminate_pchan.exit

owl_dma_terminate_pchan.exit:                     ; preds = %do.end10.i, %entry.owl_dma_terminate_pchan.exit_crit_edge
  %vchan.i = getelementptr inbounds %struct.owl_dma_pchan, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %vchan.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %vchan.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  %31 = ptrtoint ptr %pchan to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %pchan, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_get_any_slave_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !32, !33, !35, !36, !37, !38, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !122}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @__initcall__kmod_owl_dma__244_1267_owl_dma_init4, !1, !"__initcall__kmod_owl_dma__244_1267_owl_dma_init4", i1 false, i1 false}
!1 = !{!"../drivers/dma/owl-dma.c", i32 1267, i32 1}
!2 = !{ptr @__exitcall_owl_dma_exit, !3, !"__exitcall_owl_dma_exit", i1 false, i1 false}
!3 = !{!"../drivers/dma/owl-dma.c", i32 1273, i32 1}
!4 = !{ptr @__UNIQUE_ID_author245, !5, !"__UNIQUE_ID_author245", i1 false, i1 false}
!5 = !{!"../drivers/dma/owl-dma.c", i32 1275, i32 1}
!6 = !{ptr @__UNIQUE_ID_author246, !7, !"__UNIQUE_ID_author246", i1 false, i1 false}
!7 = !{!"../drivers/dma/owl-dma.c", i32 1276, i32 1}
!8 = !{ptr @__UNIQUE_ID_description247, !9, !"__UNIQUE_ID_description247", i1 false, i1 false}
!9 = !{!"../drivers/dma/owl-dma.c", i32 1277, i32 1}
!10 = !{ptr @__UNIQUE_ID_file248, !11, !"__UNIQUE_ID_file248", i1 false, i1 false}
!11 = !{!"../drivers/dma/owl-dma.c", i32 1278, i32 1}
!12 = !{ptr @__UNIQUE_ID_license249, !11, !"__UNIQUE_ID_license249", i1 false, i1 false}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/dma/owl-dma.c", i32 1258, i32 11}
!15 = !{ptr @owl_dma_driver, !16, !"owl_dma_driver", i1 false, i1 false}
!16 = !{!"../drivers/dma/owl-dma.c", i32 1254, i32 31}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/dma/owl-dma.c", i32 1104, i32 33}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/dma/owl-dma.c", i32 1106, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @owl_dma_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @owl_dma_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/dma/owl-dma.c", i32 1110, i32 33}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/dma/owl-dma.c", i32 1112, i32 3}
!31 = !{ptr @owl_dma_probe._entry.8, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @owl_dma_probe._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/dma/owl-dma.c", i32 1116, i32 2}
!35 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @owl_dma_probe._entry.11, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @owl_dma_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @owl_dma_probe.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/dma/owl-dma.c", i32 1127, i32 2}
!40 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/dma/owl-dma.c", i32 1153, i32 3}
!43 = !{ptr @owl_dma_probe._entry.16, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @owl_dma_probe._entry_ptr.18, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/dma/owl-dma.c", i32 1166, i32 3}
!47 = !{ptr @owl_dma_probe._entry.19, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @owl_dma_probe._entry_ptr.21, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/dma/owl-dma.c", i32 1202, i32 3}
!51 = !{ptr @owl_dma_probe._entry.22, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @owl_dma_probe._entry_ptr.24, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/dma/owl-dma.c", i32 1210, i32 3}
!55 = !{ptr @owl_dma_probe._entry.25, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @owl_dma_probe._entry_ptr.27, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/dma/owl-dma.c", i32 1218, i32 3}
!59 = !{ptr @owl_dma_probe._entry.28, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @owl_dma_probe._entry_ptr.30, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/dma/owl-dma.c", i32 846, i32 2}
!63 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @owl_dma_phy_alloc_and_start.__UNIQUE_ID_ddebug241, !62, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/dma/owl-dma.c", i32 575, i32 2}
!68 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @owl_dma_start_next_txd.__UNIQUE_ID_ddebug238, !67, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/dma/owl-dma.c", i32 890, i32 4}
!72 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @owl_dma_prep_memcpy._entry, !71, !"_entry", i1 false, i1 false}
!75 = !{ptr @owl_dma_prep_memcpy._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/dma/owl-dma.c", i32 900, i32 4}
!78 = !{ptr @owl_dma_prep_memcpy._entry.39, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @owl_dma_prep_memcpy._entry_ptr.41, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/dma/owl-dma.c", i32 942, i32 4}
!82 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @owl_dma_prep_slave_sg._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @owl_dma_prep_slave_sg._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/dma/owl-dma.c", i32 949, i32 4}
!87 = !{ptr @owl_dma_prep_slave_sg._entry.44, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @owl_dma_prep_slave_sg._entry_ptr.46, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.48, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/dma/owl-dma.c", i32 964, i32 4}
!91 = !{ptr @owl_dma_prep_slave_sg._entry.47, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @owl_dma_prep_slave_sg._entry_ptr.49, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.50, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/dma/owl-dma.c", i32 1005, i32 4}
!95 = !{ptr @owl_prep_dma_cyclic._entry, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @owl_prep_dma_cyclic._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @owl_prep_dma_cyclic._entry.51, !98, !"_entry", i1 false, i1 false}
!98 = !{!"../drivers/dma/owl-dma.c", i32 1020, i32 4}
!99 = !{ptr @owl_prep_dma_cyclic._entry_ptr.52, !98, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/dma/owl-dma.c", i32 759, i32 2}
!102 = !{ptr @.str.54, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @owl_dma_resume.__UNIQUE_ID_ddebug240, !101, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!104 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/dma/owl-dma.c", i32 513, i32 3}
!106 = !{ptr @.str.56, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @owl_dma_terminate_pchan._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @owl_dma_terminate_pchan._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.57, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/dma/owl-dma.c", i32 625, i32 4}
!111 = !{ptr @.str.58, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @owl_dma_interrupt.__UNIQUE_ID_ddebug239, !110, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!113 = !{ptr @.str.59, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/dma/owl-dma.c", i32 646, i32 4}
!115 = !{ptr @owl_dma_interrupt._entry, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @owl_dma_interrupt._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.60, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/dma/virt-dma.h", i32 101, i32 2}
!119 = !{ptr @.str.61, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.62, !118, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug236, !118, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!122 = !{ptr @owl_dma_match, !123, !"owl_dma_match", i1 false, i1 false}
!123 = !{!"../drivers/dma/owl-dma.c", i32 1082, i32 34}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!133 = !{!"auto-init"}
!134 = !{!"branch_weights", i32 1, i32 2000}
!135 = !{i64 2154466164}
!136 = !{i64 6336932}
!137 = !{i64 2154413417}
!138 = !{i64 6337350}
!139 = !{i64 2154465095}
!140 = !{i8 0, i8 2}
!141 = !{i64 2154464431}
!142 = !{i64 2148752342, i64 2148752347, i64 2148752360, i64 2148752404, i64 2148752438, i64 2148752459}
!143 = !{i64 2154466813}
!144 = !{i64 2154463827}
!145 = !{i64 2154464041}
!146 = !{i64 2154411917, i64 2154412404, i64 2154411954, i64 2154412010, i64 2154412044, i64 2154412068, i64 2154412109, i64 2154412130, i64 2154412158, i64 2154412192}
!147 = !{i64 2154489028}
!148 = !{i64 2154488870}
!149 = !{i64 2154465569}
!150 = !{i64 2154465780}
