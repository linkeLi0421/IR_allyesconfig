; ModuleID = '/llk/IR_all_yes/drivers/dma/xgene-dma.c_pt.bc'
source_filename = "../drivers/dma/xgene-dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.xgene_dma = type { ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, [4 x %struct.dma_device], [4 x %struct.xgene_dma_chan] }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.xgene_dma_chan = type { %struct.dma_chan, ptr, ptr, i32, i32, [10 x i8], %struct.spinlock, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.tasklet_struct, %struct.xgene_dma_ring, %struct.xgene_dma_ring }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.xgene_dma_ring = type { ptr, i8, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, i32, [5 x i32], i32, %union.anon.75 }
%union.anon.75 = type { ptr }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.xgene_dma_desc_hw = type { i64, i64, i64, i64 }
%struct.dmaengine_result = type { i32, i32 }
%struct.xgene_dma_desc_sw = type { %struct.xgene_dma_desc_hw, %struct.xgene_dma_desc_hw, i32, %struct.list_head, %struct.list_head, %struct.dma_async_tx_descriptor }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_tx_state = type { i32, i32, i32, i32 }

@__initcall__kmod_xgene_dma__244_1827_xgene_dma_driver_init6 = internal global ptr @xgene_dma_driver_init, section ".initcall6.init", align 4
@xgene_dma_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @xgene_dma_probe, ptr @xgene_dma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @xgene_dma_of_match_ptr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_xgene_dma_driver_exit = internal global ptr @xgene_dma_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description245 = internal constant [48 x i8] c"xgene_dma.description=APM X-Gene SoC DMA driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author246 = internal constant [55 x i8] c"xgene_dma.author=Rameshwar Prasad Sahu <rsahu@apm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author247 = internal constant [38 x i8] c"xgene_dma.author=Loc Ho <lho@apm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file248 = internal constant [37 x i8] c"xgene_dma.file=drivers/dma/xgene-dma\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [22 x i8] c"xgene_dma.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version250 = internal constant [22 x i8] c"xgene_dma.version=1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xgene_dma\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"X-Gene-DMA\00", [21 x i8] zeroinitializer }, align 32
@xgene_dma_of_match_ptr = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"apm,xgene-storm-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@xgene_dma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1717, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Failed to get clk\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xgene_dma_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/dma/xgene-dma.c\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xgene_dma_probe._entry_ptr = internal global ptr @xgene_dma_probe._entry, section ".printk_index", align 4
@xgene_dma_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 1725, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to enable clk %d\0A\00", [39 x i8] zeroinitializer }, align 32
@xgene_dma_probe._entry_ptr.11 = internal global ptr @xgene_dma_probe._entry.9, section ".printk_index", align 4
@xgene_dma_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 1737, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"No usable DMA configuration\0A\00", [35 x i8] zeroinitializer }, align 32
@xgene_dma_probe._entry_ptr.14 = internal global ptr @xgene_dma_probe._entry.12, section ".printk_index", align 4
@xgene_dma_get_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.6, i32 1625, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get csr region\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"xgene_dma_get_resources\00", [40 x i8] zeroinitializer }, align 32
@xgene_dma_get_resources._entry_ptr = internal global ptr @xgene_dma_get_resources._entry, section ".printk_index", align 4
@xgene_dma_get_resources._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.6, i32 1632, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to ioremap csr region\00", [35 x i8] zeroinitializer }, align 32
@xgene_dma_get_resources._entry_ptr.19 = internal global ptr @xgene_dma_get_resources._entry.17, section ".printk_index", align 4
@xgene_dma_get_resources._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.6, i32 1639, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get ring csr region\0A\00", [33 x i8] zeroinitializer }, align 32
@xgene_dma_get_resources._entry_ptr.22 = internal global ptr @xgene_dma_get_resources._entry.20, section ".printk_index", align 4
@xgene_dma_get_resources._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.16, ptr @.str.6, i32 1646, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to ioremap ring csr region\00", [62 x i8] zeroinitializer }, align 32
@xgene_dma_get_resources._entry_ptr.25 = internal global ptr @xgene_dma_get_resources._entry.23, section ".printk_index", align 4
@xgene_dma_get_resources._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.16, ptr @.str.6, i32 1653, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to get ring cmd csr region\0A\00", [61 x i8] zeroinitializer }, align 32
@xgene_dma_get_resources._entry_ptr.28 = internal global ptr @xgene_dma_get_resources._entry.26, section ".printk_index", align 4
@xgene_dma_get_resources._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.16, ptr @.str.6, i32 1660, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to ioremap ring cmd csr region\00", [58 x i8] zeroinitializer }, align 32
@xgene_dma_get_resources._entry_ptr.31 = internal global ptr @xgene_dma_get_resources._entry.29, section ".printk_index", align 4
@xgene_dma_get_resources._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.16, ptr @.str.6, i32 1669, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to get efuse csr region\0A\00", [32 x i8] zeroinitializer }, align 32
@xgene_dma_get_resources._entry_ptr.34 = internal global ptr @xgene_dma_get_resources._entry.32, section ".printk_index", align 4
@xgene_dma_get_resources._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.16, ptr @.str.6, i32 1676, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to ioremap efuse csr region\00", [61 x i8] zeroinitializer }, align 32
@xgene_dma_get_resources._entry_ptr.37 = internal global ptr @xgene_dma_get_resources._entry.35, section ".printk_index", align 4
@xgene_dma_init_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.6, i32 1423, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to release DMA memory from shutdown\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xgene_dma_init_mem\00", [45 x i8] zeroinitializer }, align 32
@xgene_dma_init_mem._entry_ptr = internal global ptr @xgene_dma_init_mem._entry, section ".printk_index", align 4
@xgene_dma_init_ring_mngr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.6, i32 1384, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed to release ring mngr memory from shutdown\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"xgene_dma_init_ring_mngr\00", [39 x i8] zeroinitializer }, align 32
@xgene_dma_init_ring_mngr._entry_ptr = internal global ptr @xgene_dma_init_ring_mngr._entry, section ".printk_index", align 4
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dmachan%d\00", [22 x i8] zeroinitializer }, align 32
@xgene_dma_create_chan_rings.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.43, ptr @.str.6, ptr @.str.44, i8 1, i8 51, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"xgene_dma_create_chan_rings\00", [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Rx ring id 0x%X num %d desc 0x%p\0A\00", [58 x i8] zeroinitializer }, align 32
@xgene_dma_create_chan_rings.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.43, ptr @.str.6, ptr @.str.45, i8 1, i8 56, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Tx ring id 0x%X num %d desc 0x%p\0A\00", [58 x i8] zeroinitializer }, align 32
@xgene_dma_create_ring_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.6, i32 1204, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Failed to allocate ring desc\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"xgene_dma_create_ring_one\00", [38 x i8] zeroinitializer }, align 32
@xgene_dma_create_ring_one._entry_ptr = internal global ptr @xgene_dma_create_ring_one._entry, section ".printk_index", align 4
@xgene_dma_get_ring_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.6, i32 1157, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Unsupported cfg ring size %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"xgene_dma_get_ring_size\00", [40 x i8] zeroinitializer }, align 32
@xgene_dma_get_ring_size._entry_ptr = internal global ptr @xgene_dma_get_ring_size._entry, section ".printk_index", align 4
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dma_error\00", [22 x i8] zeroinitializer }, align 32
@xgene_dma_request_irqs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.6, i32 1440, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register error IRQ %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"xgene_dma_request_irqs\00", [41 x i8] zeroinitializer }, align 32
@xgene_dma_request_irqs._entry_ptr = internal global ptr @xgene_dma_request_irqs._entry, section ".printk_index", align 4
@xgene_dma_request_irqs._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.6, i32 1453, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Failed to register Rx IRQ %d\0A\00", [62 x i8] zeroinitializer }, align 32
@xgene_dma_request_irqs._entry_ptr.55 = internal global ptr @xgene_dma_request_irqs._entry.53, section ".printk_index", align 4
@xgene_dma_err_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.6, i32 1026, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Interrupt status 0x%08X %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xgene_dma_err_isr\00", [46 x i8] zeroinitializer }, align 32
@xgene_dma_err_isr._entry_ptr = internal global ptr @xgene_dma_err_isr._entry, section ".printk_index", align 4
@xgene_dma_err = internal constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69], [48 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DIF size error\00", [17 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Gather scatter not same size error\00", [61 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Free pool time out error\00", [39 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Write FIFO over flow error\00", [37 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Read FIFO over flow error\00", [38 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Write time out error\00", [43 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Read time out error\00", [44 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HBF bus write error\00", [44 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HBF bus read error\00", [45 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Ring descriptor HE0 not set error\00", [62 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"HFB reading dst link address error\00", [61 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"HFB reading src link address error\00", [61 x i8] zeroinitializer }, align 32
@xgene_dma_init_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.6, i32 1348, ptr @.str.72, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PQ is disabled in HW\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xgene_dma_init_hw\00", [46 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@xgene_dma_init_hw._entry_ptr = internal global ptr @xgene_dma_init_hw._entry, section ".printk_index", align 4
@xgene_dma_init_hw._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.71, ptr @.str.6, i32 1360, ptr @.str.72, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"X-Gene DMA v%d.%02d.%02d driver registered %d channels\00", [41 x i8] zeroinitializer }, align 32
@xgene_dma_init_hw._entry_ptr.75 = internal global ptr @xgene_dma_init_hw._entry.73, section ".printk_index", align 4
@xgene_dma_async_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&chan->lock\00", [20 x i8] zeroinitializer }, align 32
@xgene_dma_async_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.6, i32 1558, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Failed to register async device %d\00", [57 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"xgene_dma_async_register\00", [39 x i8] zeroinitializer }, align 32
@xgene_dma_async_register._entry_ptr = internal global ptr @xgene_dma_async_register._entry, section ".printk_index", align 4
@xgene_dma_async_register._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.6, i32 1568, ptr @.str.72, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: CAPABILITY ( %s%s)\0A\00", [40 x i8] zeroinitializer }, align 32
@xgene_dma_async_register._entry_ptr.81 = internal global ptr @xgene_dma_async_register._entry.79, section ".printk_index", align 4
@.str.82 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"XOR \00", [27 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.84 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PQ \00", [28 x i8] zeroinitializer }, align 32
@xgene_dma_cleanup_descriptors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.6, i32 722, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %s\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"xgene_dma_cleanup_descriptors\00", [34 x i8] zeroinitializer }, align 32
@xgene_dma_cleanup_descriptors._entry_ptr = internal global ptr @xgene_dma_cleanup_descriptors._entry, section ".printk_index", align 4
@xgene_dma_desc_err = internal constant { [20 x ptr], [48 x i8] } { [20 x ptr] [ptr null, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr null, ptr @.str.98, ptr @.str.99, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.100, ptr @.str.101, ptr @.str.102], [48 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"X-Gene DMA TX DESC1: \00", [42 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"X-Gene DMA TX DESC2: \00", [42 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"X-Gene DMA RX ERR DESC: \00", [39 x i8] zeroinitializer }, align 32
@xgene_dma_clean_descriptor.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.90, ptr @.str.6, ptr @.str.91, i8 0, i8 121, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"xgene_dma_clean_descriptor\00", [37 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: LD %p free\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"AXI error when reading src/dst link list\00", [55 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ERR or El_ERR fields not set to zero in desc\00", [51 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"AXI error when reading data\00", [36 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"AXI error when writing data\00", [36 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Timeout on bufpool fetch\00", [39 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ECC double bit error\00", [43 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Bufpool too small to hold all the DIF result\00", [51 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Gather and scatter data length not same\00", [56 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CRC error\00", [22 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Checksum error\00", [17 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DIF error\00", [22 x i8] zeroinitializer }, align 32
@xgene_chan_xfer_ld_pending.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.103, ptr @.str.6, ptr @.str.104, i8 0, i8 -94, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"xgene_chan_xfer_ld_pending\00", [37 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: No pending LDs\0A\00", [44 x i8] zeroinitializer }, align 32
@xgene_dma_clean_running_descriptor.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.105, ptr @.str.6, ptr @.str.91, i8 0, i8 -109, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"xgene_dma_clean_running_descriptor\00", [61 x i8] zeroinitializer }, align 32
@xgene_dma_alloc_chan_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.6, i32 786, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Failed to allocate descriptor pool\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"xgene_dma_alloc_chan_resources\00", [33 x i8] zeroinitializer }, align 32
@xgene_dma_alloc_chan_resources._entry_ptr = internal global ptr @xgene_dma_alloc_chan_resources._entry, section ".printk_index", align 4
@xgene_dma_alloc_chan_resources.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.107, ptr @.str.6, ptr @.str.108, i8 0, i8 -59, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Allocate descriptor pool\0A\00", [34 x i8] zeroinitializer }, align 32
@xgene_dma_free_chan_resources.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.109, ptr @.str.6, ptr @.str.110, i8 0, i8 -53, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"xgene_dma_free_chan_resources\00", [34 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: Free all resources\0A\00", [40 x i8] zeroinitializer }, align 32
@xgene_dma_prep_xor.multi = internal global { [5 x i8], [27 x i8] } { [5 x i8] c"\01\01\01\01\01", [27 x i8] zeroinitializer }, align 32
@xgene_dma_alloc_descriptor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.6, i32 496, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Failed to allocate LDs\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"xgene_dma_alloc_descriptor\00", [37 x i8] zeroinitializer }, align 32
@xgene_dma_alloc_descriptor._entry_ptr = internal global ptr @xgene_dma_alloc_descriptor._entry, section ".printk_index", align 4
@xgene_dma_alloc_descriptor.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.112, ptr @.str.6, ptr @.str.113, i8 0, i8 126, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: LD %p allocated\0A\00", [43 x i8] zeroinitializer }, align 32
@xgene_dma_encode_xor_flyby.flyby_type = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\80\80\80\90\A0\B0", [26 x i8] zeroinitializer }, align 32
@xgene_dma_lookup_ext8._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.6, i32 396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Invalid dma descriptor index\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xgene_dma_lookup_ext8\00", [42 x i8] zeroinitializer }, align 32
@xgene_dma_lookup_ext8._entry_ptr = internal global ptr @xgene_dma_lookup_ext8._entry, section ".printk_index", align 4
@xgene_dma_prep_pq.multi = internal global { [5 x i8], [27 x i8] } { [5 x i8] c"\01\01\01\01\01", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"xgene_dma_driver\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1817, i32 31 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1833, i32 1 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1821, i32 11 }
@___asan_gen_.131 = private unnamed_addr constant [23 x i8] c"xgene_dma_of_match_ptr\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1811, i32 34 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1717, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1725, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1737, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1625, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1632, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1639, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1646, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1653, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1660, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1669, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1676, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1422, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1383, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1612, i32 44 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1230, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1246, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1204, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1157, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1437, i32 14 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1439, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1452, i32 4 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1025, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant [14 x i8] c"xgene_dma_err\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 328, i32 27 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 329, i32 23 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 330, i32 21 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 331, i32 24 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 332, i32 24 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 333, i32 24 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 334, i32 23 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 335, i32 23 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 336, i32 21 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 337, i32 21 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 338, i32 23 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 339, i32 23 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 340, i32 23 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1348, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1357, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1538, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1558, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1565, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 722, i32 4 }
@___asan_gen_.386 = private unnamed_addr constant [19 x i8] c"xgene_dma_desc_err\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 314, i32 27 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 727, i32 4 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 731, i32 5 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 734, i32 4 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 484, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 315, i32 19 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 316, i32 19 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 317, i32 24 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 318, i32 25 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 319, i32 22 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 320, i32 14 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 321, i32 20 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 322, i32 22 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 323, i32 18 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 324, i32 17 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 325, i32 14 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 649, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 589, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 786, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 790, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 815, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 843, i32 12 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 496, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 505, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant [11 x i8] c"flyby_type\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 360, i32 12 }
@___asan_gen_.482 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.488 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 396, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant [6 x i8] c"multi\00", align 1
@___asan_gen_.492 = private constant [27 x i8] c"../drivers/dma/xgene-dma.c\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 893, i32 12 }
@llvm.compiler.used = appending global [162 x ptr] [ptr @__UNIQUE_ID_author246, ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_description245, ptr @__UNIQUE_ID_file248, ptr @__UNIQUE_ID_license249, ptr @__UNIQUE_ID_version250, ptr @__exitcall_xgene_dma_driver_exit, ptr @__initcall__kmod_xgene_dma__244_1827_xgene_dma_driver_init6, ptr @__modver_attr, ptr @xgene_dma_alloc_chan_resources._entry, ptr @xgene_dma_alloc_chan_resources._entry_ptr, ptr @xgene_dma_alloc_descriptor._entry, ptr @xgene_dma_alloc_descriptor._entry_ptr, ptr @xgene_dma_async_register._entry, ptr @xgene_dma_async_register._entry.79, ptr @xgene_dma_async_register._entry_ptr, ptr @xgene_dma_async_register._entry_ptr.81, ptr @xgene_dma_cleanup_descriptors._entry, ptr @xgene_dma_cleanup_descriptors._entry_ptr, ptr @xgene_dma_create_ring_one._entry, ptr @xgene_dma_create_ring_one._entry_ptr, ptr @xgene_dma_driver_exit, ptr @xgene_dma_err_isr._entry, ptr @xgene_dma_err_isr._entry_ptr, ptr @xgene_dma_get_resources._entry, ptr @xgene_dma_get_resources._entry.17, ptr @xgene_dma_get_resources._entry.20, ptr @xgene_dma_get_resources._entry.23, ptr @xgene_dma_get_resources._entry.26, ptr @xgene_dma_get_resources._entry.29, ptr @xgene_dma_get_resources._entry.32, ptr @xgene_dma_get_resources._entry.35, ptr @xgene_dma_get_resources._entry_ptr, ptr @xgene_dma_get_resources._entry_ptr.19, ptr @xgene_dma_get_resources._entry_ptr.22, ptr @xgene_dma_get_resources._entry_ptr.25, ptr @xgene_dma_get_resources._entry_ptr.28, ptr @xgene_dma_get_resources._entry_ptr.31, ptr @xgene_dma_get_resources._entry_ptr.34, ptr @xgene_dma_get_resources._entry_ptr.37, ptr @xgene_dma_get_ring_size._entry, ptr @xgene_dma_get_ring_size._entry_ptr, ptr @xgene_dma_init_hw._entry, ptr @xgene_dma_init_hw._entry.73, ptr @xgene_dma_init_hw._entry_ptr, ptr @xgene_dma_init_hw._entry_ptr.75, ptr @xgene_dma_init_mem._entry, ptr @xgene_dma_init_mem._entry_ptr, ptr @xgene_dma_init_ring_mngr._entry, ptr @xgene_dma_init_ring_mngr._entry_ptr, ptr @xgene_dma_lookup_ext8._entry, ptr @xgene_dma_lookup_ext8._entry_ptr, ptr @xgene_dma_probe._entry, ptr @xgene_dma_probe._entry.12, ptr @xgene_dma_probe._entry.9, ptr @xgene_dma_probe._entry_ptr, ptr @xgene_dma_probe._entry_ptr.11, ptr @xgene_dma_probe._entry_ptr.14, ptr @xgene_dma_request_irqs._entry, ptr @xgene_dma_request_irqs._entry.53, ptr @xgene_dma_request_irqs._entry_ptr, ptr @xgene_dma_request_irqs._entry_ptr.55, ptr @xgene_dma_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @xgene_dma_of_match_ptr, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @xgene_dma_err, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @xgene_dma_async_register.__key, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @xgene_dma_desc_err, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @xgene_dma_prep_xor.multi, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @xgene_dma_encode_xor_flyby.flyby_type, ptr @.str.114, ptr @.str.115, ptr @xgene_dma_prep_pq.multi], section "llvm.metadata"
@0 = internal global [126 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_dma_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_dma_of_match_ptr to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_dma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_dma_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_dma_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_dma_get_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_dma_get_resources._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_dma_get_resources._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_dma_get_resources._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_dma_get_resources._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_dma_get_resources._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_dma_get_resources._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_dma_get_resources._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_dma_init_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_dma_init_ring_mngr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_dma_create_ring_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_dma_get_ring_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_dma_request_irqs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_dma_request_irqs._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_dma_err_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_dma_err to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_dma_init_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_dma_init_hw._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_dma_async_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_dma_async_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_dma_async_register._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_dma_cleanup_descriptors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_dma_desc_err to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_dma_alloc_chan_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_dma_prep_xor.multi to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_dma_alloc_descriptor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_dma_encode_xor_flyby.flyby_type to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_dma_lookup_ext8._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_dma_prep_pq.multi to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_dma_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @xgene_dma_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xgene_dma_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @xgene_dma_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_dma_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2784, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call.i99 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %tobool.not.i = icmp eq ptr %call.i99, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %2 = ptrtoint ptr %call.i99 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call.i99, align 4
  %end.i.i = getelementptr inbounds %struct.resource, ptr %call.i99, i32 0, i32 1
  %4 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end.i.i, align 4
  %sub.i.i = sub i32 1, %3
  %add.i.i = add i32 %sub.i.i, %5
  %call3.i = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %3, i32 noundef %add.i.i) #7
  %csr_dma.i = getelementptr inbounds %struct.xgene_dma, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %csr_dma.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call3.i, ptr %csr_dma.i, align 4
  %tobool5.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool5.not.i, label %do.end9.i, label %if.end11.i

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #10
  br label %cleanup

if.end11.i:                                       ; preds = %if.end.i
  %call12.i = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #7
  %tobool13.not.i = icmp eq ptr %call12.i, null
  br i1 %tobool13.not.i, label %do.end17.i, label %if.end19.i

do.end17.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #10
  br label %cleanup

if.end19.i:                                       ; preds = %if.end11.i
  %7 = ptrtoint ptr %call12.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call12.i, align 4
  %end.i127.i = getelementptr inbounds %struct.resource, ptr %call12.i, i32 0, i32 1
  %9 = ptrtoint ptr %end.i127.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %end.i127.i, align 4
  %sub.i128.i = sub i32 1, %8
  %add.i129.i = add i32 %sub.i128.i, %10
  %call23.i = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %8, i32 noundef %add.i129.i) #7
  %csr_ring.i = getelementptr inbounds %struct.xgene_dma, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %csr_ring.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call23.i, ptr %csr_ring.i, align 4
  %tobool25.not.i = icmp eq ptr %call23.i, null
  br i1 %tobool25.not.i, label %do.end29.i, label %if.end31.i

do.end29.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #10
  br label %cleanup

if.end31.i:                                       ; preds = %if.end19.i
  %call32.i = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 2) #7
  %tobool33.not.i = icmp eq ptr %call32.i, null
  br i1 %tobool33.not.i, label %do.end37.i, label %if.end39.i

do.end37.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #10
  br label %cleanup

if.end39.i:                                       ; preds = %if.end31.i
  %12 = ptrtoint ptr %call32.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call32.i, align 4
  %end.i130.i = getelementptr inbounds %struct.resource, ptr %call32.i, i32 0, i32 1
  %14 = ptrtoint ptr %end.i130.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %end.i130.i, align 4
  %sub.i131.i = sub i32 1, %13
  %add.i132.i = add i32 %sub.i131.i, %15
  %call43.i = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %13, i32 noundef %add.i132.i) #7
  %csr_ring_cmd.i = getelementptr inbounds %struct.xgene_dma, ptr %call.i, i32 0, i32 6
  %16 = ptrtoint ptr %csr_ring_cmd.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call43.i, ptr %csr_ring_cmd.i, align 4
  %tobool45.not.i = icmp eq ptr %call43.i, null
  br i1 %tobool45.not.i, label %do.end49.i, label %if.end51.i

do.end49.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #10
  br label %cleanup

if.end51.i:                                       ; preds = %if.end39.i
  %add.ptr.i = getelementptr i8, ptr %call43.i, i32 32768
  %17 = ptrtoint ptr %csr_ring_cmd.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr.i, ptr %csr_ring_cmd.i, align 4
  %call53.i = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 3) #7
  %tobool54.not.i = icmp eq ptr %call53.i, null
  br i1 %tobool54.not.i, label %do.end58.i, label %if.end60.i

do.end58.i:                                       ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #10
  br label %cleanup

if.end60.i:                                       ; preds = %if.end51.i
  %18 = ptrtoint ptr %call53.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call53.i, align 4
  %end.i133.i = getelementptr inbounds %struct.resource, ptr %call53.i, i32 0, i32 1
  %20 = ptrtoint ptr %end.i133.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %end.i133.i, align 4
  %sub.i134.i = sub i32 1, %19
  %add.i135.i = add i32 %sub.i134.i, %21
  %call64.i = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %19, i32 noundef %add.i135.i) #7
  %csr_efuse.i = getelementptr inbounds %struct.xgene_dma, ptr %call.i, i32 0, i32 7
  %22 = ptrtoint ptr %csr_efuse.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call64.i, ptr %csr_efuse.i, align 4
  %tobool66.not.i = icmp eq ptr %call64.i, null
  br i1 %tobool66.not.i, label %do.end70.i, label %if.end72.i

do.end70.i:                                       ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36) #10
  br label %cleanup

if.end72.i:                                       ; preds = %if.end60.i
  %call73.i = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call73.i)
  %cmp.i = icmp slt i32 %call73.i, 1
  br i1 %cmp.i, label %if.end72.i.cleanup_crit_edge, label %if.end75.i

if.end72.i.cleanup_crit_edge:                     ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end75.i:                                       ; preds = %if.end72.i
  %err_irq.i = getelementptr inbounds %struct.xgene_dma, ptr %call.i, i32 0, i32 2
  %23 = ptrtoint ptr %err_irq.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call73.i, ptr %err_irq.i, align 4
  %call77.i = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call77.i)
  %cmp78.i = icmp slt i32 %call77.i, 1
  br i1 %cmp78.i, label %if.end75.i.cleanup_crit_edge, label %if.end80.i

if.end75.i.cleanup_crit_edge:                     ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end80.i:                                       ; preds = %if.end75.i
  %rx_irq.i = getelementptr %struct.xgene_dma, ptr %call.i, i32 0, i32 9, i32 0, i32 4
  %24 = ptrtoint ptr %rx_irq.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call77.i, ptr %rx_irq.i, align 4
  %call77.1.i = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call77.1.i)
  %cmp78.1.i = icmp slt i32 %call77.1.i, 1
  br i1 %cmp78.1.i, label %if.end80.i.cleanup_crit_edge, label %if.end80.1.i

if.end80.i.cleanup_crit_edge:                     ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end80.1.i:                                     ; preds = %if.end80.i
  %rx_irq.1.i = getelementptr %struct.xgene_dma, ptr %call.i, i32 0, i32 9, i32 1, i32 4
  %25 = ptrtoint ptr %rx_irq.1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call77.1.i, ptr %rx_irq.1.i, align 4
  %call77.2.i = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call77.2.i)
  %cmp78.2.i = icmp slt i32 %call77.2.i, 1
  br i1 %cmp78.2.i, label %if.end80.1.i.cleanup_crit_edge, label %if.end80.2.i

if.end80.1.i.cleanup_crit_edge:                   ; preds = %if.end80.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end80.2.i:                                     ; preds = %if.end80.1.i
  %rx_irq.2.i = getelementptr %struct.xgene_dma, ptr %call.i, i32 0, i32 9, i32 2, i32 4
  %26 = ptrtoint ptr %rx_irq.2.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call77.2.i, ptr %rx_irq.2.i, align 4
  %call77.3.i = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call77.3.i)
  %cmp78.3.i = icmp slt i32 %call77.3.i, 1
  br i1 %cmp78.3.i, label %if.end80.2.i.cleanup_crit_edge, label %if.end6

if.end80.2.i.cleanup_crit_edge:                   ; preds = %if.end80.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end80.2.i
  %rx_irq.3.i = getelementptr %struct.xgene_dma, ptr %call.i, i32 0, i32 9, i32 3, i32 4
  %27 = ptrtoint ptr %rx_irq.3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call77.3.i, ptr %rx_irq.3.i, align 4
  %call8 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #7
  %clk = getelementptr inbounds %struct.xgene_dma, ptr %call.i, i32 0, i32 1
  %28 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call8, ptr %clk, align 4
  %cmp.i100 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i100, label %do.end, label %if.then18

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #10
  %29 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clk, align 4
  %31 = ptrtoint ptr %30 to i32
  br label %cleanup

if.then18:                                        ; preds = %if.end6
  %call.i102 = tail call i32 @clk_prepare(ptr noundef %call8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %tobool.not.i103 = icmp eq i32 %call.i102, 0
  br i1 %tobool.not.i103, label %if.end.i104, label %if.then18.do.end25_crit_edge

if.then18.do.end25_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25

if.end.i104:                                      ; preds = %if.then18
  %call1.i = tail call i32 @clk_enable(ptr noundef %call8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end28, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call8) #7
  br label %do.end25

do.end25:                                         ; preds = %if.then3.i, %if.then18.do.end25_crit_edge
  %retval.0.i105.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i102, %if.then18.do.end25_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %retval.0.i105.ph) #10
  br label %cleanup

if.end28:                                         ; preds = %if.end.i104
  %32 = ptrtoint ptr %csr_ring.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %csr_ring.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 49672
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i.i, label %if.end28.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end28.if.end.i.i_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end28
  %35 = ptrtoint ptr %csr_ring.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %csr_ring.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %36, i32 49664
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #7, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool4.not.i.i = icmp eq i32 %37, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.if.end.i108_crit_edge, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i.if.end.i108_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i108

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end28.if.end.i.i_crit_edge
  %38 = ptrtoint ptr %csr_ring.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %csr_ring.i, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %39, i32 49672
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !257
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 50331648) #7, !srcloc !258
  %40 = ptrtoint ptr %csr_ring.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %csr_ring.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %41, i32 49664
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !257
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i, i32 0) #7, !srcloc !258
  %42 = ptrtoint ptr %csr_ring.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %csr_ring.i, align 4
  %add.ptr10.i.i = getelementptr i8, ptr %43, i32 53360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !257
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i, i32 0) #7, !srcloc !258
  %44 = ptrtoint ptr %csr_ring.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %csr_ring.i, align 4
  %add.ptr12.i.i = getelementptr i8, ptr %45, i32 53360
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i.i) #7, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !256
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #7
  %47 = ptrtoint ptr %csr_ring.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %csr_ring.i, align 4
  %add.ptr15.i.i = getelementptr i8, ptr %48, i32 53364
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i.i) #7, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %cmp.not.i.i = icmp eq i32 %49, -1
  br i1 %cmp.not.i.i, label %if.end18.i.i, label %if.end.i.i.xgene_dma_init_mem.exit_crit_edge

if.end.i.i.xgene_dma_init_mem.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xgene_dma_init_mem.exit

if.end18.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %csr_ring.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %csr_ring.i, align 4
  %add.ptr20.i.i = getelementptr i8, ptr %51, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !257
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i.i, i32 1677721600) #7, !srcloc !258
  %52 = ptrtoint ptr %csr_ring.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %csr_ring.i, align 4
  %add.ptr22.i.i = getelementptr i8, ptr %53, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !257
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i.i, i32 -939524096) #7, !srcloc !258
  %54 = ptrtoint ptr %csr_ring.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %csr_ring.i, align 4
  %add.ptr24.i.i = getelementptr i8, ptr %55, i32 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !257
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i.i, i32 -1) #7, !srcloc !258
  %56 = ptrtoint ptr %csr_ring.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %csr_ring.i, align 4
  %add.ptr26.i.i = getelementptr i8, ptr %57, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !257
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i.i, i32 128) #7, !srcloc !258
  br label %if.end.i108

if.end.i108:                                      ; preds = %if.end18.i.i, %land.lhs.true.i.i.if.end.i108_crit_edge
  %58 = ptrtoint ptr %csr_dma.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %csr_dma.i, align 4
  %add.ptr.i107 = getelementptr i8, ptr %59, i32 53360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !257
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107, i32 0) #7, !srcloc !258
  %60 = ptrtoint ptr %csr_dma.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %csr_dma.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %61, i32 53360
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #7, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !256
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #7
  %63 = ptrtoint ptr %csr_dma.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %csr_dma.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %64, i32 53364
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #7, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %65)
  %cmp.not.i = icmp eq i32 %65, -1
  br i1 %cmp.not.i, label %if.end32, label %if.end.i108.xgene_dma_init_mem.exit_crit_edge

if.end.i108.xgene_dma_init_mem.exit_crit_edge:    ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #9
  br label %xgene_dma_init_mem.exit

xgene_dma_init_mem.exit:                          ; preds = %if.end.i108.xgene_dma_init_mem.exit_crit_edge, %if.end.i.i.xgene_dma_init_mem.exit_crit_edge
  %.str.40.sink.i = phi ptr [ @.str.40, %if.end.i.i.xgene_dma_init_mem.exit_crit_edge ], [ @.str.38, %if.end.i108.xgene_dma_init_mem.exit_crit_edge ]
  %66 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull %.str.40.sink.i) #10
  br label %err_clk_enable

if.end32:                                         ; preds = %if.end.i108
  %call.i110 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4398046511103) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %cmp.i111 = icmp eq i32 %call.i110, 0
  br i1 %cmp.i111, label %if.end41, label %do.end39

do.end39:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #10
  br label %err_clk_enable

if.end41:                                         ; preds = %if.end32
  %call1.i112 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4398046511103) #7
  %ring_num.i = getelementptr inbounds %struct.xgene_dma, ptr %call.i, i32 0, i32 3
  %68 = ptrtoint ptr %ring_num.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 512, ptr %ring_num.i, align 4
  %69 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %call.i, align 4
  %dev2.i = getelementptr %struct.xgene_dma, ptr %call.i, i32 0, i32 9, i32 0, i32 2
  %71 = ptrtoint ptr %dev2.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %dev2.i, align 4
  %pdma3.i = getelementptr %struct.xgene_dma, ptr %call.i, i32 0, i32 9, i32 0, i32 1
  %72 = ptrtoint ptr %pdma3.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call.i, ptr %pdma3.i, align 4
  %id.i = getelementptr %struct.xgene_dma, ptr %call.i, i32 0, i32 9, i32 0, i32 3
  %73 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %id.i, align 4
  %name.i = getelementptr %struct.xgene_dma, ptr %call.i, i32 0, i32 9, i32 0, i32 5
  %call.i114 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 10, ptr noundef nonnull @.str.42, i32 noundef 0) #7
  %74 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %call.i, align 4
  %dev2.1.i = getelementptr %struct.xgene_dma, ptr %call.i, i32 0, i32 9, i32 1, i32 2
  %76 = ptrtoint ptr %dev2.1.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %75, ptr %dev2.1.i, align 4
  %pdma3.1.i = getelementptr %struct.xgene_dma, ptr %call.i, i32 0, i32 9, i32 1, i32 1
  %77 = ptrtoint ptr %pdma3.1.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call.i, ptr %pdma3.1.i, align 4
  %id.1.i = getelementptr %struct.xgene_dma, ptr %call.i, i32 0, i32 9, i32 1, i32 3
  %78 = ptrtoint ptr %id.1.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1, ptr %id.1.i, align 4
  %name.1.i = getelementptr %struct.xgene_dma, ptr %call.i, i32 0, i32 9, i32 1, i32 5
  %call.1.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.1.i, i32 noundef 10, ptr noundef nonnull @.str.42, i32 noundef 1) #7
  %79 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %call.i, align 4
  %dev2.2.i = getelementptr %struct.xgene_dma, ptr %call.i, i32 0, i32 9, i32 2, i32 2
  %81 = ptrtoint ptr %dev2.2.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %80, ptr %dev2.2.i, align 4
  %pdma3.2.i = getelementptr %struct.xgene_dma, ptr %call.i, i32 0, i32 9, i32 2, i32 1
  %82 = ptrtoint ptr %pdma3.2.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call.i, ptr %pdma3.2.i, align 4
  %id.2.i = getelementptr %struct.xgene_dma, ptr %call.i, i32 0, i32 9, i32 2, i32 3
  %83 = ptrtoint ptr %id.2.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 2, ptr %id.2.i, align 4
  %name.2.i = getelementptr %struct.xgene_dma, ptr %call.i, i32 0, i32 9, i32 2, i32 5
  %call.2.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.2.i, i32 noundef 10, ptr noundef nonnull @.str.42, i32 noundef 2) #7
  %84 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %call.i, align 4
  %dev2.3.i = getelementptr %struct.xgene_dma, ptr %call.i, i32 0, i32 9, i32 3, i32 2
  %86 = ptrtoint ptr %dev2.3.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %85, ptr %dev2.3.i, align 4
  %pdma3.3.i = getelementptr %struct.xgene_dma, ptr %call.i, i32 0, i32 9, i32 3, i32 1
  %87 = ptrtoint ptr %pdma3.3.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call.i, ptr %pdma3.3.i, align 4
  %id.3.i = getelementptr %struct.xgene_dma, ptr %call.i, i32 0, i32 9, i32 3, i32 3
  %88 = ptrtoint ptr %id.3.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 3, ptr %id.3.i, align 4
  %name.3.i = getelementptr %struct.xgene_dma, ptr %call.i, i32 0, i32 9, i32 3, i32 5
  %call.3.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.3.i, i32 noundef 10, ptr noundef nonnull @.str.42, i32 noundef 3) #7
  %arrayidx.i = getelementptr %struct.xgene_dma, ptr %call.i, i32 0, i32 9, i32 0
  %call.i115 = tail call fastcc i32 @xgene_dma_create_chan_rings(ptr noundef %arrayidx.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115)
  %tobool.not.i116 = icmp eq i32 %call.i115, 0
  br i1 %tobool.not.i116, label %for.inc6.i, label %if.end41.err_clk_enable_crit_edge

if.end41.err_clk_enable_crit_edge:                ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clk_enable

for.body3.i:                                      ; preds = %for.inc6.2.i.for.body3.i_crit_edge, %for.inc6.1.i.for.body3.i_crit_edge, %for.inc6.i.for.body3.i_crit_edge
  %exitcond.not.i.1 = phi i1 [ false, %for.inc6.2.i.for.body3.i_crit_edge ], [ true, %for.inc6.1.i.for.body3.i_crit_edge ], [ false, %for.inc6.i.for.body3.i_crit_edge ]
  %call.lcssa.ph.i = phi i32 [ %call.3.i119, %for.inc6.2.i.for.body3.i_crit_edge ], [ %call.2.i118, %for.inc6.1.i.for.body3.i_crit_edge ], [ %call.1.i117, %for.inc6.i.for.body3.i_crit_edge ]
  %rx_ring.i.i = getelementptr %struct.xgene_dma, ptr %call.i, i32 0, i32 9, i32 0, i32 15
  tail call fastcc void @xgene_dma_delete_ring_one(ptr noundef %rx_ring.i.i) #7
  %tx_ring.i.i = getelementptr %struct.xgene_dma, ptr %call.i, i32 0, i32 9, i32 0, i32 14
  tail call fastcc void @xgene_dma_delete_ring_one(ptr noundef %tx_ring.i.i) #7
  br i1 %tobool.not.1.i, label %for.body3.i.1, label %for.body3.i.xgene_dma_init_rings.exit_crit_edge

for.body3.i.xgene_dma_init_rings.exit_crit_edge:  ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xgene_dma_init_rings.exit

for.body3.i.1:                                    ; preds = %for.body3.i
  %rx_ring.i.i.1 = getelementptr %struct.xgene_dma, ptr %call.i, i32 0, i32 9, i32 1, i32 15
  tail call fastcc void @xgene_dma_delete_ring_one(ptr noundef %rx_ring.i.i.1) #7
  %tx_ring.i.i.1 = getelementptr %struct.xgene_dma, ptr %call.i, i32 0, i32 9, i32 1, i32 14
  tail call fastcc void @xgene_dma_delete_ring_one(ptr noundef %tx_ring.i.i.1) #7
  br i1 %exitcond.not.i.1, label %for.body3.i.1.xgene_dma_init_rings.exit_crit_edge, label %for.body3.i.2

for.body3.i.1.xgene_dma_init_rings.exit_crit_edge: ; preds = %for.body3.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %xgene_dma_init_rings.exit

for.body3.i.2:                                    ; preds = %for.body3.i.1
  call void @__sanitizer_cov_trace_pc() #9
  %rx_ring.i.i.2 = getelementptr %struct.xgene_dma, ptr %call.i, i32 0, i32 9, i32 2, i32 15
  tail call fastcc void @xgene_dma_delete_ring_one(ptr noundef %rx_ring.i.i.2) #7
  %tx_ring.i.i.2 = getelementptr %struct.xgene_dma, ptr %call.i, i32 0, i32 9, i32 2, i32 14
  tail call fastcc void @xgene_dma_delete_ring_one(ptr noundef %tx_ring.i.i.2) #7
  br label %xgene_dma_init_rings.exit

for.inc6.i:                                       ; preds = %if.end41
  %arrayidx.1.i = getelementptr %struct.xgene_dma, ptr %call.i, i32 0, i32 9, i32 1
  %call.1.i117 = tail call fastcc i32 @xgene_dma_create_chan_rings(ptr noundef %arrayidx.1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i117)
  %tobool.not.1.i = icmp eq i32 %call.1.i117, 0
  br i1 %tobool.not.1.i, label %for.inc6.1.i, label %for.inc6.i.for.body3.i_crit_edge

for.inc6.i.for.body3.i_crit_edge:                 ; preds = %for.inc6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3.i

for.inc6.1.i:                                     ; preds = %for.inc6.i
  %arrayidx.2.i = getelementptr %struct.xgene_dma, ptr %call.i, i32 0, i32 9, i32 2
  %call.2.i118 = tail call fastcc i32 @xgene_dma_create_chan_rings(ptr noundef %arrayidx.2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i118)
  %tobool.not.2.i = icmp eq i32 %call.2.i118, 0
  br i1 %tobool.not.2.i, label %for.inc6.2.i, label %for.inc6.1.i.for.body3.i_crit_edge

for.inc6.1.i.for.body3.i_crit_edge:               ; preds = %for.inc6.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3.i

for.inc6.2.i:                                     ; preds = %for.inc6.1.i
  %arrayidx.3.i = getelementptr %struct.xgene_dma, ptr %call.i, i32 0, i32 9, i32 3
  %call.3.i119 = tail call fastcc i32 @xgene_dma_create_chan_rings(ptr noundef %arrayidx.3.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i119)
  %tobool.not.3.i = icmp eq i32 %call.3.i119, 0
  br i1 %tobool.not.3.i, label %for.inc6.2.i.if.end45_crit_edge, label %for.inc6.2.i.for.body3.i_crit_edge

for.inc6.2.i.for.body3.i_crit_edge:               ; preds = %for.inc6.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3.i

for.inc6.2.i.if.end45_crit_edge:                  ; preds = %for.inc6.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

xgene_dma_init_rings.exit:                        ; preds = %for.body3.i.2, %for.body3.i.1.xgene_dma_init_rings.exit_crit_edge, %for.body3.i.xgene_dma_init_rings.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.lcssa.ph.i)
  %tobool43.not = icmp eq i32 %call.lcssa.ph.i, 0
  br i1 %tobool43.not, label %xgene_dma_init_rings.exit.if.end45_crit_edge, label %xgene_dma_init_rings.exit.err_clk_enable_crit_edge

xgene_dma_init_rings.exit.err_clk_enable_crit_edge: ; preds = %xgene_dma_init_rings.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clk_enable

xgene_dma_init_rings.exit.if.end45_crit_edge:     ; preds = %xgene_dma_init_rings.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.end45:                                         ; preds = %xgene_dma_init_rings.exit.if.end45_crit_edge, %for.inc6.2.i.if.end45_crit_edge
  %89 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %call.i, align 4
  %91 = ptrtoint ptr %err_irq.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %err_irq.i, align 4
  %call.i.i = tail call i32 @devm_request_threaded_irq(ptr noundef %90, i32 noundef %92, ptr noundef nonnull @xgene_dma_err_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.50, ptr noundef %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i122 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i122, label %for.body.preheader.i, label %do.end.i126

for.body.preheader.i:                             ; preds = %if.end45
  %93 = ptrtoint ptr %rx_irq.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %rx_irq.i, align 4
  tail call void @irq_modify_status(i32 noundef %94, i32 noundef 0, i32 noundef 524288) #7
  %95 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev2.i, align 4
  %97 = ptrtoint ptr %rx_irq.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %rx_irq.i, align 4
  %call.i61.i = tail call i32 @devm_request_threaded_irq(ptr noundef %96, i32 noundef %98, ptr noundef nonnull @xgene_dma_chan_ring_isr, ptr noundef null, i32 noundef 0, ptr noundef %name.i, ptr noundef %arrayidx.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61.i)
  %tobool7.not.i = icmp eq i32 %call.i61.i, 0
  br i1 %tobool7.not.i, label %for.inc27.i, label %for.body.preheader.i.do.end11.i_crit_edge

for.body.preheader.i.do.end11.i_crit_edge:        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11.i

do.end.i126:                                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %99 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %call.i, align 4
  %101 = ptrtoint ptr %err_irq.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %err_irq.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.51, i32 noundef %102) #10
  br label %err_request_irq

do.end11.i:                                       ; preds = %for.inc27.2.i.do.end11.i_crit_edge, %for.inc27.1.i.do.end11.i_crit_edge, %for.inc27.i.do.end11.i_crit_edge, %for.body.preheader.i.do.end11.i_crit_edge
  %i.064.lcssa.i = phi i32 [ 0, %for.body.preheader.i.do.end11.i_crit_edge ], [ 1, %for.inc27.i.do.end11.i_crit_edge ], [ 2, %for.inc27.1.i.do.end11.i_crit_edge ], [ 3, %for.inc27.2.i.do.end11.i_crit_edge ]
  %arrayidx.lcssa.i = phi ptr [ %arrayidx.i, %for.body.preheader.i.do.end11.i_crit_edge ], [ %arrayidx.1.i, %for.inc27.i.do.end11.i_crit_edge ], [ %arrayidx.2.i132, %for.inc27.1.i.do.end11.i_crit_edge ], [ %arrayidx.3.i135, %for.inc27.2.i.do.end11.i_crit_edge ]
  %rx_irq.lcssa.i = phi ptr [ %rx_irq.i, %for.body.preheader.i.do.end11.i_crit_edge ], [ %rx_irq.1.i, %for.inc27.i.do.end11.i_crit_edge ], [ %rx_irq.2.i, %for.inc27.1.i.do.end11.i_crit_edge ], [ %rx_irq.3.i, %for.inc27.2.i.do.end11.i_crit_edge ]
  %dev4.lcssa.i = phi ptr [ %dev2.i, %for.body.preheader.i.do.end11.i_crit_edge ], [ %dev2.1.i, %for.inc27.i.do.end11.i_crit_edge ], [ %dev2.2.i, %for.inc27.1.i.do.end11.i_crit_edge ], [ %dev2.3.i, %for.inc27.2.i.do.end11.i_crit_edge ]
  %name.lcssa.i = phi ptr [ %name.i, %for.body.preheader.i.do.end11.i_crit_edge ], [ %name.1.i, %for.inc27.i.do.end11.i_crit_edge ], [ %name.2.i, %for.inc27.1.i.do.end11.i_crit_edge ], [ %name.3.i, %for.inc27.2.i.do.end11.i_crit_edge ]
  %call.i61.lcssa.i = phi i32 [ %call.i61.i, %for.body.preheader.i.do.end11.i_crit_edge ], [ %call.i61.1.i, %for.inc27.i.do.end11.i_crit_edge ], [ %call.i61.2.i, %for.inc27.1.i.do.end11.i_crit_edge ], [ %call.i61.3.i, %for.inc27.2.i.do.end11.i_crit_edge ]
  %103 = ptrtoint ptr %dev4.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev4.lcssa.i, align 4
  %105 = ptrtoint ptr %rx_irq.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %rx_irq.lcssa.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %104, ptr noundef nonnull @.str.54, ptr noundef %name.lcssa.i, i32 noundef %106) #10
  %107 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %call.i, align 4
  %109 = ptrtoint ptr %err_irq.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %err_irq.i, align 4
  tail call void @devm_free_irq(ptr noundef %108, i32 noundef %110, ptr noundef %call.i) #7
  br i1 %tobool7.not.i, label %do.end11.i.for.body20.i_crit_edge, label %do.end11.i.err_request_irq_crit_edge

do.end11.i.err_request_irq_crit_edge:             ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_request_irq

do.end11.i.for.body20.i_crit_edge:                ; preds = %do.end11.i
  br label %for.body20.i

for.body20.i:                                     ; preds = %for.body20.i.for.body20.i_crit_edge, %do.end11.i.for.body20.i_crit_edge
  %j.066.i = phi i32 [ %inc.i127, %for.body20.i.for.body20.i_crit_edge ], [ 0, %do.end11.i.for.body20.i_crit_edge ]
  %111 = ptrtoint ptr %rx_irq.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %rx_irq.lcssa.i, align 4
  tail call void @irq_modify_status(i32 noundef %112, i32 noundef 524288, i32 noundef 0) #7
  %113 = ptrtoint ptr %dev4.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev4.lcssa.i, align 4
  %115 = ptrtoint ptr %rx_irq.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %rx_irq.lcssa.i, align 4
  tail call void @devm_free_irq(ptr noundef %114, i32 noundef %116, ptr noundef %arrayidx.lcssa.i) #7
  %inc.i127 = add nuw nsw i32 %j.066.i, 1
  %exitcond.not.i128 = icmp eq i32 %inc.i127, %i.064.lcssa.i
  br i1 %exitcond.not.i128, label %xgene_dma_request_irqs.exit, label %for.body20.i.for.body20.i_crit_edge

for.body20.i.for.body20.i_crit_edge:              ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body20.i

for.inc27.i:                                      ; preds = %for.body.preheader.i
  %117 = ptrtoint ptr %rx_irq.1.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %rx_irq.1.i, align 4
  tail call void @irq_modify_status(i32 noundef %118, i32 noundef 0, i32 noundef 524288) #7
  %119 = ptrtoint ptr %dev2.1.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev2.1.i, align 4
  %121 = ptrtoint ptr %rx_irq.1.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %rx_irq.1.i, align 4
  %call.i61.1.i = tail call i32 @devm_request_threaded_irq(ptr noundef %120, i32 noundef %122, ptr noundef nonnull @xgene_dma_chan_ring_isr, ptr noundef null, i32 noundef 0, ptr noundef %name.1.i, ptr noundef %arrayidx.1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61.1.i)
  %tobool7.not.1.i = icmp eq i32 %call.i61.1.i, 0
  br i1 %tobool7.not.1.i, label %for.inc27.1.i, label %for.inc27.i.do.end11.i_crit_edge

for.inc27.i.do.end11.i_crit_edge:                 ; preds = %for.inc27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11.i

for.inc27.1.i:                                    ; preds = %for.inc27.i
  %arrayidx.2.i132 = getelementptr %struct.xgene_dma, ptr %call.i, i32 0, i32 9, i32 2
  %123 = ptrtoint ptr %rx_irq.2.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %rx_irq.2.i, align 4
  tail call void @irq_modify_status(i32 noundef %124, i32 noundef 0, i32 noundef 524288) #7
  %125 = ptrtoint ptr %dev2.2.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev2.2.i, align 4
  %127 = ptrtoint ptr %rx_irq.2.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %rx_irq.2.i, align 4
  %call.i61.2.i = tail call i32 @devm_request_threaded_irq(ptr noundef %126, i32 noundef %128, ptr noundef nonnull @xgene_dma_chan_ring_isr, ptr noundef null, i32 noundef 0, ptr noundef %name.2.i, ptr noundef %arrayidx.2.i132) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61.2.i)
  %tobool7.not.2.i = icmp eq i32 %call.i61.2.i, 0
  br i1 %tobool7.not.2.i, label %for.inc27.2.i, label %for.inc27.1.i.do.end11.i_crit_edge

for.inc27.1.i.do.end11.i_crit_edge:               ; preds = %for.inc27.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11.i

for.inc27.2.i:                                    ; preds = %for.inc27.1.i
  %arrayidx.3.i135 = getelementptr %struct.xgene_dma, ptr %call.i, i32 0, i32 9, i32 3
  %129 = ptrtoint ptr %rx_irq.3.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %rx_irq.3.i, align 4
  tail call void @irq_modify_status(i32 noundef %130, i32 noundef 0, i32 noundef 524288) #7
  %131 = ptrtoint ptr %dev2.3.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev2.3.i, align 4
  %133 = ptrtoint ptr %rx_irq.3.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %rx_irq.3.i, align 4
  %call.i61.3.i = tail call i32 @devm_request_threaded_irq(ptr noundef %132, i32 noundef %134, ptr noundef nonnull @xgene_dma_chan_ring_isr, ptr noundef null, i32 noundef 0, ptr noundef %name.3.i, ptr noundef %arrayidx.3.i135) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61.3.i)
  %tobool7.not.3.i = icmp eq i32 %call.i61.3.i, 0
  br i1 %tobool7.not.3.i, label %for.inc27.2.i.if.end49_crit_edge, label %for.inc27.2.i.do.end11.i_crit_edge

for.inc27.2.i.do.end11.i_crit_edge:               ; preds = %for.inc27.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11.i

for.inc27.2.i.if.end49_crit_edge:                 ; preds = %for.inc27.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

xgene_dma_request_irqs.exit:                      ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61.lcssa.i)
  %tobool47.not = icmp eq i32 %call.i61.lcssa.i, 0
  br i1 %tobool47.not, label %xgene_dma_request_irqs.exit.if.end49_crit_edge, label %xgene_dma_request_irqs.exit.err_request_irq_crit_edge

xgene_dma_request_irqs.exit.err_request_irq_crit_edge: ; preds = %xgene_dma_request_irqs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_request_irq

xgene_dma_request_irqs.exit.if.end49_crit_edge:   ; preds = %xgene_dma_request_irqs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.end49:                                         ; preds = %xgene_dma_request_irqs.exit.if.end49_crit_edge, %for.inc27.2.i.if.end49_crit_edge
  tail call fastcc void @xgene_dma_init_hw(ptr noundef nonnull %call.i)
  %call50 = tail call fastcc i32 @xgene_dma_init_async(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end49.cleanup_crit_edge, label %err_async_init

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_async_init:                                   ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @xgene_dma_free_irqs(ptr noundef nonnull %call.i)
  br label %err_request_irq

err_request_irq:                                  ; preds = %err_async_init, %xgene_dma_request_irqs.exit.err_request_irq_crit_edge, %do.end11.i.err_request_irq_crit_edge, %do.end.i126
  %ret.0 = phi i32 [ %call.i61.lcssa.i, %xgene_dma_request_irqs.exit.err_request_irq_crit_edge ], [ %call50, %err_async_init ], [ %call.i61.lcssa.i, %do.end11.i.err_request_irq_crit_edge ], [ %call.i.i, %do.end.i126 ]
  %rx_ring.i = getelementptr %struct.xgene_dma, ptr %call.i, i32 0, i32 9, i32 0, i32 15
  tail call fastcc void @xgene_dma_delete_ring_one(ptr noundef %rx_ring.i) #7
  %tx_ring.i = getelementptr %struct.xgene_dma, ptr %call.i, i32 0, i32 9, i32 0, i32 14
  tail call fastcc void @xgene_dma_delete_ring_one(ptr noundef %tx_ring.i) #7
  %rx_ring.i.1 = getelementptr %struct.xgene_dma, ptr %call.i, i32 0, i32 9, i32 1, i32 15
  tail call fastcc void @xgene_dma_delete_ring_one(ptr noundef %rx_ring.i.1) #7
  %tx_ring.i.1 = getelementptr %struct.xgene_dma, ptr %call.i, i32 0, i32 9, i32 1, i32 14
  tail call fastcc void @xgene_dma_delete_ring_one(ptr noundef %tx_ring.i.1) #7
  %rx_ring.i.2 = getelementptr %struct.xgene_dma, ptr %call.i, i32 0, i32 9, i32 2, i32 15
  tail call fastcc void @xgene_dma_delete_ring_one(ptr noundef %rx_ring.i.2) #7
  %tx_ring.i.2 = getelementptr %struct.xgene_dma, ptr %call.i, i32 0, i32 9, i32 2, i32 14
  tail call fastcc void @xgene_dma_delete_ring_one(ptr noundef %tx_ring.i.2) #7
  %rx_ring.i.3 = getelementptr %struct.xgene_dma, ptr %call.i, i32 0, i32 9, i32 3, i32 15
  tail call fastcc void @xgene_dma_delete_ring_one(ptr noundef %rx_ring.i.3) #7
  %tx_ring.i.3 = getelementptr %struct.xgene_dma, ptr %call.i, i32 0, i32 9, i32 3, i32 14
  tail call fastcc void @xgene_dma_delete_ring_one(ptr noundef %tx_ring.i.3) #7
  br label %err_clk_enable

err_clk_enable:                                   ; preds = %err_request_irq, %xgene_dma_init_rings.exit.err_clk_enable_crit_edge, %if.end41.err_clk_enable_crit_edge, %do.end39, %xgene_dma_init_mem.exit
  %ret.1 = phi i32 [ -19, %xgene_dma_init_mem.exit ], [ %call.i110, %do.end39 ], [ %call.lcssa.ph.i, %xgene_dma_init_rings.exit.err_clk_enable_crit_edge ], [ %call.i115, %if.end41.err_clk_enable_crit_edge ], [ %ret.0, %err_request_irq ]
  %135 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %clk, align 4
  %cmp.i139 = icmp ugt ptr %136, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i139, label %err_clk_enable.cleanup_crit_edge, label %if.then56

err_clk_enable.cleanup_crit_edge:                 ; preds = %err_clk_enable
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then56:                                        ; preds = %err_clk_enable
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_disable(ptr noundef %136) #7
  tail call void @clk_unprepare(ptr noundef %136) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then56, %err_clk_enable.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %do.end25, %do.end, %if.end80.2.i.cleanup_crit_edge, %if.end80.1.i.cleanup_crit_edge, %if.end80.i.cleanup_crit_edge, %if.end75.i.cleanup_crit_edge, %if.end72.i.cleanup_crit_edge, %do.end70.i, %do.end58.i, %do.end49.i, %do.end37.i, %do.end29.i, %do.end17.i, %do.end9.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %31, %do.end ], [ %retval.0.i105.ph, %do.end25 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end49.cleanup_crit_edge ], [ %ret.1, %if.then56 ], [ %ret.1, %err_clk_enable.cleanup_crit_edge ], [ -6, %if.end80.2.i.cleanup_crit_edge ], [ -6, %if.end80.1.i.cleanup_crit_edge ], [ -6, %if.end80.i.cleanup_crit_edge ], [ -6, %if.end75.i.cleanup_crit_edge ], [ -6, %if.end72.i.cleanup_crit_edge ], [ -6, %do.end.i ], [ -12, %do.end9.i ], [ -6, %do.end17.i ], [ -12, %do.end29.i ], [ -6, %do.end37.i ], [ -12, %do.end49.i ], [ -6, %do.end58.i ], [ -12, %do.end70.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_dma_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx.i = getelementptr %struct.xgene_dma, ptr %1, i32 0, i32 8, i32 0
  tail call void @dma_async_device_unregister(ptr noundef %arrayidx.i) #7
  %arrayidx.1.i = getelementptr %struct.xgene_dma, ptr %1, i32 0, i32 8, i32 1
  tail call void @dma_async_device_unregister(ptr noundef %arrayidx.1.i) #7
  %arrayidx.2.i = getelementptr %struct.xgene_dma, ptr %1, i32 0, i32 8, i32 2
  tail call void @dma_async_device_unregister(ptr noundef %arrayidx.2.i) #7
  %arrayidx.3.i = getelementptr %struct.xgene_dma, ptr %1, i32 0, i32 8, i32 3
  tail call void @dma_async_device_unregister(ptr noundef %arrayidx.3.i) #7
  %csr_dma.i = getelementptr inbounds %struct.xgene_dma, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %csr_dma.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr_dma.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 37024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !257
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #7, !srcloc !258
  %4 = ptrtoint ptr %csr_dma.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr_dma.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %5, i32 37032
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !257
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 -1) #7, !srcloc !258
  %6 = ptrtoint ptr %csr_dma.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %csr_dma.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %7, i32 37040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !257
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 -1) #7, !srcloc !258
  %8 = ptrtoint ptr %csr_dma.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %csr_dma.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %9, i32 37048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !257
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 -1) #7, !srcloc !258
  %10 = ptrtoint ptr %csr_dma.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %csr_dma.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %11, i32 37056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !257
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 -1) #7, !srcloc !258
  %12 = ptrtoint ptr %csr_dma.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %csr_dma.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %13, i32 116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !257
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 -1) #7, !srcloc !258
  %14 = ptrtoint ptr %csr_dma.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %csr_dma.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %15, i32 16
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14) #7, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !256
  %17 = and i32 %16, -129
  %18 = ptrtoint ptr %csr_dma.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %csr_dma.i, align 4
  %add.ptr2.i15 = getelementptr i8, ptr %19, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !257
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i15, i32 %17) #7, !srcloc !258
  tail call fastcc void @xgene_dma_free_irqs(ptr noundef %1)
  %tasklet = getelementptr %struct.xgene_dma, ptr %1, i32 0, i32 9, i32 0, i32 13
  tail call void @tasklet_kill(ptr noundef %tasklet) #7
  %rx_ring.i = getelementptr %struct.xgene_dma, ptr %1, i32 0, i32 9, i32 0, i32 15
  tail call fastcc void @xgene_dma_delete_ring_one(ptr noundef %rx_ring.i) #7
  %tx_ring.i = getelementptr %struct.xgene_dma, ptr %1, i32 0, i32 9, i32 0, i32 14
  tail call fastcc void @xgene_dma_delete_ring_one(ptr noundef %tx_ring.i) #7
  %tasklet.1 = getelementptr %struct.xgene_dma, ptr %1, i32 0, i32 9, i32 1, i32 13
  tail call void @tasklet_kill(ptr noundef %tasklet.1) #7
  %rx_ring.i.1 = getelementptr %struct.xgene_dma, ptr %1, i32 0, i32 9, i32 1, i32 15
  tail call fastcc void @xgene_dma_delete_ring_one(ptr noundef %rx_ring.i.1) #7
  %tx_ring.i.1 = getelementptr %struct.xgene_dma, ptr %1, i32 0, i32 9, i32 1, i32 14
  tail call fastcc void @xgene_dma_delete_ring_one(ptr noundef %tx_ring.i.1) #7
  %tasklet.2 = getelementptr %struct.xgene_dma, ptr %1, i32 0, i32 9, i32 2, i32 13
  tail call void @tasklet_kill(ptr noundef %tasklet.2) #7
  %rx_ring.i.2 = getelementptr %struct.xgene_dma, ptr %1, i32 0, i32 9, i32 2, i32 15
  tail call fastcc void @xgene_dma_delete_ring_one(ptr noundef %rx_ring.i.2) #7
  %tx_ring.i.2 = getelementptr %struct.xgene_dma, ptr %1, i32 0, i32 9, i32 2, i32 14
  tail call fastcc void @xgene_dma_delete_ring_one(ptr noundef %tx_ring.i.2) #7
  %tasklet.3 = getelementptr %struct.xgene_dma, ptr %1, i32 0, i32 9, i32 3, i32 13
  tail call void @tasklet_kill(ptr noundef %tasklet.3) #7
  %rx_ring.i.3 = getelementptr %struct.xgene_dma, ptr %1, i32 0, i32 9, i32 3, i32 15
  tail call fastcc void @xgene_dma_delete_ring_one(ptr noundef %rx_ring.i.3) #7
  %tx_ring.i.3 = getelementptr %struct.xgene_dma, ptr %1, i32 0, i32 9, i32 3, i32 14
  tail call fastcc void @xgene_dma_delete_ring_one(ptr noundef %tx_ring.i.3) #7
  %clk = getelementptr inbounds %struct.xgene_dma, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_disable(ptr noundef %21) #7
  tail call void @clk_unprepare(ptr noundef %21) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgene_dma_init_hw(ptr nocapture noundef readonly %pdma) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %csr_dma = getelementptr inbounds %struct.xgene_dma, ptr %pdma, i32 0, i32 4
  %0 = ptrtoint ptr %csr_dma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr_dma, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 37088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !257
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #7, !srcloc !258
  %csr_efuse.i = getelementptr inbounds %struct.xgene_dma, ptr %pdma, i32 0, i32 7
  %2 = ptrtoint ptr %csr_efuse.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr_efuse.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !256
  %5 = and i32 %4, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %csr_dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %csr_dma, align 4
  %add.ptr2 = getelementptr i8, ptr %7, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !257
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 29) #7, !srcloc !258
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %pdma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdma, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.70) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  %10 = ptrtoint ptr %csr_dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %csr_dma, align 4
  %add.ptr.i22 = getelementptr i8, ptr %11, i32 16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22) #7, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !256
  %13 = and i32 %12, 61567
  %14 = or i32 %13, -5305728
  %15 = ptrtoint ptr %csr_dma to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %csr_dma, align 4
  %add.ptr3.i = getelementptr i8, ptr %16, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !257
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %14) #7, !srcloc !258
  %17 = ptrtoint ptr %csr_dma to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %csr_dma, align 4
  %add.ptr.i24 = getelementptr i8, ptr %18, i32 37024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !257
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 0) #7, !srcloc !258
  %19 = ptrtoint ptr %csr_dma to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %csr_dma, align 4
  %add.ptr2.i = getelementptr i8, ptr %20, i32 37032
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !257
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #7, !srcloc !258
  %21 = ptrtoint ptr %csr_dma to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %csr_dma, align 4
  %add.ptr4.i = getelementptr i8, ptr %22, i32 37040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !257
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #7, !srcloc !258
  %23 = ptrtoint ptr %csr_dma to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %csr_dma, align 4
  %add.ptr6.i = getelementptr i8, ptr %24, i32 37048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !257
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 0) #7, !srcloc !258
  %25 = ptrtoint ptr %csr_dma to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %csr_dma, align 4
  %add.ptr8.i = getelementptr i8, ptr %26, i32 37056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !257
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 0) #7, !srcloc !258
  %27 = ptrtoint ptr %csr_dma to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %csr_dma, align 4
  %add.ptr10.i = getelementptr i8, ptr %28, i32 116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !257
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 0) #7, !srcloc !258
  %29 = ptrtoint ptr %csr_dma to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %csr_dma, align 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #7, !srcloc !255
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !256
  %33 = ptrtoint ptr %pdma to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdma, align 4
  %shr = lshr i32 %32, 14
  %and = and i32 %shr, 3
  %shr10 = lshr i32 %32, 12
  %and11 = and i32 %shr10, 3
  %and12 = and i32 %32, 4095
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %34, ptr noundef nonnull @.str.74, i32 noundef %and, i32 noundef %and11, i32 noundef %and12, i32 noundef 4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xgene_dma_init_async(ptr noundef %pdma) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc5.for.body_crit_edge, %entry
  %i.023 = phi i32 [ 0, %entry ], [ %inc6, %for.inc5.for.body_crit_edge ]
  %arrayidx.i = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 9, i32 %i.023
  %arrayidx3.i = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 8, i32 %i.023
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %arrayidx3.i, ptr %arrayidx.i, align 4
  %lock.i = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 9, i32 %i.023, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.76, ptr noundef nonnull @xgene_dma_async_register.__key, i16 noundef signext 3) #7
  %ld_pending.i = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 9, i32 %i.023, i32 9
  %1 = ptrtoint ptr %ld_pending.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %ld_pending.i, ptr %ld_pending.i, align 4
  %prev.i.i = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 9, i32 %i.023, i32 9, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ld_pending.i, ptr %prev.i.i, align 4
  %ld_running.i = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 9, i32 %i.023, i32 10
  %3 = ptrtoint ptr %ld_running.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %ld_running.i, ptr %ld_running.i, align 4
  %prev.i51.i = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 9, i32 %i.023, i32 10, i32 1
  %4 = ptrtoint ptr %prev.i51.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ld_running.i, ptr %prev.i51.i, align 4
  %ld_completed.i = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 9, i32 %i.023, i32 11
  %5 = ptrtoint ptr %ld_completed.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %ld_completed.i, ptr %ld_completed.i, align 4
  %prev.i52.i = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 9, i32 %i.023, i32 11, i32 1
  %6 = ptrtoint ptr %prev.i52.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ld_completed.i, ptr %prev.i52.i, align 4
  %tasklet.i = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 9, i32 %i.023, i32 13
  tail call void @tasklet_setup(ptr noundef %tasklet.i, ptr noundef nonnull @xgene_dma_tasklet_cb) #7
  %pending.i = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 9, i32 %i.023, i32 7
  %7 = ptrtoint ptr %pending.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %pending.i, align 4
  %desc_pool.i = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 9, i32 %i.023, i32 12
  %8 = ptrtoint ptr %desc_pool.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %desc_pool.i, align 4
  %cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %arrayidx.i, i32 0, i32 2
  %9 = ptrtoint ptr %cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %cookie.i.i, align 4
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %arrayidx.i, i32 0, i32 3
  %10 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %completed_cookie.i.i, align 4
  %cap_mask.i.i = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 8, i32 %i.023, i32 6
  %11 = ptrtoint ptr %cap_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %cap_mask.i.i, align 4
  %id.i.i = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 9, i32 %i.023, i32 3
  %12 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i.i = icmp eq i32 %13, 1
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %for.body.if.else.i.i_crit_edge

for.body.if.else.i.i_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %for.body
  %pdma.i.i = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 9, i32 %i.023, i32 1
  %14 = ptrtoint ptr %pdma.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdma.i.i, align 4
  %csr_efuse.i.i.i = getelementptr inbounds %struct.xgene_dma, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %csr_efuse.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %csr_efuse.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %17, i32 24
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !256
  %19 = and i32 %18, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i, label %if.elsethread-pre-split.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 3, ptr noundef %cap_mask.i.i) #7
  br label %if.end10.sink.split.i.i

if.elsethread-pre-split.i.i:                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr.i.i = load i32, ptr %id.i.i, align 4
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %if.elsethread-pre-split.i.i, %for.body.if.else.i.i_crit_edge
  %21 = phi i32 [ %.pr.i.i, %if.elsethread-pre-split.i.i ], [ %13, %for.body.if.else.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp4.i.i = icmp eq i32 %21, 0
  br i1 %cmp4.i.i, label %land.lhs.true5.i.i, label %if.else.i.i.if.end10.i.i_crit_edge

if.else.i.i.if.end10.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i.i

land.lhs.true5.i.i:                               ; preds = %if.else.i.i
  %pdma6.i.i = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 9, i32 %i.023, i32 1
  %22 = ptrtoint ptr %pdma6.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdma6.i.i, align 4
  %csr_efuse.i41.i.i = getelementptr inbounds %struct.xgene_dma, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %csr_efuse.i41.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %csr_efuse.i41.i.i, align 4
  %add.ptr.i42.i.i = getelementptr i8, ptr %25, i32 24
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42.i.i) #7, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !256
  %27 = and i32 %26, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i43.i.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i43.i.i, label %land.lhs.true5.i.i.if.end10.i.i_crit_edge, label %land.lhs.true5.i.i.if.end10.sink.split.i.i_crit_edge

land.lhs.true5.i.i.if.end10.sink.split.i.i_crit_edge: ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.sink.split.i.i

land.lhs.true5.i.i.if.end10.i.i_crit_edge:        ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i.i

if.end10.sink.split.i.i:                          ; preds = %land.lhs.true5.i.i.if.end10.sink.split.i.i_crit_edge, %if.then.i.i
  tail call void @_set_bit(i32 noundef 2, ptr noundef %cap_mask.i.i) #7
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.end10.sink.split.i.i, %land.lhs.true5.i.i.if.end10.i.i_crit_edge, %if.else.i.i.if.end10.i.i_crit_edge
  %dev.i.i = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 9, i32 %i.023, i32 2
  %28 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i.i, align 4
  %dev11.i.i = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 8, i32 %i.023, i32 15
  %30 = ptrtoint ptr %dev11.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %dev11.i.i, align 4
  %device_alloc_chan_resources.i.i = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 8, i32 %i.023, i32 27
  %31 = ptrtoint ptr %device_alloc_chan_resources.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @xgene_dma_alloc_chan_resources, ptr %device_alloc_chan_resources.i.i, align 4
  %device_free_chan_resources.i.i = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 8, i32 %i.023, i32 29
  %32 = ptrtoint ptr %device_free_chan_resources.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @xgene_dma_free_chan_resources, ptr %device_free_chan_resources.i.i, align 4
  %device_issue_pending.i.i = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 8, i32 %i.023, i32 50
  %33 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @xgene_dma_issue_pending, ptr %device_issue_pending.i.i, align 4
  %device_tx_status.i.i = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 8, i32 %i.023, i32 49
  %34 = ptrtoint ptr %device_tx_status.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @xgene_dma_tx_status, ptr %device_tx_status.i.i, align 4
  %35 = ptrtoint ptr %cap_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %cap_mask.i.i, align 4
  %37 = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i.i = icmp eq i32 %37, 0
  br i1 %tobool.not.i.i, label %if.end10.i.i.if.end15.i.i_crit_edge, label %if.then14.i.i

if.end10.i.i.if.end15.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i.i

if.then14.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %device_prep_dma_xor.i.i = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 8, i32 %i.023, i32 32
  %38 = ptrtoint ptr %device_prep_dma_xor.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @xgene_dma_prep_xor, ptr %device_prep_dma_xor.i.i, align 4
  %max_xor.i.i = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 8, i32 %i.023, i32 8
  %39 = ptrtoint ptr %max_xor.i.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 5, ptr %max_xor.i.i, align 4
  %xor_align.i.i = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 8, i32 %i.023, i32 11
  %40 = ptrtoint ptr %xor_align.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 6, ptr %xor_align.i.i, align 4
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.then14.i.i, %if.end10.i.i.if.end15.i.i_crit_edge
  %41 = ptrtoint ptr %cap_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %cap_mask.i.i, align 4
  %43 = and i32 %42, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool18.not.i.i = icmp eq i32 %43, 0
  br i1 %tobool18.not.i.i, label %if.end15.i.i.xgene_dma_set_caps.exit.i_crit_edge, label %if.then19.i.i

if.end15.i.i.xgene_dma_set_caps.exit.i_crit_edge: ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xgene_dma_set_caps.exit.i

if.then19.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %device_prep_dma_pq.i.i = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 8, i32 %i.023, i32 34
  %44 = ptrtoint ptr %device_prep_dma_pq.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @xgene_dma_prep_pq, ptr %device_prep_dma_pq.i.i, align 4
  %max_pq.i.i = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 8, i32 %i.023, i32 9
  %45 = ptrtoint ptr %max_pq.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 5, ptr %max_pq.i.i, align 2
  %pq_align.i.i = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 8, i32 %i.023, i32 12
  %46 = ptrtoint ptr %pq_align.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 6, ptr %pq_align.i.i, align 4
  br label %xgene_dma_set_caps.exit.i

xgene_dma_set_caps.exit.i:                        ; preds = %if.then19.i.i, %if.end15.i.i.xgene_dma_set_caps.exit.i_crit_edge
  %channels.i = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 8, i32 %i.023, i32 3
  %47 = ptrtoint ptr %channels.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %channels.i, ptr %channels.i, align 4
  %prev.i53.i = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 8, i32 %i.023, i32 3, i32 1
  %48 = ptrtoint ptr %prev.i53.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %channels.i, ptr %prev.i53.i, align 4
  %device_node.i = getelementptr inbounds %struct.dma_chan, ptr %arrayidx.i, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %device_node.i, ptr noundef %channels.i, ptr noundef %channels.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %xgene_dma_set_caps.exit.i.list_add_tail.exit.i_crit_edge

xgene_dma_set_caps.exit.i.list_add_tail.exit.i_crit_edge: ; preds = %xgene_dma_set_caps.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %xgene_dma_set_caps.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %prev.i53.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %device_node.i, ptr %prev.i53.i, align 4
  %50 = ptrtoint ptr %device_node.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %channels.i, ptr %device_node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.dma_chan, ptr %arrayidx.i, i32 0, i32 8, i32 1
  %51 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %channels.i, ptr %prev3.i.i.i, align 4
  %52 = ptrtoint ptr %channels.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %device_node.i, ptr %channels.i, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %xgene_dma_set_caps.exit.i.list_add_tail.exit.i_crit_edge
  %call7.i = tail call i32 @dma_async_device_register(ptr noundef %arrayidx3.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i, label %do.end14.i, label %xgene_dma_async_register.exit

do.end14.i:                                       ; preds = %list_add_tail.exit.i
  %53 = ptrtoint ptr %pdma to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pdma, align 4
  %dev.i55.i = getelementptr inbounds %struct.dma_chan, ptr %arrayidx.i, i32 0, i32 5
  %55 = ptrtoint ptr %dev.i55.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev.i55.i, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %56, i32 0, i32 1, i32 3
  %57 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i56.i = icmp eq ptr %58, null
  br i1 %tobool.not.i.i56.i, label %if.end.i.i57.i, label %do.end14.i.for.inc5_crit_edge

do.end14.i.for.inc5_crit_edge:                    ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc5

if.end.i.i57.i:                                   ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %56, i32 0, i32 1
  %59 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %device.i.i, align 4
  br label %for.inc5

xgene_dma_async_register.exit:                    ; preds = %list_add_tail.exit.i
  %61 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i.i, align 4
  %name.i = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 9, i32 %i.023, i32 5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.77, ptr noundef %name.i, i32 noundef %call7.i) #10
  tail call void @tasklet_kill(ptr noundef %tasklet.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.023)
  %cmp224.not = icmp eq i32 %i.023, 0
  br i1 %cmp224.not, label %xgene_dma_async_register.exit.cleanup_crit_edge, label %for.body3

xgene_dma_async_register.exit.cleanup_crit_edge:  ; preds = %xgene_dma_async_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body3:                                        ; preds = %xgene_dma_async_register.exit
  %arrayidx = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 8, i32 0
  tail call void @dma_async_device_unregister(ptr noundef %arrayidx) #7
  %tasklet = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 9, i32 0, i32 13
  tail call void @tasklet_kill(ptr noundef %tasklet) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.023)
  %exitcond31.not = icmp eq i32 %i.023, 1
  br i1 %exitcond31.not, label %for.body3.cleanup_crit_edge, label %for.body3.1

for.body3.cleanup_crit_edge:                      ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body3.1:                                      ; preds = %for.body3
  %arrayidx.1 = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 8, i32 1
  tail call void @dma_async_device_unregister(ptr noundef %arrayidx.1) #7
  %tasklet.1 = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 9, i32 1, i32 13
  tail call void @tasklet_kill(ptr noundef %tasklet.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.023)
  %exitcond31.not.1 = icmp eq i32 %i.023, 2
  br i1 %exitcond31.not.1, label %for.body3.1.cleanup_crit_edge, label %for.body3.2

for.body3.1.cleanup_crit_edge:                    ; preds = %for.body3.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body3.2:                                      ; preds = %for.body3.1
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.2 = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 8, i32 2
  tail call void @dma_async_device_unregister(ptr noundef %arrayidx.2) #7
  %tasklet.2 = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 9, i32 2, i32 13
  tail call void @tasklet_kill(ptr noundef %tasklet.2) #7
  br label %cleanup

for.inc5:                                         ; preds = %if.end.i.i57.i, %do.end14.i.for.inc5_crit_edge
  %retval.0.i.i.i = phi ptr [ %60, %if.end.i.i57.i ], [ %58, %do.end14.i.for.inc5_crit_edge ]
  %63 = ptrtoint ptr %cap_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %cap_mask.i.i, align 4
  %65 = and i32 %64, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool19.not.i = icmp eq i32 %65, 0
  %cond.i = select i1 %tobool19.not.i, ptr @.str.83, ptr @.str.82
  %66 = ptrtoint ptr %cap_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %cap_mask.i.i, align 4
  %68 = and i32 %67, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool22.not.i = icmp eq i32 %68, 0
  %cond23.i = select i1 %tobool22.not.i, ptr @.str.83, ptr @.str.84
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %54, ptr noundef nonnull @.str.80, ptr noundef %retval.0.i.i.i, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond23.i) #10
  %inc6 = add nuw nsw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc6, 4
  br i1 %exitcond.not, label %for.inc5.cleanup_crit_edge, label %for.inc5.for.body_crit_edge

for.inc5.for.body_crit_edge:                      ; preds = %for.inc5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc5.cleanup_crit_edge:                       ; preds = %for.inc5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc5.cleanup_crit_edge, %for.body3.2, %for.body3.1.cleanup_crit_edge, %for.body3.cleanup_crit_edge, %xgene_dma_async_register.exit.cleanup_crit_edge
  ret i32 %call7.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgene_dma_free_irqs(ptr noundef %pdma) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdma, align 4
  %err_irq = getelementptr inbounds %struct.xgene_dma, ptr %pdma, i32 0, i32 2
  %2 = ptrtoint ptr %err_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %err_irq, align 4
  tail call void @devm_free_irq(ptr noundef %1, i32 noundef %3, ptr noundef %pdma) #7
  %arrayidx = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 9, i32 0
  %rx_irq = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 9, i32 0, i32 4
  %4 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_irq, align 4
  tail call void @irq_modify_status(i32 noundef %5, i32 noundef 524288, i32 noundef 0) #7
  %dev2 = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 9, i32 0, i32 2
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2, align 4
  %8 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_irq, align 4
  tail call void @devm_free_irq(ptr noundef %7, i32 noundef %9, ptr noundef %arrayidx) #7
  %arrayidx.1 = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 9, i32 1
  %rx_irq.1 = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 9, i32 1, i32 4
  %10 = ptrtoint ptr %rx_irq.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_irq.1, align 4
  tail call void @irq_modify_status(i32 noundef %11, i32 noundef 524288, i32 noundef 0) #7
  %dev2.1 = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 9, i32 1, i32 2
  %12 = ptrtoint ptr %dev2.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev2.1, align 4
  %14 = ptrtoint ptr %rx_irq.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_irq.1, align 4
  tail call void @devm_free_irq(ptr noundef %13, i32 noundef %15, ptr noundef %arrayidx.1) #7
  %arrayidx.2 = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 9, i32 2
  %rx_irq.2 = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 9, i32 2, i32 4
  %16 = ptrtoint ptr %rx_irq.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_irq.2, align 4
  tail call void @irq_modify_status(i32 noundef %17, i32 noundef 524288, i32 noundef 0) #7
  %dev2.2 = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 9, i32 2, i32 2
  %18 = ptrtoint ptr %dev2.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev2.2, align 4
  %20 = ptrtoint ptr %rx_irq.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_irq.2, align 4
  tail call void @devm_free_irq(ptr noundef %19, i32 noundef %21, ptr noundef %arrayidx.2) #7
  %arrayidx.3 = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 9, i32 3
  %rx_irq.3 = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 9, i32 3, i32 4
  %22 = ptrtoint ptr %rx_irq.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_irq.3, align 4
  tail call void @irq_modify_status(i32 noundef %23, i32 noundef 524288, i32 noundef 0) #7
  %dev2.3 = getelementptr %struct.xgene_dma, ptr %pdma, i32 0, i32 9, i32 3, i32 2
  %24 = ptrtoint ptr %dev2.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev2.3, align 4
  %26 = ptrtoint ptr %rx_irq.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_irq.3, align 4
  tail call void @devm_free_irq(ptr noundef %25, i32 noundef %27, ptr noundef %arrayidx.3) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xgene_dma_create_chan_rings(ptr noundef %chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_ring1 = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 15
  %tx_ring2 = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 14
  %owner = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 15, i32 5
  %0 = ptrtoint ptr %owner to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 15, ptr %owner, align 4
  %id = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 3
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 4
  %3 = trunc i32 %2 to i8
  %conv = add i8 %3, 24
  %buf_num = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 15, i32 1
  %4 = ptrtoint ptr %buf_num to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %buf_num, align 4
  %call = tail call fastcc i32 @xgene_dma_create_ring_one(ptr noundef %chan, ptr noundef %rx_ring1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_dma_create_chan_rings.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xgene_dma_create_chan_rings, %do.end)) #7
          to label %if.then8 [label %do.end], !srcloc !259

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 2
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 5
  %id9 = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 15, i32 2
  %7 = ptrtoint ptr %id9 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %id9, align 2
  %conv10 = zext i16 %8 to i32
  %num = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 15, i32 3
  %9 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num, align 4
  %conv11 = zext i16 %10 to i32
  %11 = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 15, i32 14
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgene_dma_create_chan_rings.__UNIQUE_ID_ddebug242, ptr noundef %6, ptr noundef nonnull @.str.44, ptr noundef %name, i32 noundef %conv10, i32 noundef %conv11, ptr noundef %13) #7
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %owner13 = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 14, i32 5
  %14 = ptrtoint ptr %owner13 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 3, ptr %owner13, align 4
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id, align 4
  %conv16 = trunc i32 %16 to i8
  %buf_num17 = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 14, i32 1
  %17 = ptrtoint ptr %buf_num17 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv16, ptr %buf_num17, align 4
  %call18 = tail call fastcc i32 @xgene_dma_create_ring_one(ptr noundef %chan, ptr noundef %tx_ring2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @xgene_dma_delete_ring_one(ptr noundef %rx_ring1)
  br label %cleanup

if.end21:                                         ; preds = %do.end
  %num22 = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 15, i32 3
  %18 = ptrtoint ptr %num22 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %num22, align 4
  %20 = or i16 %19, 1024
  %dst_ring_num = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 14, i32 7
  %21 = ptrtoint ptr %dst_ring_num to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %dst_ring_num, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_dma_create_chan_rings.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xgene_dma_create_chan_rings, %do.end49)) #7
          to label %if.then39 [label %do.end49], !srcloc !259

if.then39:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %dev40 = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 2
  %22 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev40, align 4
  %name41 = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 5
  %id43 = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 14, i32 2
  %24 = ptrtoint ptr %id43 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %id43, align 2
  %conv44 = zext i16 %25 to i32
  %num45 = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 14, i32 3
  %26 = ptrtoint ptr %num45 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %num45, align 4
  %conv46 = zext i16 %27 to i32
  %28 = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 14, i32 14
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgene_dma_create_chan_rings.__UNIQUE_ID_ddebug243, ptr noundef %23, ptr noundef nonnull @.str.45, ptr noundef %name41, i32 noundef %conv44, i32 noundef %conv46, ptr noundef %30) #7
  br label %do.end49

do.end49:                                         ; preds = %if.then39, %if.end21
  %slots = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 14, i32 6
  %31 = ptrtoint ptr %slots to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %slots, align 2
  %conv50 = zext i16 %32 to i32
  %max_outstanding = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 8
  %33 = ptrtoint ptr %max_outstanding to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv50, ptr %max_outstanding, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end49, %if.then20, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.then20 ], [ 0, %do.end49 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xgene_dma_create_ring_one(ptr noundef %chan, ptr noundef %ring) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdma = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %pdma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdma, align 4
  %2 = ptrtoint ptr %ring to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %ring, align 4
  %cfgsize2 = getelementptr inbounds %struct.xgene_dma_ring, ptr %ring, i32 0, i32 13
  %3 = ptrtoint ptr %cfgsize2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %cfgsize2, align 4
  %4 = load ptr, ptr %pdma, align 4
  %ring_num = getelementptr inbounds %struct.xgene_dma, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %ring_num to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ring_num, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %ring_num, align 4
  %conv = trunc i32 %6 to i16
  %num = getelementptr inbounds %struct.xgene_dma_ring, ptr %ring, i32 0, i32 3
  %7 = ptrtoint ptr %num to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %num, align 4
  %owner = getelementptr inbounds %struct.xgene_dma_ring, ptr %ring, i32 0, i32 5
  %8 = ptrtoint ptr %owner to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %owner, align 4
  %shl = shl i16 %9, 6
  %buf_num = getelementptr inbounds %struct.xgene_dma_ring, ptr %ring, i32 0, i32 1
  %10 = ptrtoint ptr %buf_num to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %buf_num, align 4
  %conv5 = zext i8 %11 to i16
  %or = or i16 %shl, %conv5
  %id = getelementptr inbounds %struct.xgene_dma_ring, ptr %ring, i32 0, i32 2
  %12 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %or, ptr %id, align 2
  %size = getelementptr inbounds %struct.xgene_dma_ring, ptr %ring, i32 0, i32 8
  %13 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 65536, ptr %size, align 4
  %dev = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 2
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %desc_paddr = getelementptr inbounds %struct.xgene_dma_ring, ptr %ring, i32 0, i32 11
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %15, i32 noundef 65536, ptr noundef %desc_paddr, i32 noundef 3264, i32 noundef 0) #7
  %16 = getelementptr inbounds %struct.xgene_dma_ring, ptr %ring, i32 0, i32 14
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %16, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end12

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.46, ptr noundef %name) #10
  br label %cleanup

if.end12:                                         ; preds = %entry
  %20 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ring, align 4
  %csr_ring_cmd.i = getelementptr inbounds %struct.xgene_dma, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %csr_ring_cmd.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %csr_ring_cmd.i, align 4
  %24 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %num, align 4
  %conv.i = zext i16 %25 to i32
  %sub.i = shl nuw nsw i32 %conv.i, 6
  %shl.i = add nsw i32 %sub.i, -32768
  %add.ptr.i = getelementptr i8, ptr %23, i32 %shl.i
  %cmd_base.i = getelementptr inbounds %struct.xgene_dma_ring, ptr %ring, i32 0, i32 10
  %26 = ptrtoint ptr %cmd_base.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr.i, ptr %cmd_base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 44
  %cmd.i = getelementptr inbounds %struct.xgene_dma_ring, ptr %ring, i32 0, i32 9
  %27 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr2.i, ptr %cmd.i, align 4
  %28 = ptrtoint ptr %desc_paddr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %desc_paddr, align 4
  %30 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size, align 4
  %div94.i = lshr i32 %31, 5
  %conv1.i = trunc i32 %div94.i to i16
  %slots.i = getelementptr inbounds %struct.xgene_dma_ring, ptr %ring, i32 0, i32 6
  %32 = ptrtoint ptr %slots.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv1.i, ptr %slots.i, align 2
  %state.i.i = getelementptr inbounds %struct.xgene_dma_ring, ptr %ring, i32 0, i32 12
  %33 = call ptr @memset(ptr %state.i.i, i32 0, i32 20)
  tail call fastcc void @xgene_dma_wr_ring_state(ptr noundef %ring) #7
  %arrayidx.i = getelementptr %struct.xgene_dma_ring, ptr %ring, i32 0, i32 12, i32 4
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i, align 4
  %or.i = or i32 %35, 524288
  store i32 %or.i, ptr %arrayidx.i, align 4
  %36 = ptrtoint ptr %owner to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %owner, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %37)
  %cmp.i = icmp eq i16 %37, 3
  br i1 %cmp.i, label %if.then.i, label %if.end12.if.end.i_crit_edge

if.end12.if.end.i_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx4.i = getelementptr %struct.xgene_dma_ring, ptr %ring, i32 0, i32 12, i32 3
  %38 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx4.i, align 4
  %or7.i = or i32 %39, 2013265920
  store i32 %or7.i, ptr %arrayidx4.i, align 4
  %or9.i = or i32 %35, 524291
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or9.i, ptr %arrayidx.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end12.if.end.i_crit_edge
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i, align 4
  %or11.i = or i32 %42, 8
  store i32 %or11.i, ptr %arrayidx.i, align 4
  %arrayidx12.i = getelementptr %struct.xgene_dma_ring, ptr %ring, i32 0, i32 12, i32 3
  %43 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx12.i, align 4
  %arrayidx14.i = getelementptr %struct.xgene_dma_ring, ptr %ring, i32 0, i32 12, i32 2
  %45 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx14.i, align 4
  %47 = lshr i32 %29, 3
  %48 = and i32 %47, 536870880
  %or15.i = or i32 %48, %46
  %or1895.i = or i32 %or15.i, 16
  store i32 %or1895.i, ptr %arrayidx14.i, align 4
  %49 = ptrtoint ptr %cfgsize2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cfgsize2, align 4
  %shl25.i = shl i32 %50, 23
  %or13.i = or i32 %44, %shl25.i
  %or27.i = or i32 %or13.i, 524288
  store i32 %or27.i, ptr %arrayidx12.i, align 4
  tail call fastcc void @xgene_dma_wr_ring_state(ptr noundef %ring) #7
  %51 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %id, align 2
  %conv28.i = zext i16 %52 to i32
  %or29.i = or i32 %conv28.i, -2147483648
  %53 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ring, align 4
  %csr_ring.i = getelementptr inbounds %struct.xgene_dma, ptr %54, i32 0, i32 5
  %55 = ptrtoint ptr %csr_ring.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %csr_ring.i, align 4
  %add.ptr.i1 = getelementptr i8, ptr %56, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !257
  tail call void @arm_heavy_mb() #7
  %57 = tail call i32 @llvm.bswap.i32(i32 %or29.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1, i32 %57) #7, !srcloc !258
  %58 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %num, align 4
  %conv30.i = zext i16 %59 to i32
  %shl31.i = shl nuw nsw i32 %conv30.i, 9
  %or32.i = or i32 %shl31.i, 2097152
  %60 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ring, align 4
  %csr_ring34.i = getelementptr inbounds %struct.xgene_dma, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %csr_ring34.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %csr_ring34.i, align 4
  %add.ptr35.i = getelementptr i8, ptr %63, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !257
  tail call void @arm_heavy_mb() #7
  %64 = tail call i32 @llvm.bswap.i32(i32 %or32.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i, i32 %64) #7, !srcloc !258
  %65 = ptrtoint ptr %owner to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %owner, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %66)
  %cmp38.not.i = icmp eq i16 %66, 15
  br i1 %cmp38.not.i, label %for.cond.preheader.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end.i
  %67 = ptrtoint ptr %slots.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %slots.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %cmp4497.not.i = icmp eq i16 %68, 0
  br i1 %cmp4497.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.098.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %69 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %16, align 4
  %arrayidx46.i = getelementptr %struct.xgene_dma_desc_hw, ptr %70, i32 %i.098.i
  %71 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 -1, ptr %arrayidx46.i, align 8
  %inc.i = add nuw nsw i32 %i.098.i, 1
  %72 = ptrtoint ptr %slots.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %slots.i, align 2
  %conv43.i = zext i16 %73 to i32
  %cmp44.i = icmp ult i32 %inc.i, %conv43.i
  br i1 %cmp44.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %74 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ring, align 4
  %csr_ring48.i = getelementptr inbounds %struct.xgene_dma, ptr %75, i32 0, i32 5
  %76 = ptrtoint ptr %csr_ring48.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %csr_ring48.i, align 4
  %add.ptr49.i = getelementptr i8, ptr %77, i32 380
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49.i) #7, !srcloc !255
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !256
  %80 = ptrtoint ptr %buf_num to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %buf_num, align 4
  %conv50.i = zext i8 %81 to i32
  %shl51.i = lshr i32 -2147483648, %conv50.i
  %or56.i = or i32 %shl51.i, %79
  %82 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ring, align 4
  %csr_ring58.i = getelementptr inbounds %struct.xgene_dma, ptr %83, i32 0, i32 5
  %84 = ptrtoint ptr %csr_ring58.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %csr_ring58.i, align 4
  %add.ptr59.i = getelementptr i8, ptr %85, i32 380
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !257
  tail call void @arm_heavy_mb() #7
  %86 = tail call i32 @llvm.bswap.i32(i32 %or56.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59.i, i32 %86) #7, !srcloc !258
  br label %cleanup

cleanup:                                          ; preds = %for.end.i, %if.end.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %for.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgene_dma_delete_ring_one(ptr nocapture noundef %ring) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %owner.i = getelementptr inbounds %struct.xgene_dma_ring, ptr %ring, i32 0, i32 5
  %0 = ptrtoint ptr %owner.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %owner.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %1)
  %cmp.i = icmp eq i16 %1, 15
  br i1 %cmp.i, label %if.then.i, label %entry.xgene_dma_clear_ring.exit_crit_edge

entry.xgene_dma_clear_ring.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %xgene_dma_clear_ring.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring, align 4
  %csr_ring.i = getelementptr inbounds %struct.xgene_dma, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %csr_ring.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr_ring.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 380
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !255
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !256
  %buf_num.i = getelementptr inbounds %struct.xgene_dma_ring, ptr %ring, i32 0, i32 1
  %8 = ptrtoint ptr %buf_num.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %buf_num.i, align 4
  %conv2.i = zext i8 %9 to i32
  %shl.i = lshr i32 -2147483648, %conv2.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %7, %neg.i
  %10 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ring, align 4
  %csr_ring4.i = getelementptr inbounds %struct.xgene_dma, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %csr_ring4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %csr_ring4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %13, i32 380
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !257
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %14) #7, !srcloc !258
  br label %xgene_dma_clear_ring.exit

xgene_dma_clear_ring.exit:                        ; preds = %if.then.i, %entry.xgene_dma_clear_ring.exit_crit_edge
  %id.i = getelementptr inbounds %struct.xgene_dma_ring, ptr %ring, i32 0, i32 2
  %15 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %id.i, align 2
  %conv6.i = zext i16 %16 to i32
  %or.i = or i32 %conv6.i, -2147483648
  %17 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ring, align 4
  %csr_ring8.i = getelementptr inbounds %struct.xgene_dma, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %csr_ring8.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %csr_ring8.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %20, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !257
  tail call void @arm_heavy_mb() #7
  %21 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %21) #7, !srcloc !258
  %22 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ring, align 4
  %csr_ring11.i = getelementptr inbounds %struct.xgene_dma, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %csr_ring11.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %csr_ring11.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %25, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !257
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 0) #7, !srcloc !258
  %state.i.i = getelementptr inbounds %struct.xgene_dma_ring, ptr %ring, i32 0, i32 12
  %26 = call ptr @memset(ptr %state.i.i, i32 0, i32 20)
  tail call fastcc void @xgene_dma_wr_ring_state(ptr noundef %ring) #7
  %27 = getelementptr inbounds %struct.xgene_dma_ring, ptr %ring, i32 0, i32 14
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %tobool.not = icmp eq ptr %29, null
  br i1 %tobool.not, label %xgene_dma_clear_ring.exit.if.end_crit_edge, label %if.then

xgene_dma_clear_ring.exit.if.end_crit_edge:       ; preds = %xgene_dma_clear_ring.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %xgene_dma_clear_ring.exit
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ring, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %size = getelementptr inbounds %struct.xgene_dma_ring, ptr %ring, i32 0, i32 8
  %34 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size, align 4
  %desc_paddr = getelementptr inbounds %struct.xgene_dma_ring, ptr %ring, i32 0, i32 11
  %36 = ptrtoint ptr %desc_paddr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %desc_paddr, align 4
  tail call void @dma_free_attrs(ptr noundef %33, i32 noundef %35, ptr noundef nonnull %29, i32 noundef %37, i32 noundef 0) #7
  %38 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %27, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %xgene_dma_clear_ring.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgene_dma_wr_ring_state(ptr nocapture noundef readonly %ring) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num = getelementptr inbounds %struct.xgene_dma_ring, ptr %ring, i32 0, i32 3
  %0 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num, align 4
  %conv = zext i16 %1 to i32
  %2 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring, align 4
  %csr_ring = getelementptr inbounds %struct.xgene_dma, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %csr_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr_ring, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !257
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %conv) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #7, !srcloc !258
  %arrayidx = getelementptr %struct.xgene_dma_ring, ptr %ring, i32 0, i32 12, i32 0
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ring, align 4
  %csr_ring3 = getelementptr inbounds %struct.xgene_dma, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %csr_ring3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %csr_ring3, align 4
  %add.ptr4 = getelementptr i8, ptr %12, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !257
  tail call void @arm_heavy_mb() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %13) #7, !srcloc !258
  %arrayidx.1 = getelementptr %struct.xgene_dma_ring, ptr %ring, i32 0, i32 12, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.1, align 4
  %16 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ring, align 4
  %csr_ring3.1 = getelementptr inbounds %struct.xgene_dma, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %csr_ring3.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %csr_ring3.1, align 4
  %add.ptr5.1 = getelementptr i8, ptr %19, i32 116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !257
  tail call void @arm_heavy_mb() #7
  %20 = tail call i32 @llvm.bswap.i32(i32 %15) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.1, i32 %20) #7, !srcloc !258
  %arrayidx.2 = getelementptr %struct.xgene_dma_ring, ptr %ring, i32 0, i32 12, i32 2
  %21 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.2, align 4
  %23 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ring, align 4
  %csr_ring3.2 = getelementptr inbounds %struct.xgene_dma, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %csr_ring3.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %csr_ring3.2, align 4
  %add.ptr5.2 = getelementptr i8, ptr %26, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !257
  tail call void @arm_heavy_mb() #7
  %27 = tail call i32 @llvm.bswap.i32(i32 %22) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.2, i32 %27) #7, !srcloc !258
  %arrayidx.3 = getelementptr %struct.xgene_dma_ring, ptr %ring, i32 0, i32 12, i32 3
  %28 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.3, align 4
  %30 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ring, align 4
  %csr_ring3.3 = getelementptr inbounds %struct.xgene_dma, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %csr_ring3.3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %csr_ring3.3, align 4
  %add.ptr5.3 = getelementptr i8, ptr %33, i32 124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !257
  tail call void @arm_heavy_mb() #7
  %34 = tail call i32 @llvm.bswap.i32(i32 %29) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.3, i32 %34) #7, !srcloc !258
  %arrayidx.4 = getelementptr %struct.xgene_dma_ring, ptr %ring, i32 0, i32 12, i32 4
  %35 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.4, align 4
  %37 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ring, align 4
  %csr_ring3.4 = getelementptr inbounds %struct.xgene_dma, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %csr_ring3.4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %csr_ring3.4, align 4
  %add.ptr5.4 = getelementptr i8, ptr %40, i32 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !257
  tail call void @arm_heavy_mb() #7
  %41 = tail call i32 @llvm.bswap.i32(i32 %36) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.4, i32 %41) #7, !srcloc !258
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_dma_err_isr(i32 noundef %irq, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %int_mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_mask) #7
  %csr_dma = getelementptr inbounds %struct.xgene_dma, ptr %id, i32 0, i32 4
  %0 = ptrtoint ptr %csr_dma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr_dma, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 112
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !255
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !256
  %4 = ptrtoint ptr %csr_dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr_dma, align 4
  %add.ptr2 = getelementptr i8, ptr %5, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !257
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %2) #7, !srcloc !258
  %shr = lshr i32 %3, 20
  %6 = ptrtoint ptr %int_mask to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shr, ptr %int_mask, align 4
  %call3 = call i32 @_find_next_bit_be(ptr noundef nonnull %int_mask, i32 noundef 12, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call3)
  %cmp11 = icmp ult i32 %call3, 12
  br i1 %cmp11, label %entry.do.end_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.do.end_crit_edge:                           ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %entry.do.end_crit_edge
  %i.012 = phi i32 [ %call4, %do.end.do.end_crit_edge ], [ %call3, %entry.do.end_crit_edge ]
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %id, align 4
  %arrayidx = getelementptr [12 x ptr], ptr @xgene_dma_err, i32 0, i32 %i.012
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.56, i32 noundef %3, ptr noundef %10) #10
  %add = add nuw nsw i32 %i.012, 1
  %call4 = call i32 @_find_next_bit_be(ptr noundef nonnull %int_mask, i32 noundef 12, i32 noundef %add) #7
  %cmp = icmp ult i32 %call4, 12
  br i1 %cmp, label %do.end.do.end_crit_edge, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.end:                                          ; preds = %do.end.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_mask) #7
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_dma_chan_ring_isr(i32 noundef %irq, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %id, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !260

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/xgene-dma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 993, 0\0A.popsection", ""() #7, !srcloc !261
  unreachable

do.end9:                                          ; preds = %entry
  %rx_irq = getelementptr inbounds %struct.xgene_dma_chan, ptr %id, i32 0, i32 4
  %0 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_irq, align 4
  tail call void @disable_irq_nosync(i32 noundef %1) #7
  %state.i = getelementptr inbounds %struct.xgene_dma_chan, ptr %id, i32 0, i32 13, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end9.tasklet_schedule.exit_crit_edge

do.end9.tasklet_schedule.exit_crit_edge:          ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  %tasklet = getelementptr inbounds %struct.xgene_dma_chan, ptr %id, i32 0, i32 13
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #7
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %do.end9.tasklet_schedule.exit_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_dma_tasklet_cb(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -172
  tail call fastcc void @xgene_dma_cleanup_descriptors(ptr noundef %add.ptr)
  %rx_irq = getelementptr i8, ptr %t, i32 -96
  %0 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_irq, align 4
  tail call void @enable_irq(i32 noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgene_dma_cleanup_descriptors(ptr noundef %chan) unnamed_addr #2 align 64 {
entry:
  %dummy_result.i.i.i = alloca %struct.dmaengine_result, align 8
  %ld_completed = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ld_completed) #7
  %0 = getelementptr inbounds %struct.list_head, ptr %ld_completed, i32 0, i32 1
  %1 = ptrtoint ptr %ld_completed to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %ld_completed, ptr %ld_completed, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ld_completed, ptr %0, align 4
  %lock = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lock) #7
  %ld_completed.i = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 11
  %3 = ptrtoint ptr %ld_completed.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ld_completed.i, align 4
  %cmp.not21.i = icmp eq ptr %4, %ld_completed.i
  br i1 %cmp.not21.i, label %entry.xgene_dma_clean_completed_descriptor.exit_crit_edge, label %for.body.lr.ph.i

entry.xgene_dma_clean_completed_descriptor.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %xgene_dma_clean_completed_descriptor.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %dev.i.i = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 2
  %name.i.i = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 5
  %desc_pool.i.i = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn.in22.i = phi ptr [ %4, %for.body.lr.ph.i ], [ %.pn26.i, %for.inc.i.for.body.i_crit_edge ]
  %desc.024.i = getelementptr i8, ptr %.pn.in22.i, i32 -68
  %5 = ptrtoint ptr %.pn.in22.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn26.i = load ptr, ptr %.pn.in22.i, align 4
  %flags.i.i = getelementptr i8, ptr %.pn.in22.i, i32 20
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in22.i) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.list_del.exit.i.i_crit_edge

if.then.i.list_del.exit.i.i_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i = getelementptr i8, ptr %.pn.in22.i, i32 4
  %8 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i.i.i, align 4
  %10 = ptrtoint ptr %.pn.in22.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %.pn.in22.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.then.i.list_del.exit.i.i_crit_edge
  %14 = ptrtoint ptr %.pn.in22.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in22.i, align 4
  %prev.i.i.i = getelementptr i8, ptr %.pn.in22.i, i32 4
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_dma_clean_descriptor.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xgene_dma_cleanup_descriptors, %xgene_dma_clean_descriptor.exit.i)) #7
          to label %if.then.i.i [label %xgene_dma_clean_descriptor.exit.i], !srcloc !259

if.then.i.i:                                      ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgene_dma_clean_descriptor.__UNIQUE_ID_ddebug236, ptr noundef %17, ptr noundef nonnull @.str.91, ptr noundef %name.i.i, ptr noundef %desc.024.i) #7
  br label %xgene_dma_clean_descriptor.exit.i

xgene_dma_clean_descriptor.exit.i:                ; preds = %if.then.i.i, %list_del.exit.i.i
  %18 = ptrtoint ptr %desc_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %desc_pool.i.i, align 4
  %phys.i.i = getelementptr i8, ptr %.pn.in22.i, i32 24
  %20 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %phys.i.i, align 4
  call void @dma_pool_free(ptr noundef %19, ptr noundef %desc.024.i, i32 noundef %21) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %xgene_dma_clean_descriptor.exit.i, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %.pn26.i, %ld_completed.i
  br i1 %cmp.not.i, label %for.inc.i.xgene_dma_clean_completed_descriptor.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.xgene_dma_clean_completed_descriptor.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xgene_dma_clean_completed_descriptor.exit

xgene_dma_clean_completed_descriptor.exit:        ; preds = %for.inc.i.xgene_dma_clean_completed_descriptor.exit_crit_edge, %entry.xgene_dma_clean_completed_descriptor.exit_crit_edge
  %ld_running = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 10
  %22 = ptrtoint ptr %ld_running to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ld_running, align 4
  %24 = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 15, i32 14
  %cmp.not105 = icmp eq ptr %23, %ld_running
  br i1 %cmp.not105, label %xgene_dma_clean_completed_descriptor.exit.for.end_crit_edge, label %for.body.lr.ph

xgene_dma_clean_completed_descriptor.exit.for.end_crit_edge: ; preds = %xgene_dma_clean_completed_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %xgene_dma_clean_completed_descriptor.exit
  %head = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 15, i32 4
  %slots = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 15, i32 6
  %dev = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 2
  %name = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 5
  %cmd = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 15, i32 9
  %pending = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %list_move_tail.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in106 = phi ptr [ %23, %for.body.lr.ph ], [ %.pn109, %list_move_tail.exit.for.body_crit_edge ]
  %desc_sw.0108 = getelementptr i8, ptr %.pn.in106, i32 -68
  %25 = ptrtoint ptr %.pn.in106 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn109 = load ptr, ptr %.pn.in106, align 4
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %24, align 4
  %28 = ptrtoint ptr %head to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %head, align 2
  %idxprom = zext i16 %29 to i32
  %arrayidx = getelementptr %struct.xgene_dma_desc_hw, ptr %27, i32 %idxprom
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %31)
  %cmp7 = icmp eq i64 %31, -1
  br i1 %cmp7, label %for.body.for.end_crit_edge, label %if.end, !prof !260

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end:                                           ; preds = %for.body
  %inc = add i16 %29, 1
  %32 = ptrtoint ptr %slots to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %slots, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc, i16 %33)
  %cmp12 = icmp eq i16 %inc, %33
  %spec.store.select = select i1 %cmp12, i16 0, i16 %inc
  %34 = ptrtoint ptr %head to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %spec.store.select, ptr %head, align 2
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx, align 8
  %37 = call i64 @llvm.bswap.i64(i64 %36)
  %38 = lshr i64 %37, 42
  %shl = and i64 %38, 48
  %shr19 = lshr i64 %37, 60
  %and20 = and i64 %shr19, 7
  %or = or i64 %shl, %and20
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or)
  %tobool22.not = icmp eq i64 %or, 0
  br i1 %tobool22.not, label %if.end.if.end30_crit_edge, label %do.end

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

do.end:                                           ; preds = %if.end
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 4
  %41 = trunc i64 %or to i32
  %arrayidx25 = getelementptr [20 x ptr], ptr @xgene_dma_desc_err, i32 0, i32 %41
  %42 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx25, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.85, ptr noundef %name, ptr noundef %43) #10
  call void @print_hex_dump(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.87, i32 noundef 1, i32 noundef 16, i32 noundef 8, ptr noundef %desc_sw.0108, i32 noundef 32, i1 noundef zeroext false) #7
  %flags = getelementptr i8, ptr %.pn.in106, i32 -4
  %44 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags, align 8
  %and26 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %do.end.if.end29_crit_edge, label %if.then28

do.end.if.end29_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then28:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %desc2 = getelementptr i8, ptr %.pn.in106, i32 -36
  call void @print_hex_dump(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.88, i32 noundef 1, i32 noundef 16, i32 noundef 8, ptr noundef %desc2, i32 noundef 32, i1 noundef zeroext false) #7
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %do.end.if.end29_crit_edge
  call void @print_hex_dump(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.89, i32 noundef 1, i32 noundef 16, i32 noundef 8, ptr noundef %arrayidx, i32 noundef 32, i1 noundef zeroext false) #7
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.end.if.end30_crit_edge
  %46 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cmd, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !257
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 -1) #7, !srcloc !258
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 -1, ptr %arrayidx, align 8
  %flags32 = getelementptr i8, ptr %.pn.in106, i32 -4
  %49 = ptrtoint ptr %flags32 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags32, align 8
  %and33 = and i32 %50, 1
  %51 = xor i32 %and33, -1
  %52 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pending, align 4
  %sub = add i32 %53, %51
  store i32 %sub, ptr %pending, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in106) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end30.__list_del_entry.exit.i_crit_edge

if.end30.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in106, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i.i, align 4
  %56 = ptrtoint ptr %.pn.in106 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %.pn.in106, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev1.i.i.i, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %57, ptr %55, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end30.__list_del_entry.exit.i_crit_edge
  %60 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %0, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in106, ptr noundef %61, ptr noundef nonnull %ld_completed) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %.pn.in106, ptr %0, align 4
  %63 = ptrtoint ptr %.pn.in106 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %ld_completed, ptr %.pn.in106, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in106, i32 0, i32 1
  %64 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %prev3.i.i.i, align 4
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %.pn.in106, ptr %61, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %cmp.not = icmp eq ptr %.pn109, %ld_running
  br i1 %cmp.not, label %list_move_tail.exit.for.end_crit_edge, label %list_move_tail.exit.for.body_crit_edge

list_move_tail.exit.for.body_crit_edge:           ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

list_move_tail.exit.for.end_crit_edge:            ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %list_move_tail.exit.for.end_crit_edge, %for.body.for.end_crit_edge, %xgene_dma_clean_completed_descriptor.exit.for.end_crit_edge
  call fastcc void @xgene_chan_xfer_ld_pending(ptr noundef %chan)
  call void @_raw_spin_unlock(ptr noundef %lock) #7
  %66 = ptrtoint ptr %ld_completed to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ld_completed, align 4
  %cmp53.not110 = icmp eq ptr %67, %ld_completed
  br i1 %cmp53.not110, label %for.end.for.end64_crit_edge, label %for.end.for.body57_crit_edge

for.end.for.body57_crit_edge:                     ; preds = %for.end
  br label %for.body57

for.end.for.end64_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end64

for.body57:                                       ; preds = %xgene_dma_run_tx_complete_actions.exit.for.body57_crit_edge, %for.end.for.body57_crit_edge
  %.pn99.in111 = phi ptr [ %.pn99, %xgene_dma_run_tx_complete_actions.exit.for.body57_crit_edge ], [ %67, %for.end.for.body57_crit_edge ]
  %desc_sw.1 = getelementptr i8, ptr %.pn99.in111, i32 -68
  %68 = ptrtoint ptr %.pn99.in111 to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pn99 = load ptr, ptr %.pn99.in111, align 4
  %tx1.i = getelementptr i8, ptr %.pn99.in111, i32 16
  %69 = ptrtoint ptr %tx1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %tx1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp.i = icmp eq i32 %70, 0
  br i1 %cmp.i, label %for.body57.xgene_dma_run_tx_complete_actions.exit_crit_edge, label %if.end.i

for.body57.xgene_dma_run_tx_complete_actions.exit_crit_edge: ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #9
  br label %xgene_dma_run_tx_complete_actions.exit

if.end.i:                                         ; preds = %for.body57
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %70)
  %cmp.i.i = icmp slt i32 %70, 1
  br i1 %cmp.i.i, label %do.body2.i.i, label %dma_cookie_complete.exit.i, !prof !260

do.body2.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #7, !srcloc !262
  unreachable

dma_cookie_complete.exit.i:                       ; preds = %if.end.i
  %chan.i.i = getelementptr i8, ptr %.pn99.in111, i32 28
  %71 = ptrtoint ptr %chan.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %chan.i.i, align 4
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %70, ptr %completed_cookie.i.i, align 4
  %74 = ptrtoint ptr %tx1.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %tx1.i, align 4
  %unmap.i.i = getelementptr i8, ptr %.pn99.in111, i32 52
  %75 = ptrtoint ptr %unmap.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %unmap.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %76, null
  br i1 %tobool.not.i.i, label %dma_cookie_complete.exit.i.dma_descriptor_unmap.exit.i_crit_edge, label %if.end.i.i102

dma_cookie_complete.exit.i.dma_descriptor_unmap.exit.i_crit_edge: ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_descriptor_unmap.exit.i

if.end.i.i102:                                    ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @dmaengine_unmap_put(ptr noundef nonnull %76) #7
  %77 = ptrtoint ptr %unmap.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %unmap.i.i, align 4
  br label %dma_descriptor_unmap.exit.i

dma_descriptor_unmap.exit.i:                      ; preds = %if.end.i.i102, %dma_cookie_complete.exit.i.dma_descriptor_unmap.exit.i_crit_edge
  %callback.i.i.i = getelementptr i8, ptr %.pn99.in111, i32 40
  %78 = ptrtoint ptr %callback.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %callback.i.i.i, align 4
  %callback_result.i.i.i = getelementptr i8, ptr %.pn99.in111, i32 44
  %80 = ptrtoint ptr %callback_result.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %callback_result.i.i.i, align 4
  %callback_param.i.i.i = getelementptr i8, ptr %.pn99.in111, i32 48
  %82 = ptrtoint ptr %callback_param.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %callback_param.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i.i.i) #7
  %84 = ptrtoint ptr %dummy_result.i.i.i to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 0, ptr %dummy_result.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %81, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %dma_descriptor_unmap.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void %81(ptr noundef %83, ptr noundef nonnull %dummy_result.i.i.i) #7
  br label %dmaengine_desc_get_callback_invoke.exit.i

if.else.i.i.i:                                    ; preds = %dma_descriptor_unmap.exit.i
  %tobool4.not.i.i.i = icmp eq ptr %79, null
  br i1 %tobool4.not.i.i.i, label %if.else.i.i.i.dmaengine_desc_get_callback_invoke.exit.i_crit_edge, label %if.then5.i.i.i

if.else.i.i.i.dmaengine_desc_get_callback_invoke.exit.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_desc_get_callback_invoke.exit.i

if.then5.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void %79(ptr noundef %83) #7
  br label %dmaengine_desc_get_callback_invoke.exit.i

dmaengine_desc_get_callback_invoke.exit.i:        ; preds = %if.then5.i.i.i, %if.else.i.i.i.dmaengine_desc_get_callback_invoke.exit.i_crit_edge, %if.then.i.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy_result.i.i.i) #7
  call void @dma_run_dependencies(ptr noundef %tx1.i) #7
  br label %xgene_dma_run_tx_complete_actions.exit

xgene_dma_run_tx_complete_actions.exit:           ; preds = %dmaengine_desc_get_callback_invoke.exit.i, %for.body57.xgene_dma_run_tx_complete_actions.exit_crit_edge
  call fastcc void @xgene_dma_clean_running_descriptor(ptr noundef %chan, ptr noundef %desc_sw.1)
  %cmp53.not = icmp eq ptr %.pn99, %ld_completed
  br i1 %cmp53.not, label %xgene_dma_run_tx_complete_actions.exit.for.end64_crit_edge, label %xgene_dma_run_tx_complete_actions.exit.for.body57_crit_edge

xgene_dma_run_tx_complete_actions.exit.for.body57_crit_edge: ; preds = %xgene_dma_run_tx_complete_actions.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body57

xgene_dma_run_tx_complete_actions.exit.for.end64_crit_edge: ; preds = %xgene_dma_run_tx_complete_actions.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end64

for.end64:                                        ; preds = %xgene_dma_run_tx_complete_actions.exit.for.end64_crit_edge, %for.end.for.end64_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ld_completed) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgene_chan_xfer_ld_pending(ptr noundef %chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ld_pending = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %ld_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ld_pending, align 4
  %cmp.i.not = icmp eq ptr %1, %ld_pending
  br i1 %cmp.i.not, label %do.body, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %pending = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 7
  %max_outstanding = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 8
  %2 = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 14, i32 14
  %head.i = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 14, i32 4
  %slots.i = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 14, i32 6
  %cmd.i = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 14, i32 9
  %ld_running = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 10
  %prev.i2.i = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 10, i32 1
  br label %for.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_chan_xfer_ld_pending.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xgene_chan_xfer_ld_pending, %cleanup)) #7
          to label %if.then6 [label %cleanup], !srcloc !259

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 2
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgene_chan_xfer_ld_pending.__UNIQUE_ID_ddebug239, ptr noundef %4, ptr noundef nonnull @.str.104, ptr noundef %name) #7
  br label %cleanup

for.body:                                         ; preds = %list_move_tail.exit.for.body_crit_edge, %for.cond.preheader
  %.pn.in46 = phi ptr [ %1, %for.cond.preheader ], [ %.pn50, %list_move_tail.exit.for.body_crit_edge ]
  %5 = ptrtoint ptr %.pn.in46 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn50 = load ptr, ptr %.pn.in46, align 4
  %6 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pending, align 4
  %8 = ptrtoint ptr %max_outstanding to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_outstanding, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp18.not = icmp slt i32 %7, %9
  br i1 %cmp18.not, label %if.end20, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %for.body
  %desc_sw.049 = getelementptr i8, ptr %.pn.in46, i32 -68
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %2, align 4
  %12 = ptrtoint ptr %head.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %head.i, align 2
  %idxprom.i = zext i16 %13 to i32
  %arrayidx.i = getelementptr %struct.xgene_dma_desc_hw, ptr %11, i32 %idxprom.i
  %inc.i = add i16 %13, 1
  %14 = ptrtoint ptr %slots.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %slots.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i, i16 %15)
  %cmp.i41 = icmp eq i16 %inc.i, %15
  %spec.store.select.i = select i1 %cmp.i41, i16 0, i16 %inc.i
  %16 = ptrtoint ptr %head.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %spec.store.select.i, ptr %head.i, align 2
  %17 = call ptr @memcpy(ptr %arrayidx.i, ptr %desc_sw.049, i32 32)
  %flags.i = getelementptr i8, ptr %.pn.in46, i32 -4
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end20.xgene_chan_xfer_request.exit_crit_edge, label %if.then5.i

if.end20.xgene_chan_xfer_request.exit_crit_edge:  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %xgene_chan_xfer_request.exit

if.then5.i:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %2, align 4
  %22 = ptrtoint ptr %head.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %head.i, align 2
  %idxprom7.i = zext i16 %23 to i32
  %arrayidx8.i = getelementptr %struct.xgene_dma_desc_hw, ptr %21, i32 %idxprom7.i
  %inc10.i = add i16 %23, 1
  %24 = ptrtoint ptr %slots.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %slots.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc10.i, i16 %25)
  %cmp14.i = icmp eq i16 %inc10.i, %25
  %spec.store.select43.i = select i1 %cmp14.i, i16 0, i16 %inc10.i
  %26 = ptrtoint ptr %head.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %spec.store.select43.i, ptr %head.i, align 2
  %desc2.i = getelementptr i8, ptr %.pn.in46, i32 -36
  %27 = call ptr @memcpy(ptr %arrayidx8.i, ptr %desc2.i, i32 32)
  br label %xgene_chan_xfer_request.exit

xgene_chan_xfer_request.exit:                     ; preds = %if.then5.i, %if.end20.xgene_chan_xfer_request.exit_crit_edge
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.i, align 8
  %and21.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  %cond.i = select i1 %tobool22.not.i, i32 1, i32 2
  %30 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pending, align 4
  %add.i = add i32 %cond.i, %31
  store i32 %add.i, ptr %pending, align 4
  %32 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags.i, align 8
  %and24.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  %cond26.i = select i1 %tobool25.not.i, i32 16777216, i32 33554432
  %34 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cmd.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !257
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %cond26.i) #7, !srcloc !258
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in46) #7
  br i1 %call.i.i, label %if.end.i.i, label %xgene_chan_xfer_request.exit.__list_del_entry.exit.i_crit_edge

xgene_chan_xfer_request.exit.__list_del_entry.exit.i_crit_edge: ; preds = %xgene_chan_xfer_request.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %xgene_chan_xfer_request.exit
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in46, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i, align 4
  %38 = ptrtoint ptr %.pn.in46 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %.pn.in46, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev1.i.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %37, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %xgene_chan_xfer_request.exit.__list_del_entry.exit.i_crit_edge
  %42 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn.in46, ptr noundef %43, ptr noundef %ld_running) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %.pn.in46, ptr %prev.i2.i, align 4
  %45 = ptrtoint ptr %.pn.in46 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %ld_running, ptr %.pn.in46, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in46, i32 0, i32 1
  %46 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev3.i.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %.pn.in46, ptr %43, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %cmp.not = icmp eq ptr %.pn50, %ld_pending
  br i1 %cmp.not, label %list_move_tail.exit.cleanup_crit_edge, label %list_move_tail.exit.for.body_crit_edge

list_move_tail.exit.for.body_crit_edge:           ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

list_move_tail.exit.cleanup_crit_edge:            ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %list_move_tail.exit.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.then6, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgene_dma_clean_running_descriptor(ptr noundef %chan, ptr noundef %desc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %node = getelementptr inbounds %struct.xgene_dma_desc_sw, ptr %desc, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.xgene_dma_desc_sw, ptr %desc, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.xgene_dma_desc_sw, ptr %desc, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %flags.i = getelementptr inbounds %struct.xgene_dma_desc_sw, ptr %desc, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %if.then, label %do.body

if.then:                                          ; preds = %list_del.exit
  %ld_completed = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 11
  %prev.i17 = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 11, i32 1
  %10 = ptrtoint ptr %prev.i17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i17, align 4
  %call.i.i18 = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %11, ptr noundef %ld_completed) #7
  br i1 %call.i.i18, label %if.end.i.i19, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.i.i19:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %prev.i17 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %node, ptr %prev.i17, align 4
  %13 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %ld_completed, ptr %node, align 4
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %node, ptr %11, align 4
  br label %return

do.body:                                          ; preds = %list_del.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_dma_clean_running_descriptor.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xgene_dma_clean_running_descriptor, %do.end)) #7
          to label %if.then6 [label %do.end], !srcloc !259

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 2
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgene_dma_clean_running_descriptor.__UNIQUE_ID_ddebug238, ptr noundef %17, ptr noundef nonnull @.str.91, ptr noundef %name, ptr noundef %desc) #7
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %desc_pool = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 12
  %18 = ptrtoint ptr %desc_pool to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %desc_pool, align 4
  %phys = getelementptr inbounds %struct.xgene_dma_desc_sw, ptr %desc, i32 0, i32 5, i32 2
  %20 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %phys, align 4
  tail call void @dma_pool_free(ptr noundef %19, ptr noundef %desc, i32 noundef %21) #7
  br label %return

return:                                           ; preds = %do.end, %if.end.i.i19, %if.then.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_run_dependencies(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmaengine_unmap_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_dma_alloc_chan_resources(ptr noundef %dchan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %desc_pool = getelementptr inbounds %struct.xgene_dma_chan, ptr %dchan, i32 0, i32 12
  %0 = ptrtoint ptr %desc_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc_pool, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.xgene_dma_chan, ptr %dchan, i32 0, i32 5
  %dev = getelementptr inbounds %struct.xgene_dma_chan, ptr %dchan, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call = tail call ptr @dma_pool_create(ptr noundef %name, ptr noundef %3, i32 noundef 184, i32 noundef 0, i32 noundef 0) #7
  %4 = ptrtoint ptr %desc_pool to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %desc_pool, align 4
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %do.end, label %do.body9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.106, ptr noundef %name) #10
  br label %cleanup

do.body9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_dma_alloc_chan_resources.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xgene_dma_alloc_chan_resources, %cleanup)) #7
          to label %if.then16 [label %cleanup], !srcloc !259

if.then16:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgene_dma_alloc_chan_resources.__UNIQUE_ID_ddebug240, ptr noundef %8, ptr noundef nonnull @.str.108, ptr noundef %name) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %do.body9, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ 1, %entry.cleanup_crit_edge ], [ 1, %if.then16 ], [ 1, %do.body9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_dma_free_chan_resources(ptr noundef %dchan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_dma_free_chan_resources.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xgene_dma_free_chan_resources, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !259

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.xgene_dma_chan, ptr %dchan, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.xgene_dma_chan, ptr %dchan, i32 0, i32 5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgene_dma_free_chan_resources.__UNIQUE_ID_ddebug241, ptr noundef %1, ptr noundef nonnull @.str.110, ptr noundef %name) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %desc_pool = getelementptr inbounds %struct.xgene_dma_chan, ptr %dchan, i32 0, i32 12
  %2 = ptrtoint ptr %desc_pool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc_pool, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %do.end
  tail call fastcc void @xgene_dma_cleanup_descriptors(ptr noundef %dchan)
  %lock = getelementptr inbounds %struct.xgene_dma_chan, ptr %dchan, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #7
  %ld_pending = getelementptr inbounds %struct.xgene_dma_chan, ptr %dchan, i32 0, i32 9
  %4 = ptrtoint ptr %ld_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ld_pending, align 4
  %cmp.not16.i = icmp eq ptr %5, %ld_pending
  br i1 %cmp.not16.i, label %if.end7.xgene_dma_free_desc_list.exit_crit_edge, label %for.body.lr.ph.i

if.end7.xgene_dma_free_desc_list.exit_crit_edge:  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %xgene_dma_free_desc_list.exit

for.body.lr.ph.i:                                 ; preds = %if.end7
  %dev.i.i = getelementptr inbounds %struct.xgene_dma_chan, ptr %dchan, i32 0, i32 2
  %name.i.i = getelementptr inbounds %struct.xgene_dma_chan, ptr %dchan, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %xgene_dma_clean_descriptor.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn.in17.i = phi ptr [ %5, %for.body.lr.ph.i ], [ %.pn.i, %xgene_dma_clean_descriptor.exit.i.for.body.i_crit_edge ]
  %desc.0.i = getelementptr i8, ptr %.pn.in17.i, i32 -68
  %6 = ptrtoint ptr %.pn.in17.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load ptr, ptr %.pn.in17.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in17.i) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body.i.list_del.exit.i.i_crit_edge

for.body.i.list_del.exit.i.i_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i = getelementptr i8, ptr %.pn.in17.i, i32 4
  %7 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i.i, align 4
  %9 = ptrtoint ptr %.pn.in17.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %.pn.in17.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %for.body.i.list_del.exit.i.i_crit_edge
  %13 = ptrtoint ptr %.pn.in17.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in17.i, align 4
  %prev.i.i.i = getelementptr i8, ptr %.pn.in17.i, i32 4
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_dma_clean_descriptor.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xgene_dma_free_chan_resources, %xgene_dma_clean_descriptor.exit.i)) #7
          to label %if.then.i.i [label %xgene_dma_clean_descriptor.exit.i], !srcloc !259

if.then.i.i:                                      ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgene_dma_clean_descriptor.__UNIQUE_ID_ddebug236, ptr noundef %16, ptr noundef nonnull @.str.91, ptr noundef %name.i.i, ptr noundef %desc.0.i) #7
  br label %xgene_dma_clean_descriptor.exit.i

xgene_dma_clean_descriptor.exit.i:                ; preds = %if.then.i.i, %list_del.exit.i.i
  %17 = ptrtoint ptr %desc_pool to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %desc_pool, align 4
  %phys.i.i = getelementptr i8, ptr %.pn.in17.i, i32 24
  %19 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %phys.i.i, align 4
  tail call void @dma_pool_free(ptr noundef %18, ptr noundef %desc.0.i, i32 noundef %20) #7
  %cmp.not.i = icmp eq ptr %.pn.i, %ld_pending
  br i1 %cmp.not.i, label %xgene_dma_clean_descriptor.exit.i.xgene_dma_free_desc_list.exit_crit_edge, label %xgene_dma_clean_descriptor.exit.i.for.body.i_crit_edge

xgene_dma_clean_descriptor.exit.i.for.body.i_crit_edge: ; preds = %xgene_dma_clean_descriptor.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

xgene_dma_clean_descriptor.exit.i.xgene_dma_free_desc_list.exit_crit_edge: ; preds = %xgene_dma_clean_descriptor.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xgene_dma_free_desc_list.exit

xgene_dma_free_desc_list.exit:                    ; preds = %xgene_dma_clean_descriptor.exit.i.xgene_dma_free_desc_list.exit_crit_edge, %if.end7.xgene_dma_free_desc_list.exit_crit_edge
  %ld_running = getelementptr inbounds %struct.xgene_dma_chan, ptr %dchan, i32 0, i32 10
  %21 = ptrtoint ptr %ld_running to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ld_running, align 4
  %cmp.not16.i24 = icmp eq ptr %22, %ld_running
  br i1 %cmp.not16.i24, label %xgene_dma_free_desc_list.exit.xgene_dma_free_desc_list.exit43_crit_edge, label %for.body.lr.ph.i28

xgene_dma_free_desc_list.exit.xgene_dma_free_desc_list.exit43_crit_edge: ; preds = %xgene_dma_free_desc_list.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %xgene_dma_free_desc_list.exit43

for.body.lr.ph.i28:                               ; preds = %xgene_dma_free_desc_list.exit
  %dev.i.i25 = getelementptr inbounds %struct.xgene_dma_chan, ptr %dchan, i32 0, i32 2
  %name.i.i26 = getelementptr inbounds %struct.xgene_dma_chan, ptr %dchan, i32 0, i32 5
  br label %for.body.i33

for.body.i33:                                     ; preds = %xgene_dma_clean_descriptor.exit.i42.for.body.i33_crit_edge, %for.body.lr.ph.i28
  %.pn.in17.i29 = phi ptr [ %22, %for.body.lr.ph.i28 ], [ %.pn.i31, %xgene_dma_clean_descriptor.exit.i42.for.body.i33_crit_edge ]
  %desc.0.i30 = getelementptr i8, ptr %.pn.in17.i29, i32 -68
  %23 = ptrtoint ptr %.pn.in17.i29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn.i31 = load ptr, ptr %.pn.in17.i29, align 4
  %call.i.i.i.i32 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in17.i29) #7
  br i1 %call.i.i.i.i32, label %if.end.i.i.i.i36, label %for.body.i33.list_del.exit.i.i38_crit_edge

for.body.i33.list_del.exit.i.i38_crit_edge:       ; preds = %for.body.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i.i38

if.end.i.i.i.i36:                                 ; preds = %for.body.i33
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i34 = getelementptr i8, ptr %.pn.in17.i29, i32 4
  %24 = ptrtoint ptr %prev.i.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i.i.i34, align 4
  %26 = ptrtoint ptr %.pn.in17.i29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %.pn.in17.i29, align 4
  %prev1.i.i.i.i.i35 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i.i.i35 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i.i.i35, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del.exit.i.i38

list_del.exit.i.i38:                              ; preds = %if.end.i.i.i.i36, %for.body.i33.list_del.exit.i.i38_crit_edge
  %30 = ptrtoint ptr %.pn.in17.i29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in17.i29, align 4
  %prev.i.i.i37 = getelementptr i8, ptr %.pn.in17.i29, i32 4
  %31 = ptrtoint ptr %prev.i.i.i37 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i37, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_dma_clean_descriptor.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xgene_dma_free_chan_resources, %xgene_dma_clean_descriptor.exit.i42)) #7
          to label %if.then.i.i39 [label %xgene_dma_clean_descriptor.exit.i42], !srcloc !259

if.then.i.i39:                                    ; preds = %list_del.exit.i.i38
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %dev.i.i25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i.i25, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgene_dma_clean_descriptor.__UNIQUE_ID_ddebug236, ptr noundef %33, ptr noundef nonnull @.str.91, ptr noundef %name.i.i26, ptr noundef %desc.0.i30) #7
  br label %xgene_dma_clean_descriptor.exit.i42

xgene_dma_clean_descriptor.exit.i42:              ; preds = %if.then.i.i39, %list_del.exit.i.i38
  %34 = ptrtoint ptr %desc_pool to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %desc_pool, align 4
  %phys.i.i40 = getelementptr i8, ptr %.pn.in17.i29, i32 24
  %36 = ptrtoint ptr %phys.i.i40 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %phys.i.i40, align 4
  tail call void @dma_pool_free(ptr noundef %35, ptr noundef %desc.0.i30, i32 noundef %37) #7
  %cmp.not.i41 = icmp eq ptr %.pn.i31, %ld_running
  br i1 %cmp.not.i41, label %xgene_dma_clean_descriptor.exit.i42.xgene_dma_free_desc_list.exit43_crit_edge, label %xgene_dma_clean_descriptor.exit.i42.for.body.i33_crit_edge

xgene_dma_clean_descriptor.exit.i42.for.body.i33_crit_edge: ; preds = %xgene_dma_clean_descriptor.exit.i42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i33

xgene_dma_clean_descriptor.exit.i42.xgene_dma_free_desc_list.exit43_crit_edge: ; preds = %xgene_dma_clean_descriptor.exit.i42
  call void @__sanitizer_cov_trace_pc() #9
  br label %xgene_dma_free_desc_list.exit43

xgene_dma_free_desc_list.exit43:                  ; preds = %xgene_dma_clean_descriptor.exit.i42.xgene_dma_free_desc_list.exit43_crit_edge, %xgene_dma_free_desc_list.exit.xgene_dma_free_desc_list.exit43_crit_edge
  %ld_completed = getelementptr inbounds %struct.xgene_dma_chan, ptr %dchan, i32 0, i32 11
  %38 = ptrtoint ptr %ld_completed to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ld_completed, align 4
  %cmp.not16.i44 = icmp eq ptr %39, %ld_completed
  br i1 %cmp.not16.i44, label %xgene_dma_free_desc_list.exit43.xgene_dma_free_desc_list.exit63_crit_edge, label %for.body.lr.ph.i48

xgene_dma_free_desc_list.exit43.xgene_dma_free_desc_list.exit63_crit_edge: ; preds = %xgene_dma_free_desc_list.exit43
  call void @__sanitizer_cov_trace_pc() #9
  br label %xgene_dma_free_desc_list.exit63

for.body.lr.ph.i48:                               ; preds = %xgene_dma_free_desc_list.exit43
  %dev.i.i45 = getelementptr inbounds %struct.xgene_dma_chan, ptr %dchan, i32 0, i32 2
  %name.i.i46 = getelementptr inbounds %struct.xgene_dma_chan, ptr %dchan, i32 0, i32 5
  br label %for.body.i53

for.body.i53:                                     ; preds = %xgene_dma_clean_descriptor.exit.i62.for.body.i53_crit_edge, %for.body.lr.ph.i48
  %.pn.in17.i49 = phi ptr [ %39, %for.body.lr.ph.i48 ], [ %.pn.i51, %xgene_dma_clean_descriptor.exit.i62.for.body.i53_crit_edge ]
  %desc.0.i50 = getelementptr i8, ptr %.pn.in17.i49, i32 -68
  %40 = ptrtoint ptr %.pn.in17.i49 to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pn.i51 = load ptr, ptr %.pn.in17.i49, align 4
  %call.i.i.i.i52 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in17.i49) #7
  br i1 %call.i.i.i.i52, label %if.end.i.i.i.i56, label %for.body.i53.list_del.exit.i.i58_crit_edge

for.body.i53.list_del.exit.i.i58_crit_edge:       ; preds = %for.body.i53
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i.i58

if.end.i.i.i.i56:                                 ; preds = %for.body.i53
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i54 = getelementptr i8, ptr %.pn.in17.i49, i32 4
  %41 = ptrtoint ptr %prev.i.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i.i.i54, align 4
  %43 = ptrtoint ptr %.pn.in17.i49 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %.pn.in17.i49, align 4
  %prev1.i.i.i.i.i55 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i.i.i.i55 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev1.i.i.i.i.i55, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %44, ptr %42, align 4
  br label %list_del.exit.i.i58

list_del.exit.i.i58:                              ; preds = %if.end.i.i.i.i56, %for.body.i53.list_del.exit.i.i58_crit_edge
  %47 = ptrtoint ptr %.pn.in17.i49 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in17.i49, align 4
  %prev.i.i.i57 = getelementptr i8, ptr %.pn.in17.i49, i32 4
  %48 = ptrtoint ptr %prev.i.i.i57 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i57, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_dma_clean_descriptor.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xgene_dma_free_chan_resources, %xgene_dma_clean_descriptor.exit.i62)) #7
          to label %if.then.i.i59 [label %xgene_dma_clean_descriptor.exit.i62], !srcloc !259

if.then.i.i59:                                    ; preds = %list_del.exit.i.i58
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %dev.i.i45 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i.i45, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgene_dma_clean_descriptor.__UNIQUE_ID_ddebug236, ptr noundef %50, ptr noundef nonnull @.str.91, ptr noundef %name.i.i46, ptr noundef %desc.0.i50) #7
  br label %xgene_dma_clean_descriptor.exit.i62

xgene_dma_clean_descriptor.exit.i62:              ; preds = %if.then.i.i59, %list_del.exit.i.i58
  %51 = ptrtoint ptr %desc_pool to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %desc_pool, align 4
  %phys.i.i60 = getelementptr i8, ptr %.pn.in17.i49, i32 24
  %53 = ptrtoint ptr %phys.i.i60 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %phys.i.i60, align 4
  tail call void @dma_pool_free(ptr noundef %52, ptr noundef %desc.0.i50, i32 noundef %54) #7
  %cmp.not.i61 = icmp eq ptr %.pn.i51, %ld_completed
  br i1 %cmp.not.i61, label %xgene_dma_clean_descriptor.exit.i62.xgene_dma_free_desc_list.exit63_crit_edge, label %xgene_dma_clean_descriptor.exit.i62.for.body.i53_crit_edge

xgene_dma_clean_descriptor.exit.i62.for.body.i53_crit_edge: ; preds = %xgene_dma_clean_descriptor.exit.i62
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i53

xgene_dma_clean_descriptor.exit.i62.xgene_dma_free_desc_list.exit63_crit_edge: ; preds = %xgene_dma_clean_descriptor.exit.i62
  call void @__sanitizer_cov_trace_pc() #9
  br label %xgene_dma_free_desc_list.exit63

xgene_dma_free_desc_list.exit63:                  ; preds = %xgene_dma_clean_descriptor.exit.i62.xgene_dma_free_desc_list.exit63_crit_edge, %xgene_dma_free_desc_list.exit43.xgene_dma_free_desc_list.exit63_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  %55 = ptrtoint ptr %desc_pool to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %desc_pool, align 4
  tail call void @dma_pool_destroy(ptr noundef %56) #7
  %57 = ptrtoint ptr %desc_pool to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %desc_pool, align 4
  br label %cleanup

cleanup:                                          ; preds = %xgene_dma_free_desc_list.exit63, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_dma_issue_pending(ptr noundef %dchan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.xgene_dma_chan, ptr %dchan, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #7
  tail call fastcc void @xgene_chan_xfer_ld_pending(ptr noundef %dchan)
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_dma_tx_status(ptr nocapture noundef readonly %dchan, i32 noundef %cookie, ptr noundef writeonly %txstate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !263
  %tobool.not.i = icmp eq ptr %txstate, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i

if.then.i.i.dma_cookie_status.exit_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_cookie_status.exit

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  br i1 %or.cond16.i.i, label %if.else.i.i.dma_cookie_status.exit_crit_edge, label %if.else.i.i.if.end8.i.i_crit_edge

if.else.i.i.if.end8.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i

if.else.i.i.dma_cookie_status.exit_crit_edge:     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_cookie_status.exit

if.end8.i.i:                                      ; preds = %if.else.i.i.if.end8.i.i_crit_edge, %if.then.i.i.if.end8.i.i_crit_edge
  br label %dma_cookie_status.exit

dma_cookie_status.exit:                           ; preds = %if.end8.i.i, %if.else.i.i.dma_cookie_status.exit_crit_edge, %if.then.i.i.dma_cookie_status.exit_crit_edge
  %retval.0.i.i = phi i32 [ 1, %if.end8.i.i ], [ 0, %if.then.i.i.dma_cookie_status.exit_crit_edge ], [ 0, %if.else.i.i.dma_cookie_status.exit_crit_edge ]
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xgene_dma_prep_xor(ptr noundef %dchan, i32 noundef %dst, ptr nocapture noundef %src, i32 noundef %src_cnt, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  %dst.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dst.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %dst, ptr %dst.addr, align 4
  %1 = ptrtoint ptr %len.addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %len, ptr %len.addr, align 4
  %tobool.not = icmp eq ptr %dchan, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool1.not = icmp eq i32 %len, 0
  %spec.select = or i1 %tobool.not, %tobool1.not
  br i1 %spec.select, label %entry.cleanup_crit_edge, label %entry.do.body_crit_edge, !prof !260

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %list_add_tail.exit.do.body_crit_edge, %entry.do.body_crit_edge
  %first.0 = phi ptr [ %spec.select42, %list_add_tail.exit.do.body_crit_edge ], [ null, %entry.do.body_crit_edge ]
  %call = tail call fastcc ptr @xgene_dma_alloc_descriptor(ptr noundef %dchan)
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %fail, label %if.end7

if.end7:                                          ; preds = %do.body
  call fastcc void @xgene_dma_prep_xor_desc(ptr noundef %dchan, ptr noundef nonnull %call, ptr noundef nonnull %dst.addr, ptr noundef %src, i32 noundef %src_cnt, ptr noundef nonnull %len.addr, ptr noundef nonnull @xgene_dma_prep_xor.multi)
  %tobool8.not = icmp eq ptr %first.0, null
  %spec.select42 = select i1 %tobool8.not, ptr %call, ptr %first.0
  %tx = getelementptr inbounds %struct.xgene_dma_desc_sw, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %tx, align 4
  %flags.i = getelementptr inbounds %struct.xgene_dma_desc_sw, ptr %call, i32 0, i32 5, i32 1
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %4, 2
  store i32 %or.i, ptr %flags.i, align 4
  %node = getelementptr inbounds %struct.xgene_dma_desc_sw, ptr %call, i32 0, i32 3
  %tx_list = getelementptr inbounds %struct.xgene_dma_desc_sw, ptr %spec.select42, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.xgene_dma_desc_sw, ptr %spec.select42, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %6, ptr noundef %tx_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end7.list_add_tail.exit_crit_edge

if.end7.list_add_tail.exit_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %node, ptr %prev.i, align 4
  %8 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %tx_list, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.xgene_dma_desc_sw, ptr %call, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %node, ptr %6, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end7.list_add_tail.exit_crit_edge
  %11 = ptrtoint ptr %len.addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.addr, align 4
  %tobool12.not = icmp eq i32 %12, 0
  br i1 %tobool12.not, label %do.end, label %list_add_tail.exit.do.body_crit_edge

list_add_tail.exit.do.body_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end:                                           ; preds = %list_add_tail.exit
  %flags.i.le = getelementptr inbounds %struct.xgene_dma_desc_sw, ptr %call, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %flags.i.le to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %flags, ptr %flags.i.le, align 4
  %14 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -16, ptr %tx, align 4
  %15 = ptrtoint ptr %tx_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %tx_list, align 4
  %cmp.i.not.i = icmp eq ptr %16, %tx_list
  br i1 %cmp.i.not.i, label %do.end.cleanup_crit_edge, label %if.then.i

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %tx_list18 = getelementptr inbounds %struct.xgene_dma_desc_sw, ptr %call, i32 0, i32 4
  %17 = ptrtoint ptr %tx_list18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tx_list18, align 4
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i, align 4
  %prev3.i.i43 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %21 = ptrtoint ptr %prev3.i.i43 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %tx_list18, ptr %prev3.i.i43, align 4
  store ptr %16, ptr %tx_list18, align 4
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %18, ptr %20, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %23 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev6.i.i, align 4
  br label %cleanup

fail:                                             ; preds = %do.body
  %tobool20.not = icmp eq ptr %first.0, null
  br i1 %tobool20.not, label %fail.cleanup_crit_edge, label %if.end22

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %fail
  %tx_list23 = getelementptr inbounds %struct.xgene_dma_desc_sw, ptr %first.0, i32 0, i32 4
  %24 = ptrtoint ptr %tx_list23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_list23, align 4
  %cmp.not16.i = icmp eq ptr %25, %tx_list23
  br i1 %cmp.not16.i, label %if.end22.cleanup_crit_edge, label %for.body.lr.ph.i

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end22
  %dev.i.i = getelementptr inbounds %struct.xgene_dma_chan, ptr %dchan, i32 0, i32 2
  %name.i.i = getelementptr inbounds %struct.xgene_dma_chan, ptr %dchan, i32 0, i32 5
  %desc_pool.i.i = getelementptr inbounds %struct.xgene_dma_chan, ptr %dchan, i32 0, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %xgene_dma_clean_descriptor.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn.in17.i = phi ptr [ %25, %for.body.lr.ph.i ], [ %.pn.i, %xgene_dma_clean_descriptor.exit.i.for.body.i_crit_edge ]
  %desc.0.i = getelementptr i8, ptr %.pn.in17.i, i32 -68
  %26 = ptrtoint ptr %.pn.in17.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn.i = load ptr, ptr %.pn.in17.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in17.i) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body.i.list_del.exit.i.i_crit_edge

for.body.i.list_del.exit.i.i_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i = getelementptr i8, ptr %.pn.in17.i, i32 4
  %27 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i.i.i, align 4
  %29 = ptrtoint ptr %.pn.in17.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %.pn.in17.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %for.body.i.list_del.exit.i.i_crit_edge
  %33 = ptrtoint ptr %.pn.in17.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in17.i, align 4
  %prev.i.i.i = getelementptr i8, ptr %.pn.in17.i, i32 4
  %34 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_dma_clean_descriptor.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xgene_dma_prep_xor, %xgene_dma_clean_descriptor.exit.i)) #7
          to label %if.then.i.i [label %xgene_dma_clean_descriptor.exit.i], !srcloc !259

if.then.i.i:                                      ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgene_dma_clean_descriptor.__UNIQUE_ID_ddebug236, ptr noundef %36, ptr noundef nonnull @.str.91, ptr noundef %name.i.i, ptr noundef %desc.0.i) #7
  br label %xgene_dma_clean_descriptor.exit.i

xgene_dma_clean_descriptor.exit.i:                ; preds = %if.then.i.i, %list_del.exit.i.i
  %37 = ptrtoint ptr %desc_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %desc_pool.i.i, align 4
  %phys.i.i = getelementptr i8, ptr %.pn.in17.i, i32 24
  %39 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %phys.i.i, align 4
  tail call void @dma_pool_free(ptr noundef %38, ptr noundef %desc.0.i, i32 noundef %40) #7
  %cmp.not.i = icmp eq ptr %.pn.i, %tx_list23
  br i1 %cmp.not.i, label %xgene_dma_clean_descriptor.exit.i.cleanup_crit_edge, label %xgene_dma_clean_descriptor.exit.i.for.body.i_crit_edge

xgene_dma_clean_descriptor.exit.i.for.body.i_crit_edge: ; preds = %xgene_dma_clean_descriptor.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

xgene_dma_clean_descriptor.exit.i.cleanup_crit_edge: ; preds = %xgene_dma_clean_descriptor.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %xgene_dma_clean_descriptor.exit.i.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %fail.cleanup_crit_edge, %if.then.i, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %fail.cleanup_crit_edge ], [ %tx, %do.end.cleanup_crit_edge ], [ %tx, %if.then.i ], [ null, %if.end22.cleanup_crit_edge ], [ null, %xgene_dma_clean_descriptor.exit.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xgene_dma_prep_pq(ptr noundef %dchan, ptr nocapture noundef %dst, ptr nocapture noundef %src, i32 noundef %src_cnt, ptr nocapture noundef readonly %scf, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  %len.addr = alloca i32, align 4
  %_len = alloca i32, align 4
  %_src = alloca [5 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_len) #7
  %1 = ptrtoint ptr %_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %len, ptr %_len, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_src) #7
  %tobool.not = icmp eq ptr %dchan, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool1.not = icmp eq i32 %len, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  %2 = call ptr @memset(ptr %_src, i32 255, i32 20)
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end, !prof !264

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = shl i32 %src_cnt, 2
  %3 = call ptr @memcpy(ptr %_src, ptr %src, i32 %mul)
  %and = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %len.addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %len.addr, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %and8 = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end11_crit_edge, label %if.then10

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %_len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %_len, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end7.if.end11_crit_edge
  %call76 = tail call fastcc ptr @xgene_dma_alloc_descriptor(ptr noundef nonnull %dchan)
  %tobool12.not77 = icmp eq ptr %call76, null
  br i1 %tobool12.not77, label %if.end11.cleanup_crit_edge, label %if.end14.lr.ph

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14.lr.ph:                                   ; preds = %if.end11
  %arrayidx24 = getelementptr i32, ptr %dst, i32 1
  br label %if.end14

if.end14:                                         ; preds = %do.body.backedge.if.end14_crit_edge, %if.end14.lr.ph
  %call79 = phi ptr [ %call76, %if.end14.lr.ph ], [ %call, %do.body.backedge.if.end14_crit_edge ]
  %first.078 = phi ptr [ null, %if.end14.lr.ph ], [ %spec.select, %do.body.backedge.if.end14_crit_edge ]
  %tobool15.not = icmp eq ptr %first.078, null
  %spec.select = select i1 %tobool15.not, ptr %call79, ptr %first.078
  %tx = getelementptr inbounds %struct.xgene_dma_desc_sw, ptr %call79, i32 0, i32 5
  %6 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %tx, align 4
  %flags.i = getelementptr inbounds %struct.xgene_dma_desc_sw, ptr %call79, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %8, 2
  store i32 %or.i, ptr %flags.i, align 4
  %node = getelementptr inbounds %struct.xgene_dma_desc_sw, ptr %call79, i32 0, i32 3
  %tx_list = getelementptr inbounds %struct.xgene_dma_desc_sw, ptr %spec.select, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.xgene_dma_desc_sw, ptr %spec.select, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %10, ptr noundef %tx_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end14.list_add_tail.exit_crit_edge

if.end14.list_add_tail.exit_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %node, ptr %prev.i, align 4
  %12 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %tx_list, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.xgene_dma_desc_sw, ptr %call79, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %node, ptr %10, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end14.list_add_tail.exit_crit_edge
  %15 = ptrtoint ptr %len.addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool19.not = icmp eq i32 %16, 0
  br i1 %tobool19.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @xgene_dma_prep_xor_desc(ptr noundef %dchan, ptr noundef nonnull %call79, ptr noundef %dst, ptr noundef %src, i32 noundef %src_cnt, ptr noundef nonnull %len.addr, ptr noundef nonnull @xgene_dma_prep_pq.multi)
  br label %do.cond

if.end21:                                         ; preds = %list_add_tail.exit
  %17 = ptrtoint ptr %_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool22.not = icmp eq i32 %18, 0
  br i1 %tobool22.not, label %if.end21.do.end_crit_edge, label %if.then23

if.end21.do.end_crit_edge:                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @xgene_dma_prep_xor_desc(ptr noundef %dchan, ptr noundef nonnull %call79, ptr noundef %arrayidx24, ptr noundef nonnull %_src, i32 noundef %src_cnt, ptr noundef nonnull %_len, ptr noundef %scf)
  br label %do.cond

do.cond:                                          ; preds = %if.then23, %if.then20
  %19 = ptrtoint ptr %len.addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr = load i32, ptr %len.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool27.not = icmp eq i32 %.pr, 0
  br i1 %tobool27.not, label %lor.rhs28, label %do.cond.do.body.backedge_crit_edge

do.cond.do.body.backedge_crit_edge:               ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.backedge

lor.rhs28:                                        ; preds = %do.cond
  %20 = ptrtoint ptr %_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr72 = load i32, ptr %_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr72)
  %tobool29.not = icmp eq i32 %.pr72, 0
  br i1 %tobool29.not, label %lor.rhs28.do.end_crit_edge, label %lor.rhs28.do.body.backedge_crit_edge

lor.rhs28.do.body.backedge_crit_edge:             ; preds = %lor.rhs28
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.backedge

lor.rhs28.do.end_crit_edge:                       ; preds = %lor.rhs28
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.body.backedge:                                 ; preds = %lor.rhs28.do.body.backedge_crit_edge, %do.cond.do.body.backedge_crit_edge
  %call = tail call fastcc ptr @xgene_dma_alloc_descriptor(ptr noundef %dchan)
  %tobool12.not = icmp eq ptr %call, null
  br i1 %tobool12.not, label %if.end40, label %do.body.backedge.if.end14_crit_edge

do.body.backedge.if.end14_crit_edge:              ; preds = %do.body.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

do.end:                                           ; preds = %lor.rhs28.do.end_crit_edge, %if.end21.do.end_crit_edge
  %flags.i.le = getelementptr inbounds %struct.xgene_dma_desc_sw, ptr %call79, i32 0, i32 5, i32 1
  %21 = ptrtoint ptr %flags.i.le to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %flags, ptr %flags.i.le, align 4
  %22 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -16, ptr %tx, align 4
  %23 = ptrtoint ptr %tx_list to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %tx_list, align 4
  %cmp.i.not.i = icmp eq ptr %24, %tx_list
  br i1 %cmp.i.not.i, label %do.end.cleanup_crit_edge, label %if.then.i

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %tx_list36 = getelementptr inbounds %struct.xgene_dma_desc_sw, ptr %call79, i32 0, i32 4
  %25 = ptrtoint ptr %tx_list36 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tx_list36, align 4
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i, align 4
  %prev3.i.i70 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %prev3.i.i70 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %tx_list36, ptr %prev3.i.i70, align 4
  store ptr %24, ptr %tx_list36, align 4
  %30 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %26, ptr %28, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %31 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev6.i.i, align 4
  br label %cleanup

if.end40:                                         ; preds = %do.body.backedge
  %tx_list41 = getelementptr inbounds %struct.xgene_dma_desc_sw, ptr %spec.select, i32 0, i32 4
  %32 = ptrtoint ptr %tx_list41 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tx_list41, align 4
  %cmp.not16.i = icmp eq ptr %33, %tx_list41
  br i1 %cmp.not16.i, label %if.end40.cleanup_crit_edge, label %for.body.lr.ph.i

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end40
  %dev.i.i = getelementptr inbounds %struct.xgene_dma_chan, ptr %dchan, i32 0, i32 2
  %name.i.i = getelementptr inbounds %struct.xgene_dma_chan, ptr %dchan, i32 0, i32 5
  %desc_pool.i.i = getelementptr inbounds %struct.xgene_dma_chan, ptr %dchan, i32 0, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %xgene_dma_clean_descriptor.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn.in17.i = phi ptr [ %33, %for.body.lr.ph.i ], [ %.pn.i, %xgene_dma_clean_descriptor.exit.i.for.body.i_crit_edge ]
  %desc.0.i = getelementptr i8, ptr %.pn.in17.i, i32 -68
  %34 = ptrtoint ptr %.pn.in17.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn.i = load ptr, ptr %.pn.in17.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in17.i) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body.i.list_del.exit.i.i_crit_edge

for.body.i.list_del.exit.i.i_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i = getelementptr i8, ptr %.pn.in17.i, i32 4
  %35 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i.i.i.i, align 4
  %37 = ptrtoint ptr %.pn.in17.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %.pn.in17.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev1.i.i.i.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %38, ptr %36, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %for.body.i.list_del.exit.i.i_crit_edge
  %41 = ptrtoint ptr %.pn.in17.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in17.i, align 4
  %prev.i.i.i = getelementptr i8, ptr %.pn.in17.i, i32 4
  %42 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_dma_clean_descriptor.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xgene_dma_prep_pq, %xgene_dma_clean_descriptor.exit.i)) #7
          to label %if.then.i.i [label %xgene_dma_clean_descriptor.exit.i], !srcloc !259

if.then.i.i:                                      ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgene_dma_clean_descriptor.__UNIQUE_ID_ddebug236, ptr noundef %44, ptr noundef nonnull @.str.91, ptr noundef %name.i.i, ptr noundef %desc.0.i) #7
  br label %xgene_dma_clean_descriptor.exit.i

xgene_dma_clean_descriptor.exit.i:                ; preds = %if.then.i.i, %list_del.exit.i.i
  %45 = ptrtoint ptr %desc_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %desc_pool.i.i, align 4
  %phys.i.i = getelementptr i8, ptr %.pn.in17.i, i32 24
  %47 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %phys.i.i, align 4
  tail call void @dma_pool_free(ptr noundef %46, ptr noundef %desc.0.i, i32 noundef %48) #7
  %cmp.not.i = icmp eq ptr %.pn.i, %tx_list41
  br i1 %cmp.not.i, label %xgene_dma_clean_descriptor.exit.i.cleanup_crit_edge, label %xgene_dma_clean_descriptor.exit.i.for.body.i_crit_edge

xgene_dma_clean_descriptor.exit.i.for.body.i_crit_edge: ; preds = %xgene_dma_clean_descriptor.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

xgene_dma_clean_descriptor.exit.i.cleanup_crit_edge: ; preds = %xgene_dma_clean_descriptor.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %xgene_dma_clean_descriptor.exit.i.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.then.i, %do.end.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %tx, %do.end.cleanup_crit_edge ], [ %tx, %if.then.i ], [ null, %if.end40.cleanup_crit_edge ], [ null, %if.end11.cleanup_crit_edge ], [ null, %xgene_dma_clean_descriptor.exit.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_src) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_len) #7
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xgene_dma_alloc_descriptor(ptr noundef %chan) unnamed_addr #2 align 64 {
entry:
  %phys = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys) #7
  %0 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %phys, align 4, !annotation !265
  %desc_pool = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 12
  %1 = ptrtoint ptr %desc_pool to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %desc_pool, align 4
  %call.i = call ptr @dma_pool_alloc(ptr noundef %2, i32 noundef 2304, ptr noundef nonnull %phys) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 2
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.111, ptr noundef %name) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tx_list = getelementptr inbounds %struct.xgene_dma_desc_sw, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %tx_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %tx_list, ptr %tx_list, align 4
  %prev.i = getelementptr inbounds %struct.xgene_dma_desc_sw, ptr %call.i, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %tx_list, ptr %prev.i, align 4
  %7 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %phys, align 4
  %tx = getelementptr inbounds %struct.xgene_dma_desc_sw, ptr %call.i, i32 0, i32 5
  %phys1 = getelementptr inbounds %struct.xgene_dma_desc_sw, ptr %call.i, i32 0, i32 5, i32 2
  %9 = ptrtoint ptr %phys1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %phys1, align 4
  %tx_submit = getelementptr inbounds %struct.xgene_dma_desc_sw, ptr %call.i, i32 0, i32 5, i32 4
  %10 = ptrtoint ptr %tx_submit to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @xgene_dma_tx_submit, ptr %tx_submit, align 4
  call void @dma_async_tx_descriptor_init(ptr noundef %tx, ptr noundef %chan) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_dma_alloc_descriptor.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xgene_dma_alloc_descriptor, %cleanup)) #7
          to label %if.then10 [label %cleanup], !srcloc !259

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev11 = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 2
  %11 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev11, align 4
  %name12 = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 5
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgene_dma_alloc_descriptor.__UNIQUE_ID_ddebug237, ptr noundef %12, ptr noundef nonnull @.str.113, ptr noundef %name12, ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys) #7
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgene_dma_prep_xor_desc(ptr nocapture noundef readonly %chan, ptr nocapture noundef %desc_sw, ptr nocapture noundef %dst, ptr nocapture noundef %src, i32 noundef %src_cnt, ptr nocapture noundef %nbytes, ptr nocapture noundef readonly %scf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nbytes, align 4
  %desc22 = getelementptr inbounds %struct.xgene_dma_desc_sw, ptr %desc_sw, i32 0, i32 1
  %dst_ring_num = getelementptr inbounds %struct.xgene_dma_chan, ptr %chan, i32 0, i32 14, i32 7
  %2 = ptrtoint ptr %dst_ring_num to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %dst_ring_num, align 4
  %4 = ptrtoint ptr %desc_sw to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %desc_sw, align 8
  %or2.i = or i64 %5, 32771
  store i64 %or2.i, ptr %desc_sw, align 8
  %m1.i = getelementptr inbounds %struct.xgene_dma_desc_hw, ptr %desc_sw, i32 0, i32 1
  %6 = ptrtoint ptr %m1.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %m1.i, align 8
  %or3.i = or i64 %7, 128
  store i64 %or3.i, ptr %m1.i, align 8
  %8 = tail call i16 @llvm.bswap.i16(i16 %3) #7
  %9 = zext i16 %8 to i64
  %m3.i = getelementptr inbounds %struct.xgene_dma_desc_hw, ptr %desc_sw, i32 0, i32 3
  %10 = ptrtoint ptr %m3.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %m3.i, align 8
  %or4.i = or i64 %11, %9
  store i64 %or4.i, ptr %m3.i, align 8
  %m2 = getelementptr inbounds %struct.xgene_dma_desc_hw, ptr %desc_sw, i32 0, i32 2
  %12 = ptrtoint ptr %m2 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %m2, align 8
  %or = or i64 %13, 32
  store i64 %or, ptr %m2, align 8
  %14 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dst, align 4
  %conv = zext i32 %15 to i64
  %16 = tail call i64 @llvm.bswap.i64(i64 %conv)
  %or3 = or i64 %16, %or4.i
  %17 = ptrtoint ptr %m3.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %or3, ptr %m3.i, align 8
  %or4 = or i64 %5, 33795
  %18 = ptrtoint ptr %desc_sw to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %or4, ptr %desc_sw, align 8
  %arrayidx.i = getelementptr [6 x i8], ptr @xgene_dma_encode_xor_flyby.flyby_type, i32 0, i32 %src_cnt
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i, align 1
  %conv5 = zext i8 %20 to i64
  %21 = shl nuw i64 %conv5, 56
  %or7 = or i64 %21, %or
  %22 = ptrtoint ptr %m2 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %or7, ptr %m2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_cnt)
  %cmp41.not = icmp eq i32 %src_cnt, 0
  br i1 %cmp41.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %m2.i = getelementptr inbounds %struct.xgene_dma_desc_sw, ptr %desc_sw, i32 0, i32 1, i32 2
  %m3.i38 = getelementptr inbounds %struct.xgene_dma_desc_sw, ptr %desc_sw, i32 0, i32 1, i32 3
  %m1.i37 = getelementptr inbounds %struct.xgene_dma_desc_sw, ptr %desc_sw, i32 0, i32 1, i32 1
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %i.042 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %cond.end.for.body_crit_edge ]
  %23 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nbytes, align 4
  %25 = zext i32 %i.042 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i.042, label %do.end.i [
    i32 0, label %for.body.cond.end_crit_edge
    i32 1, label %sw.bb.i
    i32 2, label %cond.end.fold.split
    i32 3, label %sw.bb2.i
    i32 4, label %sw.bb3.i
  ]

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

sw.bb.i:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

sw.bb2.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

sw.bb3.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114) #10
  br label %cond.end

cond.end.fold.split:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.end:                                         ; preds = %cond.end.fold.split, %do.end.i, %sw.bb3.i, %sw.bb2.i, %sw.bb.i, %for.body.cond.end_crit_edge
  %cond = phi ptr [ %m1.i, %for.body.cond.end_crit_edge ], [ null, %do.end.i ], [ %m2.i, %sw.bb3.i ], [ %m3.i38, %sw.bb2.i ], [ %m1.i37, %sw.bb.i ], [ %desc22, %cond.end.fold.split ]
  %arrayidx = getelementptr i32, ptr %src, i32 %i.042
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %24)
  %cmp.i = icmp ult i32 %24, 16384
  %26 = tail call i32 @llvm.umin.i32(i32 %24, i32 16384) #7
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %conv.i = zext i32 %28 to i64
  %29 = tail call i64 @llvm.bswap.i64(i64 %conv.i) #7
  %30 = ptrtoint ptr %cond to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %cond, align 8
  %conv.i.i = zext i32 %26 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 48
  %cond.i.i = select i1 %cmp.i, i64 %shl.i.i, i64 0
  %32 = tail call i64 @llvm.bswap.i64(i64 %cond.i.i) #7
  %or.i = or i64 %31, %32
  %or1.i = or i64 %or.i, %29
  %33 = ptrtoint ptr %cond to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %or1.i, ptr %cond, align 8
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx, align 4
  %add.i = add i32 %35, %26
  store i32 %add.i, ptr %arrayidx, align 4
  %arrayidx12 = getelementptr i8, ptr %scf, i32 %i.042
  %36 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %37 to i32
  %add = add nuw i32 %i.042, 1
  %mul = shl i32 %add, 3
  %shl = shl i32 %conv13, %mul
  %conv14 = sext i32 %shl to i64
  %38 = tail call i64 @llvm.bswap.i64(i64 %conv14)
  %39 = ptrtoint ptr %m2 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %m2, align 8
  %or16 = or i64 %38, %40
  store i64 %or16, ptr %m2, align 8
  %exitcond.not = icmp eq i32 %add, %src_cnt
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.le = sub i32 %24, %26
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %len.0.lcssa = phi i32 [ %sub.i.le, %for.cond.for.end_crit_edge ], [ %1, %entry.for.end_crit_edge ]
  %41 = ptrtoint ptr %nbytes to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %len.0.lcssa, ptr %nbytes, align 4
  %42 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dst, align 4
  %add17 = add i32 %43, 16384
  store i32 %add17, ptr %dst, align 4
  %flags = getelementptr inbounds %struct.xgene_dma_desc_sw, ptr %desc_sw, i32 0, i32 2
  %44 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags, align 8
  %or18 = or i32 %45, 1
  store i32 %or18, ptr %flags, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_dma_tx_submit(ptr noundef %tx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tx, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !260

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %chan4 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx, i32 0, i32 3
  %0 = ptrtoint ptr %chan4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan4, align 4
  %lock = getelementptr inbounds %struct.xgene_dma_chan, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #7
  %2 = ptrtoint ptr %chan4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan4, align 4
  %cookie2.i = getelementptr inbounds %struct.dma_chan, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cookie2.i, align 4
  %add.i = add i32 %5, 1
  %6 = tail call i32 @llvm.smax.i32(i32 %add.i, i32 1) #7
  %7 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %cookie2.i, align 4
  %8 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %tx, align 4
  %tx_list = getelementptr i8, ptr %tx, i32 -8
  %9 = ptrtoint ptr %tx_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %tx_list, align 4
  %cmp.i.not.i = icmp eq ptr %10, %tx_list
  br i1 %cmp.i.not.i, label %if.end.list_splice_tail_init.exit_crit_edge, label %if.then.i

if.end.list_splice_tail_init.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %ld_pending = getelementptr inbounds %struct.xgene_dma_chan, ptr %1, i32 0, i32 9
  %prev.i = getelementptr inbounds %struct.xgene_dma_chan, ptr %1, i32 0, i32 9, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr i8, ptr %tx, i32 -4
  %13 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %10, ptr %12, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %ld_pending, ptr %14, align 4
  store ptr %14, ptr %prev.i, align 4
  %18 = ptrtoint ptr %tx_list to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %tx_list, ptr %tx_list, align 4
  store ptr %tx_list, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %if.end.list_splice_tail_init.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %list_splice_tail_init.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %list_splice_tail_init.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 126)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 126)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !15, !16, !17, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !85, !86, !87, !89, !90, !92, !93, !94, !95, !97, !98, !99, !100, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !145, !146, !147, !148, !150, !151, !152, !154, !155, !157, !158, !159, !160, !162, !163, !164, !165, !166, !167, !169, !170, !171, !172, !174, !176, !178, !180, !181, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !209, !210, !212, !213, !215, !216, !217, !218, !220, !221, !223, !224, !225, !227, !229, !230, !231, !232, !234, !235, !237, !239, !240, !241, !242, !244}
!llvm.module.flags = !{!246, !247, !248, !249, !250, !251, !252, !253}
!llvm.ident = !{!254}

!0 = !{ptr @__initcall__kmod_xgene_dma__244_1827_xgene_dma_driver_init6, !1, !"__initcall__kmod_xgene_dma__244_1827_xgene_dma_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/dma/xgene-dma.c", i32 1827, i32 1}
!2 = !{ptr @__exitcall_xgene_dma_driver_exit, !1, !"__exitcall_xgene_dma_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description245, !4, !"__UNIQUE_ID_description245", i1 false, i1 false}
!4 = !{!"../drivers/dma/xgene-dma.c", i32 1829, i32 1}
!5 = !{ptr @__UNIQUE_ID_author246, !6, !"__UNIQUE_ID_author246", i1 false, i1 false}
!6 = !{!"../drivers/dma/xgene-dma.c", i32 1830, i32 1}
!7 = !{ptr @__UNIQUE_ID_author247, !8, !"__UNIQUE_ID_author247", i1 false, i1 false}
!8 = !{!"../drivers/dma/xgene-dma.c", i32 1831, i32 1}
!9 = !{ptr @__UNIQUE_ID_file248, !10, !"__UNIQUE_ID_file248", i1 false, i1 false}
!10 = !{!"../drivers/dma/xgene-dma.c", i32 1832, i32 1}
!11 = !{ptr @__UNIQUE_ID_license249, !10, !"__UNIQUE_ID_license249", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_version250, !13, !"__UNIQUE_ID_version250", i1 false, i1 false}
!13 = !{!"../drivers/dma/xgene-dma.c", i32 1833, i32 1}
!14 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @__modver_attr, !13, !"__modver_attr", i1 false, i1 false}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/dma/xgene-dma.c", i32 1821, i32 11}
!20 = !{ptr @xgene_dma_driver, !21, !"xgene_dma_driver", i1 false, i1 false}
!21 = !{!"../drivers/dma/xgene-dma.c", i32 1817, i32 31}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/dma/xgene-dma.c", i32 1717, i32 3}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @xgene_dma_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @xgene_dma_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/dma/xgene-dma.c", i32 1725, i32 4}
!32 = !{ptr @xgene_dma_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @xgene_dma_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/dma/xgene-dma.c", i32 1737, i32 3}
!36 = !{ptr @xgene_dma_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @xgene_dma_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/dma/xgene-dma.c", i32 1625, i32 3}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @xgene_dma_get_resources._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @xgene_dma_get_resources._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/dma/xgene-dma.c", i32 1632, i32 3}
!45 = !{ptr @xgene_dma_get_resources._entry.17, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @xgene_dma_get_resources._entry_ptr.19, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/dma/xgene-dma.c", i32 1639, i32 3}
!49 = !{ptr @xgene_dma_get_resources._entry.20, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @xgene_dma_get_resources._entry_ptr.22, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/dma/xgene-dma.c", i32 1646, i32 3}
!53 = !{ptr @xgene_dma_get_resources._entry.23, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @xgene_dma_get_resources._entry_ptr.25, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/dma/xgene-dma.c", i32 1653, i32 3}
!57 = !{ptr @xgene_dma_get_resources._entry.26, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @xgene_dma_get_resources._entry_ptr.28, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/dma/xgene-dma.c", i32 1660, i32 3}
!61 = !{ptr @xgene_dma_get_resources._entry.29, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @xgene_dma_get_resources._entry_ptr.31, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/dma/xgene-dma.c", i32 1669, i32 3}
!65 = !{ptr @xgene_dma_get_resources._entry.32, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @xgene_dma_get_resources._entry_ptr.34, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/dma/xgene-dma.c", i32 1676, i32 3}
!69 = !{ptr @xgene_dma_get_resources._entry.35, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @xgene_dma_get_resources._entry_ptr.37, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/dma/xgene-dma.c", i32 1422, i32 3}
!73 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @xgene_dma_init_mem._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @xgene_dma_init_mem._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/dma/xgene-dma.c", i32 1383, i32 3}
!78 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @xgene_dma_init_ring_mngr._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @xgene_dma_init_ring_mngr._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/dma/xgene-dma.c", i32 1612, i32 44}
!83 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/dma/xgene-dma.c", i32 1230, i32 2}
!85 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @xgene_dma_create_chan_rings.__UNIQUE_ID_ddebug242, !84, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!87 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/dma/xgene-dma.c", i32 1246, i32 2}
!89 = !{ptr @xgene_dma_create_chan_rings.__UNIQUE_ID_ddebug243, !88, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/dma/xgene-dma.c", i32 1204, i32 3}
!92 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @xgene_dma_create_ring_one._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @xgene_dma_create_ring_one._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/dma/xgene-dma.c", i32 1157, i32 3}
!97 = !{ptr @.str.49, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @xgene_dma_get_ring_size._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @xgene_dma_get_ring_size._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/dma/xgene-dma.c", i32 1437, i32 14}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/dma/xgene-dma.c", i32 1439, i32 3}
!104 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @xgene_dma_request_irqs._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @xgene_dma_request_irqs._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/dma/xgene-dma.c", i32 1452, i32 4}
!109 = !{ptr @xgene_dma_request_irqs._entry.53, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @xgene_dma_request_irqs._entry_ptr.55, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/dma/xgene-dma.c", i32 1025, i32 3}
!113 = !{ptr @.str.57, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @xgene_dma_err_isr._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @xgene_dma_err_isr._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/dma/xgene-dma.c", i32 329, i32 23}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/dma/xgene-dma.c", i32 330, i32 21}
!120 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/dma/xgene-dma.c", i32 331, i32 24}
!122 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/dma/xgene-dma.c", i32 332, i32 24}
!124 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/dma/xgene-dma.c", i32 333, i32 24}
!126 = !{ptr @.str.63, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/dma/xgene-dma.c", i32 334, i32 23}
!128 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/dma/xgene-dma.c", i32 335, i32 23}
!130 = !{ptr @.str.65, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/dma/xgene-dma.c", i32 336, i32 21}
!132 = !{ptr @.str.66, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/dma/xgene-dma.c", i32 337, i32 21}
!134 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/dma/xgene-dma.c", i32 338, i32 23}
!136 = !{ptr @.str.68, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/dma/xgene-dma.c", i32 339, i32 23}
!138 = !{ptr @.str.69, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/dma/xgene-dma.c", i32 340, i32 23}
!140 = !{ptr @xgene_dma_err, !141, !"xgene_dma_err", i1 false, i1 false}
!141 = !{!"../drivers/dma/xgene-dma.c", i32 328, i32 27}
!142 = !{ptr @.str.70, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/dma/xgene-dma.c", i32 1348, i32 3}
!144 = !{ptr @.str.71, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.72, !143, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @xgene_dma_init_hw._entry, !143, !"_entry", i1 false, i1 false}
!147 = !{ptr @xgene_dma_init_hw._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.74, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/dma/xgene-dma.c", i32 1357, i32 2}
!150 = !{ptr @xgene_dma_init_hw._entry.73, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @xgene_dma_init_hw._entry_ptr.75, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @xgene_dma_async_register.__key, !153, !"__key", i1 false, i1 false}
!153 = !{!"../drivers/dma/xgene-dma.c", i32 1538, i32 2}
!154 = !{ptr @.str.76, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.77, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/dma/xgene-dma.c", i32 1558, i32 3}
!157 = !{ptr @.str.78, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @xgene_dma_async_register._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @xgene_dma_async_register._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.80, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/dma/xgene-dma.c", i32 1565, i32 2}
!162 = !{ptr @xgene_dma_async_register._entry.79, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @xgene_dma_async_register._entry_ptr.81, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.82, !161, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.83, !161, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.84, !161, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.85, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/dma/xgene-dma.c", i32 722, i32 4}
!169 = !{ptr @.str.86, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @xgene_dma_cleanup_descriptors._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @xgene_dma_cleanup_descriptors._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.87, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/dma/xgene-dma.c", i32 727, i32 4}
!174 = !{ptr @.str.88, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/dma/xgene-dma.c", i32 731, i32 5}
!176 = !{ptr @.str.89, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/dma/xgene-dma.c", i32 734, i32 4}
!178 = !{ptr @.str.90, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/dma/xgene-dma.c", i32 484, i32 2}
!180 = !{ptr @.str.91, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @xgene_dma_clean_descriptor.__UNIQUE_ID_ddebug236, !179, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!182 = !{ptr @.str.92, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/dma/xgene-dma.c", i32 315, i32 19}
!184 = !{ptr @.str.93, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/dma/xgene-dma.c", i32 316, i32 19}
!186 = !{ptr @.str.94, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/dma/xgene-dma.c", i32 317, i32 24}
!188 = !{ptr @.str.95, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/dma/xgene-dma.c", i32 318, i32 25}
!190 = !{ptr @.str.96, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/dma/xgene-dma.c", i32 319, i32 22}
!192 = !{ptr @.str.97, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/dma/xgene-dma.c", i32 320, i32 14}
!194 = !{ptr @.str.98, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/dma/xgene-dma.c", i32 321, i32 20}
!196 = !{ptr @.str.99, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/dma/xgene-dma.c", i32 322, i32 22}
!198 = !{ptr @.str.100, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/dma/xgene-dma.c", i32 323, i32 18}
!200 = !{ptr @.str.101, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/dma/xgene-dma.c", i32 324, i32 17}
!202 = !{ptr @.str.102, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/dma/xgene-dma.c", i32 325, i32 14}
!204 = !{ptr @xgene_dma_desc_err, !205, !"xgene_dma_desc_err", i1 false, i1 false}
!205 = !{!"../drivers/dma/xgene-dma.c", i32 314, i32 27}
!206 = !{ptr @.str.103, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/dma/xgene-dma.c", i32 649, i32 3}
!208 = !{ptr @.str.104, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @xgene_chan_xfer_ld_pending.__UNIQUE_ID_ddebug239, !207, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!210 = !{ptr @.str.105, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/dma/xgene-dma.c", i32 589, i32 2}
!212 = !{ptr @xgene_dma_clean_running_descriptor.__UNIQUE_ID_ddebug238, !211, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!213 = !{ptr @.str.106, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/dma/xgene-dma.c", i32 786, i32 3}
!215 = !{ptr @.str.107, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @xgene_dma_alloc_chan_resources._entry, !214, !"_entry", i1 false, i1 false}
!217 = !{ptr @xgene_dma_alloc_chan_resources._entry_ptr, !214, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.108, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/dma/xgene-dma.c", i32 790, i32 2}
!220 = !{ptr @xgene_dma_alloc_chan_resources.__UNIQUE_ID_ddebug240, !219, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!221 = !{ptr @.str.109, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/dma/xgene-dma.c", i32 815, i32 2}
!223 = !{ptr @.str.110, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @xgene_dma_free_chan_resources.__UNIQUE_ID_ddebug241, !222, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!225 = !{ptr @xgene_dma_prep_xor.multi, !226, !"multi", i1 false, i1 false}
!226 = !{!"../drivers/dma/xgene-dma.c", i32 843, i32 12}
!227 = !{ptr @.str.111, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/dma/xgene-dma.c", i32 496, i32 3}
!229 = !{ptr @.str.112, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @xgene_dma_alloc_descriptor._entry, !228, !"_entry", i1 false, i1 false}
!231 = !{ptr @xgene_dma_alloc_descriptor._entry_ptr, !228, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.113, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/dma/xgene-dma.c", i32 505, i32 2}
!234 = !{ptr @xgene_dma_alloc_descriptor.__UNIQUE_ID_ddebug237, !233, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!235 = !{ptr @xgene_dma_encode_xor_flyby.flyby_type, !236, !"flyby_type", i1 false, i1 false}
!236 = !{!"../drivers/dma/xgene-dma.c", i32 360, i32 12}
!237 = !{ptr @.str.114, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/dma/xgene-dma.c", i32 396, i32 3}
!239 = !{ptr @.str.115, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @xgene_dma_lookup_ext8._entry, !238, !"_entry", i1 false, i1 false}
!241 = !{ptr @xgene_dma_lookup_ext8._entry_ptr, !238, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @xgene_dma_prep_pq.multi, !243, !"multi", i1 false, i1 false}
!243 = !{!"../drivers/dma/xgene-dma.c", i32 893, i32 12}
!244 = !{ptr @xgene_dma_of_match_ptr, !245, !"xgene_dma_of_match_ptr", i1 false, i1 false}
!245 = !{!"../drivers/dma/xgene-dma.c", i32 1811, i32 34}
!246 = !{i32 1, !"wchar_size", i32 2}
!247 = !{i32 1, !"min_enum_size", i32 4}
!248 = !{i32 8, !"branch-target-enforcement", i32 0}
!249 = !{i32 8, !"sign-return-address", i32 0}
!250 = !{i32 8, !"sign-return-address-all", i32 0}
!251 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!252 = !{i32 7, !"uwtable", i32 1}
!253 = !{i32 7, !"frame-pointer", i32 2}
!254 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!255 = !{i64 6958897}
!256 = !{i64 2154491756}
!257 = !{i64 2154493111}
!258 = !{i64 6958479}
!259 = !{i64 2148995871, i64 2148995876, i64 2148995889, i64 2148995933, i64 2148995967, i64 2148995988}
!260 = !{!"branch_weights", i32 1, i32 2000}
!261 = !{i64 2155024275, i64 2155024763, i64 2155024312, i64 2155024368, i64 2155024402, i64 2155024426, i64 2155024467, i64 2155024488, i64 2155024516, i64 2155024550}
!262 = !{i64 2154924769, i64 2154925256, i64 2154924806, i64 2154924862, i64 2154924896, i64 2154924920, i64 2154924961, i64 2154924982, i64 2154925010, i64 2154925044}
!263 = !{i64 2154926269}
!264 = !{!"branch_weights", i32 4001, i32 4000000}
!265 = !{!"auto-init"}
