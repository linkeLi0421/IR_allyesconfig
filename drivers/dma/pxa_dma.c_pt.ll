; ModuleID = '/llk/IR_all_yes/drivers/dma/pxa_dma.c_pt.bc'
source_filename = "../drivers/dma/pxa_dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.pxad_device = type { %struct.dma_device, i32, i32, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mmp_dma_platdata = type { i32, i32, i32, ptr }
%struct.pxad_phy = type { i32, ptr, ptr }
%struct.pxad_chan = type { %struct.virt_dma_chan, i32, i32, i8, %struct.dma_slave_config, ptr, ptr, i32, %struct.wait_queue_head }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.pxad_desc_sw = type { %struct.virt_dma_desc, i32, i32, i32, i8, i8, ptr, [0 x ptr] }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }
%struct.pxad_desc_hw = type { i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.pxad_param = type { i32, i32 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.70, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.71, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.72, ptr, %struct.address_space, %struct.list_head, %union.anon.73, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.70 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.71 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.73 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__initcall__kmod_pxa_dma__274_1459_pxad_driver_init6 = internal global ptr @pxad_driver_init, section ".initcall6.init", align 4
@pxad_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pxad_probe, ptr @pxad_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pxad_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @pxad_id_table, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pxad_driver_exit = internal global ptr @pxad_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description275 = internal constant [54 x i8] c"pxa_dma.description=Marvell PXA Peripheral DMA Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author276 = internal constant [55 x i8] c"pxa_dma.author=Robert Jarzmik <robert.jarzmik@free.fr>\00", section ".modinfo", align 1
@__UNIQUE_ID_file277 = internal constant [33 x i8] c"pxa_dma.file=drivers/dma/pxa_dma\00", section ".modinfo", align 1
@__UNIQUE_ID_license278 = internal constant [23 x i8] c"pxa_dma.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pxa-dma\00", [24 x i8] zeroinitializer }, align 32
@pxad_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,pdma-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@pxad_id_table = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"pxa-dma\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@pxad_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&pdev->phy_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"#dma-channels\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"#dma-requests\00", [18 x i8] zeroinitializer }, align 32
@pxad_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1375, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"#dma-requests set to default 32 as missing in OF: %d\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pxad_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/dma/pxa_dma.c\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pxad_probe._entry_ptr = internal global ptr @pxad_probe._entry, section ".printk_index", align 4
@pxad_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 1408, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unable to register\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@pxad_probe._entry_ptr.12 = internal global ptr @pxad_probe._entry.9, section ".printk_index", align 4
@pxad_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.6, i32 1418, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"of_dma_controller_register failed\0A\00", [61 x i8] zeroinitializer }, align 32
@pxad_probe._entry_ptr.15 = internal global ptr @pxad_probe._entry.13, section ".printk_index", align 4
@pxad_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.5, ptr @.str.6, i32 1426, ptr @.str.18, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"initialized %d channels on %d requestors\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pxad_probe._entry_ptr.19 = internal global ptr @pxad_probe._entry.16, section ".printk_index", align 4
@pxad_prep_memcpy.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.21, ptr @.str.6, ptr @.str.22, i8 0, i8 -23, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pxa_dma\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pxad_prep_memcpy\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s(): dma_dst=0x%lx dma_src=0x%lx len=%zu flags=%lx\0A\00", [43 x i8] zeroinitializer }, align 32
@pxad_get_config.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.23, ptr @.str.6, ptr @.str.24, i8 0, i8 -32, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pxad_get_config\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s(): dev_addr=0x%x maxburst=%d width=%d  dir=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@pxad_alloc_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.6, i32 757, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s(): Couldn't allocate the %dth hw_desc from dma_pool %p\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pxad_alloc_desc\00", [16 x i8] zeroinitializer }, align 32
@pxad_alloc_desc._entry_ptr = internal global ptr @pxad_alloc_desc._entry, section ".printk_index", align 4
@pxad_tx_prep.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.27, ptr @.str.6, ptr @.str.28, i8 0, i8 -42, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pxad_tx_prep\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s(): vc=%p txd=%p[%x] flags=0x%lx\0A\00", [60 x i8] zeroinitializer }, align 32
@pxad_tx_submit.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.29, ptr @.str.6, ptr @.str.30, i8 0, i8 -58, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pxad_tx_submit\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s(): txd %p[%x]: submitted (hot linked)\0A\00", [54 x i8] zeroinitializer }, align 32
@pxad_tx_submit.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.29, ptr @.str.6, ptr @.str.31, i8 0, i8 -53, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s(): txd %p[%x]: submitted (%s linked)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cold\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"not\00", [28 x i8] zeroinitializer }, align 32
@is_chan_running.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.34, ptr @.str.6, ptr @.str.35, i8 0, i8 109, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"is_chan_running\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s(): readl(%s): 0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DCSR\00", [27 x i8] zeroinitializer }, align 32
@is_running_chan_misaligned.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.37, ptr @.str.6, ptr @.str.35, i8 0, i8 111, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"is_running_chan_misaligned\00", [37 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DALGN\00", [26 x i8] zeroinitializer }, align 32
@pxad_prep_slave_sg.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.39, ptr @.str.6, ptr @.str.40, i8 0, i8 -12, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pxad_prep_slave_sg\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s(): dir=%d flags=%lx\0A\00", [40 x i8] zeroinitializer }, align 32
@pxad_prep_dma_cyclic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.6, i32 1027, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unsupported direction for cyclic DMA\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pxad_prep_dma_cyclic\00", [43 x i8] zeroinitializer }, align 32
@pxad_prep_dma_cyclic._entry_ptr = internal global ptr @pxad_prep_dma_cyclic._entry, section ".printk_index", align 4
@pxad_prep_dma_cyclic.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.42, ptr @.str.6, ptr @.str.43, i8 1, i8 3, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s(): buf_addr=0x%lx len=%zu period=%zu dir=%d flags=%lx\0A\00", [38 x i8] zeroinitializer }, align 32
@pxad_init_dmadev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&c->wq_state\00", [19 x i8] zeroinitializer }, align 32
@pxad_alloc_chan_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.6, i32 700, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s(): unable to allocate descriptor pool\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pxad_alloc_chan_resources\00", [38 x i8] zeroinitializer }, align 32
@pxad_alloc_chan_resources._entry_ptr = internal global ptr @pxad_alloc_chan_resources._entry, section ".printk_index", align 4
@pxad_residue.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.47, ptr @.str.6, ptr @.str.35, i8 1, i8 28, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pxad_residue\00", [19 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DSADR\00", [26 x i8] zeroinitializer }, align 32
@pxad_residue.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.47, ptr @.str.6, ptr @.str.35, i8 1, i8 29, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DTADR\00", [26 x i8] zeroinitializer }, align 32
@pxad_residue.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.47, ptr @.str.6, ptr @.str.50, i8 1, i8 40, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s(): txd %p[%x] sw_desc=%p: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@pxad_issue_pending.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.51, ptr @.str.6, ptr @.str.52, i8 0, i8 -47, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pxad_issue_pending\00", [45 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s(): txd %p[%x]\00", [47 x i8] zeroinitializer }, align 32
@pxad_launch_chan.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.53, ptr @.str.6, ptr @.str.54, i8 0, i8 124, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pxad_launch_chan\00", [47 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s(): desc=%p\0A\00", [17 x i8] zeroinitializer }, align 32
@pxad_launch_chan.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.53, ptr @.str.6, ptr @.str.55, i8 0, i8 125, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s(): no free dma channel\0A\00", [37 x i8] zeroinitializer }, align 32
@pxad_launch_chan.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.53, ptr @.str.6, ptr @.str.56, i8 0, i8 127, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s(): writel(0x%08x, %s)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DDADR\00", [26 x i8] zeroinitializer }, align 32
@lookup_phy.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.58, ptr @.str.6, ptr @.str.59, i8 0, i8 100, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lookup_phy\00", [21 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s(): phy=%p(%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@phy_enable.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.60, ptr @.str.6, ptr @.str.61, i8 0, i8 115, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phy_enable\00", [21 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s(); phy=%p(%d) misaligned=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@phy_enable.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.60, ptr @.str.6, ptr @.str.35, i8 0, i8 117, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@phy_enable.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.60, ptr @.str.6, ptr @.str.62, i8 0, i8 118, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s(): writel_relaxed(0x%08x, %s)\0A\00", [62 x i8] zeroinitializer }, align 32
@phy_enable.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.60, ptr @.str.6, ptr @.str.56, i8 0, i8 119, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@pxad_terminate_all.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.63, ptr @.str.6, ptr @.str.64, i8 1, i8 15, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pxad_terminate_all\00", [45 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s(): vchan %p: terminate all\0A\00", [33 x i8] zeroinitializer }, align 32
@pxad_terminate_all.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.63, ptr @.str.6, ptr @.str.65, i8 1, i8 17, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s(): cancelling txd %p[%x] (completed=%d)\00", [53 x i8] zeroinitializer }, align 32
@phy_disable.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.66, ptr @.str.6, ptr @.str.35, i8 0, i8 121, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"phy_disable\00", [20 x i8] zeroinitializer }, align 32
@phy_disable.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.66, ptr @.str.6, ptr @.str.59, i8 0, i8 122, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@phy_disable.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.66, ptr @.str.6, ptr @.str.56, i8 0, i8 122, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@pxad_free_phy.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.67, ptr @.str.6, ptr @.str.68, i8 0, i8 103, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pxad_free_phy\00", [18 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s(): freeing\0A\00", [17 x i8] zeroinitializer }, align 32
@pxad_init_phys._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.6, i32 1269, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s(): can't request irq %d:%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pxad_init_phys\00", [17 x i8] zeroinitializer }, align 32
@pxad_init_phys._entry_ptr = internal global ptr @pxad_init_phys._entry, section ".printk_index", align 4
@pxad_chan_handler.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.71, ptr @.str.6, ptr @.str.72, i8 0, i8 -100, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pxad_chan_handler\00", [46 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s(): checking txd %p[%x]: completed=%d dcsr=0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@pxad_chan_handler.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.71, ptr @.str.6, ptr @.str.73, i8 0, i8 -94, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s(): channel stopped, submitted_empty=%d issued_empty=%d\00", [38 x i8] zeroinitializer }, align 32
@pxad_chan_handler.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.71, ptr @.str.6, ptr @.str.62, i8 0, i8 -94, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@clear_chan_irq.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.74, ptr @.str.6, ptr @.str.35, i8 0, i8 -108, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clear_chan_irq\00", [17 x i8] zeroinitializer }, align 32
@clear_chan_irq.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.74, ptr @.str.6, ptr @.str.56, i8 0, i8 -108, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@clear_chan_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.74, ptr @.str.6, i32 598, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s(chan=%p): PXA_DCSR_BUSERR\0A\00", [34 x i8] zeroinitializer }, align 32
@clear_chan_irq._entry_ptr = internal global ptr @clear_chan_irq._entry, section ".printk_index", align 4
@vchan_cookie_complete.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.76, ptr @.str.77, ptr @.str.78, i8 0, i8 25, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vchan_cookie_complete\00", [42 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/dma/virt-dma.h\00", [41 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"txd %p[%x]: marked complete\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"state\00", [26 x i8] zeroinitializer }, align 32
@state_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @state_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"channels\00", [23 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMA engine status\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\09Channel number: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@chan_state_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @chan_state_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"descriptors\00", [20 x i8] zeroinitializer }, align 32
@descriptors_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @descriptors_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"requesters\00", [21 x i8] zeroinitializer }, align 32
@requester_chan_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @requester_chan_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@chan_state_show.str_prio = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89], [16 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"high\00", [27 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"normal\00", [25 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"low\00", [28 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"invalid\00", [24 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DMA channel %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\09Priority : %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\09Unaligned transfer bit: %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\09DCSR  = %08x (%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RUN \00", [27 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.98 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"NODESC \00", [24 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"STOPIRQEN \00", [21 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"EORIRQEN \00", [22 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"EORJMPEN \00", [22 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EORSTOPEN \00", [21 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SETCMPST \00", [22 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CLRCMPST \00", [22 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CMPST \00", [25 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"EORINTR \00", [23 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"REQPEND \00", [23 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"STOPSTATE \00", [21 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ENDINTR \00", [23 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"STARTINTR \00", [21 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BUSERR \00", [24 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\09DCMD  = %08x (%s%s%s%s%s%s%sburst=%d width=%d len=%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"INCSRCADDR \00", [20 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"INCTRGADDR \00", [20 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FLOWSRC \00", [23 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FLOWTRG \00", [23 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"STARTIRQEN \00", [20 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ENDIRQEN \00", [22 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ENDIAN \00", [24 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\09DSADR = %08x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\09DTADR = %08x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\09DDADR = %08x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DMA channel %d descriptors :\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[%03d] First descriptor unknown\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[%03d] Desc at %08lx(virt %p)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[%03d] Desc at %08lx ... max display reached\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%03d] Desc at %08lx is %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DDADR_STOP\00", [21 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DMA channel %d requester :\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\09Requester %d (MAPVLD=%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.131 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.132 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@___asan_gen_.133 = private unnamed_addr constant [12 x i8] c"pxad_driver\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1435, i32 31 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1437, i32 11 }
@___asan_gen_.139 = private unnamed_addr constant [12 x i8] c"pxad_dt_ids\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1277, i32 34 }
@___asan_gen_.142 = private unnamed_addr constant [14 x i8] c"pxad_id_table\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1430, i32 40 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1359, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1368, i32 41 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1370, i32 47 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1373, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1408, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1417, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1425, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 929, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 895, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 755, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 856, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 790, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 813, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 437, i32 9 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 446, i32 10 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 978, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1026, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1037, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1337, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 698, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1138, i32 10 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1140, i32 10 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1182, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 836, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 495, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 500, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 511, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 400, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 458, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 473, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1085, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1092, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 486, i32 9 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 413, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1267, i32 4 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 621, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 644, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 593, i32 9 }
@___asan_gen_.379 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 596, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant [26 x i8] c"../drivers/dma/virt-dma.h\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 101, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 352, i32 22 }
@___asan_gen_.397 = private unnamed_addr constant [11 x i8] c"state_fops\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 316, i32 1 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 354, i32 31 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 310, i32 14 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 311, i32 16 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 328, i32 42 }
@___asan_gen_.412 = private unnamed_addr constant [16 x i8] c"chan_state_fops\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 317, i32 1 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 333, i32 22 }
@___asan_gen_.418 = private unnamed_addr constant [17 x i8] c"descriptors_fops\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 318, i32 1 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 334, i32 22 }
@___asan_gen_.424 = private unnamed_addr constant [20 x i8] c"requester_chan_fops\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 319, i32 1 }
@___asan_gen_.427 = private unnamed_addr constant [9 x i8] c"str_prio\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 267, i32 28 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 268, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 268, i32 11 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 268, i32 21 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 268, i32 28 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 276, i32 16 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 277, i32 16 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 279, i32 16 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 281, i32 6 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 281, i32 14 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 282, i32 16 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 283, i32 12 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 283, i32 31 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 284, i32 6 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 284, i32 31 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 285, i32 6 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 285, i32 30 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 286, i32 6 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 286, i32 30 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 287, i32 6 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 287, i32 27 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 288, i32 6 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 288, i32 29 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 289, i32 6 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 289, i32 29 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 290, i32 6 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 292, i32 16 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 294, i32 6 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 294, i32 32 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 295, i32 6 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 295, i32 29 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 296, i32 6 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 296, i32 32 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 297, i32 6 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 298, i32 16 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 299, i32 16 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 300, i32 16 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 229, i32 16 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 230, i32 16 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 237, i32 17 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 252, i32 17 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 255, i32 17 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 257, i32 7 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 194, i32 16 }
@___asan_gen_.562 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.563 = private constant [25 x i8] c"../drivers/dma/pxa_dma.c\00", align 1
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 198, i32 18 }
@llvm.compiler.used = appending global [160 x ptr] [ptr @__UNIQUE_ID_author276, ptr @__UNIQUE_ID_description275, ptr @__UNIQUE_ID_file277, ptr @__UNIQUE_ID_license278, ptr @__exitcall_pxad_driver_exit, ptr @__initcall__kmod_pxa_dma__274_1459_pxad_driver_init6, ptr @clear_chan_irq._entry, ptr @clear_chan_irq._entry_ptr, ptr @pxad_alloc_chan_resources._entry, ptr @pxad_alloc_chan_resources._entry_ptr, ptr @pxad_alloc_desc._entry, ptr @pxad_alloc_desc._entry_ptr, ptr @pxad_driver_exit, ptr @pxad_init_phys._entry, ptr @pxad_init_phys._entry_ptr, ptr @pxad_prep_dma_cyclic._entry, ptr @pxad_prep_dma_cyclic._entry_ptr, ptr @pxad_probe._entry, ptr @pxad_probe._entry.13, ptr @pxad_probe._entry.16, ptr @pxad_probe._entry.9, ptr @pxad_probe._entry_ptr, ptr @pxad_probe._entry_ptr.12, ptr @pxad_probe._entry_ptr.15, ptr @pxad_probe._entry_ptr.19, ptr @pxad_driver, ptr @.str, ptr @pxad_dt_ids, ptr @pxad_id_table, ptr @pxad_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @pxad_init_dmadev.__key, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @state_fops, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @chan_state_fops, ptr @.str.84, ptr @descriptors_fops, ptr @.str.85, ptr @requester_chan_fops, ptr @chan_state_show.str_prio, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130], section "llvm.metadata"
@0 = internal global [144 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxad_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxad_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxad_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxad_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxad_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxad_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxad_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxad_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxad_alloc_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxad_prep_dma_cyclic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxad_init_dmadev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxad_alloc_chan_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxad_init_phys._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clear_chan_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @state_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chan_state_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @descriptors_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @requester_chan_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chan_state_show.str_prio to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pxad_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pxad_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pxad_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @pxad_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxad_probe(ptr noundef %op) #2 align 64 {
entry:
  %dma_channels = alloca i32, align 4
  %nb_requestors = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %op, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %op, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_channels) #9
  %2 = ptrtoint ptr %dma_channels to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %dma_channels, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nb_requestors) #9
  %3 = ptrtoint ptr %nb_requestors to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %nb_requestors, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 432, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  %phy_lock = getelementptr inbounds %struct.pxad_device, ptr %call.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %phy_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @pxad_probe.__key, i16 noundef signext 3) #9
  %call4 = tail call ptr @platform_get_resource(ptr noundef %op, i32 noundef 512, i32 noundef 0) #9
  %call6 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call4) #9
  %base = getelementptr inbounds %struct.pxad_device, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call6, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end12:                                         ; preds = %do.body
  %call14 = tail call ptr @of_match_device(ptr noundef nonnull @pxad_dt_ids, ptr noundef %dev) #9
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end12
  %of_node = getelementptr inbounds %struct.platform_device, ptr %op, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.2, ptr noundef nonnull %dma_channels, i32 noundef 1, i32 noundef 0) #9
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %call.i.i153 = call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull %nb_requestors, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i153)
  %tobool22.not = icmp sgt i32 %call.i.i153, -1
  br i1 %tobool22.not, label %if.then16.if.end39_crit_edge, label %do.end26

if.then16.if.end39_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

do.end26:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %dev27 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 15
  %10 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev27, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.4, i32 noundef %call.i.i153) #12
  %12 = ptrtoint ptr %nb_requestors to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 32, ptr %nb_requestors, align 4
  br label %if.end39

if.else:                                          ; preds = %if.end12
  %tobool29.not = icmp eq ptr %1, null
  br i1 %tobool29.not, label %if.else.if.else37_crit_edge, label %land.lhs.true

if.else.if.else37_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else37

land.lhs.true:                                    ; preds = %if.else
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool31.not = icmp eq i32 %14, 0
  br i1 %tobool31.not, label %land.lhs.true.if.else37_crit_edge, label %if.then32

land.lhs.true.if.else37_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else37

if.then32:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %dma_channels to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %dma_channels, align 4
  %nb_requestors34 = getelementptr inbounds %struct.mmp_dma_platdata, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %nb_requestors34 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nb_requestors34, align 4
  %18 = ptrtoint ptr %nb_requestors to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %nb_requestors, align 4
  %slave_map35 = getelementptr inbounds %struct.mmp_dma_platdata, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %slave_map35 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %slave_map35, align 4
  %slave_map_cnt36 = getelementptr inbounds %struct.mmp_dma_platdata, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %slave_map_cnt36 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %slave_map_cnt36, align 4
  br label %if.end39

if.else37:                                        ; preds = %land.lhs.true.if.else37_crit_edge, %if.else.if.else37_crit_edge
  %23 = ptrtoint ptr %dma_channels to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 32, ptr %dma_channels, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.else37, %if.then32, %do.end26, %if.then16.if.end39_crit_edge
  %slave_map.0 = phi ptr [ null, %do.end26 ], [ null, %if.then16.if.end39_crit_edge ], [ %20, %if.then32 ], [ null, %if.else37 ]
  %slave_map_cnt.0 = phi i32 [ 0, %do.end26 ], [ 0, %if.then16.if.end39_crit_edge ], [ %22, %if.then32 ], [ 0, %if.else37 ]
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 6
  call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #9
  call void @_set_bit(i32 noundef 0, ptr noundef %cap_mask) #9
  call void @_set_bit(i32 noundef 12, ptr noundef %cap_mask) #9
  call void @_set_bit(i32 noundef 9, ptr noundef %cap_mask) #9
  %device_prep_dma_memcpy = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 30
  %24 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @pxad_prep_memcpy, ptr %device_prep_dma_memcpy, align 4
  %device_prep_slave_sg = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 39
  %25 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @pxad_prep_slave_sg, ptr %device_prep_slave_sg, align 4
  %device_prep_dma_cyclic = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 40
  %26 = ptrtoint ptr %device_prep_dma_cyclic to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @pxad_prep_dma_cyclic, ptr %device_prep_dma_cyclic, align 4
  %filter = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 5
  %map = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 5, i32 2
  %27 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %slave_map.0, ptr %map, align 4
  %mapcnt = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 5, i32 1
  %28 = ptrtoint ptr %mapcnt to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %slave_map_cnt.0, ptr %mapcnt, align 4
  %29 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @pxad_filter_fn, ptr %filter, align 4
  %copy_align = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 10
  %30 = ptrtoint ptr %copy_align to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 3, ptr %copy_align, align 4
  %src_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 19
  %31 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 7, ptr %src_addr_widths, align 4
  %dst_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 20
  %32 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 7, ptr %dst_addr_widths, align 4
  %directions = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 21
  %33 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 6, ptr %directions, align 4
  %residue_granularity = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 26
  %34 = ptrtoint ptr %residue_granularity to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %residue_granularity, align 4
  %descriptor_reuse = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 25
  %35 = ptrtoint ptr %descriptor_reuse to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %descriptor_reuse, align 4
  %dev63 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 15
  %36 = ptrtoint ptr %dev63 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %dev, ptr %dev63, align 4
  %37 = ptrtoint ptr %dma_channels to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma_channels, align 4
  %39 = ptrtoint ptr %nb_requestors to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nb_requestors, align 4
  %nr_chans.i = getelementptr inbounds %struct.pxad_device, ptr %call.i, i32 0, i32 1
  %41 = ptrtoint ptr %nr_chans.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %38, ptr %nr_chans.i, align 4
  %nr_requestors1.i = getelementptr inbounds %struct.pxad_device, ptr %call.i, i32 0, i32 2
  %42 = ptrtoint ptr %nr_requestors1.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %40, ptr %nr_requestors1.i, align 4
  %channels.i = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3
  %43 = ptrtoint ptr %channels.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %channels.i, ptr %channels.i, align 4
  %prev.i.i = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3, i32 1
  %44 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %channels.i, ptr %prev.i.i, align 4
  %device_alloc_chan_resources.i = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 27
  %45 = ptrtoint ptr %device_alloc_chan_resources.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @pxad_alloc_chan_resources, ptr %device_alloc_chan_resources.i, align 4
  %device_free_chan_resources.i = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 29
  %46 = ptrtoint ptr %device_free_chan_resources.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @pxad_free_chan_resources, ptr %device_free_chan_resources.i, align 4
  %device_tx_status.i = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 49
  %47 = ptrtoint ptr %device_tx_status.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @pxad_tx_status, ptr %device_tx_status.i, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 50
  %48 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @pxad_issue_pending, ptr %device_issue_pending.i, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 44
  %49 = ptrtoint ptr %device_config.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @pxad_config, ptr %device_config.i, align 4
  %device_synchronize.i = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 48
  %50 = ptrtoint ptr %device_synchronize.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @pxad_synchronize, ptr %device_synchronize.i, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 47
  %51 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @pxad_terminate_all, ptr %device_terminate_all.i, align 4
  %coherent_dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %op, i32 0, i32 3, i32 19
  %52 = ptrtoint ptr %coherent_dma_mask.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %coherent_dma_mask.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %53)
  %tobool.not.i = icmp eq i64 %53, 0
  %..i = select i1 %tobool.not.i, i64 4294967295, i64 %53
  %call13.i = call i32 @dma_set_mask(ptr noundef %dev, i64 noundef %..i) #9
  %call.i.i154 = call i32 @platform_get_irq(ptr noundef %op, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i154)
  %cmp.i.i = icmp slt i32 %call.i.i154, 0
  br i1 %cmp.i.i, label %if.end39.do.end69_crit_edge, label %if.end.i.i

if.end39.do.end69_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end69

if.end.i.i:                                       ; preds = %if.end39
  %54 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %38, i32 12) #9
  %55 = extractvalue { i32, i1 } %54, 1
  br i1 %55, label %devm_kcalloc.exit.thread.i.i, label %devm_kcalloc.exit.i.i, !prof !311

devm_kcalloc.exit.thread.i.i:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %phys75.i.i = getelementptr inbounds %struct.pxad_device, ptr %call.i, i32 0, i32 4
  %56 = ptrtoint ptr %phys75.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %phys75.i.i, align 4
  br label %do.end69

devm_kcalloc.exit.i.i:                            ; preds = %if.end.i.i
  %57 = extractvalue { i32, i1 } %54, 0
  %call5.i.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %57, i32 noundef 3520) #9
  %phys.i.i = getelementptr inbounds %struct.pxad_device, ptr %call.i, i32 0, i32 4
  %58 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call5.i.i.i.i, ptr %phys.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call5.i.i.i.i, null
  br i1 %tobool.not.i.i, label %devm_kcalloc.exit.i.i.do.end69_crit_edge, label %for.cond.preheader.i.i

devm_kcalloc.exit.i.i.do.end69_crit_edge:         ; preds = %devm_kcalloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end69

for.cond.preheader.i.i:                           ; preds = %devm_kcalloc.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp581.not.i.i = icmp eq i32 %38, 0
  br i1 %cmp581.not.i.i, label %for.cond.preheader.i.i.pxad_init_dmadev.exit_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.pxad_init_dmadev.exit_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pxad_init_dmadev.exit

for.body13.lr.ph.i.i:                             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select.i.i)
  %cmp17.i.i = icmp sgt i32 %spec.select.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select.i.i)
  %cmp23.i.i = icmp eq i32 %spec.select.i.i, 1
  br label %for.body13.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.083.i.i = phi i32 [ %inc10.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %nr_irq.082.i.i = phi i32 [ %spec.select.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %call6.i.i = call i32 @platform_get_irq(ptr noundef %op, i32 noundef %i.083.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp7.i.i = icmp sgt i32 %call6.i.i, 0
  %inc.i.i = zext i1 %cmp7.i.i to i32
  %spec.select.i.i = add i32 %nr_irq.082.i.i, %inc.i.i
  %inc10.i.i = add nuw i32 %i.083.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc10.i.i, %38
  br i1 %exitcond.not.i.i, label %for.body13.lr.ph.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.cond11.i.i:                                   ; preds = %if.end29.i.i
  %inc35.i.i = add nuw i32 %i.185.i.i, 1
  %exitcond90.not.i.i = icmp eq i32 %inc35.i.i, %38
  br i1 %exitcond90.not.i.i, label %for.cond11.i.i.for.body.i_crit_edge, label %for.cond11.i.i.for.body13.i.i_crit_edge

for.cond11.i.i.for.body13.i.i_crit_edge:          ; preds = %for.cond11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body13.i.i

for.cond11.i.i.for.body.i_crit_edge:              ; preds = %for.cond11.i.i
  br label %for.body.i

for.body13.i.i:                                   ; preds = %for.cond11.i.i.for.body13.i.i_crit_edge, %for.body13.lr.ph.i.i
  %ret.087.i.i = phi i32 [ -1, %for.body13.lr.ph.i.i ], [ 0, %for.cond11.i.i.for.body13.i.i_crit_edge ]
  %i.185.i.i = phi i32 [ 0, %for.body13.lr.ph.i.i ], [ %inc35.i.i, %for.cond11.i.i.for.body13.i.i_crit_edge ]
  %59 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %phys.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.pxad_phy, ptr %60, i32 %i.185.i.i
  %61 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base, align 4
  %base15.i.i = getelementptr %struct.pxad_phy, ptr %60, i32 %i.185.i.i, i32 1
  %63 = ptrtoint ptr %base15.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %base15.i.i, align 4
  %64 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %i.185.i.i, ptr %arrayidx.i.i, align 4
  %call16.i.i = call i32 @platform_get_irq(ptr noundef %op, i32 noundef %i.185.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %cmp18.i.i = icmp sgt i32 %call16.i.i, 0
  %or.cond.i.i = select i1 %cmp17.i.i, i1 %cmp18.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end22.thread.i.i, label %if.end22.i.i

if.end22.thread.i.i:                              ; preds = %for.body13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call16.i.i, ptr noundef nonnull @pxad_chan_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %arrayidx.i.i) #9
  br label %if.end29.i.i

if.end22.i.i:                                     ; preds = %for.body13.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.185.i.i)
  %cmp25.i.i = icmp eq i32 %i.185.i.i, 0
  %or.cond72.i.i = and i1 %cmp23.i.i, %cmp25.i.i
  br i1 %or.cond72.i.i, label %if.then26.i.i, label %if.end22.i.i.if.end29.i.i_crit_edge

if.end22.i.i.if.end29.i.i_crit_edge:              ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i.i

if.then26.i.i:                                    ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i73.i.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call.i.i154, ptr noundef nonnull @pxad_int_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %call.i) #9
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then26.i.i, %if.end22.i.i.if.end29.i.i_crit_edge, %if.end22.thread.i.i
  %ret.2.i.i = phi i32 [ %call.i73.i.i, %if.then26.i.i ], [ %ret.087.i.i, %if.end22.i.i.if.end29.i.i_crit_edge ], [ %call.i.i.i, %if.end22.thread.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.i.i)
  %tobool30.not.i.i = icmp eq i32 %ret.2.i.i, 0
  br i1 %tobool30.not.i.i, label %for.cond11.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev63, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70, i32 noundef %call16.i.i, i32 noundef %ret.2.i.i) #12
  br label %do.end69

for.body.i:                                       ; preds = %if.end22.i.for.body.i_crit_edge, %for.cond11.i.i.for.body.i_crit_edge
  %i.061.i = phi i32 [ %inc.i, %if.end22.i.for.body.i_crit_edge ], [ 0, %for.cond11.i.i.for.body.i_crit_edge ]
  %call.i55.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 304, i32 noundef 3520) #9
  %tobool20.not.i = icmp eq ptr %call.i55.i, null
  br i1 %tobool20.not.i, label %for.body.i.do.end69_crit_edge, label %if.end22.i

for.body.i.do.end69_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end69

if.end22.i:                                       ; preds = %for.body.i
  %drcmr.i = getelementptr inbounds %struct.pxad_chan, ptr %call.i55.i, i32 0, i32 1
  %67 = ptrtoint ptr %drcmr.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -1, ptr %drcmr.i, align 4
  %prio.i = getelementptr inbounds %struct.pxad_chan, ptr %call.i55.i, i32 0, i32 2
  %68 = ptrtoint ptr %prio.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 3, ptr %prio.i, align 4
  %desc_free.i = getelementptr inbounds %struct.virt_dma_chan, ptr %call.i55.i, i32 0, i32 2
  %69 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @pxad_free_desc, ptr %desc_free.i, align 4
  call void @vchan_init(ptr noundef nonnull %call.i55.i, ptr noundef %call.i) #9
  %wq_state.i = getelementptr inbounds %struct.pxad_chan, ptr %call.i55.i, i32 0, i32 8
  call void @__init_waitqueue_head(ptr noundef %wq_state.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @pxad_init_dmadev.__key) #9
  %inc.i = add nuw i32 %i.061.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %38
  br i1 %exitcond.not.i, label %if.end22.i.pxad_init_dmadev.exit_crit_edge, label %if.end22.i.for.body.i_crit_edge

if.end22.i.for.body.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end22.i.pxad_init_dmadev.exit_crit_edge:       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pxad_init_dmadev.exit

pxad_init_dmadev.exit:                            ; preds = %if.end22.i.pxad_init_dmadev.exit_crit_edge, %for.cond.preheader.i.i.pxad_init_dmadev.exit_crit_edge
  %call26.i = call i32 @dmaenginem_async_device_register(ptr noundef %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool65.not = icmp eq i32 %call26.i, 0
  br i1 %tobool65.not, label %if.end72, label %pxad_init_dmadev.exit.do.end69_crit_edge

pxad_init_dmadev.exit.do.end69_crit_edge:         ; preds = %pxad_init_dmadev.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end69

do.end69:                                         ; preds = %pxad_init_dmadev.exit.do.end69_crit_edge, %for.body.i.do.end69_crit_edge, %do.end.i.i, %devm_kcalloc.exit.i.i.do.end69_crit_edge, %devm_kcalloc.exit.thread.i.i, %if.end39.do.end69_crit_edge
  %retval.0.i157 = phi i32 [ %call26.i, %pxad_init_dmadev.exit.do.end69_crit_edge ], [ %ret.2.i.i, %do.end.i.i ], [ %call.i.i154, %if.end39.do.end69_crit_edge ], [ -12, %devm_kcalloc.exit.i.i.do.end69_crit_edge ], [ -12, %devm_kcalloc.exit.thread.i.i ], [ -12, %for.body.i.do.end69_crit_edge ]
  %70 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev63, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.10) #12
  br label %cleanup

if.end72:                                         ; preds = %pxad_init_dmadev.exit
  %of_node74 = getelementptr inbounds %struct.platform_device, ptr %op, i32 0, i32 3, i32 27
  %72 = ptrtoint ptr %of_node74 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %of_node74, align 8
  %tobool75.not = icmp eq ptr %73, null
  br i1 %tobool75.not, label %if.end72.if.end87_crit_edge, label %if.then76

if.end72.if.end87_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

if.then76:                                        ; preds = %if.end72
  %call79 = call i32 @of_dma_controller_register(ptr noundef nonnull %73, ptr noundef nonnull @pxad_dma_xlate, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp = icmp slt i32 %call79, 0
  br i1 %cmp, label %do.end83, label %if.then76.if.end87_crit_edge

if.then76.if.end87_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

do.end83:                                         ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev63, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.14) #12
  br label %cleanup

if.end87:                                         ; preds = %if.then76.if.end87_crit_edge, %if.end72.if.end87_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %op, i32 0, i32 3, i32 8
  %76 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call fastcc void @pxad_init_debugfs(ptr noundef nonnull %call.i)
  %77 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev63, align 4
  %79 = ptrtoint ptr %dma_channels to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %dma_channels, align 4
  %81 = ptrtoint ptr %nb_requestors to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %nb_requestors, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %78, ptr noundef nonnull @.str.17, i32 noundef %80, i32 noundef %82) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end87, %do.end83, %do.end69, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then9 ], [ %retval.0.i157, %do.end69 ], [ %call79, %do.end83 ], [ 0, %if.end87 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nb_requestors) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_channels) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxad_remove(ptr nocapture noundef readonly %op) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %op, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dbgfs_root.i = getelementptr inbounds %struct.pxad_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dbgfs_root.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dbgfs_root.i, align 4
  tail call void @debugfs_remove(ptr noundef %3) #9
  %channels.i = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channels.i, align 4
  %cmp.not26.i = icmp eq ptr %5, %channels.i
  br i1 %cmp.not26.i, label %entry.pxad_free_channels.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.pxad_free_channels.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pxad_free_channels.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn.in27.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %5, %entry.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %.pn.in27.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load ptr, ptr %.pn.in27.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in27.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in27.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %.pn.in27.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %.pn.in27.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %13 = ptrtoint ptr %.pn.in27.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in27.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in27.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %task.i = getelementptr i8, ptr %.pn.in27.i, i32 32
  tail call void @tasklet_kill(ptr noundef %task.i) #9
  %cmp.not.i = icmp eq ptr %.pn.i, %channels.i
  br i1 %cmp.not.i, label %list_del.exit.i.pxad_free_channels.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

list_del.exit.i.pxad_free_channels.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pxad_free_channels.exit

pxad_free_channels.exit:                          ; preds = %list_del.exit.i.pxad_free_channels.exit_crit_edge, %entry.pxad_free_channels.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pxad_prep_memcpy(ptr noundef %dchan, i32 noundef %dma_dst, i32 noundef %dma_src, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dchan, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool1.not = icmp eq i32 %len, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxad_prep_memcpy.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxad_prep_memcpy, %do.end)) #9
          to label %if.then7 [label %do.end], !srcloc !312

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 5
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %device = getelementptr inbounds %struct.dma_chan_dev, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxad_prep_memcpy.__UNIQUE_ID_ddebug262, ptr noundef %device, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef %dma_dst, i32 noundef %dma_src, i32 noundef %len, i32 noundef %flags) #9
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxad_get_config.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxad_prep_memcpy, %pxad_get_config.exit)) #9
          to label %if.then29.i [label %pxad_get_config.exit], !srcloc !312

if.then29.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 5
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %device32.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxad_get_config.__UNIQUE_ID_ddebug261, ptr noundef %device32.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  br label %pxad_get_config.exit

pxad_get_config.exit:                             ; preds = %if.then29.i, %do.end
  %sub = add i32 %len, 8183
  %div = udiv i32 %sub, 8184
  %add10 = add nuw nsw i32 %div, 1
  %call11 = tail call fastcc ptr @pxad_alloc_desc(ptr noundef nonnull %dchan, i32 noundef %add10)
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %pxad_get_config.exit.cleanup_crit_edge, label %if.end14

pxad_get_config.exit.cleanup_crit_edge:           ; preds = %pxad_get_config.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %pxad_get_config.exit
  %len15 = getelementptr inbounds %struct.pxad_desc_sw, ptr %call11, i32 0, i32 2
  %4 = ptrtoint ptr %len15 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %len, ptr %len15, align 4
  %5 = or i32 %dma_src, %dma_dst
  %6 = and i32 %5, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %if.end14.do.body21.preheader_crit_edge, label %if.then19

if.end14.do.body21.preheader_crit_edge:           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body21.preheader

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %misaligned = getelementptr inbounds %struct.pxad_desc_sw, ptr %call11, i32 0, i32 4
  %8 = ptrtoint ptr %misaligned to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %misaligned, align 4
  br label %do.body21.preheader

do.body21.preheader:                              ; preds = %if.then19, %if.end14.do.body21.preheader_crit_edge
  br label %do.body21

do.body21:                                        ; preds = %do.body21.do.body21_crit_edge, %do.body21.preheader
  %len.addr.0 = phi i32 [ %sub27, %do.body21.do.body21_crit_edge ], [ %len, %do.body21.preheader ]
  %i.0 = phi i32 [ %inc, %do.body21.do.body21_crit_edge ], [ 0, %do.body21.preheader ]
  %dma_src.addr.0 = phi i32 [ %add28, %do.body21.do.body21_crit_edge ], [ %dma_src, %do.body21.preheader ]
  %dma_dst.addr.0 = phi i32 [ %add29, %do.body21.do.body21_crit_edge ], [ %dma_dst, %do.body21.preheader ]
  %inc = add i32 %i.0, 1
  %arrayidx = getelementptr %struct.pxad_desc_sw, ptr %call11, i32 0, i32 7, i32 %i.0
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %11 = tail call i32 @llvm.umin.i32(i32 %len.addr.0, i32 8184)
  %or = or i32 %11, -1073545216
  %dcmd26 = getelementptr inbounds %struct.pxad_desc_hw, ptr %10, i32 0, i32 3
  %12 = ptrtoint ptr %dcmd26 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or, ptr %dcmd26, align 4
  %dsadr = getelementptr inbounds %struct.pxad_desc_hw, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %dsadr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %dma_src.addr.0, ptr %dsadr, align 4
  %dtadr = getelementptr inbounds %struct.pxad_desc_hw, ptr %10, i32 0, i32 2
  %14 = ptrtoint ptr %dtadr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %dma_dst.addr.0, ptr %dtadr, align 8
  %sub27 = sub i32 %len.addr.0, %11
  %add28 = add i32 %dma_src.addr.0, %11
  %add29 = add i32 %dma_dst.addr.0, %11
  %tobool31.not = icmp eq i32 %sub27, 0
  br i1 %tobool31.not, label %do.end32, label %do.body21.do.body21_crit_edge

do.body21.do.body21_crit_edge:                    ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body21

do.end32:                                         ; preds = %do.body21
  %nb_desc.i = getelementptr inbounds %struct.pxad_desc_sw, ptr %call11, i32 0, i32 1
  %15 = ptrtoint ptr %nb_desc.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nb_desc.i, align 4
  %sub.i = add i32 %16, -1
  %arrayidx.i = getelementptr %struct.pxad_desc_sw, ptr %call11, i32 0, i32 7, i32 %sub.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %sub3.i = add i32 %16, -2
  %arrayidx4.i = getelementptr %struct.pxad_desc_sw, ptr %call11, i32 0, i32 7, i32 %sub3.i
  %19 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx4.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 16
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %18, align 16
  %dsadr.i = getelementptr inbounds %struct.pxad_desc_hw, ptr %18, i32 0, i32 1
  %24 = ptrtoint ptr %dsadr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %22, ptr %dsadr.i, align 4
  %add.i = add i32 %22, 8
  %dtadr.i = getelementptr inbounds %struct.pxad_desc_hw, ptr %18, i32 0, i32 2
  %25 = ptrtoint ptr %dtadr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add.i, ptr %dtadr.i, align 8
  %dcmd.i = getelementptr inbounds %struct.pxad_desc_hw, ptr %18, i32 0, i32 3
  %and.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 245764, i32 2342916
  %26 = ptrtoint ptr %dcmd.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %spec.select.i, ptr %dcmd.i, align 4
  %cyclic.i = getelementptr inbounds %struct.pxad_desc_sw, ptr %call11, i32 0, i32 5
  %27 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %cyclic.i, align 1, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool7.not.i = icmp eq i8 %28, 0
  br i1 %tobool7.not.i, label %do.end32.set_updater_desc.exit_crit_edge, label %if.then8.i

do.end32.set_updater_desc.exit_crit_edge:         ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_updater_desc.exit

if.then8.i:                                       ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #11
  %first.i = getelementptr inbounds %struct.pxad_desc_sw, ptr %call11, i32 0, i32 3
  %29 = ptrtoint ptr %first.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %first.i, align 4
  %31 = ptrtoint ptr %nb_desc.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nb_desc.i, align 4
  %sub11.i = add i32 %32, -2
  %arrayidx12.i = getelementptr %struct.pxad_desc_sw, ptr %call11, i32 0, i32 7, i32 %sub11.i
  %33 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx12.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %30, ptr %34, align 16
  br label %set_updater_desc.exit

set_updater_desc.exit:                            ; preds = %if.then8.i, %do.end32.set_updater_desc.exit_crit_edge
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call11, i32 0, i32 2
  %36 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %node.i, ptr %node.i, align 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call11, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %node.i, ptr %prev.i.i, align 4
  tail call void @dma_async_tx_descriptor_init(ptr noundef %call11, ptr noundef %dchan) #9
  %flags2.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call11, i32 0, i32 1
  %38 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %flags, ptr %flags2.i.i, align 4
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call11, i32 0, i32 4
  %39 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @vchan_tx_submit, ptr %tx_submit.i.i, align 4
  %desc_free.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call11, i32 0, i32 5
  %40 = ptrtoint ptr %desc_free.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i.i, align 4
  %tx_result.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call11, i32 0, i32 1
  %41 = ptrtoint ptr %tx_result.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %tx_result.i.i, align 4
  %residue.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call11, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %residue.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %residue.i.i, align 4
  %lock.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 3
  %call7.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #9
  %desc_allocated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 4
  %prev.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 4, i32 1
  %43 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %44, ptr noundef %desc_allocated.i.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %set_updater_desc.exit.vchan_tx_prep.exit.i_crit_edge

set_updater_desc.exit.vchan_tx_prep.exit.i_crit_edge: ; preds = %set_updater_desc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_tx_prep.exit.i

if.end.i.i.i.i:                                   ; preds = %set_updater_desc.exit
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %node.i, ptr %prev.i.i.i, align 4
  %46 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %desc_allocated.i.i, ptr %node.i, align 4
  %47 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev.i.i, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %node.i, ptr %44, align 4
  br label %vchan_tx_prep.exit.i

vchan_tx_prep.exit.i:                             ; preds = %if.end.i.i.i.i, %set_updater_desc.exit.vchan_tx_prep.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call7.i.i) #9
  %49 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @pxad_tx_submit, ptr %tx_submit.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxad_tx_prep.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxad_prep_memcpy, %cleanup)) #9
          to label %if.then.i [label %cleanup], !srcloc !312

if.then.i:                                        ; preds = %vchan_tx_prep.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i72 = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 5
  %50 = ptrtoint ptr %dev.i72 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i72, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %call11, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxad_tx_prep.__UNIQUE_ID_ddebug260, ptr noundef %device.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27, ptr noundef %dchan, ptr noundef %call11, i32 noundef %53, i32 noundef %flags) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %vchan_tx_prep.exit.i, %pxad_get_config.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %pxad_get_config.exit.cleanup_crit_edge ], [ %call11, %vchan_tx_prep.exit.i ], [ %call11, %if.then.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pxad_prep_slave_sg(ptr noundef %dchan, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %dir, i32 noundef %flags, ptr nocapture noundef readnone %context) #2 align 64 {
entry:
  %dcmd = alloca i32, align 4
  %dsadr = alloca i32, align 4
  %dtadr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dcmd) #9
  %0 = ptrtoint ptr %dcmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dcmd, align 4, !annotation !314
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dsadr) #9
  %1 = ptrtoint ptr %dsadr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %dsadr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dtadr) #9
  %2 = ptrtoint ptr %dtadr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %dtadr, align 4
  %cmp = icmp eq ptr %sgl, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %cmp1 = icmp eq i32 %sg_len, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @pxad_get_config(ptr noundef %dchan, i32 noundef %dir, ptr noundef nonnull %dcmd, ptr noundef nonnull %dsadr, ptr noundef nonnull %dtadr)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxad_prep_slave_sg.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxad_prep_slave_sg, %for.body)) #9
          to label %if.then6 [label %for.body], !srcloc !312

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 5
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %device = getelementptr inbounds %struct.dma_chan_dev, ptr %4, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxad_prep_slave_sg.__UNIQUE_ID_ddebug265, ptr noundef %device, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.39, i32 noundef %dir, i32 noundef %flags) #9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then6, %if.end
  %i.0112 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then6 ], [ 0, %if.end ]
  %nb_desc.0111 = phi i32 [ %add10, %for.body.for.body_crit_edge ], [ 0, %if.then6 ], [ 0, %if.end ]
  %sg.0110 = phi ptr [ %call11, %for.body.for.body_crit_edge ], [ %sgl, %if.then6 ], [ %sgl, %if.end ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0110, i32 0, i32 4
  %5 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dma_length, align 4
  %sub = add i32 %6, 8183
  %div = udiv i32 %sub, 8184
  %add10 = add i32 %div, %nb_desc.0111
  %inc = add nuw i32 %i.0112, 1
  %call11 = call ptr @sg_next(ptr noundef %sg.0110) #9
  %exitcond.not = icmp eq i32 %inc, %sg_len
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  %phi.bo = add i32 %add10, 1
  %call13 = call fastcc ptr @pxad_alloc_desc(ptr noundef %dchan, i32 noundef %phi.bo)
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %for.end.cleanup_crit_edge, label %for.body19.lr.ph

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body19.lr.ph:                                 ; preds = %for.end
  %len21 = getelementptr inbounds %struct.pxad_desc_sw, ptr %call13, i32 0, i32 2
  %7 = ptrtoint ptr %dsadr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dsadr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool31.not = icmp eq i32 %8, 0
  %9 = ptrtoint ptr %dtadr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dtadr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool39.not = icmp eq i32 %10, 0
  %misaligned = getelementptr inbounds %struct.pxad_desc_sw, ptr %call13, i32 0, i32 4
  br label %for.body19

for.body19:                                       ; preds = %for.inc53.for.body19_crit_edge, %for.body19.lr.ph
  %j.0116 = phi i32 [ 0, %for.body19.lr.ph ], [ %inc45, %for.inc53.for.body19_crit_edge ]
  %i.1115 = phi i32 [ 0, %for.body19.lr.ph ], [ %inc54, %for.inc53.for.body19_crit_edge ]
  %sg.1114 = phi ptr [ %sgl, %for.body19.lr.ph ], [ %call55, %for.inc53.for.body19_crit_edge ]
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.1114, i32 0, i32 3
  %11 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_address, align 4
  %dma_length20 = getelementptr inbounds %struct.scatterlist, ptr %sg.1114, i32 0, i32 4
  %13 = ptrtoint ptr %dma_length20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_length20, align 4
  %15 = ptrtoint ptr %len21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len21, align 4
  %add22 = add i32 %16, %14
  store i32 %add22, ptr %len21, align 4
  %17 = ptrtoint ptr %dcmd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dcmd, align 4
  br label %do.body23

do.body23:                                        ; preds = %if.end28.do.body23_crit_edge, %for.body19
  %avail.0 = phi i32 [ %14, %for.body19 ], [ %sub49, %if.end28.do.body23_crit_edge ]
  %dma.0 = phi i32 [ %12, %for.body19 ], [ %add48, %if.end28.do.body23_crit_edge ]
  %j.1 = phi i32 [ %j.0116, %for.body19 ], [ %inc45, %if.end28.do.body23_crit_edge ]
  %19 = call i32 @llvm.umin.i32(i32 %avail.0, i32 8184)
  %and = and i32 %dma.0, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %do.body23.if.end28_crit_edge, label %if.then27

do.body23.if.end28_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then27:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %misaligned to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %misaligned, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %do.body23.if.end28_crit_edge
  %or = or i32 %18, %19
  %arrayidx = getelementptr %struct.pxad_desc_sw, ptr %call13, i32 0, i32 7, i32 %j.1
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %dcmd30 = getelementptr inbounds %struct.pxad_desc_hw, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %dcmd30 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or, ptr %dcmd30, align 4
  %dma.0. = select i1 %tobool31.not, i32 %dma.0, i32 %8
  %24 = load ptr, ptr %arrayidx, align 4
  %dsadr38 = getelementptr inbounds %struct.pxad_desc_hw, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %dsadr38 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %dma.0., ptr %dsadr38, align 4
  %cond43 = select i1 %tobool39.not, i32 %dma.0, i32 %10
  %inc45 = add i32 %j.1, 1
  %26 = load ptr, ptr %arrayidx, align 4
  %dtadr47 = getelementptr inbounds %struct.pxad_desc_hw, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %dtadr47 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cond43, ptr %dtadr47, align 8
  %add48 = add i32 %dma.0, %19
  %sub49 = sub i32 %avail.0, %19
  %tobool51.not = icmp eq i32 %sub49, 0
  br i1 %tobool51.not, label %for.inc53, label %if.end28.do.body23_crit_edge

if.end28.do.body23_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body23

for.inc53:                                        ; preds = %if.end28
  %inc54 = add nuw i32 %i.1115, 1
  %call55 = call ptr @sg_next(ptr noundef %sg.1114) #9
  %exitcond117.not = icmp eq i32 %inc54, %sg_len
  br i1 %exitcond117.not, label %for.end56, label %for.inc53.for.body19_crit_edge

for.inc53.for.body19_crit_edge:                   ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body19

for.end56:                                        ; preds = %for.inc53
  %nb_desc.i = getelementptr inbounds %struct.pxad_desc_sw, ptr %call13, i32 0, i32 1
  %28 = ptrtoint ptr %nb_desc.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nb_desc.i, align 4
  %sub.i = add i32 %29, -1
  %arrayidx.i = getelementptr %struct.pxad_desc_sw, ptr %call13, i32 0, i32 7, i32 %sub.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i, align 4
  %sub3.i = add i32 %29, -2
  %arrayidx4.i = getelementptr %struct.pxad_desc_sw, ptr %call13, i32 0, i32 7, i32 %sub3.i
  %32 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx4.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 16
  %36 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %31, align 16
  %dsadr.i = getelementptr inbounds %struct.pxad_desc_hw, ptr %31, i32 0, i32 1
  %37 = ptrtoint ptr %dsadr.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %35, ptr %dsadr.i, align 4
  %add.i = add i32 %35, 8
  %dtadr.i = getelementptr inbounds %struct.pxad_desc_hw, ptr %31, i32 0, i32 2
  %38 = ptrtoint ptr %dtadr.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add.i, ptr %dtadr.i, align 8
  %dcmd.i = getelementptr inbounds %struct.pxad_desc_hw, ptr %31, i32 0, i32 3
  %and.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 245764, i32 2342916
  %39 = ptrtoint ptr %dcmd.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %spec.select.i, ptr %dcmd.i, align 4
  %cyclic.i = getelementptr inbounds %struct.pxad_desc_sw, ptr %call13, i32 0, i32 5
  %40 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %cyclic.i, align 1, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool7.not.i = icmp eq i8 %41, 0
  br i1 %tobool7.not.i, label %for.end56.set_updater_desc.exit_crit_edge, label %if.then8.i

for.end56.set_updater_desc.exit_crit_edge:        ; preds = %for.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_updater_desc.exit

if.then8.i:                                       ; preds = %for.end56
  call void @__sanitizer_cov_trace_pc() #11
  %first.i = getelementptr inbounds %struct.pxad_desc_sw, ptr %call13, i32 0, i32 3
  %42 = ptrtoint ptr %first.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %first.i, align 4
  %44 = ptrtoint ptr %nb_desc.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nb_desc.i, align 4
  %sub11.i = add i32 %45, -2
  %arrayidx12.i = getelementptr %struct.pxad_desc_sw, ptr %call13, i32 0, i32 7, i32 %sub11.i
  %46 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx12.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %43, ptr %47, align 16
  br label %set_updater_desc.exit

set_updater_desc.exit:                            ; preds = %if.then8.i, %for.end56.set_updater_desc.exit_crit_edge
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call13, i32 0, i32 2
  %49 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %node.i, ptr %node.i, align 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call13, i32 0, i32 2, i32 1
  %50 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %node.i, ptr %prev.i.i, align 4
  call void @dma_async_tx_descriptor_init(ptr noundef %call13, ptr noundef %dchan) #9
  %flags2.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call13, i32 0, i32 1
  %51 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %flags, ptr %flags2.i.i, align 4
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call13, i32 0, i32 4
  %52 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @vchan_tx_submit, ptr %tx_submit.i.i, align 4
  %desc_free.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call13, i32 0, i32 5
  %53 = ptrtoint ptr %desc_free.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i.i, align 4
  %tx_result.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call13, i32 0, i32 1
  %54 = ptrtoint ptr %tx_result.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %tx_result.i.i, align 4
  %residue.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call13, i32 0, i32 1, i32 1
  %55 = ptrtoint ptr %residue.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %residue.i.i, align 4
  %lock.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 3
  %call7.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #9
  %desc_allocated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 4
  %prev.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 4, i32 1
  %56 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %57, ptr noundef %desc_allocated.i.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %set_updater_desc.exit.vchan_tx_prep.exit.i_crit_edge

set_updater_desc.exit.vchan_tx_prep.exit.i_crit_edge: ; preds = %set_updater_desc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_tx_prep.exit.i

if.end.i.i.i.i:                                   ; preds = %set_updater_desc.exit
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %node.i, ptr %prev.i.i.i, align 4
  %59 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %desc_allocated.i.i, ptr %node.i, align 4
  %60 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev.i.i, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %node.i, ptr %57, align 4
  br label %vchan_tx_prep.exit.i

vchan_tx_prep.exit.i:                             ; preds = %if.end.i.i.i.i, %set_updater_desc.exit.vchan_tx_prep.exit.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call7.i.i) #9
  %62 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @pxad_tx_submit, ptr %tx_submit.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxad_tx_prep.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxad_prep_slave_sg, %cleanup)) #9
          to label %if.then.i [label %cleanup], !srcloc !312

if.then.i:                                        ; preds = %vchan_tx_prep.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 5
  %63 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %call13, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxad_tx_prep.__UNIQUE_ID_ddebug260, ptr noundef %device.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27, ptr noundef %dchan, ptr noundef %call13, i32 noundef %66, i32 noundef %flags) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %vchan_tx_prep.exit.i, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %for.end.cleanup_crit_edge ], [ %call13, %vchan_tx_prep.exit.i ], [ %call13, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dtadr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dsadr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dcmd) #9
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pxad_prep_dma_cyclic(ptr noundef %dchan, i32 noundef %buf_addr, i32 noundef %len, i32 noundef %period_len, i32 noundef %dir, i32 noundef %flags) #2 align 64 {
entry:
  %dcmd = alloca i32, align 4
  %dsadr = alloca i32, align 4
  %dtadr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dcmd) #9
  %0 = ptrtoint ptr %dcmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dcmd, align 4, !annotation !314
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dsadr) #9
  %1 = ptrtoint ptr %dsadr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %dsadr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dtadr) #9
  %2 = ptrtoint ptr %dtadr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %dtadr, align 4
  %tobool.not = icmp eq ptr %dchan, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool1.not = icmp eq i32 %len, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %period_len)
  %tobool3.not = icmp eq i32 %period_len, 0
  %or.cond105 = or i1 %or.cond, %tobool3.not
  br i1 %or.cond105, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dir.off = add i32 %dir, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir.off)
  %switch = icmp ult i32 %dir.off, 2
  br i1 %switch, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 5
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %device = getelementptr inbounds %struct.dma_chan_dev, ptr %4, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device, ptr noundef nonnull @.str.41) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %rem = urem i32 %len, %period_len
  call void @__sanitizer_cov_trace_const_cmp4(i32 8185, i32 %period_len)
  %cmp10 = icmp ult i32 %period_len, 8185
  %and = and i32 %period_len, 7
  %5 = or i32 %rem, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %6 = icmp eq i32 %5, 0
  %7 = and i1 %cmp10, %6
  br i1 %7, label %if.end14, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  call fastcc void @pxad_get_config(ptr noundef nonnull %dchan, i32 noundef %dir, ptr noundef nonnull %dcmd, ptr noundef nonnull %dsadr, ptr noundef nonnull %dtadr)
  %8 = ptrtoint ptr %dcmd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dcmd, align 4
  %or = or i32 %9, %period_len
  %or16 = or i32 %or, 2097152
  store i32 %or16, ptr %dcmd, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxad_prep_dma_cyclic.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxad_prep_dma_cyclic, %do.end30)) #9
          to label %if.then23 [label %do.end30], !srcloc !312

if.then23:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %dev26 = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 5
  %10 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev26, align 4
  %device27 = getelementptr inbounds %struct.dma_chan_dev, ptr %11, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxad_prep_dma_cyclic.__UNIQUE_ID_ddebug268, ptr noundef %device27, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.42, i32 noundef %buf_addr, i32 noundef %len, i32 noundef %period_len, i32 noundef %dir, i32 noundef %flags) #9
  br label %do.end30

do.end30:                                         ; preds = %if.then23, %if.end14
  %add31 = add i32 %len, -1
  %sub32 = add i32 %add31, %period_len
  %div33 = udiv i32 %sub32, %period_len
  %add34 = add i32 %div33, 1
  %call35 = call fastcc ptr @pxad_alloc_desc(ptr noundef nonnull %dchan, i32 noundef %add34)
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %do.end30.cleanup_crit_edge, label %if.end38

do.end30.cleanup_crit_edge:                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end38:                                         ; preds = %do.end30
  %cyclic = getelementptr inbounds %struct.pxad_desc_sw, ptr %call35, i32 0, i32 5
  %12 = ptrtoint ptr %cyclic to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %cyclic, align 1
  %len39 = getelementptr inbounds %struct.pxad_desc_sw, ptr %call35, i32 0, i32 2
  %13 = ptrtoint ptr %len39 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %len, ptr %len39, align 4
  %hw_desc = getelementptr inbounds %struct.pxad_desc_sw, ptr %call35, i32 0, i32 7
  %14 = ptrtoint ptr %dsadr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dsadr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool41.not = icmp eq i32 %15, 0
  %16 = ptrtoint ptr %dtadr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dtadr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool43.not = icmp eq i32 %17, 0
  %18 = ptrtoint ptr %dcmd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dcmd, align 4
  br label %do.body40

do.body40:                                        ; preds = %do.body40.do.body40_crit_edge, %if.end38
  %phw_desc.0 = phi ptr [ %hw_desc, %if.end38 ], [ %incdec.ptr, %do.body40.do.body40_crit_edge ]
  %dma.0 = phi i32 [ %buf_addr, %if.end38 ], [ %add52, %do.body40.do.body40_crit_edge ]
  %len.addr.0 = phi i32 [ %len, %if.end38 ], [ %sub53, %do.body40.do.body40_crit_edge ]
  %dma.0. = select i1 %tobool41.not, i32 %dma.0, i32 %15
  %20 = ptrtoint ptr %phw_desc.0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %phw_desc.0, align 4
  %dsadr42 = getelementptr inbounds %struct.pxad_desc_hw, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %dsadr42 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %dma.0., ptr %dsadr42, align 4
  %cond47 = select i1 %tobool43.not, i32 %dma.0, i32 %17
  %23 = load ptr, ptr %phw_desc.0, align 4
  %dtadr49 = getelementptr inbounds %struct.pxad_desc_hw, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %dtadr49 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cond47, ptr %dtadr49, align 8
  %25 = load ptr, ptr %phw_desc.0, align 4
  %dcmd51 = getelementptr inbounds %struct.pxad_desc_hw, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %dcmd51 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %19, ptr %dcmd51, align 4
  %incdec.ptr = getelementptr ptr, ptr %phw_desc.0, i32 1
  %add52 = add i32 %dma.0, %period_len
  %sub53 = sub i32 %len.addr.0, %period_len
  %tobool55.not = icmp eq i32 %sub53, 0
  br i1 %tobool55.not, label %do.end56, label %do.body40.do.body40_crit_edge

do.body40.do.body40_crit_edge:                    ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body40

do.end56:                                         ; preds = %do.body40
  %nb_desc.i = getelementptr inbounds %struct.pxad_desc_sw, ptr %call35, i32 0, i32 1
  %27 = ptrtoint ptr %nb_desc.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nb_desc.i, align 4
  %sub.i = add i32 %28, -1
  %arrayidx.i = getelementptr %struct.pxad_desc_sw, ptr %call35, i32 0, i32 7, i32 %sub.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 4
  %sub3.i = add i32 %28, -2
  %arrayidx4.i = getelementptr %struct.pxad_desc_sw, ptr %call35, i32 0, i32 7, i32 %sub3.i
  %31 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx4.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 16
  %35 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %30, align 16
  %dsadr.i = getelementptr inbounds %struct.pxad_desc_hw, ptr %30, i32 0, i32 1
  %36 = ptrtoint ptr %dsadr.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %34, ptr %dsadr.i, align 4
  %add.i = add i32 %34, 8
  %dtadr.i = getelementptr inbounds %struct.pxad_desc_hw, ptr %30, i32 0, i32 2
  %37 = ptrtoint ptr %dtadr.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add.i, ptr %dtadr.i, align 8
  %dcmd.i = getelementptr inbounds %struct.pxad_desc_hw, ptr %30, i32 0, i32 3
  %and.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 245764, i32 2342916
  %38 = ptrtoint ptr %dcmd.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %spec.select.i, ptr %dcmd.i, align 4
  %39 = ptrtoint ptr %cyclic to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %cyclic, align 1, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool7.not.i = icmp eq i8 %40, 0
  br i1 %tobool7.not.i, label %do.end56.set_updater_desc.exit_crit_edge, label %if.then8.i

do.end56.set_updater_desc.exit_crit_edge:         ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_updater_desc.exit

if.then8.i:                                       ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #11
  %first.i = getelementptr inbounds %struct.pxad_desc_sw, ptr %call35, i32 0, i32 3
  %41 = ptrtoint ptr %first.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %first.i, align 4
  %43 = ptrtoint ptr %nb_desc.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nb_desc.i, align 4
  %sub11.i = add i32 %44, -2
  %arrayidx12.i = getelementptr %struct.pxad_desc_sw, ptr %call35, i32 0, i32 7, i32 %sub11.i
  %45 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx12.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %42, ptr %46, align 16
  br label %set_updater_desc.exit

set_updater_desc.exit:                            ; preds = %if.then8.i, %do.end56.set_updater_desc.exit_crit_edge
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call35, i32 0, i32 2
  %48 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %node.i, ptr %node.i, align 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call35, i32 0, i32 2, i32 1
  %49 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %node.i, ptr %prev.i.i, align 4
  call void @dma_async_tx_descriptor_init(ptr noundef %call35, ptr noundef %dchan) #9
  %flags2.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call35, i32 0, i32 1
  %50 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %flags, ptr %flags2.i.i, align 4
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call35, i32 0, i32 4
  %51 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @vchan_tx_submit, ptr %tx_submit.i.i, align 4
  %desc_free.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call35, i32 0, i32 5
  %52 = ptrtoint ptr %desc_free.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i.i, align 4
  %tx_result.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call35, i32 0, i32 1
  %53 = ptrtoint ptr %tx_result.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %tx_result.i.i, align 4
  %residue.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call35, i32 0, i32 1, i32 1
  %54 = ptrtoint ptr %residue.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %residue.i.i, align 4
  %lock.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 3
  %call7.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #9
  %desc_allocated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 4
  %prev.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 4, i32 1
  %55 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %56, ptr noundef %desc_allocated.i.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %set_updater_desc.exit.vchan_tx_prep.exit.i_crit_edge

set_updater_desc.exit.vchan_tx_prep.exit.i_crit_edge: ; preds = %set_updater_desc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_tx_prep.exit.i

if.end.i.i.i.i:                                   ; preds = %set_updater_desc.exit
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %node.i, ptr %prev.i.i.i, align 4
  %58 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %desc_allocated.i.i, ptr %node.i, align 4
  %59 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %prev.i.i, align 4
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %node.i, ptr %56, align 4
  br label %vchan_tx_prep.exit.i

vchan_tx_prep.exit.i:                             ; preds = %if.end.i.i.i.i, %set_updater_desc.exit.vchan_tx_prep.exit.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call7.i.i) #9
  %61 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @pxad_tx_submit, ptr %tx_submit.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxad_tx_prep.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxad_prep_dma_cyclic, %cleanup)) #9
          to label %if.then.i [label %cleanup], !srcloc !312

if.then.i:                                        ; preds = %vchan_tx_prep.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 5
  %62 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %call35 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %call35, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxad_tx_prep.__UNIQUE_ID_ddebug260, ptr noundef %device.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27, ptr noundef %dchan, ptr noundef %call35, i32 noundef %65, i32 noundef %flags) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %vchan_tx_prep.exit.i, %do.end30.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end7.cleanup_crit_edge ], [ null, %do.end30.cleanup_crit_edge ], [ %call35, %vchan_tx_prep.exit.i ], [ %call35, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dtadr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dsadr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dcmd) #9
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @pxad_filter_fn(ptr nocapture noundef %chan, ptr nocapture noundef readonly %param) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %driver = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 4
  %cmp.not = icmp eq ptr %5, getelementptr inbounds (%struct.platform_driver, ptr @pxad_driver, i32 0, i32 5)
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %param, align 4
  %drcmr1 = getelementptr inbounds %struct.pxad_chan, ptr %chan, i32 0, i32 1
  %8 = ptrtoint ptr %drcmr1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %drcmr1, align 4
  %prio = getelementptr inbounds %struct.pxad_param, ptr %param, i32 0, i32 1
  %9 = ptrtoint ptr %prio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %prio, align 4
  %prio2 = getelementptr inbounds %struct.pxad_chan, ptr %chan, i32 0, i32 2
  %11 = ptrtoint ptr %prio2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %prio2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i1 %cmp.not
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pxad_dma_xlate(ptr nocapture noundef readonly %dma_spec, ptr nocapture noundef readonly %ofdma) #2 align 64 {
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
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args, align 4
  %drcmr = getelementptr inbounds %struct.pxad_chan, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %drcmr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %drcmr, align 4
  %arrayidx2 = getelementptr %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx2, align 4
  %prio = getelementptr inbounds %struct.pxad_chan, ptr %call, i32 0, i32 2
  %7 = ptrtoint ptr %prio to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %prio, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pxad_init_debugfs(ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  %chan_name.i = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_chans = getelementptr inbounds %struct.pxad_device, ptr %pdev, i32 0, i32 1
  %0 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_chans, align 4
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4) #9
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !311

kmalloc_array.exit.thread:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dbgfs_chan28 = getelementptr inbounds %struct.pxad_device, ptr %pdev, i32 0, i32 7
  %4 = ptrtoint ptr %dbgfs_chan28 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %dbgfs_chan28, align 4
  br label %cleanup

if.end7.i:                                        ; preds = %entry
  %5 = extractvalue { i32, i1 } %2, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3264) #13
  %dbgfs_chan = getelementptr inbounds %struct.pxad_device, ptr %pdev, i32 0, i32 7
  %6 = ptrtoint ptr %dbgfs_chan to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8.i, ptr %dbgfs_chan, align 4
  %tobool.not = icmp eq ptr %call8.i, null
  br i1 %tobool.not, label %if.end7.i.cleanup_crit_edge, label %if.end

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.end7.i
  %dev = getelementptr inbounds %struct.dma_device, ptr %pdev, i32 0, i32 15
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i25, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i25:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i25, %if.end.dev_name.exit_crit_edge
  %retval.0.i26 = phi ptr [ %12, %if.end.i25 ], [ %10, %if.end.dev_name.exit_crit_edge ]
  %call3 = tail call ptr @debugfs_create_dir(ptr noundef %retval.0.i26, ptr noundef null) #9
  %dbgfs_root = getelementptr inbounds %struct.pxad_device, ptr %pdev, i32 0, i32 6
  %13 = ptrtoint ptr %dbgfs_root to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call3, ptr %dbgfs_root, align 4
  %call5 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.79, i16 noundef zeroext 256, ptr noundef %call3, ptr noundef %pdev, ptr noundef nonnull @state_fops) #9
  %14 = ptrtoint ptr %dbgfs_root to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dbgfs_root, align 4
  %call7 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.80, ptr noundef %15) #9
  %16 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_chans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp35 = icmp sgt i32 %17, 0
  br i1 %cmp35, label %for.body.lr.ph, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %dev_name.exit
  %phys.i = getelementptr inbounds %struct.pxad_device, ptr %pdev, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.036 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %chan_name.i) #9
  %18 = call ptr @memset(ptr %chan_name.i, i32 255, i32 11)
  %call.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %chan_name.i, i32 noundef 11, ptr noundef nonnull @.str.83, i32 noundef %i.036) #9
  %call2.i = call ptr @debugfs_create_dir(ptr noundef nonnull %chan_name.i, ptr noundef %call7) #9
  %19 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phys.i, align 4
  %arrayidx.i = getelementptr %struct.pxad_phy, ptr %20, i32 %i.036
  %call3.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.79, i16 noundef zeroext 256, ptr noundef %call2.i, ptr noundef %arrayidx.i, ptr noundef nonnull @chan_state_fops) #9
  %call4.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.84, i16 noundef zeroext 256, ptr noundef %call2.i, ptr noundef %arrayidx.i, ptr noundef nonnull @descriptors_fops) #9
  %call5.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.85, i16 noundef zeroext 256, ptr noundef %call2.i, ptr noundef %arrayidx.i, ptr noundef nonnull @requester_chan_fops) #9
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %chan_name.i) #9
  %21 = ptrtoint ptr %dbgfs_chan to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dbgfs_chan, align 4
  %arrayidx = getelementptr ptr, ptr %22, i32 %i.036
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call2.i, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.036, 1
  %24 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr_chans, align 4
  %cmp = icmp slt i32 %inc, %25
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %dev_name.exit.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %kmalloc_array.exit.thread
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pxad_get_config(ptr nocapture noundef readonly %chan, i32 noundef %dir, ptr noundef %dcmd, ptr nocapture noundef writeonly %dev_src, ptr nocapture noundef writeonly %dev_dst) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %2 = ptrtoint ptr %dcmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %dcmd, align 4
  %3 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %dir, label %entry.do.body_crit_edge [
    i32 2, label %if.then
    i32 1, label %if.then9
    i32 0, label %if.then22
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then:                                          ; preds = %entry
  %src_maxburst = getelementptr inbounds %struct.pxad_chan, ptr %chan, i32 0, i32 4, i32 5
  %4 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %src_maxburst, align 4
  %src_addr_width = getelementptr inbounds %struct.pxad_chan, ptr %chan, i32 0, i32 4, i32 3
  %6 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %src_addr_width, align 4
  %src_addr = getelementptr inbounds %struct.pxad_chan, ptr %chan, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %src_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %src_addr, align 4
  %10 = ptrtoint ptr %dev_src to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %dev_src, align 4
  %11 = ptrtoint ptr %dcmd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dcmd, align 4
  %or = or i32 %12, 1073741824
  store i32 %or, ptr %dcmd, align 4
  %drcmr = getelementptr inbounds %struct.pxad_chan, ptr %chan, i32 0, i32 1
  %13 = ptrtoint ptr %drcmr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %drcmr, align 4
  %nr_requestors = getelementptr inbounds %struct.pxad_device, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %nr_requestors to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr_requestors, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp4.not = icmp ugt i32 %14, %16
  br i1 %cmp4.not, label %if.then.do.body_crit_edge, label %if.then5

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %or6 = or i32 %12, 1610612736
  br label %do.body.sink.split

if.then9:                                         ; preds = %entry
  %dst_maxburst = getelementptr inbounds %struct.pxad_chan, ptr %chan, i32 0, i32 4, i32 6
  %17 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dst_maxburst, align 4
  %dst_addr_width = getelementptr inbounds %struct.pxad_chan, ptr %chan, i32 0, i32 4, i32 4
  %19 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dst_addr_width, align 4
  %dst_addr = getelementptr inbounds %struct.pxad_chan, ptr %chan, i32 0, i32 4, i32 2
  %21 = ptrtoint ptr %dst_addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dst_addr, align 4
  %23 = ptrtoint ptr %dev_dst to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %dev_dst, align 4
  %24 = ptrtoint ptr %dcmd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dcmd, align 4
  %or13 = or i32 %25, -2147483648
  store i32 %or13, ptr %dcmd, align 4
  %drcmr14 = getelementptr inbounds %struct.pxad_chan, ptr %chan, i32 0, i32 1
  %26 = ptrtoint ptr %drcmr14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %drcmr14, align 4
  %nr_requestors15 = getelementptr inbounds %struct.pxad_device, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %nr_requestors15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nr_requestors15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp16.not = icmp ugt i32 %27, %29
  br i1 %cmp16.not, label %if.then9.do.body_crit_edge, label %if.then17

if.then9.do.body_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then17:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %or18 = or i32 %25, -1879048192
  br label %do.body.sink.split

if.then22:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %dcmd to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dcmd, align 4
  %or23 = or i32 %31, -1073545216
  br label %do.body.sink.split

do.body.sink.split:                               ; preds = %if.then22, %if.then17, %if.then5
  %or6.sink = phi i32 [ %or6, %if.then5 ], [ %or18, %if.then17 ], [ %or23, %if.then22 ]
  %maxburst.1104.ph = phi i32 [ %5, %if.then5 ], [ %18, %if.then17 ], [ 0, %if.then22 ]
  %dev_addr.1103.ph = phi i32 [ %9, %if.then5 ], [ %22, %if.then17 ], [ 0, %if.then22 ]
  %width.1101.ph = phi i32 [ %7, %if.then5 ], [ %20, %if.then17 ], [ 0, %if.then22 ]
  %32 = ptrtoint ptr %dcmd to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or6.sink, ptr %dcmd, align 4
  br label %do.body

do.body:                                          ; preds = %do.body.sink.split, %if.then9.do.body_crit_edge, %if.then.do.body_crit_edge, %entry.do.body_crit_edge
  %maxburst.1104 = phi i32 [ %18, %if.then9.do.body_crit_edge ], [ %5, %if.then.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ], [ %maxburst.1104.ph, %do.body.sink.split ]
  %dev_addr.1103 = phi i32 [ %22, %if.then9.do.body_crit_edge ], [ %9, %if.then.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ], [ %dev_addr.1103.ph, %do.body.sink.split ]
  %width.1101 = phi i32 [ %20, %if.then9.do.body_crit_edge ], [ %7, %if.then.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ], [ %width.1101.ph, %do.body.sink.split ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxad_get_config.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxad_get_config, %do.end)) #9
          to label %if.then29 [label %do.end], !srcloc !312

if.then29:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  %device32 = getelementptr inbounds %struct.dma_chan_dev, ptr %34, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxad_get_config.__UNIQUE_ID_ddebug261, ptr noundef %device32, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23, i32 noundef %dev_addr.1103, i32 noundef %maxburst.1104, i32 noundef %width.1101, i32 noundef %dir) #9
  br label %do.end

do.end:                                           ; preds = %if.then29, %do.body
  %35 = zext i32 %width.1101 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %width.1101, label %do.end.if.end46_crit_edge [
    i32 1, label %do.end.if.end46.sink.split_crit_edge
    i32 2, label %if.then38
    i32 4, label %if.then42
  ]

do.end.if.end46.sink.split_crit_edge:             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.sink.split

do.end.if.end46_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then38:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.sink.split

if.then42:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.sink.split

if.end46.sink.split:                              ; preds = %if.then42, %if.then38, %do.end.if.end46.sink.split_crit_edge
  %.sink107 = phi i32 [ 32768, %if.then38 ], [ 49152, %if.then42 ], [ 16384, %do.end.if.end46.sink.split_crit_edge ]
  %36 = ptrtoint ptr %dcmd to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dcmd, align 4
  %or39 = or i32 %37, %.sink107
  store i32 %or39, ptr %dcmd, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.end46.sink.split, %do.end.if.end46_crit_edge
  %38 = zext i32 %maxburst.1104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %maxburst.1104, label %if.end46.if.end60_crit_edge [
    i32 8, label %if.end46.if.end60.sink.split_crit_edge
    i32 16, label %if.then52
    i32 32, label %if.then56
  ]

if.end46.if.end60.sink.split_crit_edge:           ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60.sink.split

if.end46.if.end60_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.then52:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60.sink.split

if.then56:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60.sink.split

if.end60.sink.split:                              ; preds = %if.then56, %if.then52, %if.end46.if.end60.sink.split_crit_edge
  %.sink108 = phi i32 [ 131072, %if.then52 ], [ 196608, %if.then56 ], [ 65536, %if.end46.if.end60.sink.split_crit_edge ]
  %39 = ptrtoint ptr %dcmd to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dcmd, align 4
  %or53 = or i32 %40, %.sink108
  store i32 %or53, ptr %dcmd, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.end60.sink.split, %if.end46.if.end60_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @pxad_alloc_desc(ptr nocapture noundef readonly %chan, i32 noundef %nb_hw_desc) unnamed_addr #2 align 64 {
entry:
  %dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma) #9
  %0 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dma, align 4, !annotation !314
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nb_hw_desc, i32 4) #9
  %2 = extractvalue { i32, i1 } %1, 1
  %3 = extractvalue { i32, i1 } %1, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %3, i32 136) #9
  %retval.0.i = select i1 %2, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 2304) #13
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %desc_pool = getelementptr inbounds %struct.pxad_chan, ptr %chan, i32 0, i32 6
  %4 = ptrtoint ptr %desc_pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc_pool, align 4
  %desc_pool2 = getelementptr inbounds %struct.pxad_desc_sw, ptr %call9.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %desc_pool2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %desc_pool2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nb_hw_desc)
  %cmp39.not = icmp eq i32 %nb_hw_desc, 0
  br i1 %cmp39.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %first = getelementptr inbounds %struct.pxad_desc_sw, ptr %call9.i.i, i32 0, i32 3
  %nb_desc = getelementptr inbounds %struct.pxad_desc_sw, ptr %call9.i.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end16.for.body_crit_edge, %for.body.lr.ph
  %i.040 = phi i32 [ 0, %for.body.lr.ph ], [ %inc17, %if.end16.for.body_crit_edge ]
  %7 = ptrtoint ptr %desc_pool2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %desc_pool2, align 4
  %call4 = call ptr @dma_pool_alloc(ptr noundef %8, i32 noundef 2048, ptr noundef nonnull %dma) #9
  %arrayidx = getelementptr %struct.pxad_desc_sw, ptr %call9.i.i, i32 0, i32 7, i32 %i.040
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call4, ptr %arrayidx, align 4
  %tobool7.not = icmp eq ptr %call4, null
  br i1 %tobool7.not, label %do.end, label %if.end11

do.end:                                           ; preds = %for.body
  %dev = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %device = getelementptr inbounds %struct.dma_chan_dev, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %desc_pool2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc_pool2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %device, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef %i.040, ptr noundef %13) #12
  %14 = ptrtoint ptr %nb_desc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nb_desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i = icmp eq i32 %15, 0
  br i1 %cmp.i, label %do.body2.i, label %for.cond.preheader.i, !prof !311

for.cond.preheader.i:                             ; preds = %do.end
  %i.028.i = add i32 %15, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.028.i)
  %cmp929.i = icmp sgt i32 %i.028.i, -1
  br i1 %cmp929.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.pxad_free_desc.exit_crit_edge

for.cond.preheader.i.pxad_free_desc.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pxad_free_desc.exit

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

do.body2.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/pxa_dma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 725, 0\0A.popsection", ""() #9, !srcloc !315
  unreachable

for.body.i:                                       ; preds = %if.end13.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.031.i = phi i32 [ %i.0.i, %if.end13.i.for.body.i_crit_edge ], [ %i.028.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.0.in30.i = phi i32 [ %i.031.i, %if.end13.i.for.body.i_crit_edge ], [ %15, %for.cond.preheader.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.031.i)
  %cmp10.not.i = icmp eq i32 %i.031.i, 0
  br i1 %cmp10.not.i, label %for.body.i.if.end13.i_crit_edge, label %if.then11.i

for.body.i.if.end13.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

if.then11.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub12.i = add i32 %i.0.in30.i, -2
  %arrayidx.i = getelementptr %struct.pxad_desc_sw, ptr %call9.i.i, i32 0, i32 7, i32 %sub12.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %for.body.i.if.end13.i_crit_edge
  %dma.0.in.i = phi ptr [ %17, %if.then11.i ], [ %first, %for.body.i.if.end13.i_crit_edge ]
  %18 = ptrtoint ptr %dma.0.in.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %dma.0.i = load i32, ptr %dma.0.in.i, align 4
  %19 = ptrtoint ptr %desc_pool2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %desc_pool2, align 4
  %arrayidx15.i = getelementptr %struct.pxad_desc_sw, ptr %call9.i.i, i32 0, i32 7, i32 %i.031.i
  %21 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx15.i, align 4
  call void @dma_pool_free(ptr noundef %20, ptr noundef %22, i32 noundef %dma.0.i) #9
  %i.0.i = add i32 %i.031.i, -1
  %cmp9.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp9.i, label %if.end13.i.for.body.i_crit_edge, label %if.end13.i.pxad_free_desc.exit_crit_edge

if.end13.i.pxad_free_desc.exit_crit_edge:         ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pxad_free_desc.exit

if.end13.i.for.body.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

pxad_free_desc.exit:                              ; preds = %if.end13.i.pxad_free_desc.exit_crit_edge, %for.cond.preheader.i.pxad_free_desc.exit_crit_edge
  %23 = ptrtoint ptr %nb_desc to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %nb_desc, align 4
  call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %cleanup

if.end11:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.040)
  %cmp12 = icmp eq i32 %i.040, 0
  %24 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma, align 4
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %first to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %first, align 4
  br label %if.end16

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add i32 %i.040, -1
  %arrayidx15 = getelementptr %struct.pxad_desc_sw, ptr %call9.i.i, i32 0, i32 7, i32 %sub
  %27 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx15, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %25, ptr %28, align 16
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then13
  %30 = ptrtoint ptr %nb_desc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nb_desc, align 4
  %inc = add i32 %31, 1
  store i32 %inc, ptr %nb_desc, align 4
  %inc17 = add nuw i32 %i.040, 1
  %exitcond.not = icmp eq i32 %inc17, %nb_hw_desc
  br i1 %exitcond.not, label %if.end16.cleanup_crit_edge, label %if.end16.for.body_crit_edge

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end16.cleanup_crit_edge, %pxad_free_desc.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %pxad_free_desc.exit ], [ null, %entry.cleanup_crit_edge ], [ %call9.i.i, %if.end.cleanup_crit_edge ], [ %call9.i.i, %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma) #9
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxad_free_desc(ptr noundef %vd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nb_desc = getelementptr inbounds %struct.pxad_desc_sw, ptr %vd, i32 0, i32 1
  %0 = ptrtoint ptr %nb_desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nb_desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %do.body2, label %for.cond.preheader, !prof !311

for.cond.preheader:                               ; preds = %entry
  %i.028 = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.028)
  %cmp929 = icmp sgt i32 %i.028, -1
  br i1 %cmp929, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %first = getelementptr inbounds %struct.pxad_desc_sw, ptr %vd, i32 0, i32 3
  %desc_pool = getelementptr inbounds %struct.pxad_desc_sw, ptr %vd, i32 0, i32 6
  br label %for.body

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/pxa_dma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 725, 0\0A.popsection", ""() #9, !srcloc !315
  unreachable

for.body:                                         ; preds = %if.end13.for.body_crit_edge, %for.body.lr.ph
  %i.031 = phi i32 [ %i.028, %for.body.lr.ph ], [ %i.0, %if.end13.for.body_crit_edge ]
  %i.0.in30 = phi i32 [ %1, %for.body.lr.ph ], [ %i.031, %if.end13.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.031)
  %cmp10.not = icmp eq i32 %i.031, 0
  br i1 %cmp10.not, label %for.body.if.end13_crit_edge, label %if.then11

for.body.if.end13_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %sub12 = add i32 %i.0.in30, -2
  %arrayidx = getelementptr %struct.pxad_desc_sw, ptr %vd, i32 0, i32 7, i32 %sub12
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %for.body.if.end13_crit_edge
  %dma.0.in = phi ptr [ %3, %if.then11 ], [ %first, %for.body.if.end13_crit_edge ]
  %4 = ptrtoint ptr %dma.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %dma.0 = load i32, ptr %dma.0.in, align 4
  %5 = ptrtoint ptr %desc_pool to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %desc_pool, align 4
  %arrayidx15 = getelementptr %struct.pxad_desc_sw, ptr %vd, i32 0, i32 7, i32 %i.031
  %7 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx15, align 4
  tail call void @dma_pool_free(ptr noundef %6, ptr noundef %8, i32 noundef %dma.0) #9
  %i.0 = add i32 %i.031, -1
  %cmp9 = icmp sgt i32 %i.0, -1
  br i1 %cmp9, label %if.end13.for.body_crit_edge, label %if.end13.for.end_crit_edge

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end13.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %9 = ptrtoint ptr %nb_desc to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %nb_desc, align 4
  tail call void @kfree(ptr noundef %vd) #9
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxad_tx_submit(ptr noundef %tx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chan = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx, i32 0, i32 3
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %flags9 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx, i32 0, i32 1
  %2 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags9, align 4
  %nb_desc.i = getelementptr inbounds %struct.pxad_desc_sw, ptr %tx, i32 0, i32 1
  %4 = ptrtoint ptr %nb_desc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nb_desc.i, align 4
  %sub.i = add i32 %5, -1
  %arrayidx.i = getelementptr %struct.pxad_desc_sw, ptr %tx, i32 0, i32 7, i32 %sub.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %sub3.i = add i32 %5, -2
  %arrayidx4.i = getelementptr %struct.pxad_desc_sw, ptr %tx, i32 0, i32 7, i32 %sub3.i
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 16
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %7, align 16
  %dsadr.i = getelementptr inbounds %struct.pxad_desc_hw, ptr %7, i32 0, i32 1
  %13 = ptrtoint ptr %dsadr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %11, ptr %dsadr.i, align 4
  %add.i = add i32 %11, 8
  %dtadr.i = getelementptr inbounds %struct.pxad_desc_hw, ptr %7, i32 0, i32 2
  %14 = ptrtoint ptr %dtadr.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add.i, ptr %dtadr.i, align 8
  %dcmd.i = getelementptr inbounds %struct.pxad_desc_hw, ptr %7, i32 0, i32 3
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 245764, i32 2342916
  %15 = ptrtoint ptr %dcmd.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %spec.select.i, ptr %dcmd.i, align 4
  %cyclic.i = getelementptr inbounds %struct.pxad_desc_sw, ptr %tx, i32 0, i32 5
  %16 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cyclic.i, align 1, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool7.not.i = icmp eq i8 %17, 0
  br i1 %tobool7.not.i, label %entry.set_updater_desc.exit_crit_edge, label %if.then8.i

entry.set_updater_desc.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_updater_desc.exit

if.then8.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %first.i = getelementptr inbounds %struct.pxad_desc_sw, ptr %tx, i32 0, i32 3
  %18 = ptrtoint ptr %first.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %first.i, align 4
  %20 = ptrtoint ptr %nb_desc.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nb_desc.i, align 4
  %sub11.i = add i32 %21, -2
  %arrayidx12.i = getelementptr %struct.pxad_desc_sw, ptr %tx, i32 0, i32 7, i32 %sub11.i
  %22 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx12.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %19, ptr %23, align 16
  br label %set_updater_desc.exit

set_updater_desc.exit:                            ; preds = %if.then8.i, %entry.set_updater_desc.exit_crit_edge
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %1, i32 0, i32 3
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %25 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chan, align 4
  %cookie2.i = getelementptr inbounds %struct.dma_chan, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cookie2.i, align 4
  %add.i117 = add i32 %28, 1
  %29 = tail call i32 @llvm.smax.i32(i32 %add.i117, i32 1) #9
  %30 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %cookie2.i, align 4
  %31 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %29, ptr %tx, align 4
  %desc_submitted = getelementptr inbounds %struct.virt_dma_chan, ptr %1, i32 0, i32 5
  %32 = ptrtoint ptr %desc_submitted to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %desc_submitted, align 4
  %cmp.i.not = icmp eq ptr %33, %desc_submitted
  br i1 %cmp.i.not, label %land.lhs.true, label %set_updater_desc.exit.if.end32_crit_edge

set_updater_desc.exit.if.end32_crit_edge:         ; preds = %set_updater_desc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

land.lhs.true:                                    ; preds = %set_updater_desc.exit
  %call18 = tail call fastcc zeroext i1 @pxad_try_hotchain(ptr noundef %1, ptr noundef %tx)
  br i1 %call18, label %if.then, label %land.lhs.true.if.end32_crit_edge

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then:                                          ; preds = %land.lhs.true
  %node = getelementptr inbounds %struct.virt_dma_desc, ptr %tx, i32 0, i32 2
  %desc_issued = getelementptr inbounds %struct.virt_dma_chan, ptr %1, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then.__list_del_entry.exit.i_crit_edge

if.then.__list_del_entry.exit.i_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %tx, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i, align 4
  %36 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.virt_dma_chan, ptr %1, i32 0, i32 6, i32 1
  %40 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %41, ptr noundef %desc_issued) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %node, ptr %prev.i2.i, align 4
  %43 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %desc_issued, ptr %node, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %tx, i32 0, i32 2, i32 1
  %44 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev3.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %node, ptr %41, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxad_tx_submit.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxad_tx_submit, %out)) #9
          to label %if.then27 [label %out], !srcloc !312

if.then27:                                        ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.dma_chan, ptr %1, i32 0, i32 5
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 4
  %device = getelementptr inbounds %struct.dma_chan_dev, ptr %47, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxad_tx_submit.__UNIQUE_ID_ddebug257, ptr noundef %device, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, ptr noundef %tx, i32 noundef %29) #9
  br label %out

if.end32:                                         ; preds = %land.lhs.true.if.end32_crit_edge, %set_updater_desc.exit.if.end32_crit_edge
  %48 = ptrtoint ptr %desc_submitted to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %desc_submitted, align 4
  %cmp.i118.not = icmp eq ptr %49, %desc_submitted
  br i1 %cmp.i118.not, label %if.end32.do.body51_crit_edge, label %if.then36

if.end32.do.body51_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body51

if.then36:                                        ; preds = %if.end32
  %prev = getelementptr inbounds %struct.virt_dma_chan, ptr %1, i32 0, i32 5, i32 1
  %50 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev, align 4
  %add.ptr40 = getelementptr i8, ptr %51, i32 -108
  %misaligned = getelementptr inbounds %struct.pxad_chan, ptr %1, i32 0, i32 3
  %52 = ptrtoint ptr %misaligned to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %misaligned, align 4, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool41.not = icmp eq i8 %53, 0
  br i1 %tobool41.not, label %lor.lhs.false, label %if.then36.if.then48_crit_edge

if.then36.if.then48_crit_edge:                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then48

lor.lhs.false:                                    ; preds = %if.then36
  %misaligned46 = getelementptr inbounds %struct.pxad_desc_sw, ptr %tx, i32 0, i32 4
  %54 = ptrtoint ptr %misaligned46 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %misaligned46, align 4, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool47.not = icmp eq i8 %55, 0
  br i1 %tobool47.not, label %lor.lhs.false.if.then48_crit_edge, label %lor.lhs.false.do.body51_crit_edge

lor.lhs.false.do.body51_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body51

lor.lhs.false.if.then48_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then48

if.then48:                                        ; preds = %lor.lhs.false.if.then48_crit_edge, %if.then36.if.then48_crit_edge
  %first.i120 = getelementptr inbounds %struct.pxad_desc_sw, ptr %tx, i32 0, i32 3
  %56 = ptrtoint ptr %first.i120 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %first.i120, align 4
  %nb_desc.i121 = getelementptr i8, ptr %51, i32 8
  %58 = ptrtoint ptr %nb_desc.i121 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %nb_desc.i121, align 4
  %sub.i122 = add i32 %59, -1
  %arrayidx.i123 = getelementptr %struct.pxad_desc_sw, ptr %add.ptr40, i32 0, i32 7, i32 %sub.i122
  %60 = ptrtoint ptr %arrayidx.i123 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i123, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %57, ptr %61, align 16
  br label %do.body51

do.body51:                                        ; preds = %if.then48, %lor.lhs.false.do.body51_crit_edge, %if.end32.do.body51_crit_edge
  %vd_chained.0 = phi ptr [ null, %if.end32.do.body51_crit_edge ], [ %add.ptr40, %if.then48 ], [ null, %lor.lhs.false.do.body51_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxad_tx_submit.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxad_tx_submit, %do.end73)) #9
          to label %if.then65 [label %do.end73], !srcloc !312

if.then65:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #11
  %dev68 = getelementptr inbounds %struct.dma_chan, ptr %1, i32 0, i32 5
  %63 = ptrtoint ptr %dev68 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev68, align 4
  %device69 = getelementptr inbounds %struct.dma_chan_dev, ptr %64, i32 0, i32 1
  %tobool70.not = icmp eq ptr %vd_chained.0, null
  %cond = select i1 %tobool70.not, ptr @.str.33, ptr @.str.32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxad_tx_submit.__UNIQUE_ID_ddebug258, ptr noundef %device69, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.29, ptr noundef %tx, i32 noundef %29, ptr noundef nonnull %cond) #9
  br label %do.end73

do.end73:                                         ; preds = %if.then65, %do.body51
  %node74 = getelementptr inbounds %struct.virt_dma_desc, ptr %tx, i32 0, i32 2
  %call.i.i124 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node74) #9
  br i1 %call.i.i124, label %if.end.i.i127, label %do.end73.__list_del_entry.exit.i130_crit_edge

do.end73.__list_del_entry.exit.i130_crit_edge:    ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i130

if.end.i.i127:                                    ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i125 = getelementptr inbounds %struct.virt_dma_desc, ptr %tx, i32 0, i32 2, i32 1
  %65 = ptrtoint ptr %prev.i.i125 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev.i.i125, align 4
  %67 = ptrtoint ptr %node74 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %node74, align 4
  %prev1.i.i.i126 = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %prev1.i.i.i126 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %prev1.i.i.i126, align 4
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %68, ptr %66, align 4
  br label %__list_del_entry.exit.i130

__list_del_entry.exit.i130:                       ; preds = %if.end.i.i127, %do.end73.__list_del_entry.exit.i130_crit_edge
  %prev.i2.i128 = getelementptr inbounds %struct.virt_dma_chan, ptr %1, i32 0, i32 5, i32 1
  %71 = ptrtoint ptr %prev.i2.i128 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev.i2.i128, align 4
  %call.i.i.i129 = tail call zeroext i1 @__list_add_valid(ptr noundef %node74, ptr noundef %72, ptr noundef %desc_submitted) #9
  br i1 %call.i.i.i129, label %if.end.i.i.i132, label %__list_del_entry.exit.i130.list_move_tail.exit133_crit_edge

__list_del_entry.exit.i130.list_move_tail.exit133_crit_edge: ; preds = %__list_del_entry.exit.i130
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_move_tail.exit133

if.end.i.i.i132:                                  ; preds = %__list_del_entry.exit.i130
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %prev.i2.i128 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %node74, ptr %prev.i2.i128, align 4
  %74 = ptrtoint ptr %node74 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %desc_submitted, ptr %node74, align 4
  %prev3.i.i.i131 = getelementptr inbounds %struct.virt_dma_desc, ptr %tx, i32 0, i32 2, i32 1
  %75 = ptrtoint ptr %prev3.i.i.i131 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev3.i.i.i131, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %node74, ptr %72, align 4
  br label %list_move_tail.exit133

list_move_tail.exit133:                           ; preds = %if.end.i.i.i132, %__list_del_entry.exit.i130.list_move_tail.exit133_crit_edge
  %misaligned79 = getelementptr inbounds %struct.pxad_desc_sw, ptr %tx, i32 0, i32 4
  %77 = ptrtoint ptr %misaligned79 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %misaligned79, align 4, !range !313
  %misaligned82 = getelementptr inbounds %struct.pxad_chan, ptr %1, i32 0, i32 3
  %79 = ptrtoint ptr %misaligned82 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %misaligned82, align 4, !range !313
  %or113 = or i8 %80, %78
  store i8 %or113, ptr %misaligned82, align 4
  br label %out

out:                                              ; preds = %list_move_tail.exit133, %if.then27, %list_move_tail.exit
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call13) #9
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @pxad_try_hotchain(ptr noundef %vc, ptr nocapture noundef readonly %vd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %phy1.i = getelementptr inbounds %struct.pxad_chan, ptr %vc, i32 0, i32 5
  %0 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy1.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end27_crit_edge, label %if.end.i

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end.i:                                         ; preds = %entry
  %base.i = getelementptr inbounds %struct.pxad_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %shl.i = shl i32 %5, 2
  %add.ptr.i = getelementptr i8, ptr %3, i32 %shl.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !316
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is_chan_running.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxad_try_hotchain, %is_chan_running.exit)) #9
          to label %if.then8.i [label %is_chan_running.exit], !srcloc !312

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %vchan.i = getelementptr inbounds %struct.pxad_phy, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %vchan.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vchan.i, align 4
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %11, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @is_chan_running.__UNIQUE_ID_ddebug240, ptr noundef %device.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.36, i32 noundef %7) #9
  br label %is_chan_running.exit

is_chan_running.exit:                             ; preds = %if.then8.i, %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool12.i = icmp slt i32 %7, 0
  br i1 %tobool12.i, label %do.body, label %is_chan_running.exit.if.end27_crit_edge

is_chan_running.exit.if.end27_crit_edge:          ; preds = %is_chan_running.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

do.body:                                          ; preds = %is_chan_running.exit
  %desc_issued = getelementptr inbounds %struct.virt_dma_chan, ptr %vc, i32 0, i32 6
  %12 = ptrtoint ptr %desc_issued to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %desc_issued, align 4
  %cmp.i.not = icmp eq ptr %13, %desc_issued
  br i1 %cmp.i.not, label %do.body6, label %do.end11, !prof !311

do.body6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/pxa_dma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 568, 0\0A.popsection", ""() #9, !srcloc !317
  unreachable

do.end11:                                         ; preds = %do.body
  %14 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy1.i, align 4
  %tobool.not.i35 = icmp eq ptr %15, null
  br i1 %tobool.not.i35, label %do.body4.i, label %do.end9.i, !prof !311

do.body4.i:                                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/pxa_dma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 445, 0\0A.popsection", ""() #9, !srcloc !318
  unreachable

do.end9.i:                                        ; preds = %do.end11
  %base.i36 = getelementptr inbounds %struct.pxad_phy, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %base.i36 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i36, align 4
  %add.ptr.i37 = getelementptr i8, ptr %17, i32 160
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37) #9, !srcloc !316
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is_running_chan_misaligned.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxad_try_hotchain, %is_running_chan_misaligned.exit)) #9
          to label %if.then23.i [label %is_running_chan_misaligned.exit], !srcloc !312

if.then23.i:                                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %phy1.i, align 4
  %vchan.i38 = getelementptr inbounds %struct.pxad_phy, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %vchan.i38 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vchan.i38, align 4
  %dev.i39 = getelementptr inbounds %struct.dma_chan, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %dev.i39 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i39, align 4
  %device.i40 = getelementptr inbounds %struct.dma_chan_dev, ptr %25, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @is_running_chan_misaligned.__UNIQUE_ID_ddebug241, ptr noundef %device.i40, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef %19) #9
  br label %is_running_chan_misaligned.exit

is_running_chan_misaligned.exit:                  ; preds = %if.then23.i, %do.end9.i
  %26 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %phy1.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %shl.i41 = shl nuw i32 1, %29
  %and.i = and i32 %shl.i41, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool31.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool31.i.not, label %land.lhs.true, label %is_running_chan_misaligned.exit.if.end18_crit_edge

is_running_chan_misaligned.exit.if.end18_crit_edge: ; preds = %is_running_chan_misaligned.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

land.lhs.true:                                    ; preds = %is_running_chan_misaligned.exit
  %misaligned = getelementptr inbounds %struct.pxad_desc_sw, ptr %vd, i32 0, i32 4
  %30 = ptrtoint ptr %misaligned to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %misaligned, align 4, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool16.not = icmp eq i8 %31, 0
  br i1 %tobool16.not, label %land.lhs.true.if.end18_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.end18:                                         ; preds = %land.lhs.true.if.end18_crit_edge, %is_running_chan_misaligned.exit.if.end18_crit_edge
  %prev = getelementptr inbounds %struct.virt_dma_chan, ptr %vc, i32 0, i32 6, i32 1
  %32 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev, align 4
  %add.ptr22 = getelementptr i8, ptr %33, i32 -108
  %first.i = getelementptr inbounds %struct.pxad_desc_sw, ptr %vd, i32 0, i32 3
  %34 = ptrtoint ptr %first.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %first.i, align 4
  %nb_desc.i = getelementptr i8, ptr %33, i32 8
  %36 = ptrtoint ptr %nb_desc.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nb_desc.i, align 4
  %sub.i = add i32 %37, -1
  %arrayidx.i = getelementptr %struct.pxad_desc_sw, ptr %add.ptr22, i32 0, i32 7, i32 %sub.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %35, ptr %39, align 16
  %41 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %phy1.i, align 4
  %tobool.not.i43 = icmp eq ptr %42, null
  br i1 %tobool.not.i43, label %if.end18.lor.lhs.false_crit_edge, label %if.end.i47

if.end18.lor.lhs.false_crit_edge:                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

if.end.i47:                                       ; preds = %if.end18
  %base.i44 = getelementptr inbounds %struct.pxad_phy, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %base.i44 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i44, align 4
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %42, align 4
  %shl.i45 = shl i32 %46, 2
  %add.ptr.i46 = getelementptr i8, ptr %44, i32 %shl.i45
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46) #9, !srcloc !316
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is_chan_running.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxad_try_hotchain, %is_chan_running.exit55)) #9
          to label %if.then8.i51 [label %is_chan_running.exit55], !srcloc !312

if.then8.i51:                                     ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #11
  %vchan.i48 = getelementptr inbounds %struct.pxad_phy, ptr %42, i32 0, i32 2
  %49 = ptrtoint ptr %vchan.i48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %vchan.i48, align 4
  %dev.i49 = getelementptr inbounds %struct.dma_chan, ptr %50, i32 0, i32 5
  %51 = ptrtoint ptr %dev.i49 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i49, align 4
  %device.i50 = getelementptr inbounds %struct.dma_chan_dev, ptr %52, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @is_chan_running.__UNIQUE_ID_ddebug240, ptr noundef %device.i50, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.36, i32 noundef %48) #9
  br label %is_chan_running.exit55

is_chan_running.exit55:                           ; preds = %if.then8.i51, %if.end.i47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool12.i52 = icmp slt i32 %48, 0
  br i1 %tobool12.i52, label %is_chan_running.exit55.cleanup_crit_edge, label %is_chan_running.exit55.lor.lhs.false_crit_edge

is_chan_running.exit55.lor.lhs.false_crit_edge:   ; preds = %is_chan_running.exit55
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

is_chan_running.exit55.cleanup_crit_edge:         ; preds = %is_chan_running.exit55
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %is_chan_running.exit55.lor.lhs.false_crit_edge, %if.end18.lor.lhs.false_crit_edge
  %nb_desc.i56 = getelementptr inbounds %struct.pxad_desc_sw, ptr %vd, i32 0, i32 1
  %53 = ptrtoint ptr %nb_desc.i56 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nb_desc.i56, align 4
  %sub.i57 = add i32 %54, -1
  %arrayidx.i58 = getelementptr %struct.pxad_desc_sw, ptr %vd, i32 0, i32 7, i32 %sub.i57
  %55 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i58, align 4
  %dtadr.i = getelementptr inbounds %struct.pxad_desc_hw, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %dtadr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dtadr.i, align 8
  %dsadr.i = getelementptr inbounds %struct.pxad_desc_hw, ptr %56, i32 0, i32 1
  %59 = ptrtoint ptr %dsadr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dsadr.i, align 4
  %add.i = add i32 %60, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %add.i)
  %cmp.i59.not = icmp eq i32 %58, %add.i
  br i1 %cmp.i59.not, label %lor.lhs.false.if.end27_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.if.end27_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end27:                                         ; preds = %lor.lhs.false.if.end27_crit_edge, %is_chan_running.exit.if.end27_crit_edge, %entry.if.end27_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %lor.lhs.false.cleanup_crit_edge, %is_chan_running.exit55.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end27 ], [ false, %land.lhs.true.cleanup_crit_edge ], [ true, %lor.lhs.false.cleanup_crit_edge ], [ true, %is_chan_running.exit55.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxad_alloc_chan_resources(ptr nocapture noundef %dchan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %desc_pool = getelementptr inbounds %struct.pxad_chan, ptr %dchan, i32 0, i32 6
  %0 = ptrtoint ptr %desc_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc_pool, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %dchan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dchan, align 4
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 5
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %5, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.dma_chan_name.exit_crit_edge

if.end.dma_chan_name.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_chan_name.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device.i, align 4
  br label %dma_chan_name.exit

dma_chan_name.exit:                               ; preds = %if.end.i.i, %if.end.dma_chan_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %9, %if.end.i.i ], [ %7, %if.end.dma_chan_name.exit_crit_edge ]
  %dev = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 15
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %call5 = tail call ptr @dma_pool_create(ptr noundef %retval.0.i.i, ptr noundef %11, i32 noundef 16, i32 noundef 16, i32 noundef 0) #9
  %12 = ptrtoint ptr %desc_pool to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call5, ptr %desc_pool, align 4
  %tobool8.not = icmp eq ptr %call5, null
  br i1 %tobool8.not, label %do.end, label %dma_chan_name.exit.cleanup_crit_edge

dma_chan_name.exit.cleanup_crit_edge:             ; preds = %dma_chan_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %dma_chan_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %device13 = getelementptr inbounds %struct.dma_chan_dev, ptr %14, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device13, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %dma_chan_name.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ 1, %entry.cleanup_crit_edge ], [ 1, %dma_chan_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxad_free_chan_resources(ptr noundef %dchan) #2 align 64 {
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
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 3
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %desc_allocated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 4
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
  %prev2.i.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 4, i32 1
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
  %desc_submitted.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 5
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
  %prev2.i.i11.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 5, i32 1
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
  %desc_issued.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 6
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
  %prev2.i.i17.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 6, i32 1
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
  %desc_completed.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 7
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
  %prev2.i.i23.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 7, i32 1
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
  %desc_terminated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 8
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
  %prev2.i.i29.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 8, i32 1
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
  call void @vchan_dma_desc_free_list(ptr noundef %dchan, ptr noundef nonnull %head.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #9
  %desc_pool = getelementptr inbounds %struct.pxad_chan, ptr %dchan, i32 0, i32 6
  %57 = ptrtoint ptr %desc_pool to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %desc_pool, align 4
  call void @dma_pool_destroy(ptr noundef %58) #9
  %59 = ptrtoint ptr %desc_pool to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %desc_pool, align 4
  %drcmr = getelementptr inbounds %struct.pxad_chan, ptr %dchan, i32 0, i32 1
  %60 = ptrtoint ptr %drcmr to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -1, ptr %drcmr, align 4
  %prio = getelementptr inbounds %struct.pxad_chan, ptr %dchan, i32 0, i32 2
  %61 = ptrtoint ptr %prio to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 3, ptr %prio, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxad_tx_status(ptr noundef %dchan, i32 noundef %cookie, ptr noundef writeonly %txstate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_error = getelementptr inbounds %struct.pxad_chan, ptr %dchan, i32 0, i32 7
  %0 = ptrtoint ptr %bus_error to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bus_error, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %cookie)
  %cmp = icmp eq i32 %1, %cookie
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 2
  %2 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 3
  %4 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !319
  %tobool.not.i = icmp eq ptr %txstate, null
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %txstate to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %txstate, align 4
  %used2.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 1
  %7 = ptrtoint ptr %used2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %3, ptr %used2.i, align 4
  %residue.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %8 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %residue.i, align 4
  %in_flight_bytes.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 3
  %9 = ptrtoint ptr %in_flight_bytes.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %in_flight_bytes.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp.not.i.i = icmp sgt i32 %5, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %cookie)
  %cmp4.not.i.i = icmp sge i32 %5, %cookie
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cookie)
  %cmp5.i.i = icmp slt i32 %3, %cookie
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
  br i1 %tobool.not.i, label %dma_cookie_status.exit.cleanup_crit_edge, label %dma_set_residue.exit, !prof !311

dma_cookie_status.exit.cleanup_crit_edge:         ; preds = %dma_cookie_status.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

dma_set_residue.exit:                             ; preds = %dma_cookie_status.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call fastcc i32 @pxad_residue(ptr noundef %dchan, i32 noundef %cookie)
  %residue1.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %10 = ptrtoint ptr %residue1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call5, ptr %residue1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %dma_set_residue.exit, %dma_cookie_status.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %entry.cleanup_crit_edge ], [ %retval.0.i.i, %dma_set_residue.exit ], [ %retval.0.i.i, %dma_cookie_status.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxad_issue_pending(ptr noundef %dchan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %desc_submitted = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 5
  %0 = ptrtoint ptr %desc_submitted to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %desc_submitted, align 4
  %cmp.i.not = icmp eq ptr %1, %desc_submitted
  br i1 %cmp.i.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %add.ptr12 = getelementptr i8, ptr %1, i32 -108
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxad_issue_pending.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxad_issue_pending, %do.end25)) #9
          to label %if.then20 [label %do.end25], !srcloc !312

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 5
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %device = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr12, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxad_issue_pending.__UNIQUE_ID_ddebug259, ptr noundef %device, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.51, ptr noundef %add.ptr12, i32 noundef %5) #9
  br label %do.end25

do.end25:                                         ; preds = %if.then20, %if.end
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 6
  %6 = ptrtoint ptr %desc_submitted to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %desc_submitted, align 4
  %cmp.i.not.i.i = icmp eq ptr %7, %desc_submitted
  br i1 %cmp.i.not.i.i, label %do.end25.vchan_issue_pending.exit_crit_edge, label %if.then.i.i

do.end25.vchan_issue_pending.exit_crit_edge:      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_issue_pending.exit

if.then.i.i:                                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 5, i32 1
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
  store ptr %desc_issued.i, ptr %11, align 4
  store ptr %11, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %desc_submitted to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %desc_submitted, ptr %desc_submitted, align 4
  store ptr %desc_submitted, ptr %prev2.i.i.i, align 4
  br label %vchan_issue_pending.exit

vchan_issue_pending.exit:                         ; preds = %if.then.i.i, %do.end25.vchan_issue_pending.exit_crit_edge
  %16 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %desc_issued.i, align 4
  %call29 = tail call fastcc zeroext i1 @pxad_try_hotchain(ptr noundef %dchan, ptr noundef %add.ptr12)
  br i1 %call29, label %vchan_issue_pending.exit.out_crit_edge, label %if.then30

vchan_issue_pending.exit.out_crit_edge:           ; preds = %vchan_issue_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then30:                                        ; preds = %vchan_issue_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @pxad_launch_chan(ptr noundef %dchan, ptr noundef %add.ptr12)
  br label %out

out:                                              ; preds = %if.then30, %vchan_issue_pending.exit.out_crit_edge, %entry.out_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pxad_config(ptr noundef writeonly %dchan, ptr nocapture noundef readonly %cfg) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dchan, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %cfg1 = getelementptr inbounds %struct.pxad_chan, ptr %dchan, i32 0, i32 4
  %0 = call ptr @memcpy(ptr %cfg1, ptr %cfg, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxad_synchronize(ptr noundef %dchan) #2 align 64 {
entry:
  %head.i = alloca %struct.list_head, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 1209) #9
  %phy1.i = getelementptr inbounds %struct.pxad_chan, ptr %dchan, i32 0, i32 5
  %0 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy1.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.do.end12_crit_edge, label %if.end.i

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

if.end.i:                                         ; preds = %entry
  %base.i = getelementptr inbounds %struct.pxad_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %shl.i = shl i32 %5, 2
  %add.ptr.i = getelementptr i8, ptr %3, i32 %shl.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !316
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is_chan_running.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxad_synchronize, %is_chan_running.exit)) #9
          to label %if.then8.i [label %is_chan_running.exit], !srcloc !312

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %vchan.i = getelementptr inbounds %struct.pxad_phy, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %vchan.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vchan.i, align 4
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %11, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @is_chan_running.__UNIQUE_ID_ddebug240, ptr noundef %device.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.36, i32 noundef %7) #9
  br label %is_chan_running.exit

is_chan_running.exit:                             ; preds = %if.then8.i, %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool12.i = icmp slt i32 %7, 0
  br i1 %tobool12.i, label %if.end, label %is_chan_running.exit.do.end12_crit_edge

is_chan_running.exit.do.end12_crit_edge:          ; preds = %is_chan_running.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

if.end:                                           ; preds = %is_chan_running.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %12 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %wq_state = getelementptr inbounds %struct.pxad_chan, ptr %dchan, i32 0, i32 8
  %call535 = call i32 @prepare_to_wait_event(ptr noundef %wq_state, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  %13 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %phy1.i, align 4
  %tobool.not.i1836 = icmp eq ptr %14, null
  br i1 %tobool.not.i1836, label %if.end.for.end_crit_edge, label %if.end.if.end.i22_crit_edge

if.end.if.end.i22_crit_edge:                      ; preds = %if.end
  br label %if.end.i22

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end.i22:                                       ; preds = %cleanup.if.end.i22_crit_edge, %if.end.if.end.i22_crit_edge
  %15 = phi ptr [ %27, %cleanup.if.end.i22_crit_edge ], [ %14, %if.end.if.end.i22_crit_edge ]
  %base.i19 = getelementptr inbounds %struct.pxad_phy, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %base.i19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i19, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %15, align 4
  %shl.i20 = shl i32 %19, 2
  %add.ptr.i21 = getelementptr i8, ptr %17, i32 %shl.i20
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21) #9, !srcloc !316
  %21 = call i32 @llvm.bswap.i32(i32 %20) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is_chan_running.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxad_synchronize, %is_chan_running.exit30)) #9
          to label %if.then8.i26 [label %is_chan_running.exit30], !srcloc !312

if.then8.i26:                                     ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #11
  %vchan.i23 = getelementptr inbounds %struct.pxad_phy, ptr %15, i32 0, i32 2
  %22 = ptrtoint ptr %vchan.i23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vchan.i23, align 4
  %dev.i24 = getelementptr inbounds %struct.dma_chan, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %dev.i24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i24, align 4
  %device.i25 = getelementptr inbounds %struct.dma_chan_dev, ptr %25, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @is_chan_running.__UNIQUE_ID_ddebug240, ptr noundef %device.i25, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.36, i32 noundef %21) #9
  br label %is_chan_running.exit30

is_chan_running.exit30:                           ; preds = %if.then8.i26, %if.end.i22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool12.i27 = icmp slt i32 %21, 0
  br i1 %tobool12.i27, label %cleanup, label %is_chan_running.exit30.for.end_crit_edge

is_chan_running.exit30.for.end_crit_edge:         ; preds = %is_chan_running.exit30
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cleanup:                                          ; preds = %is_chan_running.exit30
  call void @schedule() #9
  %call5 = call i32 @prepare_to_wait_event(ptr noundef %wq_state, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  %26 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %phy1.i, align 4
  %tobool.not.i18 = icmp eq ptr %27, null
  br i1 %tobool.not.i18, label %cleanup.for.end_crit_edge, label %cleanup.if.end.i22_crit_edge

cleanup.if.end.i22_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i22

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %is_chan_running.exit30.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %wq_state, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %do.end12

do.end12:                                         ; preds = %for.end, %is_chan_running.exit.do.end12_crit_edge, %entry.do.end12_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i) #9
  %28 = getelementptr inbounds %struct.list_head, ptr %head.i, i32 0, i32 1
  %29 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %head.i, ptr %head.i, align 4
  %30 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %head.i, ptr %28, align 4
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 1
  call void @tasklet_kill(ptr noundef %task.i) #9
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 3
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 8
  %31 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %desc_terminated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %32, %desc_terminated.i
  br i1 %cmp.i.not.i.i, label %do.end12.vchan_synchronize.exit_crit_edge, label %if.then.i.i

do.end12.vchan_synchronize.exit_crit_edge:        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_synchronize.exit

if.then.i.i:                                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %28, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 8, i32 1
  %35 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %37 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev3.i.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %32, ptr %34, align 4
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %head.i, ptr %36, align 4
  store ptr %36, ptr %28, align 4
  %40 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %desc_terminated.i, ptr %desc_terminated.i, align 4
  store ptr %desc_terminated.i, ptr %prev2.i.i.i, align 4
  br label %vchan_synchronize.exit

vchan_synchronize.exit:                           ; preds = %if.then.i.i, %do.end12.vchan_synchronize.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  call void @vchan_dma_desc_free_list(ptr noundef %dchan, ptr noundef nonnull %head.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxad_terminate_all(ptr noundef %dchan) #2 align 64 {
entry:
  %head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dchan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dchan, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head) #9
  %2 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %3 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %head, ptr %head, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %head, ptr %2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxad_terminate_all.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxad_terminate_all, %do.body14)) #9
          to label %if.then [label %do.body14], !srcloc !312

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 5
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %device11 = getelementptr inbounds %struct.dma_chan_dev, ptr %6, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxad_terminate_all.__UNIQUE_ID_ddebug269, ptr noundef %device11, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.63, ptr noundef %dchan) #9
  br label %do.body14

do.body14:                                        ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 3
  %call18 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 4
  %7 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %desc_allocated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %8, %desc_allocated.i
  br i1 %cmp.i.not.i.i, label %do.body14.list_splice_tail_init.exit.i_crit_edge, label %if.then.i.i

do.body14.list_splice_tail_init.exit.i_crit_edge: ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit.i

if.then.i.i:                                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %2, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %8, ptr %10, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %head, ptr %12, align 4
  store ptr %12, ptr %2, align 4
  %16 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %desc_allocated.i, ptr %desc_allocated.i, align 4
  store ptr %desc_allocated.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_tail_init.exit.i

list_splice_tail_init.exit.i:                     ; preds = %if.then.i.i, %do.body14.list_splice_tail_init.exit.i_crit_edge
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 5
  %17 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i9.i = icmp eq ptr %18, %desc_submitted.i
  br i1 %cmp.i.not.i9.i, label %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge, label %if.then.i13.i

list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge: ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit14.i

if.then.i13.i:                                    ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %2, align 4
  %prev2.i.i11.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 5, i32 1
  %21 = ptrtoint ptr %prev2.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev2.i.i11.i, align 4
  %prev3.i.i12.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %23 = ptrtoint ptr %prev3.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i12.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %18, ptr %20, align 4
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %head, ptr %22, align 4
  store ptr %22, ptr %2, align 4
  %26 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %desc_submitted.i, ptr %desc_submitted.i, align 4
  store ptr %desc_submitted.i, ptr %prev2.i.i11.i, align 4
  br label %list_splice_tail_init.exit14.i

list_splice_tail_init.exit14.i:                   ; preds = %if.then.i13.i, %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 6
  %27 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.not.i15.i = icmp eq ptr %28, %desc_issued.i
  br i1 %cmp.i.not.i15.i, label %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge, label %if.then.i19.i

list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit20.i

if.then.i19.i:                                    ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %2, align 4
  %prev2.i.i17.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 6, i32 1
  %31 = ptrtoint ptr %prev2.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev2.i.i17.i, align 4
  %prev3.i.i18.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %33 = ptrtoint ptr %prev3.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev3.i.i18.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %28, ptr %30, align 4
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %head, ptr %32, align 4
  store ptr %32, ptr %2, align 4
  %36 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %desc_issued.i, ptr %desc_issued.i, align 4
  store ptr %desc_issued.i, ptr %prev2.i.i17.i, align 4
  br label %list_splice_tail_init.exit20.i

list_splice_tail_init.exit20.i:                   ; preds = %if.then.i19.i, %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 7
  %37 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %desc_completed.i, align 4
  %cmp.i.not.i21.i = icmp eq ptr %38, %desc_completed.i
  br i1 %cmp.i.not.i21.i, label %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge, label %if.then.i25.i

list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit26.i

if.then.i25.i:                                    ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %2, align 4
  %prev2.i.i23.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 7, i32 1
  %41 = ptrtoint ptr %prev2.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev2.i.i23.i, align 4
  %prev3.i.i24.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %43 = ptrtoint ptr %prev3.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev3.i.i24.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %38, ptr %40, align 4
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %head, ptr %42, align 4
  store ptr %42, ptr %2, align 4
  %46 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %desc_completed.i, ptr %desc_completed.i, align 4
  store ptr %desc_completed.i, ptr %prev2.i.i23.i, align 4
  br label %list_splice_tail_init.exit26.i

list_splice_tail_init.exit26.i:                   ; preds = %if.then.i25.i, %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 8
  %47 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %desc_terminated.i, align 4
  %cmp.i.not.i27.i = icmp eq ptr %48, %desc_terminated.i
  br i1 %cmp.i.not.i27.i, label %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge, label %if.then.i31.i

list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge: ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_get_all_descriptors.exit

if.then.i31.i:                                    ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %2, align 4
  %prev2.i.i29.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 8, i32 1
  %51 = ptrtoint ptr %prev2.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev2.i.i29.i, align 4
  %prev3.i.i30.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %53 = ptrtoint ptr %prev3.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev3.i.i30.i, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %48, ptr %50, align 4
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %head, ptr %52, align 4
  store ptr %52, ptr %2, align 4
  %56 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %desc_terminated.i, ptr %desc_terminated.i, align 4
  store ptr %desc_terminated.i, ptr %prev2.i.i29.i, align 4
  br label %vchan_get_all_descriptors.exit

vchan_get_all_descriptors.exit:                   ; preds = %if.then.i31.i, %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge
  %57 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pn93 = load ptr, ptr %head, align 4
  %cmp28.not95 = icmp eq ptr %.pn93, %head
  br i1 %cmp28.not95, label %vchan_get_all_descriptors.exit.for.end_crit_edge, label %do.body32.lr.ph

vchan_get_all_descriptors.exit.for.end_crit_edge: ; preds = %vchan_get_all_descriptors.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

do.body32.lr.ph:                                  ; preds = %vchan_get_all_descriptors.exit
  %dev49 = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 5
  br label %do.body32

do.body32:                                        ; preds = %for.inc.do.body32_crit_edge, %do.body32.lr.ph
  %.pn96 = phi ptr [ %.pn93, %do.body32.lr.ph ], [ %.pn, %for.inc.do.body32_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxad_terminate_all.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxad_terminate_all, %for.inc)) #9
          to label %if.then46 [label %for.inc], !srcloc !312

if.then46:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #11
  %vd.097 = getelementptr i8, ptr %.pn96, i32 -108
  %58 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev49, align 4
  %device50 = getelementptr inbounds %struct.dma_chan_dev, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %vd.097 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %vd.097, align 4
  %nb_desc.i = getelementptr i8, ptr %.pn96, i32 8
  %62 = ptrtoint ptr %nb_desc.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nb_desc.i, align 4
  %sub.i = add i32 %63, -1
  %arrayidx.i = getelementptr %struct.pxad_desc_sw, ptr %vd.097, i32 0, i32 7, i32 %sub.i
  %64 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i, align 4
  %dtadr.i = getelementptr inbounds %struct.pxad_desc_hw, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %dtadr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dtadr.i, align 8
  %dsadr.i = getelementptr inbounds %struct.pxad_desc_hw, ptr %65, i32 0, i32 1
  %68 = ptrtoint ptr %dsadr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %dsadr.i, align 4
  %add.i = add i32 %69, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %add.i)
  %cmp.i = icmp ne i32 %67, %add.i
  %conv52 = zext i1 %cmp.i to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxad_terminate_all.__UNIQUE_ID_ddebug270, ptr noundef %device50, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.63, ptr noundef %vd.097, i32 noundef %61, i32 noundef %conv52) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then46, %do.body32
  %70 = ptrtoint ptr %.pn96 to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pn = load ptr, ptr %.pn96, align 4
  %cmp28.not = icmp eq ptr %.pn, %head
  br i1 %cmp28.not, label %for.inc.for.end_crit_edge, label %for.inc.do.body32_crit_edge

for.inc.do.body32_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body32

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %vchan_get_all_descriptors.exit.for.end_crit_edge
  %phy61 = getelementptr inbounds %struct.pxad_chan, ptr %dchan, i32 0, i32 5
  %71 = ptrtoint ptr %phy61 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %phy61, align 4
  %tobool62.not = icmp eq ptr %72, null
  br i1 %tobool62.not, label %for.end.if.end67_crit_edge, label %if.then63

for.end.if.end67_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.then63:                                        ; preds = %for.end
  call fastcc void @phy_disable(ptr noundef nonnull %72)
  %73 = ptrtoint ptr %dchan to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dchan, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxad_free_phy.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxad_terminate_all, %do.end.i)) #9
          to label %if.then.i [label %do.end.i], !srcloc !312

if.then.i:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 5
  %75 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev.i, align 4
  %device8.i = getelementptr inbounds %struct.dma_chan_dev, ptr %76, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxad_free_phy.__UNIQUE_ID_ddebug239, ptr noundef %device8.i, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.67) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then63
  %77 = ptrtoint ptr %phy61 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %phy61, align 4
  %tobool9.not.i = icmp eq ptr %78, null
  br i1 %tobool9.not.i, label %do.end.i.pxad_free_phy.exit_crit_edge, label %if.end11.i

do.end.i.pxad_free_phy.exit_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pxad_free_phy.exit

if.end11.i:                                       ; preds = %do.end.i
  %drcmr.i = getelementptr inbounds %struct.pxad_chan, ptr %dchan, i32 0, i32 1
  %79 = ptrtoint ptr %drcmr.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %drcmr.i, align 4
  %nr_requestors.i = getelementptr inbounds %struct.pxad_device, ptr %74, i32 0, i32 2
  %81 = ptrtoint ptr %nr_requestors.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %nr_requestors.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %82)
  %cmp.not.i = icmp ugt i32 %80, %82
  br i1 %cmp.not.i, label %if.end11.i.do.body19.i_crit_edge, label %if.then12.i

if.end11.i.do.body19.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body19.i

if.then12.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %80)
  %cmp.i.i = icmp ult i32 %80, 64
  %mul.i.i = shl i32 %80, 2
  %retval.0.v.i.i = select i1 %cmp.i.i, i32 256, i32 4096
  %retval.0.i42.i = add i32 %retval.0.v.i.i, %mul.i.i
  %base.i = getelementptr inbounds %struct.pxad_phy, ptr %78, i32 0, i32 1
  %83 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %84, i32 %retval.0.i42.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 0) #9, !srcloc !320
  br label %do.body19.i

do.body19.i:                                      ; preds = %if.then12.i, %if.end11.i.do.body19.i_crit_edge
  %phy_lock.i = getelementptr inbounds %struct.pxad_device, ptr %74, i32 0, i32 5
  %call23.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %phy_lock.i) #9
  %85 = ptrtoint ptr %phy61 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %phy61, align 4
  %vchan.i = getelementptr inbounds %struct.pxad_phy, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %vchan.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %vchan.i, align 4
  store ptr null, ptr %phy61, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %phy_lock.i, i32 noundef %call23.i) #9
  br label %pxad_free_phy.exit

pxad_free_phy.exit:                               ; preds = %do.body19.i, %do.end.i.pxad_free_phy.exit_crit_edge
  %88 = ptrtoint ptr %phy61 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %phy61, align 4
  %phy_lock = getelementptr inbounds %struct.pxad_device, ptr %1, i32 0, i32 5
  call void @_raw_spin_lock(ptr noundef %phy_lock) #9
  %vchan = getelementptr inbounds %struct.pxad_phy, ptr %72, i32 0, i32 2
  %89 = ptrtoint ptr %vchan to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %vchan, align 4
  call void @_raw_spin_unlock(ptr noundef %phy_lock) #9
  br label %if.end67

if.end67:                                         ; preds = %pxad_free_phy.exit, %for.end.if.end67_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call18) #9
  call void @vchan_dma_desc_free_list(ptr noundef %dchan, ptr noundef nonnull %head) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmaenginem_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pxad_residue(ptr noundef %chan, i32 noundef %cookie) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.pxad_chan, ptr %chan, i32 0, i32 5
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body1:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %call6 = tail call ptr @vchan_find_desc(ptr noundef %chan, i32 noundef %cookie) #9
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.body1.out_crit_edge, label %if.end9

do.body1.out_crit_edge:                           ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end9:                                          ; preds = %do.body1
  %hw_desc11 = getelementptr inbounds %struct.pxad_desc_sw, ptr %call6, i32 0, i32 7
  %2 = ptrtoint ptr %hw_desc11 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_desc11, align 4
  %dcmd = getelementptr inbounds %struct.pxad_desc_hw, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dcmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dcmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool12.not = icmp sgt i32 %5, -1
  %6 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy, align 4
  %base37 = getelementptr inbounds %struct.pxad_phy, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %base37 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base37, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 4
  %shl40 = shl i32 %11, 4
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i32 %shl40, 516
  %add.ptr16 = getelementptr i8, ptr %9, i32 %add
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #9, !srcloc !316
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxad_residue.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxad_residue, %if.end70)) #9
          to label %if.then26 [label %if.end70], !srcloc !312

if.then26:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy, align 4
  %vchan = getelementptr inbounds %struct.pxad_phy, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %vchan to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vchan, align 4
  %dev = getelementptr inbounds %struct.dma_chan, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %device = getelementptr inbounds %struct.dma_chan_dev, ptr %19, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxad_residue.__UNIQUE_ID_ddebug271, ptr noundef %device, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef %13) #9
  br label %if.end70

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %add41 = add i32 %shl40, 520
  %add.ptr42 = getelementptr i8, ptr %9, i32 %add41
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #9, !srcloc !316
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxad_residue.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxad_residue, %if.end70)) #9
          to label %if.then59 [label %if.end70], !srcloc !312

if.then59:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phy, align 4
  %vchan61 = getelementptr inbounds %struct.pxad_phy, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %vchan61 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vchan61, align 4
  %dev64 = getelementptr inbounds %struct.dma_chan, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %dev64 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev64, align 4
  %device65 = getelementptr inbounds %struct.dma_chan_dev, ptr %27, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxad_residue.__UNIQUE_ID_ddebug272, ptr noundef %device65, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.49, i32 noundef %21) #9
  br label %if.end70

if.end70:                                         ; preds = %if.then59, %if.else, %if.then26, %if.then13
  %curr.0 = phi i32 [ %13, %if.then26 ], [ %21, %if.then59 ], [ %13, %if.then13 ], [ %21, %if.else ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !321
  %nb_desc.i = getelementptr inbounds %struct.pxad_desc_sw, ptr %call6, i32 0, i32 1
  %28 = ptrtoint ptr %nb_desc.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nb_desc.i, align 4
  %sub.i = add i32 %29, -1
  %arrayidx.i = getelementptr %struct.pxad_desc_sw, ptr %call6, i32 0, i32 7, i32 %sub.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i, align 4
  %dtadr.i = getelementptr inbounds %struct.pxad_desc_hw, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %dtadr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dtadr.i, align 8
  %dsadr.i = getelementptr inbounds %struct.pxad_desc_hw, ptr %31, i32 0, i32 1
  %34 = ptrtoint ptr %dsadr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dsadr.i, align 4
  %add.i = add i32 %35, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %add.i)
  %cmp.i.not = icmp eq i32 %33, %add.i
  br i1 %cmp.i.not, label %for.cond.preheader, label %if.end70.out_crit_edge

if.end70.out_crit_edge:                           ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.cond.preheader:                               ; preds = %if.end70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp74187 = icmp sgt i32 %sub.i, 0
  br i1 %cmp74187, label %for.body.lr.ph, label %for.cond.preheader.if.then103_crit_edge

for.cond.preheader.if.then103_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then103

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %36 = ptrtoint ptr %hw_desc11 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw_desc11, align 4
  %dcmd80 = getelementptr inbounds %struct.pxad_desc_hw, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %dcmd80 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dcmd80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool82.not186 = icmp slt i32 %39, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %residue.0190 = phi i32 [ 0, %for.body.lr.ph ], [ %residue.1, %for.inc.for.body_crit_edge ]
  %passed.0.off0189 = phi i1 [ false, %for.body.lr.ph ], [ %passed.1.off0, %for.inc.for.body_crit_edge ]
  %i.0188 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx77 = getelementptr %struct.pxad_desc_sw, ptr %call6, i32 0, i32 7, i32 %i.0188
  %40 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx77, align 4
  %dsadr = getelementptr inbounds %struct.pxad_desc_hw, ptr %41, i32 0, i32 1
  %dtadr = getelementptr inbounds %struct.pxad_desc_hw, ptr %41, i32 0, i32 2
  %start.0.in = select i1 %tobool82.not186, ptr %dsadr, ptr %dtadr
  %42 = ptrtoint ptr %start.0.in to i32
  call void @__asan_load4_noabort(i32 %42)
  %start.0 = load i32, ptr %start.0.in, align 4
  %dcmd86 = getelementptr inbounds %struct.pxad_desc_hw, ptr %41, i32 0, i32 3
  %43 = ptrtoint ptr %dcmd86 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dcmd86, align 4
  %and87 = and i32 %44, 8191
  %add88 = add i32 %and87, %start.0
  br i1 %passed.0.off0189, label %if.then90, label %if.else92

if.then90:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %add91 = add i32 %and87, %residue.0190
  br label %for.inc

if.else92:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %curr.0, i32 %start.0)
  %cmp93.not = icmp ult i32 %curr.0, %start.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add88, i32 %curr.0)
  %cmp95.not = icmp ult i32 %add88, %curr.0
  %or.cond = select i1 %cmp93.not, i1 true, i1 %cmp95.not
  br i1 %or.cond, label %if.else92.for.inc_crit_edge, label %if.then97

if.else92.for.inc_crit_edge:                      ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then97:                                        ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #11
  %sub98 = sub i32 %residue.0190, %curr.0
  %add99 = add i32 %sub98, %add88
  br label %for.inc

for.inc:                                          ; preds = %if.then97, %if.else92.for.inc_crit_edge, %if.then90
  %passed.1.off0 = phi i1 [ true, %if.then90 ], [ true, %if.then97 ], [ false, %if.else92.for.inc_crit_edge ]
  %residue.1 = phi i32 [ %add91, %if.then90 ], [ %add99, %if.then97 ], [ %residue.0190, %if.else92.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0188, 1
  %exitcond.not = icmp eq i32 %inc, %sub.i
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  br i1 %passed.1.off0, label %for.end.out_crit_edge, label %for.end.if.then103_crit_edge

for.end.if.then103_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then103

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then103:                                       ; preds = %for.end.if.then103_crit_edge, %for.cond.preheader.if.then103_crit_edge
  %len104 = getelementptr inbounds %struct.pxad_desc_sw, ptr %call6, i32 0, i32 2
  %45 = ptrtoint ptr %len104 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len104, align 4
  br label %out

out:                                              ; preds = %if.then103, %for.end.out_crit_edge, %if.end70.out_crit_edge, %do.body1.out_crit_edge
  %residue.2 = phi i32 [ 0, %if.end70.out_crit_edge ], [ %residue.1, %for.end.out_crit_edge ], [ %46, %if.then103 ], [ 0, %do.body1.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxad_residue.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxad_residue, %cleanup)) #9
          to label %if.then122 [label %cleanup], !srcloc !312

if.then122:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %dev125 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %47 = ptrtoint ptr %dev125 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev125, align 4
  %device126 = getelementptr inbounds %struct.dma_chan_dev, ptr %48, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxad_residue.__UNIQUE_ID_ddebug273, ptr noundef %device126, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.47, ptr noundef %call6, i32 noundef %cookie, ptr noundef %call6, i32 noundef %residue.2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then122, %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %residue.2, %if.then122 ], [ %residue.2, %out ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vchan_find_desc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pxad_launch_chan(ptr noundef %chan, ptr noundef %desc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxad_launch_chan.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxad_launch_chan, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !312

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %device = getelementptr inbounds %struct.dma_chan_dev, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxad_launch_chan.__UNIQUE_ID_ddebug249, ptr noundef %device, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.53, ptr noundef %desc) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %phy = getelementptr inbounds %struct.pxad_chan, ptr %chan, i32 0, i32 5
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %if.then6, label %do.end.if.end34_crit_edge

do.end.if.end34_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then6:                                         ; preds = %do.end
  %call7 = tail call fastcc ptr @lookup_phy(ptr noundef %chan)
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7, ptr %phy, align 4
  %tobool10.not = icmp eq ptr %call7, null
  br i1 %tobool10.not, label %do.body12, label %if.then6.if.end34_crit_edge

if.then6.if.end34_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

do.body12:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxad_launch_chan.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxad_launch_chan, %return)) #9
          to label %if.then26 [label %return], !srcloc !312

if.then26:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  %dev29 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %5 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev29, align 4
  %device30 = getelementptr inbounds %struct.dma_chan_dev, ptr %6, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxad_launch_chan.__UNIQUE_ID_ddebug250, ptr noundef %device30, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.53) #9
  br label %return

if.end34:                                         ; preds = %if.then6.if.end34_crit_edge, %do.end.if.end34_crit_edge
  %bus_error = getelementptr inbounds %struct.pxad_chan, ptr %chan, i32 0, i32 7
  %7 = ptrtoint ptr %bus_error to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %bus_error, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !322
  tail call void @arm_heavy_mb() #9
  %first = getelementptr inbounds %struct.pxad_desc_sw, ptr %desc, i32 0, i32 3
  %8 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %first, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %phy, align 4
  %base = getelementptr inbounds %struct.pxad_phy, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %12, align 4
  %shl = shl i32 %16, 4
  %add = add i32 %shl, 512
  %add.ptr = getelementptr i8, ptr %14, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #9, !srcloc !320
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxad_launch_chan.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxad_launch_chan, %do.end63)) #9
          to label %if.then54 [label %do.end63], !srcloc !312

if.then54:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phy, align 4
  %vchan = getelementptr inbounds %struct.pxad_phy, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %vchan to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vchan, align 4
  %dev58 = getelementptr inbounds %struct.dma_chan, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev58, align 4
  %device59 = getelementptr inbounds %struct.dma_chan_dev, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %first, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxad_launch_chan.__UNIQUE_ID_ddebug251, ptr noundef %device59, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.53, i32 noundef %24, ptr noundef nonnull @.str.57) #9
  br label %do.end63

do.end63:                                         ; preds = %if.then54, %if.end34
  %25 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %phy, align 4
  %misaligned = getelementptr inbounds %struct.pxad_chan, ptr %chan, i32 0, i32 3
  %27 = ptrtoint ptr %misaligned to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %misaligned, align 4, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool65 = icmp ne i8 %28, 0
  tail call fastcc void @phy_enable(ptr noundef %26, i1 noundef zeroext %tobool65)
  %wq_state = getelementptr inbounds %struct.pxad_chan, ptr %chan, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %wq_state, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %return

return:                                           ; preds = %do.end63, %if.then26, %do.body12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @lookup_phy(ptr noundef %pchan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pchan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pchan, align 4
  %phy_lock = getelementptr inbounds %struct.pxad_device, ptr %1, i32 0, i32 5
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %phy_lock) #9
  %prio6 = getelementptr inbounds %struct.pxad_chan, ptr %pchan, i32 0, i32 2
  %2 = ptrtoint ptr %prio6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %prio6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp757 = icmp sgt i32 %3, -1
  br i1 %cmp757, label %for.cond9.preheader.lr.ph, label %entry.out_unlock_crit_edge

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

for.cond9.preheader.lr.ph:                        ; preds = %entry
  %nr_chans = getelementptr inbounds %struct.pxad_device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_chans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1054 = icmp sgt i32 %5, 0
  %phys = getelementptr inbounds %struct.pxad_device, ptr %1, i32 0, i32 4
  br label %for.cond9.preheader

for.cond9.preheader:                              ; preds = %for.inc18.for.cond9.preheader_crit_edge, %for.cond9.preheader.lr.ph
  %prio.058 = phi i32 [ %3, %for.cond9.preheader.lr.ph ], [ %dec, %for.inc18.for.cond9.preheader_crit_edge ]
  br i1 %cmp1054, label %for.cond9.preheader.for.body12_crit_edge, label %for.cond9.preheader.for.inc18_crit_edge

for.cond9.preheader.for.inc18_crit_edge:          ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc18

for.cond9.preheader.for.body12_crit_edge:         ; preds = %for.cond9.preheader
  br label %for.body12

for.body12:                                       ; preds = %for.inc.for.body12_crit_edge, %for.cond9.preheader.for.body12_crit_edge
  %i.055 = phi i32 [ %inc, %for.inc.for.body12_crit_edge ], [ 0, %for.cond9.preheader.for.body12_crit_edge ]
  %and = lshr i32 %i.055, 2
  %6 = and i32 %and, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %prio.058, i32 %6)
  %cmp13.not = icmp eq i32 %prio.058, %6
  br i1 %cmp13.not, label %if.end, label %for.body12.for.inc_crit_edge

for.body12.for.inc_crit_edge:                     ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body12
  %7 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phys, align 4
  %vchan = getelementptr %struct.pxad_phy, ptr %8, i32 %i.055, i32 2
  %9 = ptrtoint ptr %vchan to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vchan, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.then15, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.pxad_phy, ptr %8, i32 %i.055
  %11 = ptrtoint ptr %vchan to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %pchan, ptr %vchan, align 4
  br label %out_unlock

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body12.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.for.inc18_crit_edge, label %for.inc.for.body12_crit_edge

for.inc.for.body12_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body12

for.inc.for.inc18_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc18

for.inc18:                                        ; preds = %for.inc.for.inc18_crit_edge, %for.cond9.preheader.for.inc18_crit_edge
  %dec = add nsw i32 %prio.058, -1
  %cmp7 = icmp sgt i32 %prio.058, 0
  br i1 %cmp7, label %for.inc18.for.cond9.preheader_crit_edge, label %for.inc18.out_unlock_crit_edge

for.inc18.out_unlock_crit_edge:                   ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

for.inc18.for.cond9.preheader_crit_edge:          ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond9.preheader

out_unlock:                                       ; preds = %for.inc18.out_unlock_crit_edge, %if.then15, %entry.out_unlock_crit_edge
  %found.0 = phi ptr [ %arrayidx, %if.then15 ], [ null, %entry.out_unlock_crit_edge ], [ null, %for.inc18.out_unlock_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %phy_lock, i32 noundef %call3) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lookup_phy.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lookup_phy, %do.end35)) #9
          to label %if.then28 [label %do.end35], !srcloc !312

if.then28:                                        ; preds = %out_unlock
  %dev = getelementptr inbounds %struct.dma_chan, ptr %pchan, i32 0, i32 5
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %device31 = getelementptr inbounds %struct.dma_chan_dev, ptr %13, i32 0, i32 1
  %tobool32.not = icmp eq ptr %found.0, null
  br i1 %tobool32.not, label %if.then28.cond.end_crit_edge, label %cond.true

if.then28.cond.end_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %found.0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %found.0, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then28.cond.end_crit_edge
  %cond = phi i32 [ %15, %cond.true ], [ -1, %if.then28.cond.end_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lookup_phy.__UNIQUE_ID_ddebug238, ptr noundef %device31, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.58, ptr noundef %found.0, i32 noundef %cond) #9
  br label %do.end35

do.end35:                                         ; preds = %cond.end, %out_unlock
  ret ptr %found.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @phy_enable(ptr noundef %phy, i1 noundef zeroext %misaligned) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vchan = getelementptr inbounds %struct.pxad_phy, ptr %phy, i32 0, i32 2
  %0 = ptrtoint ptr %vchan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vchan, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @phy_enable.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@phy_enable, %do.end)) #9
          to label %if.then6 [label %do.end], !srcloc !312

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %vchan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vchan, align 4
  %dev = getelementptr inbounds %struct.dma_chan, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %device = getelementptr inbounds %struct.dma_chan_dev, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phy, align 4
  %conv = zext i1 %misaligned to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @phy_enable.__UNIQUE_ID_ddebug242, ptr noundef %device, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.60, ptr noundef %phy, i32 noundef %7, i32 noundef %conv) #9
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %8 = ptrtoint ptr %vchan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vchan, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %drcmr = getelementptr inbounds %struct.pxad_chan, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %drcmr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %drcmr, align 4
  %nr_requestors = getelementptr inbounds %struct.pxad_device, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %nr_requestors to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_requestors, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.not = icmp ugt i32 %13, %15
  br i1 %cmp.not, label %do.end.if.end23_crit_edge, label %if.then17

do.end.if.end23_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then17:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %13)
  %cmp.i = icmp ult i32 %13, 64
  %mul.i = shl i32 %13, 2
  %retval.0.v.i = select i1 %cmp.i, i32 256, i32 4096
  %retval.0.i153 = add i32 %retval.0.v.i, %mul.i
  %16 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %phy, align 4
  %or = or i32 %17, 128
  %18 = tail call i32 @llvm.bswap.i32(i32 %or)
  %base = getelementptr inbounds %struct.pxad_phy, ptr %phy, i32 0, i32 1
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %add.ptr22 = getelementptr i8, ptr %20, i32 %retval.0.i153
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %18) #9, !srcloc !320
  br label %if.end23

if.end23:                                         ; preds = %if.then17, %do.end.if.end23_crit_edge
  %base24 = getelementptr inbounds %struct.pxad_phy, ptr %phy, i32 0, i32 1
  %21 = ptrtoint ptr %base24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base24, align 4
  %add.ptr25 = getelementptr i8, ptr %22, i32 160
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #9, !srcloc !316
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @phy_enable.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@phy_enable, %do.end50)) #9
          to label %if.then42 [label %do.end50], !srcloc !312

if.then42:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %vchan to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vchan, align 4
  %dev46 = getelementptr inbounds %struct.dma_chan, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev46, align 4
  %device47 = getelementptr inbounds %struct.dma_chan_dev, ptr %28, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @phy_enable.__UNIQUE_ID_ddebug243, ptr noundef %device47, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.38, i32 noundef %24) #9
  br label %do.end50

do.end50:                                         ; preds = %if.then42, %if.end23
  %29 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %phy, align 4
  %shl = shl nuw i32 1, %30
  %or55 = or i32 %shl, %24
  %neg = xor i32 %shl, -1
  %and = and i32 %24, %neg
  %dalgn.0 = select i1 %misaligned, i32 %or55, i32 %and
  %31 = tail call i32 @llvm.bswap.i32(i32 %dalgn.0)
  %32 = ptrtoint ptr %base24 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base24, align 4
  %add.ptr61 = getelementptr i8, ptr %33, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 %31) #9, !srcloc !320
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @phy_enable.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@phy_enable, %do.body88)) #9
          to label %if.then76 [label %do.body88], !srcloc !312

if.then76:                                        ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %vchan to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vchan, align 4
  %dev80 = getelementptr inbounds %struct.dma_chan, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %dev80 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev80, align 4
  %device81 = getelementptr inbounds %struct.dma_chan_dev, ptr %37, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @phy_enable.__UNIQUE_ID_ddebug244, ptr noundef %device81, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.60, i32 noundef %dalgn.0, ptr noundef nonnull @.str.38) #9
  br label %do.body88

do.body88:                                        ; preds = %if.then76, %do.end50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !323
  tail call void @arm_heavy_mb() #9
  %38 = ptrtoint ptr %base24 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base24, align 4
  %40 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %phy, align 4
  %shl93 = shl i32 %41, 2
  %add.ptr94 = getelementptr i8, ptr %39, i32 %shl93
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94, i32 83886240) #9, !srcloc !320
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @phy_enable.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@phy_enable, %cleanup)) #9
          to label %if.then109 [label %cleanup], !srcloc !312

if.then109:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %vchan to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vchan, align 4
  %dev113 = getelementptr inbounds %struct.dma_chan, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %dev113 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev113, align 4
  %device114 = getelementptr inbounds %struct.dma_chan_dev, ptr %45, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @phy_enable.__UNIQUE_ID_ddebug245, ptr noundef %device114, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.60, i32 noundef -1610612731, ptr noundef nonnull @.str.36) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then109, %do.body88, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @phy_disable(ptr noundef %phy) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %phy, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %base = getelementptr inbounds %struct.pxad_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy, align 4
  %shl = shl i32 %3, 2
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !316
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @phy_disable.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@phy_disable, %do.end)) #9
          to label %if.then7 [label %do.end], !srcloc !312

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %vchan = getelementptr inbounds %struct.pxad_phy, ptr %phy, i32 0, i32 2
  %6 = ptrtoint ptr %vchan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vchan, align 4
  %dev = getelementptr inbounds %struct.dma_chan, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %device = getelementptr inbounds %struct.dma_chan_dev, ptr %9, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @phy_disable.__UNIQUE_ID_ddebug246, ptr noundef %device, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.36, i32 noundef %5) #9
  br label %do.end

do.end:                                           ; preds = %if.then7, %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @phy_disable.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@phy_disable, %do.body35)) #9
          to label %if.then24 [label %do.body35], !srcloc !312

if.then24:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %vchan25 = getelementptr inbounds %struct.pxad_phy, ptr %phy, i32 0, i32 2
  %10 = ptrtoint ptr %vchan25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vchan25, align 4
  %dev28 = getelementptr inbounds %struct.dma_chan, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev28, align 4
  %device29 = getelementptr inbounds %struct.dma_chan_dev, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %phy, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @phy_disable.__UNIQUE_ID_ddebug247, ptr noundef %device29, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.66, ptr noundef nonnull %phy, i32 noundef %15) #9
  br label %do.body35

do.body35:                                        ; preds = %if.then24, %do.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !324
  tail call void @arm_heavy_mb() #9
  %and38 = and i32 %5, 1610612735
  %16 = tail call i32 @llvm.bswap.i32(i32 %and38)
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  %19 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %phy, align 4
  %shl41 = shl i32 %20, 2
  %add.ptr43 = getelementptr i8, ptr %18, i32 %shl41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %16) #9, !srcloc !320
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @phy_disable.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@phy_disable, %cleanup)) #9
          to label %if.then58 [label %cleanup], !srcloc !312

if.then58:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #11
  %vchan59 = getelementptr inbounds %struct.pxad_phy, ptr %phy, i32 0, i32 2
  %21 = ptrtoint ptr %vchan59 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vchan59, align 4
  %dev62 = getelementptr inbounds %struct.dma_chan, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev62, align 4
  %device63 = getelementptr inbounds %struct.dma_chan_dev, ptr %24, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @phy_disable.__UNIQUE_ID_ddebug248, ptr noundef %device63, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.66, i32 noundef %and38, ptr noundef nonnull @.str.36) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then58, %do.body35, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxad_chan_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vchan = getelementptr inbounds %struct.pxad_phy, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %vchan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vchan, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !311

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/pxa_dma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 612, 0\0A.popsection", ""() #9, !srcloc !325
  unreachable

do.end9:                                          ; preds = %entry
  %call = tail call fastcc i32 @clear_chan_irq(ptr noundef %dev_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %tobool10.not = icmp sgt i32 %call, -1
  br i1 %tobool10.not, label %if.end12, label %do.end9.cleanup_crit_edge

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %do.end9
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %desc_issued = getelementptr inbounds %struct.virt_dma_chan, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %desc_issued to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc_issued, align 4
  %cmp.not229 = icmp eq ptr %3, %desc_issued
  br i1 %cmp.not229, label %if.end12.for.end_crit_edge, label %for.body.lr.ph

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end12
  %dev = getelementptr inbounds %struct.dma_chan, ptr %1, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %vchan_cookie_complete.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in230 = phi ptr [ %3, %for.body.lr.ph ], [ %.pn232, %vchan_cookie_complete.exit.for.body_crit_edge ]
  %vd.0231 = getelementptr i8, ptr %.pn.in230, i32 -108
  %4 = ptrtoint ptr %.pn.in230 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn232 = load ptr, ptr %.pn.in230, align 4
  %nb_desc.i = getelementptr i8, ptr %.pn.in230, i32 8
  %5 = ptrtoint ptr %nb_desc.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nb_desc.i, align 4
  %sub.i = add i32 %6, -1
  %arrayidx.i = getelementptr %struct.pxad_desc_sw, ptr %vd.0231, i32 0, i32 7, i32 %sub.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %dtadr.i = getelementptr inbounds %struct.pxad_desc_hw, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %dtadr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dtadr.i, align 8
  %dsadr.i = getelementptr inbounds %struct.pxad_desc_hw, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %dsadr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dsadr.i, align 4
  %add.i = add i32 %12, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %add.i)
  %cmp.i = icmp ne i32 %10, %add.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxad_chan_handler.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxad_chan_handler, %do.end44)) #9
          to label %if.then38 [label %do.end44], !srcloc !312

if.then38:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %device = getelementptr inbounds %struct.dma_chan_dev, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %vd.0231 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vd.0231, align 4
  %conv = zext i1 %cmp.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxad_chan_handler.__UNIQUE_ID_ddebug254, ptr noundef %device, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.71, ptr noundef %vd.0231, i32 noundef %16, i32 noundef %conv, i32 noundef %call) #9
  br label %do.end44

do.end44:                                         ; preds = %if.then38, %for.body
  %17 = ptrtoint ptr %vd.0231 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vd.0231, align 4
  %cyclic = getelementptr i8, ptr %.pn.in230, i32 21
  %19 = ptrtoint ptr %cyclic to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cyclic, align 1, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool50.not = icmp eq i8 %20, 0
  br i1 %tobool50.not, label %if.end52, label %if.then51

if.then51:                                        ; preds = %do.end44
  %chan.i = getelementptr i8, ptr %.pn.in230, i32 -96
  %21 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chan.i, align 4
  %cyclic.i = getelementptr inbounds %struct.virt_dma_chan, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %vd.0231, ptr %cyclic.i, align 4
  %state.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %22, i32 0, i32 1, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then51.for.end_crit_edge

if.then51.for.end_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then.i.i:                                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %22, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i) #9
  br label %for.end

if.end52:                                         ; preds = %do.end44
  br i1 %cmp.i, label %if.then54, label %if.end52.for.end_crit_edge

if.end52.for.end_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then54:                                        ; preds = %if.end52
  %call.i.i204 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in230) #9
  br i1 %call.i.i204, label %if.end.i.i, label %if.then54.list_del.exit_crit_edge

if.then54.list_del.exit_crit_edge:                ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in230, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %.pn.in230 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %.pn.in230, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then54.list_del.exit_crit_edge
  %30 = ptrtoint ptr %.pn.in230 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in230, align 4
  %prev.i = getelementptr %struct.list_head, ptr %.pn.in230, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %chan.i205 = getelementptr i8, ptr %.pn.in230, i32 -96
  %32 = ptrtoint ptr %chan.i205 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chan.i205, align 4
  %34 = ptrtoint ptr %vd.0231 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vd.0231, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp.i.i = icmp slt i32 %35, 1
  br i1 %cmp.i.i, label %do.body2.i.i, label %dma_cookie_complete.exit.i, !prof !311

do.body2.i.i:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #9, !srcloc !326
  unreachable

dma_cookie_complete.exit.i:                       ; preds = %list_del.exit
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %33, i32 0, i32 3
  %36 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %completed_cookie.i.i, align 4
  %37 = ptrtoint ptr %vd.0231 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %vd.0231, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxad_chan_handler, %do.end.i)) #9
          to label %if.then.i [label %do.end.i], !srcloc !312

if.then.i:                                        ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %33, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %39, i32 0, i32 15
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vchan_cookie_complete.__UNIQUE_ID_ddebug236, ptr noundef %41, ptr noundef nonnull @.str.78, ptr noundef %vd.0231, i32 noundef %35) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %dma_cookie_complete.exit.i
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %33, i32 0, i32 7
  %prev.i.i206 = getelementptr inbounds %struct.virt_dma_chan, ptr %33, i32 0, i32 7, i32 1
  %42 = ptrtoint ptr %prev.i.i206 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i206, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn.in230, ptr noundef %43, ptr noundef %desc_completed.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i.list_add_tail.exit.i_crit_edge

do.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %prev.i.i206 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %.pn.in230, ptr %prev.i.i206, align 4
  %45 = ptrtoint ptr %.pn.in230 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %desc_completed.i, ptr %.pn.in230, align 4
  %46 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %.pn.in230, ptr %43, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.end.i.list_add_tail.exit.i_crit_edge
  %state.i.i207 = getelementptr inbounds %struct.virt_dma_chan, ptr %33, i32 0, i32 1, i32 1
  %call.i.i208 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i207) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i208)
  %tobool.not.i.i209 = icmp eq i32 %call.i.i208, 0
  br i1 %tobool.not.i.i209, label %if.then.i.i211, label %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge

list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_cookie_complete.exit

if.then.i.i211:                                   ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %task.i210 = getelementptr inbounds %struct.virt_dma_chan, ptr %33, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i210) #9
  br label %vchan_cookie_complete.exit

vchan_cookie_complete.exit:                       ; preds = %if.then.i.i211, %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge
  %cmp.not = icmp eq ptr %.pn232, %desc_issued
  br i1 %cmp.not, label %vchan_cookie_complete.exit.for.end_crit_edge, label %vchan_cookie_complete.exit.for.body_crit_edge

vchan_cookie_complete.exit.for.body_crit_edge:    ; preds = %vchan_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

vchan_cookie_complete.exit.for.end_crit_edge:     ; preds = %vchan_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %vchan_cookie_complete.exit.for.end_crit_edge, %if.end52.for.end_crit_edge, %if.then.i.i, %if.then51.for.end_crit_edge, %if.end12.for.end_crit_edge
  %last_started.1 = phi i32 [ %18, %if.then51.for.end_crit_edge ], [ %18, %if.then.i.i ], [ 0, %if.end12.for.end_crit_edge ], [ %18, %if.end52.for.end_crit_edge ], [ %18, %vchan_cookie_complete.exit.for.end_crit_edge ]
  %and62 = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %for.end.if.end65_crit_edge, label %if.then64

for.end.if.end65_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then64:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %bus_error = getelementptr inbounds %struct.pxad_chan, ptr %1, i32 0, i32 7
  %48 = ptrtoint ptr %bus_error to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %last_started.1, ptr %bus_error, align 4
  tail call fastcc void @phy_disable(ptr noundef %dev_id)
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %for.end.if.end65_crit_edge
  %bus_error66 = getelementptr inbounds %struct.pxad_chan, ptr %1, i32 0, i32 7
  %49 = ptrtoint ptr %bus_error66 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bus_error66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool67.not = icmp ne i32 %50, 0
  %and68 = and i32 %call, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  %or.cond = select i1 %tobool67.not, i1 true, i1 %tobool69.not
  br i1 %or.cond, label %if.end65.if.end150_crit_edge, label %do.body71

if.end65.if.end150_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end150

do.body71:                                        ; preds = %if.end65
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxad_chan_handler.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxad_chan_handler, %do.body98)) #9
          to label %if.then85 [label %do.body98], !srcloc !312

if.then85:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #11
  %dev88 = getelementptr inbounds %struct.dma_chan, ptr %1, i32 0, i32 5
  %51 = ptrtoint ptr %dev88 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev88, align 4
  %device89 = getelementptr inbounds %struct.dma_chan_dev, ptr %52, i32 0, i32 1
  %desc_submitted = getelementptr inbounds %struct.virt_dma_chan, ptr %1, i32 0, i32 5
  %53 = ptrtoint ptr %desc_submitted to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %desc_submitted, align 4
  %cmp.i212 = icmp eq ptr %54, %desc_submitted
  %conv.i = zext i1 %cmp.i212 to i32
  %55 = ptrtoint ptr %desc_issued to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %desc_issued, align 4
  %cmp.i213 = icmp eq ptr %56, %desc_issued
  %conv.i214 = zext i1 %cmp.i213 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxad_chan_handler.__UNIQUE_ID_ddebug255, ptr noundef %device89, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.71, i32 noundef %conv.i, i32 noundef %conv.i214) #9
  br label %do.body98

do.body98:                                        ; preds = %if.then85, %do.body71
  %and99 = and i32 %call, -536870913
  %57 = tail call i32 @llvm.bswap.i32(i32 %and99)
  %base = getelementptr inbounds %struct.pxad_phy, ptr %dev_id, i32 0, i32 1
  %58 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base, align 4
  %60 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dev_id, align 4
  %shl = shl i32 %61, 2
  %add.ptr100 = getelementptr i8, ptr %59, i32 %shl
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr100, i32 %57) #9, !srcloc !320
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxad_chan_handler.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxad_chan_handler, %do.end126)) #9
          to label %if.then115 [label %do.end126], !srcloc !312

if.then115:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %vchan to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %vchan, align 4
  %dev119 = getelementptr inbounds %struct.dma_chan, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %dev119 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev119, align 4
  %device120 = getelementptr inbounds %struct.dma_chan_dev, ptr %65, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pxad_chan_handler.__UNIQUE_ID_ddebug256, ptr noundef %device120, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.71, i32 noundef %and99, ptr noundef nonnull @.str.36) #9
  br label %do.end126

do.end126:                                        ; preds = %if.then115, %do.body98
  %66 = ptrtoint ptr %desc_issued to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile ptr, ptr %desc_issued, align 4
  %cmp.i215.not = icmp eq ptr %67, %desc_issued
  br i1 %cmp.i215.not, label %if.then131, label %if.else139

if.then131:                                       ; preds = %do.end126
  call void @__sanitizer_cov_trace_pc() #11
  %desc_submitted133 = getelementptr inbounds %struct.virt_dma_chan, ptr %1, i32 0, i32 5
  %68 = ptrtoint ptr %desc_submitted133 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile ptr, ptr %desc_submitted133, align 4
  %cmp.i217 = icmp ne ptr %69, %desc_submitted133
  %misaligned = getelementptr inbounds %struct.pxad_chan, ptr %1, i32 0, i32 3
  %frombool138 = zext i1 %cmp.i217 to i8
  %70 = ptrtoint ptr %misaligned to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %frombool138, ptr %misaligned, align 4
  br label %if.end150

if.else139:                                       ; preds = %do.end126
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr145 = getelementptr i8, ptr %67, i32 -108
  tail call fastcc void @pxad_launch_chan(ptr noundef nonnull %1, ptr noundef %add.ptr145)
  br label %if.end150

if.end150:                                        ; preds = %if.else139, %if.then131, %if.end65.if.end150_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  %wq_state = getelementptr inbounds %struct.pxad_chan, ptr %1, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %wq_state, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end150, %do.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end150 ], [ 0, %do.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxad_int_handler(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.pxad_device, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 240
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !327
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not8 = icmp eq i32 %2, 0
  br i1 %tobool.not8, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %phys = getelementptr inbounds %struct.pxad_device, ptr %dev_id, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %ret.010 = phi i32 [ 0, %while.body.lr.ph ], [ %spec.select, %while.body.while.body_crit_edge ]
  %dint.09 = phi i32 [ %3, %while.body.lr.ph ], [ %and, %while.body.while.body_crit_edge ]
  %4 = tail call i32 @llvm.cttz.i32(i32 %dint.09, i1 true) #9, !range !328
  %sub = add i32 %dint.09, -1
  %and = and i32 %sub, %dint.09
  %5 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phys, align 4
  %arrayidx = getelementptr %struct.pxad_phy, ptr %6, i32 %4
  %call3 = tail call i32 @pxad_chan_handler(i32 noundef %irq, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp = icmp eq i32 %call3, 1
  %spec.select = select i1 %cmp, i32 1, i32 %ret.010
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %spec.select, %while.body.while.end_crit_edge ]
  ret i32 %ret.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clear_chan_irq(ptr noundef %phy) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.pxad_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 240
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !316
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !329
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phy, align 4
  %shl = shl nuw i32 1, %5
  %and = and i32 %shl, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %shl5 = shl i32 %5, 2
  %add.ptr6 = getelementptr i8, ptr %7, i32 %shl5
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #9, !srcloc !316
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clear_chan_irq.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@clear_chan_irq, %do.end)) #9
          to label %if.then15 [label %do.end], !srcloc !312

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %vchan = getelementptr inbounds %struct.pxad_phy, ptr %phy, i32 0, i32 2
  %10 = ptrtoint ptr %vchan to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vchan, align 4
  %dev = getelementptr inbounds %struct.dma_chan, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %device = getelementptr inbounds %struct.dma_chan_dev, ptr %13, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @clear_chan_irq.__UNIQUE_ID_ddebug252, ptr noundef %device, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.36, i32 noundef %9) #9
  br label %do.end

do.end:                                           ; preds = %if.then15, %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !330
  tail call void @arm_heavy_mb() #9
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %16 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %phy, align 4
  %shl24 = shl i32 %17, 2
  %add.ptr26 = getelementptr i8, ptr %15, i32 %shl24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %8) #9, !srcloc !320
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clear_chan_irq.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@clear_chan_irq, %do.end51)) #9
          to label %if.then41 [label %do.end51], !srcloc !312

if.then41:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %vchan42 = getelementptr inbounds %struct.pxad_phy, ptr %phy, i32 0, i32 2
  %18 = ptrtoint ptr %vchan42 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vchan42, align 4
  %dev45 = getelementptr inbounds %struct.dma_chan, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev45, align 4
  %device46 = getelementptr inbounds %struct.dma_chan_dev, ptr %21, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @clear_chan_irq.__UNIQUE_ID_ddebug253, ptr noundef %device46, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.74, i32 noundef %9, ptr noundef nonnull @.str.36) #9
  br label %do.end51

do.end51:                                         ; preds = %if.then41, %do.end
  %and52 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %do.end51.if.end66_crit_edge, label %land.lhs.true

do.end51.if.end66_crit_edge:                      ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

land.lhs.true:                                    ; preds = %do.end51
  %vchan54 = getelementptr inbounds %struct.pxad_phy, ptr %phy, i32 0, i32 2
  %22 = ptrtoint ptr %vchan54 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vchan54, align 4
  %tobool55.not = icmp eq ptr %23, null
  br i1 %tobool55.not, label %land.lhs.true.if.end66_crit_edge, label %do.end59

land.lhs.true.if.end66_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

do.end59:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %dev63 = getelementptr inbounds %struct.dma_chan, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev63, align 4
  %device64 = getelementptr inbounds %struct.dma_chan_dev, ptr %25, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %device64, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.74, ptr noundef %vchan54) #12
  br label %if.end66

if.end66:                                         ; preds = %do.end59, %land.lhs.true.if.end66_crit_edge, %do.end51.if.end66_crit_edge
  %and67 = and i32 %9, 2147483647
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and67, %if.end66 ], [ -2147483648, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_get_any_slave_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @state_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @state_show, ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @state_show(ptr noundef %s, ptr nocapture noundef readnone %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.81) #9
  %nr_chans = getelementptr inbounds %struct.pxad_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_chans, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.82, i32 noundef %3) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chan_state_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @chan_state_show, ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chan_state_show(ptr noundef %s, ptr nocapture noundef readnone %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %base = getelementptr inbounds %struct.pxad_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %shl = shl i32 %5, 2
  %add.ptr = getelementptr i8, ptr %3, i32 %shl
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !316
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  %shl4 = shl i32 %11, 4
  %add5 = add i32 %shl4, 524
  %add.ptr6 = getelementptr i8, ptr %9, i32 %add5
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #9, !srcloc !316
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %shr.i = lshr i32 %13, 16
  %and.i = and i32 %shr.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %shl.i = shl nuw nsw i32 4, %and.i
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 %shl.i
  %shr = lshr i32 %13, 14
  %and = and i32 %shr, 3
  %shl10 = shl nuw nsw i32 1, %and
  %14 = lshr i32 %shl10, 1
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.90, i32 noundef %16) #9
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %1, align 4
  %and14 = lshr i32 %18, 2
  %div160 = and i32 %and14, 3
  %arrayidx = getelementptr [4 x ptr], ptr @chan_state_show.str_prio, i32 0, i32 %div160
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.91, ptr noundef %20) #9
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base, align 4
  %add.ptr17 = getelementptr i8, ptr %22, i32 160
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #9, !srcloc !316
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %1, align 4
  %shl21 = shl nuw i32 1, %26
  %and22 = and i32 %shl21, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool.not = icmp eq i32 %and22, 0
  %cond = select i1 %tobool.not, ptr @.str.94, ptr @.str.93
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.92, ptr noundef nonnull %cond) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool24.not = icmp sgt i32 %7, -1
  %cond25 = select i1 %tobool24.not, ptr @.str.97, ptr @.str.96
  %and26 = and i32 %7, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %cond28 = select i1 %tobool27.not, ptr @.str.97, ptr @.str.98
  %and29 = and i32 %7, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %cond31 = select i1 %tobool30.not, ptr @.str.97, ptr @.str.99
  %and32 = and i32 %7, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  %cond34 = select i1 %tobool33.not, ptr @.str.97, ptr @.str.100
  %and35 = and i32 %7, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  %cond37 = select i1 %tobool36.not, ptr @.str.97, ptr @.str.101
  %and38 = and i32 %7, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  %cond40 = select i1 %tobool39.not, ptr @.str.97, ptr @.str.102
  %and41 = and i32 %7, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  %cond43 = select i1 %tobool42.not, ptr @.str.97, ptr @.str.103
  %and44 = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  %cond46 = select i1 %tobool45.not, ptr @.str.97, ptr @.str.104
  %and47 = and i32 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  %cond49 = select i1 %tobool48.not, ptr @.str.97, ptr @.str.105
  %and50 = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  %cond52 = select i1 %tobool51.not, ptr @.str.97, ptr @.str.106
  %and53 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  %cond55 = select i1 %tobool54.not, ptr @.str.97, ptr @.str.107
  %and56 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  %cond58 = select i1 %tobool57.not, ptr @.str.97, ptr @.str.108
  %and59 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  %cond61 = select i1 %tobool60.not, ptr @.str.97, ptr @.str.109
  %and62 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  %cond64 = select i1 %tobool63.not, ptr @.str.97, ptr @.str.110
  %and65 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  %cond67 = select i1 %tobool66.not, ptr @.str.97, ptr @.str.111
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.95, i32 noundef %7, ptr noundef nonnull %cond25, ptr noundef nonnull %cond28, ptr noundef nonnull %cond31, ptr noundef nonnull %cond34, ptr noundef nonnull %cond37, ptr noundef nonnull %cond40, ptr noundef nonnull %cond43, ptr noundef nonnull %cond46, ptr noundef nonnull %cond49, ptr noundef nonnull %cond52, ptr noundef nonnull %cond55, ptr noundef nonnull %cond58, ptr noundef nonnull %cond61, ptr noundef nonnull %cond64, ptr noundef nonnull %cond67) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %tobool69.not = icmp sgt i32 %13, -1
  %cond70 = select i1 %tobool69.not, ptr @.str.97, ptr @.str.113
  %and71 = and i32 %13, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  %cond73 = select i1 %tobool72.not, ptr @.str.97, ptr @.str.114
  %and74 = and i32 %13, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  %cond76 = select i1 %tobool75.not, ptr @.str.97, ptr @.str.115
  %and77 = and i32 %13, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  %cond79 = select i1 %tobool78.not, ptr @.str.97, ptr @.str.116
  %and80 = and i32 %13, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  %cond82 = select i1 %tobool81.not, ptr @.str.97, ptr @.str.117
  %and83 = and i32 %13, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  %cond85 = select i1 %tobool84.not, ptr @.str.97, ptr @.str.118
  %and86 = and i32 %13, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  %cond88 = select i1 %tobool87.not, ptr @.str.97, ptr @.str.119
  %and89 = and i32 %13, 8191
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.112, i32 noundef %13, ptr noundef nonnull %cond70, ptr noundef nonnull %cond73, ptr noundef nonnull %cond76, ptr noundef nonnull %cond79, ptr noundef nonnull %cond82, ptr noundef nonnull %cond85, ptr noundef nonnull %cond88, i32 noundef %spec.select.i, i32 noundef %14, i32 noundef %and89) #9
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %1, align 4
  %shl93 = shl i32 %30, 4
  %add94 = add i32 %shl93, 516
  %add.ptr95 = getelementptr i8, ptr %28, i32 %add94
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr95) #9, !srcloc !316
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.120, i32 noundef %32) #9
  %33 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base, align 4
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %1, align 4
  %shl101 = shl i32 %36, 4
  %add102 = add i32 %shl101, 520
  %add.ptr103 = getelementptr i8, ptr %34, i32 %add102
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr103) #9, !srcloc !316
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.121, i32 noundef %38) #9
  %39 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base, align 4
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %1, align 4
  %shl109 = shl i32 %42, 4
  %add110 = add i32 %shl109, 512
  %add.ptr111 = getelementptr i8, ptr %40, i32 %add110
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr111) #9, !srcloc !316
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.122, i32 noundef %44) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @descriptors_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @descriptors_show, ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @descriptors_show(ptr noundef %s, ptr nocapture noundef readnone %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %base = getelementptr inbounds %struct.pxad_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %shl = shl i32 %5, 4
  %add = add i32 %shl, 512
  %add.ptr = getelementptr i8, ptr %3, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !316
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.123, i32 noundef %9) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.124, i32 noundef 0) #9
  br label %land.rhs

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %entry
  %i.078 = phi i32 [ 1, %entry ], [ %inc, %for.body.land.rhs_crit_edge ]
  %phys_desc.077 = phi i32 [ %7, %entry ], [ %22, %for.body.land.rhs_crit_edge ]
  %shr.i = lshr i32 %phys_desc.077, 12
  %call.i = tail call i32 @pfn_valid(i32 noundef %shr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.else, label %for.body

for.body:                                         ; preds = %land.rhs
  %10 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %phys_desc.077, i32 -2130706432, i32 8454144) #14, !srcloc !331
  %11 = inttoptr i32 %10 to ptr
  %dcmd4 = getelementptr inbounds %struct.pxad_desc_hw, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %dcmd4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dcmd4, align 4
  %shr.i71 = lshr i32 %13, 16
  %and.i = and i32 %shr.i71, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %shl.i = shl nuw nsw i32 4, %and.i
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 %shl.i
  %shr = lshr i32 %13, 14
  %and = and i32 %shr, 3
  %shl6 = shl nuw nsw i32 1, %and
  %14 = lshr i32 %shl6, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.125, i32 noundef %i.078, i32 noundef %phys_desc.077, ptr noundef %11) #9
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %11, align 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.122, i32 noundef %16) #9
  %dsadr = getelementptr inbounds %struct.pxad_desc_hw, ptr %11, i32 0, i32 1
  %17 = ptrtoint ptr %dsadr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dsadr, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.120, i32 noundef %18) #9
  %dtadr = getelementptr inbounds %struct.pxad_desc_hw, ptr %11, i32 0, i32 2
  %19 = ptrtoint ptr %dtadr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dtadr, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.121, i32 noundef %20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %tobool10.not = icmp sgt i32 %13, -1
  %cond = select i1 %tobool10.not, ptr @.str.97, ptr @.str.113
  %and11 = and i32 %13, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %cond13 = select i1 %tobool12.not, ptr @.str.97, ptr @.str.114
  %and14 = and i32 %13, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %cond16 = select i1 %tobool15.not, ptr @.str.97, ptr @.str.115
  %and17 = and i32 %13, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %cond19 = select i1 %tobool18.not, ptr @.str.97, ptr @.str.116
  %and20 = and i32 %13, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %cond22 = select i1 %tobool21.not, ptr @.str.97, ptr @.str.117
  %and23 = and i32 %13, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  %cond25 = select i1 %tobool24.not, ptr @.str.97, ptr @.str.118
  %and26 = and i32 %13, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %cond28 = select i1 %tobool27.not, ptr @.str.97, ptr @.str.119
  %and29 = and i32 %13, 8191
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.112, i32 noundef %13, ptr noundef nonnull %cond, ptr noundef nonnull %cond13, ptr noundef nonnull %cond16, ptr noundef nonnull %cond19, ptr noundef nonnull %cond22, ptr noundef nonnull %cond25, ptr noundef nonnull %cond28, i32 noundef %spec.select.i, i32 noundef %14, i32 noundef %and29) #9
  %21 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %11, align 16
  %inc = add nuw nsw i32 %i.078, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %if.then, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.126, i32 noundef 20, i32 noundef %22) #9
  br label %if.end

if.else:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %phys_desc.077)
  %cmp32 = icmp eq i32 %phys_desc.077, 1
  %cond33 = select i1 %cmp32, ptr @.str.128, ptr @.str.89
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.127, i32 noundef %i.078, i32 noundef %phys_desc.077, ptr noundef nonnull %cond33) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @requester_chan_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @requester_chan_show, ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @requester_chan_show(ptr noundef %s, ptr nocapture noundef readnone %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.129, i32 noundef %3) #9
  %base = getelementptr inbounds %struct.pxad_phy, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.014 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %i.014)
  %cmp.i = icmp ult i32 %i.014, 64
  %mul.i = shl i32 %i.014, 2
  %retval.0.v.i = select i1 %cmp.i, i32 256, i32 4096
  %retval.0.i = add i32 %retval.0.v.i, %mul.i
  %add.ptr = getelementptr i8, ptr %5, i32 %retval.0.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !316
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %and = and i32 %7, 31
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %9)
  %cmp3 = icmp eq i32 %and, %9
  br i1 %cmp3, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %and4 = lshr i32 %7, 7
  %and4.lobit = and i32 %and4, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.130, i32 noundef %i.014, i32 noundef %and4.lobit) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, 70
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 144)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 144)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !88, !90, !91, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !136, !137, !139, !141, !142, !143, !145, !146, !148, !149, !151, !153, !155, !156, !157, !159, !160, !161, !162, !164, !165, !166, !168, !169, !171, !173, !174, !176, !178, !179, !180, !182, !183, !184, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300}
!llvm.module.flags = !{!302, !303, !304, !305, !306, !307, !308, !309}
!llvm.ident = !{!310}

!0 = !{ptr @__initcall__kmod_pxa_dma__274_1459_pxad_driver_init6, !1, !"__initcall__kmod_pxa_dma__274_1459_pxad_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/dma/pxa_dma.c", i32 1459, i32 1}
!2 = !{ptr @__exitcall_pxad_driver_exit, !1, !"__exitcall_pxad_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description275, !4, !"__UNIQUE_ID_description275", i1 false, i1 false}
!4 = !{!"../drivers/dma/pxa_dma.c", i32 1461, i32 1}
!5 = !{ptr @__UNIQUE_ID_author276, !6, !"__UNIQUE_ID_author276", i1 false, i1 false}
!6 = !{!"../drivers/dma/pxa_dma.c", i32 1462, i32 1}
!7 = !{ptr @__UNIQUE_ID_file277, !8, !"__UNIQUE_ID_file277", i1 false, i1 false}
!8 = !{!"../drivers/dma/pxa_dma.c", i32 1463, i32 1}
!9 = !{ptr @__UNIQUE_ID_license278, !8, !"__UNIQUE_ID_license278", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/dma/pxa_dma.c", i32 1437, i32 11}
!12 = !{ptr @pxad_driver, !13, !"pxad_driver", i1 false, i1 false}
!13 = !{!"../drivers/dma/pxa_dma.c", i32 1435, i32 31}
!14 = !{ptr @pxad_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/dma/pxa_dma.c", i32 1359, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/dma/pxa_dma.c", i32 1368, i32 41}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/dma/pxa_dma.c", i32 1370, i32 47}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/dma/pxa_dma.c", i32 1373, i32 4}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @pxad_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @pxad_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/dma/pxa_dma.c", i32 1408, i32 3}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @pxad_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @pxad_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/dma/pxa_dma.c", i32 1417, i32 4}
!36 = !{ptr @pxad_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @pxad_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/dma/pxa_dma.c", i32 1425, i32 2}
!40 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @pxad_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @pxad_probe._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/dma/pxa_dma.c", i32 929, i32 2}
!45 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @pxad_prep_memcpy.__UNIQUE_ID_ddebug262, !44, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/dma/pxa_dma.c", i32 895, i32 2}
!50 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @pxad_get_config.__UNIQUE_ID_ddebug261, !49, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/dma/pxa_dma.c", i32 755, i32 4}
!54 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @pxad_alloc_desc._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @pxad_alloc_desc._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/dma/pxa_dma.c", i32 856, i32 2}
!59 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @pxad_tx_prep.__UNIQUE_ID_ddebug260, !58, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/dma/pxa_dma.c", i32 790, i32 3}
!63 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @pxad_tx_submit.__UNIQUE_ID_ddebug257, !62, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/dma/pxa_dma.c", i32 813, i32 2}
!67 = !{ptr @pxad_tx_submit.__UNIQUE_ID_ddebug258, !66, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!68 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/dma/pxa_dma.c", i32 437, i32 9}
!72 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @is_chan_running.__UNIQUE_ID_ddebug240, !71, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!74 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/dma/pxa_dma.c", i32 446, i32 10}
!77 = !{ptr @is_running_chan_misaligned.__UNIQUE_ID_ddebug241, !76, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!78 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/dma/pxa_dma.c", i32 978, i32 2}
!81 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @pxad_prep_slave_sg.__UNIQUE_ID_ddebug265, !80, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/dma/pxa_dma.c", i32 1026, i32 3}
!85 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @pxad_prep_dma_cyclic._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @pxad_prep_dma_cyclic._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/dma/pxa_dma.c", i32 1037, i32 2}
!90 = !{ptr @pxad_prep_dma_cyclic.__UNIQUE_ID_ddebug268, !89, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!91 = !{ptr @pxad_init_dmadev.__key, !92, !"__key", i1 false, i1 false}
!92 = !{!"../drivers/dma/pxa_dma.c", i32 1337, i32 3}
!93 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/dma/pxa_dma.c", i32 698, i32 3}
!96 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @pxad_alloc_chan_resources._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @pxad_alloc_chan_resources._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/dma/pxa_dma.c", i32 1138, i32 10}
!101 = !{ptr @pxad_residue.__UNIQUE_ID_ddebug271, !100, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!102 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @pxad_residue.__UNIQUE_ID_ddebug272, !104, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!104 = !{!"../drivers/dma/pxa_dma.c", i32 1140, i32 10}
!105 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/dma/pxa_dma.c", i32 1182, i32 2}
!108 = !{ptr @pxad_residue.__UNIQUE_ID_ddebug273, !107, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!109 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/dma/pxa_dma.c", i32 836, i32 2}
!111 = !{ptr @.str.52, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @pxad_issue_pending.__UNIQUE_ID_ddebug259, !110, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!113 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/dma/pxa_dma.c", i32 495, i32 2}
!115 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @pxad_launch_chan.__UNIQUE_ID_ddebug249, !114, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/dma/pxa_dma.c", i32 500, i32 4}
!119 = !{ptr @pxad_launch_chan.__UNIQUE_ID_ddebug250, !118, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/dma/pxa_dma.c", i32 511, i32 2}
!122 = !{ptr @pxad_launch_chan.__UNIQUE_ID_ddebug251, !121, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!123 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/dma/pxa_dma.c", i32 400, i32 2}
!126 = !{ptr @.str.59, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @lookup_phy.__UNIQUE_ID_ddebug238, !125, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!128 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/dma/pxa_dma.c", i32 458, i32 2}
!130 = !{ptr @.str.61, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @phy_enable.__UNIQUE_ID_ddebug242, !129, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!132 = !{ptr @phy_enable.__UNIQUE_ID_ddebug243, !133, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!133 = !{!"../drivers/dma/pxa_dma.c", i32 468, i32 10}
!134 = !{ptr @.str.62, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/dma/pxa_dma.c", i32 473, i32 2}
!136 = !{ptr @phy_enable.__UNIQUE_ID_ddebug244, !135, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!137 = !{ptr @phy_enable.__UNIQUE_ID_ddebug245, !138, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!138 = !{!"../drivers/dma/pxa_dma.c", i32 475, i32 2}
!139 = !{ptr @.str.63, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/dma/pxa_dma.c", i32 1085, i32 2}
!141 = !{ptr @.str.64, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @pxad_terminate_all.__UNIQUE_ID_ddebug269, !140, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!143 = !{ptr @.str.65, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/dma/pxa_dma.c", i32 1092, i32 3}
!145 = !{ptr @pxad_terminate_all.__UNIQUE_ID_ddebug270, !144, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!146 = !{ptr @.str.66, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/dma/pxa_dma.c", i32 486, i32 9}
!148 = !{ptr @phy_disable.__UNIQUE_ID_ddebug246, !147, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!149 = !{ptr @phy_disable.__UNIQUE_ID_ddebug247, !150, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!150 = !{!"../drivers/dma/pxa_dma.c", i32 487, i32 2}
!151 = !{ptr @phy_disable.__UNIQUE_ID_ddebug248, !152, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!152 = !{!"../drivers/dma/pxa_dma.c", i32 489, i32 2}
!153 = !{ptr @.str.67, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/dma/pxa_dma.c", i32 413, i32 2}
!155 = !{ptr @.str.68, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @pxad_free_phy.__UNIQUE_ID_ddebug239, !154, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!157 = !{ptr @.str.69, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/dma/pxa_dma.c", i32 1267, i32 4}
!159 = !{ptr @.str.70, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @pxad_init_phys._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @pxad_init_phys._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.71, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/dma/pxa_dma.c", i32 621, i32 3}
!164 = !{ptr @.str.72, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @pxad_chan_handler.__UNIQUE_ID_ddebug254, !163, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!166 = !{ptr @.str.73, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/dma/pxa_dma.c", i32 644, i32 3}
!168 = !{ptr @pxad_chan_handler.__UNIQUE_ID_ddebug255, !167, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!169 = !{ptr @pxad_chan_handler.__UNIQUE_ID_ddebug256, !170, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!170 = !{!"../drivers/dma/pxa_dma.c", i32 649, i32 3}
!171 = !{ptr @.str.74, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/dma/pxa_dma.c", i32 593, i32 9}
!173 = !{ptr @clear_chan_irq.__UNIQUE_ID_ddebug252, !172, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!174 = !{ptr @clear_chan_irq.__UNIQUE_ID_ddebug253, !175, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!175 = !{!"../drivers/dma/pxa_dma.c", i32 594, i32 2}
!176 = !{ptr @.str.75, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/dma/pxa_dma.c", i32 596, i32 3}
!178 = !{ptr @clear_chan_irq._entry, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @clear_chan_irq._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.76, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/dma/virt-dma.h", i32 101, i32 2}
!182 = !{ptr @.str.77, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.78, !181, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug236, !181, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!185 = !{ptr @.str.79, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/dma/pxa_dma.c", i32 352, i32 22}
!187 = !{ptr @.str.80, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/dma/pxa_dma.c", i32 354, i32 31}
!189 = !{ptr @state_fops, !190, !"state_fops", i1 false, i1 false}
!190 = !{!"../drivers/dma/pxa_dma.c", i32 316, i32 1}
!191 = !{ptr @.str.81, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/dma/pxa_dma.c", i32 310, i32 14}
!193 = !{ptr @.str.82, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/dma/pxa_dma.c", i32 311, i32 16}
!195 = !{ptr @.str.83, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/dma/pxa_dma.c", i32 328, i32 42}
!197 = !{ptr @.str.84, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/dma/pxa_dma.c", i32 333, i32 22}
!199 = !{ptr @.str.85, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/dma/pxa_dma.c", i32 334, i32 22}
!201 = !{ptr @chan_state_fops, !202, !"chan_state_fops", i1 false, i1 false}
!202 = !{!"../drivers/dma/pxa_dma.c", i32 317, i32 1}
!203 = !{ptr @.str.86, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/dma/pxa_dma.c", i32 268, i32 3}
!205 = !{ptr @.str.87, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/dma/pxa_dma.c", i32 268, i32 11}
!207 = !{ptr @.str.88, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/dma/pxa_dma.c", i32 268, i32 21}
!209 = !{ptr @.str.89, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/dma/pxa_dma.c", i32 268, i32 28}
!211 = !{ptr @chan_state_show.str_prio, !212, !"str_prio", i1 false, i1 false}
!212 = !{!"../drivers/dma/pxa_dma.c", i32 267, i32 28}
!213 = !{ptr @.str.90, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/dma/pxa_dma.c", i32 276, i32 16}
!215 = !{ptr @.str.91, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/dma/pxa_dma.c", i32 277, i32 16}
!217 = !{ptr @.str.92, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/dma/pxa_dma.c", i32 279, i32 16}
!219 = !{ptr @.str.93, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/dma/pxa_dma.c", i32 281, i32 6}
!221 = !{ptr @.str.94, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/dma/pxa_dma.c", i32 281, i32 14}
!223 = !{ptr @.str.95, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/dma/pxa_dma.c", i32 282, i32 16}
!225 = !{ptr @.str.96, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/dma/pxa_dma.c", i32 283, i32 12}
!227 = !{ptr @.str.97, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @.str.98, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/dma/pxa_dma.c", i32 283, i32 31}
!230 = !{ptr @.str.99, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/dma/pxa_dma.c", i32 284, i32 6}
!232 = !{ptr @.str.100, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/dma/pxa_dma.c", i32 284, i32 31}
!234 = !{ptr @.str.101, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/dma/pxa_dma.c", i32 285, i32 6}
!236 = !{ptr @.str.102, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/dma/pxa_dma.c", i32 285, i32 30}
!238 = !{ptr @.str.103, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/dma/pxa_dma.c", i32 286, i32 6}
!240 = !{ptr @.str.104, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/dma/pxa_dma.c", i32 286, i32 30}
!242 = !{ptr @.str.105, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/dma/pxa_dma.c", i32 287, i32 6}
!244 = !{ptr @.str.106, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/dma/pxa_dma.c", i32 287, i32 27}
!246 = !{ptr @.str.107, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/dma/pxa_dma.c", i32 288, i32 6}
!248 = !{ptr @.str.108, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/dma/pxa_dma.c", i32 288, i32 29}
!250 = !{ptr @.str.109, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/dma/pxa_dma.c", i32 289, i32 6}
!252 = !{ptr @.str.110, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/dma/pxa_dma.c", i32 289, i32 29}
!254 = !{ptr @.str.111, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/dma/pxa_dma.c", i32 290, i32 6}
!256 = !{ptr @.str.112, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/dma/pxa_dma.c", i32 292, i32 16}
!258 = !{ptr @.str.113, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/dma/pxa_dma.c", i32 294, i32 6}
!260 = !{ptr @.str.114, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/dma/pxa_dma.c", i32 294, i32 32}
!262 = !{ptr @.str.115, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/dma/pxa_dma.c", i32 295, i32 6}
!264 = !{ptr @.str.116, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/dma/pxa_dma.c", i32 295, i32 29}
!266 = !{ptr @.str.117, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/dma/pxa_dma.c", i32 296, i32 6}
!268 = !{ptr @.str.118, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/dma/pxa_dma.c", i32 296, i32 32}
!270 = !{ptr @.str.119, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/dma/pxa_dma.c", i32 297, i32 6}
!272 = !{ptr @.str.120, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/dma/pxa_dma.c", i32 298, i32 16}
!274 = !{ptr @.str.121, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/dma/pxa_dma.c", i32 299, i32 16}
!276 = !{ptr @.str.122, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/dma/pxa_dma.c", i32 300, i32 16}
!278 = !{ptr @descriptors_fops, !279, !"descriptors_fops", i1 false, i1 false}
!279 = !{!"../drivers/dma/pxa_dma.c", i32 318, i32 1}
!280 = !{ptr @.str.123, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/dma/pxa_dma.c", i32 229, i32 16}
!282 = !{ptr @.str.124, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/dma/pxa_dma.c", i32 230, i32 16}
!284 = !{ptr @.str.125, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/dma/pxa_dma.c", i32 237, i32 17}
!286 = !{ptr @.str.126, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/dma/pxa_dma.c", i32 252, i32 17}
!288 = !{ptr @.str.127, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/dma/pxa_dma.c", i32 255, i32 17}
!290 = !{ptr @.str.128, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/dma/pxa_dma.c", i32 257, i32 7}
!292 = !{ptr @requester_chan_fops, !293, !"requester_chan_fops", i1 false, i1 false}
!293 = !{!"../drivers/dma/pxa_dma.c", i32 319, i32 1}
!294 = !{ptr @.str.129, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/dma/pxa_dma.c", i32 194, i32 16}
!296 = !{ptr @.str.130, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/dma/pxa_dma.c", i32 198, i32 18}
!298 = !{ptr @pxad_dt_ids, !299, !"pxad_dt_ids", i1 false, i1 false}
!299 = !{!"../drivers/dma/pxa_dma.c", i32 1277, i32 34}
!300 = !{ptr @pxad_id_table, !301, !"pxad_id_table", i1 false, i1 false}
!301 = !{!"../drivers/dma/pxa_dma.c", i32 1430, i32 40}
!302 = !{i32 1, !"wchar_size", i32 2}
!303 = !{i32 1, !"min_enum_size", i32 4}
!304 = !{i32 8, !"branch-target-enforcement", i32 0}
!305 = !{i32 8, !"sign-return-address", i32 0}
!306 = !{i32 8, !"sign-return-address-all", i32 0}
!307 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!308 = !{i32 7, !"uwtable", i32 1}
!309 = !{i32 7, !"frame-pointer", i32 2}
!310 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!311 = !{!"branch_weights", i32 1, i32 2000}
!312 = !{i64 2148991854, i64 2148991859, i64 2148991872, i64 2148991916, i64 2148991950, i64 2148991971}
!313 = !{i8 0, i8 2}
!314 = !{!"auto-init"}
!315 = !{i64 2154548801, i64 2154549287, i64 2154548838, i64 2154548894, i64 2154548928, i64 2154548952, i64 2154548993, i64 2154549014, i64 2154549042, i64 2154549076}
!316 = !{i64 4654777}
!317 = !{i64 2154503910, i64 2154504396, i64 2154503947, i64 2154504003, i64 2154504037, i64 2154504061, i64 2154504102, i64 2154504123, i64 2154504151, i64 2154504185}
!318 = !{i64 2154460478, i64 2154460964, i64 2154460515, i64 2154460571, i64 2154460605, i64 2154460629, i64 2154460670, i64 2154460691, i64 2154460719, i64 2154460753}
!319 = !{i64 2154376984}
!320 = !{i64 4654359}
!321 = !{i64 2154621536}
!322 = !{i64 2154495401}
!323 = !{i64 2154476896}
!324 = !{i64 2154486918}
!325 = !{i64 2154517168, i64 2154517654, i64 2154517205, i64 2154517261, i64 2154517295, i64 2154517319, i64 2154517360, i64 2154517381, i64 2154517409, i64 2154517443}
!326 = !{i64 2154375484, i64 2154375971, i64 2154375521, i64 2154375577, i64 2154375611, i64 2154375635, i64 2154375676, i64 2154375697, i64 2154375725, i64 2154375759}
!327 = !{i64 2154537439}
!328 = !{i32 0, i32 33}
!329 = !{i64 2154508317}
!330 = !{i64 2154512201}
!331 = !{i64 2149115512, i64 2149115535, i64 2149115567, i64 2149115599, i64 2149115637, i64 2149115667}
