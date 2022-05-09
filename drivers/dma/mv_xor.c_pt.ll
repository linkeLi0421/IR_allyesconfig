; ModuleID = '/llk/IR_all_yes/drivers/dma/mv_xor.c_pt.bc'
source_filename = "../drivers/dma/mv_xor.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dma_cap_mask_t = type { [1 x i32] }
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
%struct.mv_xor_device = type { ptr, ptr, ptr, [2 x ptr], i32, [8 x i32], [8 x i32] }
%struct.mv_xor_channel_data = type { %struct.dma_cap_mask_t }
%struct.mv_xor_chan = type { i32, %struct.spinlock, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, i32, %struct.dma_device, %struct.dma_chan, i32, %struct.tasklet_struct, i32, [128 x i8], [128 x i8], i32, i32, i32, i32, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.mbus_dram_target_info = type { i8, i32, [4 x %struct.mbus_dram_window] }
%struct.mbus_dram_window = type { i8, i8, i64, i64 }
%struct.page = type { i32, %union.anon.2, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.dmaengine_unmap_data = type { i16, i8, i8, i8, ptr, %struct.kref, i32, [0 x i32] }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.mv_xor_desc_slot = type { %struct.list_head, %struct.list_head, i32, ptr, i16, %struct.dma_async_tx_descriptor }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.mv_xor_desc = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32 }
%struct.dmaengine_result = type { i32, i32 }

@__initcall__kmod_mv_xor__255_1462_mv_xor_driver_init6 = internal global ptr @mv_xor_driver_init, section ".initcall6.init", align 4
@mv_xor_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mv_xor_probe, ptr null, ptr null, ptr @mv_xor_suspend, ptr @mv_xor_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mv_xor_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mv_xor\00", [25 x i8] zeroinitializer }, align 32
@mv_xor_dt_ids = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,orion-xor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-380-xor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-3700-xor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@mv_xor_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1299, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Marvell shared XOR driver\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mv_xor_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/dma/mv_xor.c\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mv_xor_probe._entry_ptr = internal global ptr @mv_xor_probe._entry, section ".printk_index", align 4
@__cpu_present_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@mv_xor_channel_add.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&mv_chan->lock\00", [17 x i8] zeroinitializer }, align 32
@mv_xor_channel_add.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.3, ptr @.str.8, i8 1, i8 26, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mv_xor_channel_add\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"memcpy self test returned %d\0A\00", [34 x i8] zeroinitializer }, align 32
@mv_xor_channel_add.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.3, ptr @.str.9, i8 1, i8 28, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"xor self test returned %d\0A\00", [37 x i8] zeroinitializer }, align 32
@mv_xor_channel_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.3, i32 1145, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Marvell XOR (%s): ( %s%s%s)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mv_xor_channel_add._entry_ptr = internal global ptr @mv_xor_channel_add._entry, section ".printk_index", align 4
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Descriptor Mode\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Registers Mode\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xor \00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cpy \00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"intr \00", [26 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@mv_xor_alloc_chan_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 450, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"channel only initialized %d descriptor slots\00", [51 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mv_xor_alloc_chan_resources\00", [36 x i8] zeroinitializer }, align 32
@mv_xor_alloc_chan_resources._entry_ptr = internal global ptr @mv_xor_alloc_chan_resources._entry, section ".printk_index", align 4
@mv_xor_alloc_chan_resources.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.3, ptr @.str.22, i8 0, i8 118, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"allocated %d descriptor slots\0A\00", [33 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mv_xor_tx_submit.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.3, ptr @.str.24, i8 0, i8 98, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mv_xor_tx_submit\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s sw_desc %p: async_tx %p\0A\00", [36 x i8] zeroinitializer }, align 32
@mv_xor_tx_submit.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.3, ptr @.str.25, i8 0, i8 102, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Append to last desc %pa\0A\00", [39 x i8] zeroinitializer }, align 32
@mv_chan_start_new_chain.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.3, ptr @.str.27, i8 0, i8 45, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mv_chan_start_new_chain\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s %d: sw_desc %p\0A\00", [45 x i8] zeroinitializer }, align 32
@mv_xor_free_chan_resources.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 -91, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mv_xor_free_chan_resources\00", [37 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s slots_allocated %d\0A\00", [41 x i8] zeroinitializer }, align 32
@mv_xor_free_chan_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.3, i32 665, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"freeing %d in use descriptors!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mv_xor_free_chan_resources._entry_ptr = internal global ptr @mv_xor_free_chan_resources._entry, section ".printk_index", align 4
@mv_chan_slot_cleanup.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.3, ptr @.str.33, i8 0, i8 68, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mv_chan_slot_cleanup\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s %d\0A\00", [25 x i8] zeroinitializer }, align 32
@mv_chan_slot_cleanup.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.3, ptr @.str.34, i8 0, i8 68, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"current_desc %x\0A\00", [47 x i8] zeroinitializer }, align 32
@mv_chan_clean_completed_slots.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.3, ptr @.str.33, i8 0, i8 54, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mv_chan_clean_completed_slots\00", [34 x i8] zeroinitializer }, align 32
@mv_desc_clean_slot.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.3, ptr @.str.37, i8 0, i8 59, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mv_desc_clean_slot\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s %d: desc %p flags %d\0A\00", [39 x i8] zeroinitializer }, align 32
@mv_chan_activate.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.3, ptr @.str.39, i8 0, i8 39, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mv_chan_activate\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" activate chan.\0A\00", [47 x i8] zeroinitializer }, align 32
@mv_xor_prep_dma_xor.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.3, ptr @.str.41, i8 0, i8 -114, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mv_xor_prep_dma_xor\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s src_cnt: %d len: %zu dest %pad flags: %ld\0A\00", [50 x i8] zeroinitializer }, align 32
@mv_xor_prep_dma_xor.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.3, ptr @.str.42, i8 0, i8 -108, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s sw_desc %p async_tx %p \0A\00", [36 x i8] zeroinitializer }, align 32
@mv_xor_interrupt_handler.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.3, ptr @.str.44, i8 0, i8 -73, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mv_xor_interrupt_handler\00", [39 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"intr cause %x\0A\00", [17 x i8] zeroinitializer }, align 32
@mv_chan_err_interrupt_handler.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.3, ptr @.str.46, i8 0, i8 -77, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mv_chan_err_interrupt_handler\00", [34 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ignoring address decode error\0A\00", [33 x i8] zeroinitializer }, align 32
@mv_chan_err_interrupt_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.3, i32 724, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"error on chan %d. intr cause 0x%08x\0A\00", [59 x i8] zeroinitializer }, align 32
@mv_chan_err_interrupt_handler._entry_ptr = internal global ptr @mv_chan_err_interrupt_handler._entry, section ".printk_index", align 4
@mv_chan_dump_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.3, i32 697, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"config       0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mv_chan_dump_regs\00", [46 x i8] zeroinitializer }, align 32
@mv_chan_dump_regs._entry_ptr = internal global ptr @mv_chan_dump_regs._entry, section ".printk_index", align 4
@mv_chan_dump_regs._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.3, i32 700, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"activation   0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@mv_chan_dump_regs._entry_ptr.52 = internal global ptr @mv_chan_dump_regs._entry.50, section ".printk_index", align 4
@mv_chan_dump_regs._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.49, ptr @.str.3, i32 703, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"intr cause   0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@mv_chan_dump_regs._entry_ptr.55 = internal global ptr @mv_chan_dump_regs._entry.53, section ".printk_index", align 4
@mv_chan_dump_regs._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.49, ptr @.str.3, i32 706, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"intr mask    0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@mv_chan_dump_regs._entry_ptr.58 = internal global ptr @mv_chan_dump_regs._entry.56, section ".printk_index", align 4
@mv_chan_dump_regs._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.49, ptr @.str.3, i32 709, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"error cause  0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@mv_chan_dump_regs._entry_ptr.61 = internal global ptr @mv_chan_dump_regs._entry.59, section ".printk_index", align 4
@mv_chan_dump_regs._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.49, ptr @.str.3, i32 712, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"error addr   0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@mv_chan_dump_regs._entry_ptr.64 = internal global ptr @mv_chan_dump_regs._entry.62, section ".printk_index", align 4
@mv_chan_clear_eoc_cause.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.3, ptr @.str.66, i8 0, i8 32, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mv_chan_clear_eoc_cause\00", [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s, val 0x%08x\0A\00", [16 x i8] zeroinitializer }, align 32
@mv_chan_memcpy_self_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.3, i32 827, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Self-test cannot prepare operation, disabling\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mv_chan_memcpy_self_test\00", [39 x i8] zeroinitializer }, align 32
@mv_chan_memcpy_self_test._entry_ptr = internal global ptr @mv_chan_memcpy_self_test._entry, section ".printk_index", align 4
@mv_chan_memcpy_self_test._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.3, i32 835, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Self-test submit error, disabling\0A\00", [61 x i8] zeroinitializer }, align 32
@mv_chan_memcpy_self_test._entry_ptr.71 = internal global ptr @mv_chan_memcpy_self_test._entry.69, section ".printk_index", align 4
@mv_chan_memcpy_self_test._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.68, ptr @.str.3, i32 847, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Self-test copy timed out, disabling\0A\00", [59 x i8] zeroinitializer }, align 32
@mv_chan_memcpy_self_test._entry_ptr.74 = internal global ptr @mv_chan_memcpy_self_test._entry.72, section ".printk_index", align 4
@mv_chan_memcpy_self_test._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.68, ptr @.str.3, i32 856, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Self-test copy failed compare, disabling\0A\00", [54 x i8] zeroinitializer }, align 32
@mv_chan_memcpy_self_test._entry_ptr.77 = internal global ptr @mv_chan_memcpy_self_test._entry.75, section ".printk_index", align 4
@mv_chan_xor_self_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.78, ptr @.str.3, i32 960, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mv_chan_xor_self_test\00", [42 x i8] zeroinitializer }, align 32
@mv_chan_xor_self_test._entry_ptr = internal global ptr @mv_chan_xor_self_test._entry, section ".printk_index", align 4
@mv_chan_xor_self_test._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.78, ptr @.str.3, i32 968, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@mv_chan_xor_self_test._entry_ptr.80 = internal global ptr @mv_chan_xor_self_test._entry.79, section ".printk_index", align 4
@mv_chan_xor_self_test._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.78, ptr @.str.3, i32 980, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Self-test xor timed out, disabling\0A\00", [60 x i8] zeroinitializer }, align 32
@mv_chan_xor_self_test._entry_ptr.83 = internal global ptr @mv_chan_xor_self_test._entry.81, section ".printk_index", align 4
@mv_chan_xor_self_test._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.78, ptr @.str.3, i32 992, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"Self-test xor failed compare, disabling. index %d, data %x, expected %x\0A\00", [55 x i8] zeroinitializer }, align 32
@mv_chan_xor_self_test._entry_ptr.86 = internal global ptr @mv_chan_xor_self_test._entry.84, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 8]
@___asan_gen_.88 = private unnamed_addr constant [14 x i8] c"mv_xor_driver\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1452, i32 31 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1457, i32 19 }
@___asan_gen_.94 = private unnamed_addr constant [14 x i8] c"mv_xor_dt_ids\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1281, i32 34 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1299, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1117, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1129, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1136, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1141, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 326, i32 6 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 448, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 470, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 390, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 407, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 181, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 659, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 664, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 272, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 273, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 219, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 238, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 158, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 567, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 592, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 735, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 719, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 723, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 697, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 700, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 703, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 706, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 709, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 712, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 129, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 826, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 834, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 846, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 855, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 959, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 967, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 979, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.346 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.347 = private constant [24 x i8] c"../drivers/dma/mv_xor.c\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 990, i32 4 }
@llvm.compiler.used = appending global [107 x ptr] [ptr @__initcall__kmod_mv_xor__255_1462_mv_xor_driver_init6, ptr @mv_chan_dump_regs._entry, ptr @mv_chan_dump_regs._entry.50, ptr @mv_chan_dump_regs._entry.53, ptr @mv_chan_dump_regs._entry.56, ptr @mv_chan_dump_regs._entry.59, ptr @mv_chan_dump_regs._entry.62, ptr @mv_chan_dump_regs._entry_ptr, ptr @mv_chan_dump_regs._entry_ptr.52, ptr @mv_chan_dump_regs._entry_ptr.55, ptr @mv_chan_dump_regs._entry_ptr.58, ptr @mv_chan_dump_regs._entry_ptr.61, ptr @mv_chan_dump_regs._entry_ptr.64, ptr @mv_chan_err_interrupt_handler._entry, ptr @mv_chan_err_interrupt_handler._entry_ptr, ptr @mv_chan_memcpy_self_test._entry, ptr @mv_chan_memcpy_self_test._entry.69, ptr @mv_chan_memcpy_self_test._entry.72, ptr @mv_chan_memcpy_self_test._entry.75, ptr @mv_chan_memcpy_self_test._entry_ptr, ptr @mv_chan_memcpy_self_test._entry_ptr.71, ptr @mv_chan_memcpy_self_test._entry_ptr.74, ptr @mv_chan_memcpy_self_test._entry_ptr.77, ptr @mv_chan_xor_self_test._entry, ptr @mv_chan_xor_self_test._entry.79, ptr @mv_chan_xor_self_test._entry.81, ptr @mv_chan_xor_self_test._entry.84, ptr @mv_chan_xor_self_test._entry_ptr, ptr @mv_chan_xor_self_test._entry_ptr.80, ptr @mv_chan_xor_self_test._entry_ptr.83, ptr @mv_chan_xor_self_test._entry_ptr.86, ptr @mv_xor_alloc_chan_resources._entry, ptr @mv_xor_alloc_chan_resources._entry_ptr, ptr @mv_xor_channel_add._entry, ptr @mv_xor_channel_add._entry_ptr, ptr @mv_xor_free_chan_resources._entry, ptr @mv_xor_free_chan_resources._entry_ptr, ptr @mv_xor_probe._entry, ptr @mv_xor_probe._entry_ptr, ptr @mv_xor_driver, ptr @.str, ptr @mv_xor_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @mv_xor_channel_add.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.78, ptr @.str.82, ptr @.str.85], section "llvm.metadata"
@0 = internal global [87 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_xor_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_xor_dt_ids to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_xor_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_xor_channel_add.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_xor_channel_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_xor_alloc_chan_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_xor_free_chan_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_chan_err_interrupt_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_chan_dump_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_chan_dump_regs._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_chan_dump_regs._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_chan_dump_regs._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_chan_dump_regs._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_chan_dump_regs._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_chan_memcpy_self_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_chan_memcpy_self_test._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_chan_memcpy_self_test._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_chan_memcpy_self_test._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_chan_xor_self_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_chan_xor_self_test._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_chan_xor_self_test._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_chan_xor_self_test._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_xor_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mv_xor_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_xor_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %cap_mask = alloca %struct.dma_cap_mask_t, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 88, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup154_crit_edge, label %if.end

entry.cleanup154_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup154

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.cleanup154_crit_edge, label %if.end7

if.end.cleanup154_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup154

if.end7:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call4, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call4, i32 0, i32 1
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %3
  %add.i = add i32 %sub.i, %5
  %call10 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %3, i32 noundef %add.i) #8
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call10, ptr %call.i, align 4
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %if.end7.cleanup154_crit_edge, label %if.end14

if.end7.cleanup154_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup154

if.end14:                                         ; preds = %if.end7
  %call15 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #8
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.end14.cleanup154_crit_edge, label %if.end18

if.end14.cleanup154_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup154

if.end18:                                         ; preds = %if.end14
  %7 = ptrtoint ptr %call15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call15, align 4
  %end.i242 = getelementptr inbounds %struct.resource, ptr %call15, i32 0, i32 1
  %9 = ptrtoint ptr %end.i242 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %end.i242, align 4
  %sub.i243 = sub i32 1, %8
  %add.i244 = add i32 %sub.i243, %10
  %call22 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %8, i32 noundef %add.i244) #8
  %xor_high_base = getelementptr inbounds %struct.mv_xor_device, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %xor_high_base to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call22, ptr %xor_high_base, align 4
  %tobool24.not = icmp eq ptr %call22, null
  br i1 %tobool24.not, label %if.end18.cleanup154_crit_edge, label %if.end26

if.end18.cleanup154_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup154

if.end26:                                         ; preds = %if.end18
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %xor_type = getelementptr inbounds %struct.mv_xor_device, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %xor_type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %xor_type, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %tobool28.not = icmp eq ptr %15, null
  br i1 %tobool28.not, label %if.end26.if.else_crit_edge, label %if.end33

if.end26.if.else_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.end33:                                         ; preds = %if.end26
  %call31 = tail call ptr @of_match_device(ptr noundef nonnull @mv_xor_dt_ids, ptr noundef %dev) #8
  %data = getelementptr inbounds %struct.of_device_id, ptr %call31, i32 0, i32 3
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = ptrtoint ptr %xor_type to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %xor_type, align 4
  %cmp = icmp eq ptr %17, inttoptr (i32 2 to ptr)
  br i1 %cmp, label %if.then35, label %if.end33.if.else_crit_edge

if.end33.if.else_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mv_xor_conf_mbus_windows_a3700(ptr noundef nonnull %call.i)
  br label %if.end40

if.else:                                          ; preds = %if.end33.if.else_crit_edge, %if.end26.if.else_crit_edge
  %call36 = tail call ptr @mv_mbus_dram_info() #8
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %if.else.if.end40_crit_edge, label %if.then38

if.else.if.end40_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then38:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mv_xor_conf_mbus_windows(ptr noundef nonnull %call.i, ptr noundef nonnull %call36)
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.else.if.end40_crit_edge, %if.then35
  %call42 = tail call ptr @clk_get(ptr noundef %dev, ptr noundef null) #8
  %clk = getelementptr inbounds %struct.mv_xor_device, ptr %call.i, i32 0, i32 2
  %20 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call42, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end40.if.end.i.i_crit_edge, label %if.then45

if.end40.if.end.i.i_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then45:                                        ; preds = %if.end40
  %call.i245 = tail call i32 @clk_prepare(ptr noundef %call42) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i245)
  %tobool.not.i = icmp eq i32 %call.i245, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then45.if.end.i.i_crit_edge

if.then45.if.end.i.i_crit_edge:                   ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.end.i:                                         ; preds = %if.then45
  %call1.i = tail call i32 @clk_enable(ptr noundef %call42) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end.i.i_crit_edge, label %if.then3.i

if.end.i.if.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %call42) #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then3.i, %if.end.i.if.end.i.i_crit_edge, %if.then45.if.end.i.i_crit_edge, %if.end40.if.end.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_present_mask, i32 noundef %21) #8
  %22 = ptrtoint ptr %xor_type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %xor_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp51 = icmp eq i32 %23, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %24 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i344 = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_present_mask, i32 noundef %24) #8
  %sub = add i32 %call4.i.i344, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub)
  %cmp56 = icmp ugt i32 %sub, 5
  %div240 = lshr i32 %sub, 1
  %cond = select i1 %cmp56, i32 2, i32 %div240
  %max_channels.0 = select i1 %cmp51, i32 %call4.i.i344, i32 %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp58 = icmp eq i32 %call4.i.i, 0
  br i1 %cmp58, label %if.end.i.i.cleanup154_crit_edge, label %if.end60

if.end.i.i.cleanup154_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup154

if.end60:                                         ; preds = %if.end.i.i
  %25 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %of_node, align 8
  %tobool63.not = icmp eq ptr %26, null
  br i1 %tobool63.not, label %if.else91, label %if.then64

if.then64:                                        ; preds = %if.end60
  %call68 = tail call ptr @of_get_next_child(ptr noundef nonnull %26, ptr noundef null) #8
  %cmp69.not467 = icmp eq ptr %call68, null
  br i1 %cmp69.not467, label %if.then64.cleanup154_crit_edge, label %if.then64.for.body_crit_edge

if.then64.for.body_crit_edge:                     ; preds = %if.then64
  br label %for.body

if.then64.cleanup154_crit_edge:                   ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup154

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then64.for.body_crit_edge
  %i65.0469 = phi i32 [ %i65.1, %for.inc.for.body_crit_edge ], [ 0, %if.then64.for.body_crit_edge ]
  %np.0468 = phi ptr [ %call86, %for.inc.for.body_crit_edge ], [ %call68, %if.then64.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cap_mask) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %i65.0469, i32 %max_channels.0)
  %cmp70.not = icmp ult i32 %i65.0469, %max_channels.0
  br i1 %cmp70.not, label %if.end72, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end72:                                         ; preds = %for.body
  %27 = ptrtoint ptr %cap_mask to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %cap_mask, align 4
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %cap_mask) #8
  call void @_set_bit(i32 noundef 2, ptr noundef nonnull %cap_mask) #8
  call void @_set_bit(i32 noundef 8, ptr noundef nonnull %cap_mask) #8
  %call73 = call i32 @irq_of_parse_and_map(ptr noundef nonnull %np.0468, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end72.cleanup87.thread_crit_edge, label %if.end76

if.end72.cleanup87.thread_crit_edge:              ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup87.thread

if.end76:                                         ; preds = %if.end72
  %28 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %28)
  %.fca.0.load = load i32, ptr %cap_mask, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call77 = call fastcc ptr @mv_xor_channel_add(ptr noundef nonnull %call.i, ptr noundef %pdev, i32 noundef %i65.0469, [1 x i32] %.fca.0.insert, i32 noundef %call73)
  %cmp.i450 = icmp ugt ptr %call77, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i450, label %if.then79, label %if.end81

if.then79:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %call77 to i32
  call void @irq_dispose_mapping(i32 noundef %call73) #8
  br label %cleanup87.thread

if.end81:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.mv_xor_device, ptr %call.i, i32 0, i32 3, i32 %i65.0469
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call77, ptr %arrayidx, align 4
  %inc = add nuw i32 %i65.0469, 1
  br label %for.inc

cleanup87.thread:                                 ; preds = %if.then79, %if.end72.cleanup87.thread_crit_edge
  %ret.1.ph = phi i32 [ %29, %if.then79 ], [ -19, %if.end72.cleanup87.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cap_mask) #8
  br label %err_channel_add

for.inc:                                          ; preds = %if.end81, %for.body.for.inc_crit_edge
  %i65.1 = phi i32 [ %inc, %if.end81 ], [ %i65.0469, %for.body.for.inc_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cap_mask) #8
  %31 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %of_node, align 8
  %call86 = call ptr @of_get_next_child(ptr noundef %32, ptr noundef nonnull %np.0468) #8
  %cmp69.not = icmp eq ptr %call86, null
  br i1 %cmp69.not, label %for.inc.cleanup154_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup154_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup154

if.else91:                                        ; preds = %if.end60
  %tobool92.not = icmp eq ptr %1, null
  br i1 %tobool92.not, label %if.else91.cleanup154_crit_edge, label %land.lhs.true

if.else91.cleanup154_crit_edge:                   ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup154

land.lhs.true:                                    ; preds = %if.else91
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %tobool94.not = icmp ne ptr %34, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_channels.0)
  %cmp97470 = icmp ne i32 %max_channels.0, 0
  %or.cond = select i1 %tobool94.not, i1 %cmp97470, i1 false
  br i1 %or.cond, label %land.lhs.true.for.body98_crit_edge, label %land.lhs.true.cleanup154_crit_edge

land.lhs.true.cleanup154_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup154

land.lhs.true.for.body98_crit_edge:               ; preds = %land.lhs.true
  br label %for.body98

for.body98:                                       ; preds = %for.inc121.for.body98_crit_edge, %land.lhs.true.for.body98_crit_edge
  %i.0471 = phi i32 [ %inc122, %for.inc121.for.body98_crit_edge ], [ 0, %land.lhs.true.for.body98_crit_edge ]
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %call103 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef %i.0471) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %cmp104 = icmp slt i32 %call103, 0
  br i1 %cmp104, label %for.body98.err_channel_add_crit_edge, label %if.end106

for.body98.err_channel_add_crit_edge:             ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_channel_add

if.end106:                                        ; preds = %for.body98
  %arrayidx102 = getelementptr %struct.mv_xor_channel_data, ptr %36, i32 %i.0471
  %37 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.unpack = load i32, ptr %arrayidx102, align 4
  %38 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call109 = tail call fastcc ptr @mv_xor_channel_add(ptr noundef nonnull %call.i, ptr noundef %pdev, i32 noundef %i.0471, [1 x i32] %38, i32 noundef %call103)
  %cmp.i451 = icmp ugt ptr %call109, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i451, label %if.then111, label %for.inc121

if.then111:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %call109 to i32
  br label %err_channel_add

for.inc121:                                       ; preds = %if.end106
  %arrayidx115 = getelementptr %struct.mv_xor_device, ptr %call.i, i32 0, i32 3, i32 %i.0471
  %40 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call109, ptr %arrayidx115, align 4
  %inc122 = add nuw i32 %i.0471, 1
  %exitcond.not = icmp eq i32 %inc122, %max_channels.0
  br i1 %exitcond.not, label %for.inc121.cleanup154_crit_edge, label %for.inc121.for.body98_crit_edge

for.inc121.for.body98_crit_edge:                  ; preds = %for.inc121
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body98

for.inc121.cleanup154_crit_edge:                  ; preds = %for.inc121
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup154

err_channel_add:                                  ; preds = %if.then111, %for.body98.err_channel_add_crit_edge, %cleanup87.thread
  %ret.5 = phi i32 [ %ret.1.ph, %cleanup87.thread ], [ %39, %if.then111 ], [ %call103, %for.body98.err_channel_add_crit_edge ]
  %arrayidx130 = getelementptr %struct.mv_xor_device, ptr %call.i, i32 0, i32 3, i32 0
  %41 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx130, align 4
  %tobool131.not = icmp eq ptr %42, null
  br i1 %tobool131.not, label %err_channel_add.for.inc145_crit_edge, label %if.then132

err_channel_add.for.inc145_crit_edge:             ; preds = %err_channel_add
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc145

if.then132:                                       ; preds = %err_channel_add
  %dmadev.i = getelementptr inbounds %struct.mv_xor_chan, ptr %42, i32 0, i32 13
  %dev1.i = getelementptr inbounds %struct.mv_xor_chan, ptr %42, i32 0, i32 13, i32 15
  %43 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev1.i, align 4
  call void @dma_async_device_unregister(ptr noundef %dmadev.i) #8
  %dma_desc_pool_virt.i = getelementptr inbounds %struct.mv_xor_chan, ptr %42, i32 0, i32 11
  %45 = ptrtoint ptr %dma_desc_pool_virt.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dma_desc_pool_virt.i, align 4
  %dma_desc_pool.i = getelementptr inbounds %struct.mv_xor_chan, ptr %42, i32 0, i32 10
  %47 = ptrtoint ptr %dma_desc_pool.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dma_desc_pool.i, align 4
  call void @dma_free_attrs(ptr noundef %44, i32 noundef 196608, ptr noundef %46, i32 noundef %48, i32 noundef 0) #8
  %dummy_src_addr.i = getelementptr inbounds %struct.mv_xor_chan, ptr %42, i32 0, i32 20
  %49 = ptrtoint ptr %dummy_src_addr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dummy_src_addr.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %44, i32 noundef %50, i32 noundef 128, i32 noundef 2, i32 noundef 0) #8
  %dummy_dst_addr.i = getelementptr inbounds %struct.mv_xor_chan, ptr %42, i32 0, i32 21
  %51 = ptrtoint ptr %dummy_dst_addr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dummy_dst_addr.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %44, i32 noundef %52, i32 noundef 128, i32 noundef 1, i32 noundef 0) #8
  %channels.i = getelementptr inbounds %struct.mv_xor_chan, ptr %42, i32 0, i32 13, i32 3
  %53 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %channels.i, align 4
  %cmp.not1.i = icmp eq ptr %54, %channels.i
  br i1 %cmp.not1.i, label %if.then132.mv_xor_channel_remove.exit_crit_edge, label %if.then132.for.body.i_crit_edge

if.then132.for.body.i_crit_edge:                  ; preds = %if.then132
  br label %for.body.i

if.then132.mv_xor_channel_remove.exit_crit_edge:  ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #10
  br label %mv_xor_channel_remove.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.then132.for.body.i_crit_edge
  %55 = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %54, %if.then132.for.body.i_crit_edge ]
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pn.i = load ptr, ptr %55, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %55) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i.i.i, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %55, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev1.i.i.i.i, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %60, ptr %58, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %63 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr inttoptr (i32 256 to ptr), ptr %55, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %64 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %channels.i
  br i1 %cmp.not.i, label %list_del.exit.i.mv_xor_channel_remove.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

list_del.exit.i.mv_xor_channel_remove.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mv_xor_channel_remove.exit

mv_xor_channel_remove.exit:                       ; preds = %list_del.exit.i.mv_xor_channel_remove.exit_crit_edge, %if.then132.mv_xor_channel_remove.exit_crit_edge
  %irq.i = getelementptr inbounds %struct.mv_xor_chan, ptr %42, i32 0, i32 5
  %65 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %irq.i, align 4
  %call.i452 = call ptr @free_irq(i32 noundef %66, ptr noundef nonnull %42) #8
  %67 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %of_node, align 8
  %tobool138.not = icmp eq ptr %68, null
  br i1 %tobool138.not, label %mv_xor_channel_remove.exit.for.inc145_crit_edge, label %if.then139

mv_xor_channel_remove.exit.for.inc145_crit_edge:  ; preds = %mv_xor_channel_remove.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc145

if.then139:                                       ; preds = %mv_xor_channel_remove.exit
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx130, align 4
  %irq142 = getelementptr inbounds %struct.mv_xor_chan, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %irq142 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %irq142, align 4
  call void @irq_dispose_mapping(i32 noundef %72) #8
  br label %for.inc145

for.inc145:                                       ; preds = %if.then139, %mv_xor_channel_remove.exit.for.inc145_crit_edge, %err_channel_add.for.inc145_crit_edge
  %arrayidx130.1 = getelementptr %struct.mv_xor_device, ptr %call.i, i32 0, i32 3, i32 1
  %73 = ptrtoint ptr %arrayidx130.1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx130.1, align 4
  %tobool131.not.1 = icmp eq ptr %74, null
  br i1 %tobool131.not.1, label %for.inc145.for.inc145.1_crit_edge, label %if.then132.1

for.inc145.for.inc145.1_crit_edge:                ; preds = %for.inc145
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc145.1

if.then132.1:                                     ; preds = %for.inc145
  %dmadev.i.1 = getelementptr inbounds %struct.mv_xor_chan, ptr %74, i32 0, i32 13
  %dev1.i.1 = getelementptr inbounds %struct.mv_xor_chan, ptr %74, i32 0, i32 13, i32 15
  %75 = ptrtoint ptr %dev1.i.1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev1.i.1, align 4
  call void @dma_async_device_unregister(ptr noundef %dmadev.i.1) #8
  %dma_desc_pool_virt.i.1 = getelementptr inbounds %struct.mv_xor_chan, ptr %74, i32 0, i32 11
  %77 = ptrtoint ptr %dma_desc_pool_virt.i.1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dma_desc_pool_virt.i.1, align 4
  %dma_desc_pool.i.1 = getelementptr inbounds %struct.mv_xor_chan, ptr %74, i32 0, i32 10
  %79 = ptrtoint ptr %dma_desc_pool.i.1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %dma_desc_pool.i.1, align 4
  call void @dma_free_attrs(ptr noundef %76, i32 noundef 196608, ptr noundef %78, i32 noundef %80, i32 noundef 0) #8
  %dummy_src_addr.i.1 = getelementptr inbounds %struct.mv_xor_chan, ptr %74, i32 0, i32 20
  %81 = ptrtoint ptr %dummy_src_addr.i.1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %dummy_src_addr.i.1, align 4
  call void @dma_unmap_page_attrs(ptr noundef %76, i32 noundef %82, i32 noundef 128, i32 noundef 2, i32 noundef 0) #8
  %dummy_dst_addr.i.1 = getelementptr inbounds %struct.mv_xor_chan, ptr %74, i32 0, i32 21
  %83 = ptrtoint ptr %dummy_dst_addr.i.1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %dummy_dst_addr.i.1, align 4
  call void @dma_unmap_page_attrs(ptr noundef %76, i32 noundef %84, i32 noundef 128, i32 noundef 1, i32 noundef 0) #8
  %channels.i.1 = getelementptr inbounds %struct.mv_xor_chan, ptr %74, i32 0, i32 13, i32 3
  %85 = ptrtoint ptr %channels.i.1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %channels.i.1, align 4
  %cmp.not1.i.1 = icmp eq ptr %86, %channels.i.1
  br i1 %cmp.not1.i.1, label %if.then132.1.mv_xor_channel_remove.exit.1_crit_edge, label %if.then132.1.for.body.i.1_crit_edge

if.then132.1.for.body.i.1_crit_edge:              ; preds = %if.then132.1
  br label %for.body.i.1

if.then132.1.mv_xor_channel_remove.exit.1_crit_edge: ; preds = %if.then132.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %mv_xor_channel_remove.exit.1

for.body.i.1:                                     ; preds = %list_del.exit.i.1.for.body.i.1_crit_edge, %if.then132.1.for.body.i.1_crit_edge
  %87 = phi ptr [ %.pn.i.1, %list_del.exit.i.1.for.body.i.1_crit_edge ], [ %86, %if.then132.1.for.body.i.1_crit_edge ]
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %.pn.i.1 = load ptr, ptr %87, align 4
  %call.i.i.i.1 = call zeroext i1 @__list_del_entry_valid(ptr noundef %87) #8
  br i1 %call.i.i.i.1, label %if.end.i.i.i.1, label %for.body.i.1.list_del.exit.i.1_crit_edge

for.body.i.1.list_del.exit.i.1_crit_edge:         ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i.1

if.end.i.i.i.1:                                   ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i.1 = getelementptr inbounds %struct.list_head, ptr %87, i32 0, i32 1
  %89 = ptrtoint ptr %prev.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %prev.i.i.i.1, align 4
  %91 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %87, align 4
  %prev1.i.i.i.i.1 = getelementptr inbounds %struct.list_head, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %prev1.i.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %90, ptr %prev1.i.i.i.i.1, align 4
  %94 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %92, ptr %90, align 4
  br label %list_del.exit.i.1

list_del.exit.i.1:                                ; preds = %if.end.i.i.i.1, %for.body.i.1.list_del.exit.i.1_crit_edge
  %95 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr inttoptr (i32 256 to ptr), ptr %87, align 4
  %prev.i.i.1 = getelementptr inbounds %struct.list_head, ptr %87, i32 0, i32 1
  %96 = ptrtoint ptr %prev.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.1, align 4
  %cmp.not.i.1 = icmp eq ptr %.pn.i.1, %channels.i.1
  br i1 %cmp.not.i.1, label %list_del.exit.i.1.mv_xor_channel_remove.exit.1_crit_edge, label %list_del.exit.i.1.for.body.i.1_crit_edge

list_del.exit.i.1.for.body.i.1_crit_edge:         ; preds = %list_del.exit.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.1

list_del.exit.i.1.mv_xor_channel_remove.exit.1_crit_edge: ; preds = %list_del.exit.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %mv_xor_channel_remove.exit.1

mv_xor_channel_remove.exit.1:                     ; preds = %list_del.exit.i.1.mv_xor_channel_remove.exit.1_crit_edge, %if.then132.1.mv_xor_channel_remove.exit.1_crit_edge
  %irq.i.1 = getelementptr inbounds %struct.mv_xor_chan, ptr %74, i32 0, i32 5
  %97 = ptrtoint ptr %irq.i.1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %irq.i.1, align 4
  %call.i452.1 = call ptr @free_irq(i32 noundef %98, ptr noundef nonnull %74) #8
  %99 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %of_node, align 8
  %tobool138.not.1 = icmp eq ptr %100, null
  br i1 %tobool138.not.1, label %mv_xor_channel_remove.exit.1.for.inc145.1_crit_edge, label %if.then139.1

mv_xor_channel_remove.exit.1.for.inc145.1_crit_edge: ; preds = %mv_xor_channel_remove.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc145.1

if.then139.1:                                     ; preds = %mv_xor_channel_remove.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  %101 = ptrtoint ptr %arrayidx130.1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx130.1, align 4
  %irq142.1 = getelementptr inbounds %struct.mv_xor_chan, ptr %102, i32 0, i32 5
  %103 = ptrtoint ptr %irq142.1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %irq142.1, align 4
  call void @irq_dispose_mapping(i32 noundef %104) #8
  br label %for.inc145.1

for.inc145.1:                                     ; preds = %if.then139.1, %mv_xor_channel_remove.exit.1.for.inc145.1_crit_edge, %for.inc145.for.inc145.1_crit_edge
  %105 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %clk, align 4
  %cmp.i453 = icmp ugt ptr %106, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i453, label %for.inc145.1.cleanup154_crit_edge, label %if.then150

for.inc145.1.cleanup154_crit_edge:                ; preds = %for.inc145.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup154

if.then150:                                       ; preds = %for.inc145.1
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_disable(ptr noundef %106) #8
  call void @clk_unprepare(ptr noundef %106) #8
  %107 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %clk, align 4
  call void @clk_put(ptr noundef %108) #8
  br label %cleanup154

cleanup154:                                       ; preds = %if.then150, %for.inc145.1.cleanup154_crit_edge, %for.inc121.cleanup154_crit_edge, %land.lhs.true.cleanup154_crit_edge, %if.else91.cleanup154_crit_edge, %for.inc.cleanup154_crit_edge, %if.then64.cleanup154_crit_edge, %if.end.i.i.cleanup154_crit_edge, %if.end18.cleanup154_crit_edge, %if.end14.cleanup154_crit_edge, %if.end7.cleanup154_crit_edge, %if.end.cleanup154_crit_edge, %entry.cleanup154_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup154_crit_edge ], [ -19, %if.end.cleanup154_crit_edge ], [ -16, %if.end7.cleanup154_crit_edge ], [ -19, %if.end14.cleanup154_crit_edge ], [ -16, %if.end18.cleanup154_crit_edge ], [ 0, %if.end.i.i.cleanup154_crit_edge ], [ 0, %if.else91.cleanup154_crit_edge ], [ 0, %land.lhs.true.cleanup154_crit_edge ], [ %ret.5, %if.then150 ], [ %ret.5, %for.inc145.1.cleanup154_crit_edge ], [ 0, %if.then64.cleanup154_crit_edge ], [ 0, %for.inc121.cleanup154_crit_edge ], [ 0, %for.inc.cleanup154_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_xor_suspend(ptr nocapture noundef readonly %pdev, [1 x i32] %state.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx = getelementptr %struct.mv_xor_device, ptr %1, i32 0, i32 3, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mmr_base = getelementptr inbounds %struct.mv_xor_chan, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %mmr_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmr_base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 16
  %idx = getelementptr inbounds %struct.mv_xor_chan, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idx, align 4
  %mul = shl i32 %7, 2
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %mul
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #8, !srcloc !181
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %saved_config_reg = getelementptr inbounds %struct.mv_xor_chan, ptr %3, i32 0, i32 22
  %10 = ptrtoint ptr %saved_config_reg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %saved_config_reg, align 4
  %11 = ptrtoint ptr %mmr_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmr_base, align 4
  %add.ptr5 = getelementptr i8, ptr %12, i32 64
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #8, !srcloc !181
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %saved_int_mask_reg = getelementptr inbounds %struct.mv_xor_chan, ptr %3, i32 0, i32 23
  %15 = ptrtoint ptr %saved_int_mask_reg to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %saved_int_mask_reg, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %arrayidx.1 = getelementptr %struct.mv_xor_device, ptr %1, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %17, null
  br i1 %tobool.not.1, label %cleanup.cleanup.1_crit_edge, label %if.end.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.1

if.end.1:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  %mmr_base.1 = getelementptr inbounds %struct.mv_xor_chan, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %mmr_base.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmr_base.1, align 4
  %add.ptr.1 = getelementptr i8, ptr %19, i32 16
  %idx.1 = getelementptr inbounds %struct.mv_xor_chan, ptr %17, i32 0, i32 4
  %20 = ptrtoint ptr %idx.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %idx.1, align 4
  %mul.1 = shl i32 %21, 2
  %add.ptr1.1 = getelementptr i8, ptr %add.ptr.1, i32 %mul.1
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.1) #8, !srcloc !181
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %saved_config_reg.1 = getelementptr inbounds %struct.mv_xor_chan, ptr %17, i32 0, i32 22
  %24 = ptrtoint ptr %saved_config_reg.1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %saved_config_reg.1, align 4
  %25 = ptrtoint ptr %mmr_base.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmr_base.1, align 4
  %add.ptr5.1 = getelementptr i8, ptr %26, i32 64
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.1) #8, !srcloc !181
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %saved_int_mask_reg.1 = getelementptr inbounds %struct.mv_xor_chan, ptr %17, i32 0, i32 23
  %29 = ptrtoint ptr %saved_int_mask_reg.1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %saved_int_mask_reg.1, align 4
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.end.1, %cleanup.cleanup.1_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_xor_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx = getelementptr %struct.mv_xor_device, ptr %1, i32 0, i32 3, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %saved_config_reg = getelementptr inbounds %struct.mv_xor_chan, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %saved_config_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %saved_config_reg, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %mmr_base = getelementptr inbounds %struct.mv_xor_chan, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %mmr_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmr_base, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 16
  %idx = getelementptr inbounds %struct.mv_xor_chan, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %idx, align 4
  %mul = shl i32 %10, 2
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %6) #8, !srcloc !182
  %saved_int_mask_reg = getelementptr inbounds %struct.mv_xor_chan, ptr %3, i32 0, i32 23
  %11 = ptrtoint ptr %saved_int_mask_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %saved_int_mask_reg, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %14 = ptrtoint ptr %mmr_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmr_base, align 4
  %add.ptr3 = getelementptr i8, ptr %15, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %13) #8, !srcloc !182
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %arrayidx.1 = getelementptr %struct.mv_xor_device, ptr %1, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %17, null
  br i1 %tobool.not.1, label %cleanup.cleanup.1_crit_edge, label %if.end.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.1

if.end.1:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  %saved_config_reg.1 = getelementptr inbounds %struct.mv_xor_chan, ptr %17, i32 0, i32 22
  %18 = ptrtoint ptr %saved_config_reg.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %saved_config_reg.1, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %mmr_base.1 = getelementptr inbounds %struct.mv_xor_chan, ptr %17, i32 0, i32 2
  %21 = ptrtoint ptr %mmr_base.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmr_base.1, align 4
  %add.ptr.1 = getelementptr i8, ptr %22, i32 16
  %idx.1 = getelementptr inbounds %struct.mv_xor_chan, ptr %17, i32 0, i32 4
  %23 = ptrtoint ptr %idx.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %idx.1, align 4
  %mul.1 = shl i32 %24, 2
  %add.ptr1.1 = getelementptr i8, ptr %add.ptr.1, i32 %mul.1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.1, i32 %20) #8, !srcloc !182
  %saved_int_mask_reg.1 = getelementptr inbounds %struct.mv_xor_chan, ptr %17, i32 0, i32 23
  %25 = ptrtoint ptr %saved_int_mask_reg.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %saved_int_mask_reg.1, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = ptrtoint ptr %mmr_base.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmr_base.1, align 4
  %add.ptr3.1 = getelementptr i8, ptr %29, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.1, i32 %27) #8, !srcloc !182
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.end.1, %cleanup.cleanup.1_crit_edge
  %xor_type = getelementptr inbounds %struct.mv_xor_device, ptr %1, i32 0, i32 4
  %30 = ptrtoint ptr %xor_type to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %xor_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp4 = icmp eq i32 %31, 2
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mv_xor_conf_mbus_windows_a3700(ptr noundef %1)
  br label %cleanup11

if.end6:                                          ; preds = %cleanup.1
  %call7 = tail call ptr @mv_mbus_dram_info() #8
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.cleanup11_crit_edge, label %if.then9

if.end6.cleanup11_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mv_xor_conf_mbus_windows(ptr noundef %1, ptr noundef nonnull %call7)
  br label %cleanup11

cleanup11:                                        ; preds = %if.then9, %if.end6.cleanup11_crit_edge, %if.then5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mv_xor_conf_mbus_windows_a3700(ptr nocapture noundef readonly %xordev) unnamed_addr #2 align 64 {
do.body.peel.next79:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %xor_high_base = getelementptr inbounds %struct.mv_xor_device, ptr %xordev, i32 0, i32 1
  %0 = ptrtoint ptr %xor_high_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xor_high_base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !183
  tail call void @arm_heavy_mb() #8
  %add.ptr.peel = getelementptr i8, ptr %1, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.peel, i32 0) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  tail call void @arm_heavy_mb() #8
  %add.ptr6.peel = getelementptr i8, ptr %1, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.peel, i32 0) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %add.ptr13.peel = getelementptr i8, ptr %1, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.peel, i32 0) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !183
  tail call void @arm_heavy_mb() #8
  %add.ptr.peel55 = getelementptr i8, ptr %1, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.peel55, i32 0) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  tail call void @arm_heavy_mb() #8
  %add.ptr6.peel57 = getelementptr i8, ptr %1, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.peel57, i32 0) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %add.ptr13.peel61 = getelementptr i8, ptr %1, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.peel61, i32 0) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !183
  tail call void @arm_heavy_mb() #8
  %add.ptr.peel69 = getelementptr i8, ptr %1, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.peel69, i32 0) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  tail call void @arm_heavy_mb() #8
  %add.ptr6.peel71 = getelementptr i8, ptr %1, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.peel71, i32 0) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %add.ptr13.peel75 = getelementptr i8, ptr %1, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.peel75, i32 0) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !183
  tail call void @arm_heavy_mb() #8
  %add.ptr.peel83 = getelementptr i8, ptr %1, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.peel83, i32 0) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  tail call void @arm_heavy_mb() #8
  %add.ptr6.peel85 = getelementptr i8, ptr %1, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.peel85, i32 0) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %add.ptr13.peel89 = getelementptr i8, ptr %1, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.peel89, i32 0) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !183
  tail call void @arm_heavy_mb() #8
  %add.ptr = getelementptr i8, ptr %1, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  tail call void @arm_heavy_mb() #8
  %add.ptr6 = getelementptr i8, ptr %1, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !183
  tail call void @arm_heavy_mb() #8
  %add.ptr.1 = getelementptr i8, ptr %1, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1, i32 0) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  tail call void @arm_heavy_mb() #8
  %add.ptr6.1 = getelementptr i8, ptr %1, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.1, i32 0) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !183
  tail call void @arm_heavy_mb() #8
  %add.ptr.2 = getelementptr i8, ptr %1, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.2, i32 0) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  tail call void @arm_heavy_mb() #8
  %add.ptr6.2 = getelementptr i8, ptr %1, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.2, i32 0) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !183
  tail call void @arm_heavy_mb() #8
  %add.ptr.3 = getelementptr i8, ptr %1, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.3, i32 0) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  tail call void @arm_heavy_mb() #8
  %add.ptr6.3 = getelementptr i8, ptr %1, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.3, i32 0) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !186
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.peel, i32 65535) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !187
  tail call void @arm_heavy_mb() #8
  %add.ptr22 = getelementptr i8, ptr %1, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 16777984) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %add.ptr26 = getelementptr i8, ptr %1, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 16777984) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  tail call void @arm_heavy_mb() #8
  %add.ptr30 = getelementptr i8, ptr %1, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 0) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !190
  tail call void @arm_heavy_mb() #8
  %add.ptr34 = getelementptr i8, ptr %1, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 0) #8, !srcloc !182
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mv_mbus_dram_info() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mv_xor_conf_mbus_windows(ptr nocapture noundef %xordev, ptr nocapture noundef readonly %dram) unnamed_addr #2 align 64 {
do.body.peel.next137:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %xor_high_base = getelementptr inbounds %struct.mv_xor_device, ptr %xordev, i32 0, i32 1
  %0 = ptrtoint ptr %xor_high_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xor_high_base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  tail call void @arm_heavy_mb() #8
  %add.ptr.peel = getelementptr i8, ptr %1, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.peel, i32 0) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  tail call void @arm_heavy_mb() #8
  %add.ptr6.peel = getelementptr i8, ptr %1, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.peel, i32 0) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  tail call void @arm_heavy_mb() #8
  %add.ptr13.peel = getelementptr i8, ptr %1, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.peel, i32 0) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  tail call void @arm_heavy_mb() #8
  %add.ptr.peel113 = getelementptr i8, ptr %1, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.peel113, i32 0) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  tail call void @arm_heavy_mb() #8
  %add.ptr6.peel115 = getelementptr i8, ptr %1, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.peel115, i32 0) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  tail call void @arm_heavy_mb() #8
  %add.ptr13.peel119 = getelementptr i8, ptr %1, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.peel119, i32 0) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  tail call void @arm_heavy_mb() #8
  %add.ptr.peel127 = getelementptr i8, ptr %1, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.peel127, i32 0) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  tail call void @arm_heavy_mb() #8
  %add.ptr6.peel129 = getelementptr i8, ptr %1, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.peel129, i32 0) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  tail call void @arm_heavy_mb() #8
  %add.ptr13.peel133 = getelementptr i8, ptr %1, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.peel133, i32 0) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  tail call void @arm_heavy_mb() #8
  %add.ptr.peel141 = getelementptr i8, ptr %1, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.peel141, i32 0) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  tail call void @arm_heavy_mb() #8
  %add.ptr6.peel143 = getelementptr i8, ptr %1, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.peel143, i32 0) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  tail call void @arm_heavy_mb() #8
  %add.ptr13.peel147 = getelementptr i8, ptr %1, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.peel147, i32 0) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  tail call void @arm_heavy_mb() #8
  %add.ptr = getelementptr i8, ptr %1, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  tail call void @arm_heavy_mb() #8
  %add.ptr6 = getelementptr i8, ptr %1, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  tail call void @arm_heavy_mb() #8
  %add.ptr.1 = getelementptr i8, ptr %1, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1, i32 0) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  tail call void @arm_heavy_mb() #8
  %add.ptr6.1 = getelementptr i8, ptr %1, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.1, i32 0) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  tail call void @arm_heavy_mb() #8
  %add.ptr.2 = getelementptr i8, ptr %1, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.2, i32 0) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  tail call void @arm_heavy_mb() #8
  %add.ptr6.2 = getelementptr i8, ptr %1, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.2, i32 0) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  tail call void @arm_heavy_mb() #8
  %add.ptr.3 = getelementptr i8, ptr %1, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.3, i32 0) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  tail call void @arm_heavy_mb() #8
  %add.ptr6.3 = getelementptr i8, ptr %1, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.3, i32 0) #8, !srcloc !182
  %num_cs = getelementptr inbounds %struct.mbus_dram_target_info, ptr %dram, i32 0, i32 1
  %2 = ptrtoint ptr %num_cs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_cs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp15106 = icmp sgt i32 %3, 0
  br i1 %cmp15106, label %for.body16.lr.ph, label %do.body.peel.next137.do.body55_crit_edge

do.body.peel.next137.do.body55_crit_edge:         ; preds = %do.body.peel.next137
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body55

for.body16.lr.ph:                                 ; preds = %do.body.peel.next137
  %cs17 = getelementptr inbounds %struct.mbus_dram_target_info, ptr %dram, i32 0, i32 2
  br label %for.body16

for.body16:                                       ; preds = %for.body16.for.body16_crit_edge, %for.body16.lr.ph
  %i.1108 = phi i32 [ 0, %for.body16.lr.ph ], [ %inc53, %for.body16.for.body16_crit_edge ]
  %win_enable.0107 = phi i32 [ 0, %for.body16.lr.ph ], [ %or51, %for.body16.for.body16_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  %base22 = getelementptr %struct.mbus_dram_window, ptr %cs17, i32 %i.1108, i32 2
  %4 = ptrtoint ptr %base22 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %base22, align 8
  %and = and i64 %5, 4294901760
  %mbus_attr = getelementptr %struct.mbus_dram_window, ptr %cs17, i32 %i.1108, i32 1
  %6 = ptrtoint ptr %mbus_attr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mbus_attr, align 1
  %conv = zext i8 %7 to i32
  %shl23 = shl nuw nsw i32 %conv, 8
  %8 = ptrtoint ptr %dram to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dram, align 8
  %conv25 = zext i8 %9 to i64
  %or = or i64 %and, %conv25
  %10 = trunc i64 %or to i32
  %conv27 = or i32 %shl23, %10
  %11 = tail call i32 @llvm.bswap.i32(i32 %conv27)
  %shl28 = shl i32 %i.1108, 2
  %add29 = add i32 %shl28, 80
  %add.ptr30 = getelementptr i8, ptr %1, i32 %add29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %11) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !195
  tail call void @arm_heavy_mb() #8
  %size = getelementptr %struct.mbus_dram_window, ptr %cs17, i32 %i.1108, i32 3
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %size, align 8
  %14 = trunc i64 %13 to i32
  %15 = add i32 %14, -1
  %conv35 = and i32 %15, -65536
  %16 = tail call i32 @llvm.bswap.i32(i32 %conv35)
  %add37 = add i32 %shl28, 112
  %add.ptr38 = getelementptr i8, ptr %1, i32 %add37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %16) #8, !srcloc !182
  %17 = ptrtoint ptr %base22 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %base22, align 8
  %conv40 = trunc i64 %18 to i32
  %arrayidx = getelementptr %struct.mv_xor_device, ptr %xordev, i32 0, i32 5, i32 %i.1108
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv40, ptr %arrayidx, align 4
  %20 = load i64, ptr %base22, align 8
  %21 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %size, align 8
  %add43 = add i64 %22, %20
  %23 = trunc i64 %add43 to i32
  %conv45 = add i32 %23, -1
  %arrayidx46 = getelementptr %struct.mv_xor_device, ptr %xordev, i32 0, i32 6, i32 %i.1108
  %24 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv45, ptr %arrayidx46, align 4
  %shl47 = shl nuw i32 1, %i.1108
  %or48 = or i32 %shl47, %win_enable.0107
  %mul = shl nuw i32 %i.1108, 1
  %add49 = add i32 %mul, 16
  %shl50 = shl i32 3, %add49
  %or51 = or i32 %or48, %shl50
  %inc53 = add nuw nsw i32 %i.1108, 1
  %25 = ptrtoint ptr %num_cs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_cs, align 4
  %cmp15 = icmp slt i32 %inc53, %26
  br i1 %cmp15, label %for.body16.for.body16_crit_edge, label %for.body16.do.body55_crit_edge

for.body16.do.body55_crit_edge:                   ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body55

for.body16.for.body16_crit_edge:                  ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body16

do.body55:                                        ; preds = %for.body16.do.body55_crit_edge, %do.body.peel.next137.do.body55_crit_edge
  %win_enable.0.lcssa = phi i32 [ 0, %do.body.peel.next137.do.body55_crit_edge ], [ %or51, %for.body16.do.body55_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  tail call void @arm_heavy_mb() #8
  %27 = tail call i32 @llvm.bswap.i32(i32 %win_enable.0.lcssa)
  %add.ptr58 = getelementptr i8, ptr %1, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 %27) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  tail call void @arm_heavy_mb() #8
  %add.ptr62 = getelementptr i8, ptr %1, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 %27) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !198
  tail call void @arm_heavy_mb() #8
  %add.ptr66 = getelementptr i8, ptr %1, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 0) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %add.ptr70 = getelementptr i8, ptr %1, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 0) #8, !srcloc !182
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mv_xor_channel_add(ptr noundef %xordev, ptr noundef %pdev, i32 noundef %idx, [1 x i32] %cap_mask.coerce, i32 noundef %irq) unnamed_addr #2 align 64 {
entry:
  %src.addr.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cap_mask.coerce.fca.0.extract = extractvalue [1 x i32] %cap_mask.coerce, 0
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 844, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %idx2 = getelementptr inbounds %struct.mv_xor_chan, ptr %call.i, i32 0, i32 4
  %0 = ptrtoint ptr %idx2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %idx, ptr %idx2, align 4
  %irq3 = getelementptr inbounds %struct.mv_xor_chan, ptr %call.i, i32 0, i32 5
  %1 = ptrtoint ptr %irq3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %irq, ptr %irq3, align 4
  %xor_type = getelementptr inbounds %struct.mv_xor_device, ptr %xordev, i32 0, i32 4
  %2 = ptrtoint ptr %xor_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xor_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp ne i32 %3, 0
  %spec.select = zext i1 %cmp to i32
  %4 = getelementptr inbounds %struct.mv_xor_chan, ptr %call.i, i32 0, i32 17
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %spec.select, ptr %4, align 4
  %dmadev = getelementptr inbounds %struct.mv_xor_chan, ptr %call.i, i32 0, i32 13
  %dev8 = getelementptr inbounds %struct.mv_xor_chan, ptr %call.i, i32 0, i32 13, i32 15
  %6 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %dev8, align 4
  %xordev9 = getelementptr inbounds %struct.mv_xor_chan, ptr %call.i, i32 0, i32 24
  %7 = ptrtoint ptr %xordev9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %xordev, ptr %xordev9, align 4
  %dummy_src = getelementptr inbounds %struct.mv_xor_chan, ptr %call.i, i32 0, i32 18
  %call.i213 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %dummy_src) #8
  br i1 %call.i213, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !200

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #8
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %11, %if.end.i.i ], [ %9, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.19, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #8
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %dummy_src, i32 noundef 128) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %12 = load ptr, ptr @mem_map, align 4
  %13 = ptrtoint ptr %dummy_src to i32
  %sub.i = add i32 %13, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %12, i32 %shr.i
  %and.i = and i32 %13, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 128, i32 noundef 2, i32 noundef 0) #8
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i214 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %dummy_src_addr = getelementptr inbounds %struct.mv_xor_chan, ptr %call.i, i32 0, i32 20
  %14 = ptrtoint ptr %dummy_src_addr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %retval.0.i214, ptr %dummy_src_addr, align 4
  %15 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev8, align 4
  %dummy_dst = getelementptr inbounds %struct.mv_xor_chan, ptr %call.i, i32 0, i32 19
  %call.i215 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %dummy_dst) #8
  br i1 %call.i215, label %land.rhs.i217, label %if.end39.i230

land.rhs.i217:                                    ; preds = %dma_map_single_attrs.exit
  %.b1.i216 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i216, label %land.rhs.i217.dma_map_single_attrs.exit232_crit_edge, label %if.then.i221, !prof !200

land.rhs.i217.dma_map_single_attrs.exit232_crit_edge: ; preds = %land.rhs.i217
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit232

if.then.i221:                                     ; preds = %land.rhs.i217
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i218 = tail call ptr @dev_driver_string(ptr noundef %16) #8
  %init_name.i.i219 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %init_name.i.i219 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i.i219, align 8
  %tobool.not.i.i220 = icmp eq ptr %18, null
  br i1 %tobool.not.i.i220, label %if.end.i.i222, label %if.then.i221.dev_name.exit.i224_crit_edge

if.then.i221.dev_name.exit.i224_crit_edge:        ; preds = %if.then.i221
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i224

if.end.i.i222:                                    ; preds = %if.then.i221
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %16, align 4
  br label %dev_name.exit.i224

dev_name.exit.i224:                               ; preds = %if.end.i.i222, %if.then.i221.dev_name.exit.i224_crit_edge
  %retval.0.i.i223 = phi ptr [ %20, %if.end.i.i222 ], [ %18, %if.then.i221.dev_name.exit.i224_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.19, ptr noundef %call16.i218, ptr noundef %retval.0.i.i223) #8
  br label %dma_map_single_attrs.exit232

if.end39.i230:                                    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @debug_dma_map_single(ptr noundef %16, ptr noundef %dummy_dst, i32 noundef 128) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %21 = load ptr, ptr @mem_map, align 4
  %22 = ptrtoint ptr %dummy_dst to i32
  %sub.i225 = add i32 %22, 1073741824
  %shr.i226 = lshr i32 %sub.i225, 12
  %add.ptr.i227 = getelementptr %struct.page, ptr %21, i32 %shr.i226
  %and.i228 = and i32 %22, 4095
  %call41.i229 = tail call i32 @dma_map_page_attrs(ptr noundef %16, ptr noundef %add.ptr.i227, i32 noundef %and.i228, i32 noundef 128, i32 noundef 1, i32 noundef 0) #8
  br label %dma_map_single_attrs.exit232

dma_map_single_attrs.exit232:                     ; preds = %if.end39.i230, %dev_name.exit.i224, %land.rhs.i217.dma_map_single_attrs.exit232_crit_edge
  %retval.0.i231 = phi i32 [ %call41.i229, %if.end39.i230 ], [ -1, %dev_name.exit.i224 ], [ -1, %land.rhs.i217.dma_map_single_attrs.exit232_crit_edge ]
  %dummy_dst_addr = getelementptr inbounds %struct.mv_xor_chan, ptr %call.i, i32 0, i32 21
  %23 = ptrtoint ptr %dummy_dst_addr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %retval.0.i231, ptr %dummy_dst_addr, align 4
  %dma_desc_pool = getelementptr inbounds %struct.mv_xor_chan, ptr %call.i, i32 0, i32 10
  %call.i233 = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 196608, ptr noundef %dma_desc_pool, i32 noundef 3264, i32 noundef 4) #8
  %dma_desc_pool_virt = getelementptr inbounds %struct.mv_xor_chan, ptr %call.i, i32 0, i32 11
  %24 = ptrtoint ptr %dma_desc_pool_virt to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i233, ptr %dma_desc_pool_virt, align 4
  %tobool18.not = icmp eq ptr %call.i233, null
  br i1 %tobool18.not, label %dma_map_single_attrs.exit232.cleanup_crit_edge, label %if.end21

dma_map_single_attrs.exit232.cleanup_crit_edge:   ; preds = %dma_map_single_attrs.exit232
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end21:                                         ; preds = %dma_map_single_attrs.exit232
  %cap_mask22 = getelementptr inbounds %struct.mv_xor_chan, ptr %call.i, i32 0, i32 13, i32 6
  %25 = ptrtoint ptr %cap_mask22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %cap_mask.coerce.fca.0.extract, ptr %cap_mask22, align 4
  %channels = getelementptr inbounds %struct.mv_xor_chan, ptr %call.i, i32 0, i32 13, i32 3
  %26 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.mv_xor_chan, ptr %call.i, i32 0, i32 13, i32 3, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %channels, ptr %prev.i, align 4
  %device_alloc_chan_resources = getelementptr inbounds %struct.mv_xor_chan, ptr %call.i, i32 0, i32 13, i32 27
  %28 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @mv_xor_alloc_chan_resources, ptr %device_alloc_chan_resources, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.mv_xor_chan, ptr %call.i, i32 0, i32 13, i32 29
  %29 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @mv_xor_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_tx_status = getelementptr inbounds %struct.mv_xor_chan, ptr %call.i, i32 0, i32 13, i32 49
  %30 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @mv_xor_status, ptr %device_tx_status, align 4
  %device_issue_pending = getelementptr inbounds %struct.mv_xor_chan, ptr %call.i, i32 0, i32 13, i32 50
  %31 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @mv_xor_issue_pending, ptr %device_issue_pending, align 4
  %32 = load volatile i32, ptr %cap_mask22, align 4
  %33 = and i32 %32, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool25.not = icmp eq i32 %33, 0
  br i1 %tobool25.not, label %if.end21.if.end27_crit_edge, label %if.then26

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %device_prep_dma_interrupt = getelementptr inbounds %struct.mv_xor_chan, ptr %call.i, i32 0, i32 13, i32 38
  %34 = ptrtoint ptr %device_prep_dma_interrupt to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @mv_xor_prep_dma_interrupt, ptr %device_prep_dma_interrupt, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end21.if.end27_crit_edge
  %35 = ptrtoint ptr %cap_mask22 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %cap_mask22, align 4
  %and1.i.i234 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i234)
  %tobool30.not = icmp eq i32 %and1.i.i234, 0
  br i1 %tobool30.not, label %if.end27.if.end32_crit_edge, label %if.then31

if.end27.if.end32_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %device_prep_dma_memcpy = getelementptr inbounds %struct.mv_xor_chan, ptr %call.i, i32 0, i32 13, i32 30
  %37 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @mv_xor_prep_dma_memcpy, ptr %device_prep_dma_memcpy, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end27.if.end32_crit_edge
  %38 = ptrtoint ptr %cap_mask22 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %cap_mask22, align 4
  %40 = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool35.not = icmp eq i32 %40, 0
  br i1 %tobool35.not, label %if.end32.if.end37_crit_edge, label %if.then36

if.end32.if.end37_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %max_xor = getelementptr inbounds %struct.mv_xor_chan, ptr %call.i, i32 0, i32 13, i32 8
  %41 = ptrtoint ptr %max_xor to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 8, ptr %max_xor, align 4
  %device_prep_dma_xor = getelementptr inbounds %struct.mv_xor_chan, ptr %call.i, i32 0, i32 13, i32 32
  %42 = ptrtoint ptr %device_prep_dma_xor to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @mv_xor_prep_dma_xor, ptr %device_prep_dma_xor, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end32.if.end37_crit_edge
  %43 = ptrtoint ptr %xordev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %xordev, align 4
  %mmr_base = getelementptr inbounds %struct.mv_xor_chan, ptr %call.i, i32 0, i32 2
  %45 = ptrtoint ptr %mmr_base to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %mmr_base, align 4
  %xor_high_base = getelementptr inbounds %struct.mv_xor_device, ptr %xordev, i32 0, i32 1
  %46 = ptrtoint ptr %xor_high_base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %xor_high_base, align 4
  %mmr_high_base = getelementptr inbounds %struct.mv_xor_chan, ptr %call.i, i32 0, i32 3
  %48 = ptrtoint ptr %mmr_high_base to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %mmr_high_base, align 4
  %irq_tasklet = getelementptr inbounds %struct.mv_xor_chan, ptr %call.i, i32 0, i32 16
  tail call void @tasklet_setup(ptr noundef %irq_tasklet, ptr noundef nonnull @mv_xor_tasklet) #8
  %49 = ptrtoint ptr %idx2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %idx2, align 4
  %mul.i = shl i32 %50, 4
  %shr.i237 = lshr i32 -65536, %mul.i
  %51 = tail call i32 @llvm.bswap.i32(i32 %shr.i237) #8
  %52 = ptrtoint ptr %mmr_base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mmr_base, align 4
  %add.ptr.i238 = getelementptr i8, ptr %53, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i238, i32 %51) #8, !srcloc !182
  %54 = ptrtoint ptr %irq3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %irq3, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %56 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %57, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end37.dev_name.exit_crit_edge

if.end37.dev_name.exit_crit_edge:                 ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end37.dev_name.exit_crit_edge
  %retval.0.i239 = phi ptr [ %59, %if.end.i ], [ %57, %if.end37.dev_name.exit_crit_edge ]
  %call.i240 = tail call i32 @request_threaded_irq(i32 noundef %55, ptr noundef nonnull @mv_xor_interrupt_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i239, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i240)
  %tobool42.not = icmp eq i32 %call.i240, 0
  br i1 %tobool42.not, label %if.end44, label %dev_name.exit.err_free_dma_crit_edge

dev_name.exit.err_free_dma_crit_edge:             ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_dma

if.end44:                                         ; preds = %dev_name.exit
  %60 = ptrtoint ptr %mmr_base to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mmr_base, align 4
  %add.ptr.i242 = getelementptr i8, ptr %61, i32 64
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i242) #8, !srcloc !181
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #8
  %64 = ptrtoint ptr %idx2 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %idx2, align 4
  %mul.i244 = shl i32 %65, 4
  %shl.i = shl i32 1015, %mul.i244
  %or.i = or i32 %shl.i, %63
  %66 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %67 = ptrtoint ptr %mmr_base to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mmr_base, align 4
  %add.ptr2.i = getelementptr i8, ptr %68, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %66) #8, !srcloc !182
  %69 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %70)
  %cmp46 = icmp eq i32 %70, 1
  %71 = ptrtoint ptr %mmr_base to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mmr_base, align 4
  %add.ptr.i246 = getelementptr i8, ptr %72, i32 16
  %73 = ptrtoint ptr %idx2 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %idx2, align 4
  %mul.i248 = shl i32 %74, 2
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i246, i32 %mul.i248
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #8
  br i1 %cmp46, label %if.then47, label %if.else48

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %76 = or i32 %75, 121634816
  %77 = ptrtoint ptr %mmr_base to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mmr_base, align 4
  %add.ptr4.i = getelementptr i8, ptr %78, i32 16
  %79 = ptrtoint ptr %idx2 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %idx2, align 4
  %mul6.i = shl i32 %80, 2
  %add.ptr7.i = getelementptr i8, ptr %add.ptr4.i, i32 %mul6.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %76) #8, !srcloc !182
  br label %do.body

if.else48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %81 = and i32 %75, -121634817
  %82 = or i32 %81, 4194304
  %83 = ptrtoint ptr %mmr_base to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mmr_base, align 4
  %add.ptr4.i256 = getelementptr i8, ptr %84, i32 16
  %85 = ptrtoint ptr %idx2 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %idx2, align 4
  %mul6.i257 = shl i32 %86, 2
  %add.ptr7.i258 = getelementptr i8, ptr %add.ptr4.i256, i32 %mul6.i257
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i258, i32 %82) #8, !srcloc !182
  br label %do.body

do.body:                                          ; preds = %if.else48, %if.then47
  %lock = getelementptr inbounds %struct.mv_xor_chan, ptr %call.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @mv_xor_channel_add.__key, i16 noundef signext 3) #8
  %chain = getelementptr inbounds %struct.mv_xor_chan, ptr %call.i, i32 0, i32 6
  %87 = ptrtoint ptr %chain to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %chain, ptr %chain, align 4
  %prev.i259 = getelementptr inbounds %struct.mv_xor_chan, ptr %call.i, i32 0, i32 6, i32 1
  %88 = ptrtoint ptr %prev.i259 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %chain, ptr %prev.i259, align 4
  %completed_slots = getelementptr inbounds %struct.mv_xor_chan, ptr %call.i, i32 0, i32 9
  %89 = ptrtoint ptr %completed_slots to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %completed_slots, ptr %completed_slots, align 4
  %prev.i260 = getelementptr inbounds %struct.mv_xor_chan, ptr %call.i, i32 0, i32 9, i32 1
  %90 = ptrtoint ptr %prev.i260 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %completed_slots, ptr %prev.i260, align 4
  %free_slots = getelementptr inbounds %struct.mv_xor_chan, ptr %call.i, i32 0, i32 7
  %91 = ptrtoint ptr %free_slots to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %free_slots, ptr %free_slots, align 4
  %prev.i261 = getelementptr inbounds %struct.mv_xor_chan, ptr %call.i, i32 0, i32 7, i32 1
  %92 = ptrtoint ptr %prev.i261 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %free_slots, ptr %prev.i261, align 4
  %allocated_slots = getelementptr inbounds %struct.mv_xor_chan, ptr %call.i, i32 0, i32 8
  %93 = ptrtoint ptr %allocated_slots to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %allocated_slots, ptr %allocated_slots, align 4
  %prev.i262 = getelementptr inbounds %struct.mv_xor_chan, ptr %call.i, i32 0, i32 8, i32 1
  %94 = ptrtoint ptr %prev.i262 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %allocated_slots, ptr %prev.i262, align 4
  %dmachan = getelementptr inbounds %struct.mv_xor_chan, ptr %call.i, i32 0, i32 14
  %95 = ptrtoint ptr %dmachan to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %dmadev, ptr %dmachan, align 4
  %cookie.i = getelementptr inbounds %struct.mv_xor_chan, ptr %call.i, i32 0, i32 14, i32 2
  %96 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 1, ptr %cookie.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.mv_xor_chan, ptr %call.i, i32 0, i32 14, i32 3
  %97 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 1, ptr %completed_cookie.i, align 4
  %device_node = getelementptr inbounds %struct.mv_xor_chan, ptr %call.i, i32 0, i32 14, i32 8
  %98 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %device_node, ptr noundef %99, ptr noundef %channels) #8
  br i1 %call.i.i, label %if.end.i.i264, label %do.body.list_add_tail.exit_crit_edge

do.body.list_add_tail.exit_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i264:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %100 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %device_node, ptr %prev.i, align 4
  %101 = ptrtoint ptr %device_node to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %channels, ptr %device_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.mv_xor_chan, ptr %call.i, i32 0, i32 14, i32 8, i32 1
  %102 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %99, ptr %prev3.i.i, align 4
  %103 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %device_node, ptr %99, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i264, %do.body.list_add_tail.exit_crit_edge
  %104 = ptrtoint ptr %cap_mask22 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %cap_mask22, align 4
  %and1.i.i265 = and i32 %105, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i265)
  %tobool56.not = icmp eq i32 %and1.i.i265, 0
  br i1 %tobool56.not, label %list_add_tail.exit.if.end73_crit_edge, label %if.then57

list_add_tail.exit.if.end73_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

if.then57:                                        ; preds = %list_add_tail.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %106 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %106, i32 noundef 3264, i32 noundef 4096) #12
  %tobool.not.i266 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i266, label %if.then57.mv_chan_memcpy_self_test.exit_crit_edge, label %if.end.i267

if.then57.mv_chan_memcpy_self_test.exit_crit_edge: ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  br label %mv_chan_memcpy_self_test.exit

if.end.i267:                                      ; preds = %if.then57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %107 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %107, i32 noundef 3520, i32 noundef 4096) #12
  %tobool2.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool2.not.i, label %if.end.i267.cleanup.sink.split.i_crit_edge, label %if.end.i267.for.body.i_crit_edge

if.end.i267.for.body.i_crit_edge:                 ; preds = %if.end.i267
  br label %for.body.i

if.end.i267.cleanup.sink.split.i_crit_edge:       ; preds = %if.end.i267
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i267.for.body.i_crit_edge
  %i.0133.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i267.for.body.i_crit_edge ]
  %conv.i = trunc i32 %i.0133.i to i8
  %arrayidx.i = getelementptr i8, ptr %call7.i.i, i32 %i.0133.i
  %108 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %inc.i = add nuw nsw i32 %i.0133.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4096
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %call5.i = tail call i32 @mv_xor_alloc_chan_resources(ptr noundef %dmachan) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 1
  br i1 %cmp6.i, label %for.end.i.out.i_crit_edge, label %if.end9.i

for.end.i.out.i_crit_edge:                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.end9.i:                                        ; preds = %for.end.i
  %109 = ptrtoint ptr %dmachan to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dmachan, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %110, i32 0, i32 15
  %111 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev.i, align 4
  %call10.i = tail call ptr @dmaengine_get_unmap_data(ptr noundef %112, i32 noundef 2, i32 noundef 3264) #8
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %if.end9.i.free_resources.i_crit_edge, label %if.end13.i

if.end9.i.free_resources.i_crit_edge:             ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_resources.i

if.end13.i:                                       ; preds = %if.end9.i
  %113 = ptrtoint ptr %dmachan to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dmachan, align 4
  %dev15.i = getelementptr inbounds %struct.dma_device, ptr %114, i32 0, i32 15
  %115 = ptrtoint ptr %dev15.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev15.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %117 = load ptr, ptr @mem_map, align 4
  %118 = ptrtoint ptr %call7.i.i to i32
  %sub.i268 = add i32 %118, 1073741824
  %shr.i269 = lshr i32 %sub.i268, 12
  %add.ptr.i270 = getelementptr %struct.page, ptr %117, i32 %shr.i269
  %and.i271 = and i32 %118, 4088
  %call17.i = tail call i32 @dma_map_page_attrs(ptr noundef %116, ptr noundef %add.ptr.i270, i32 noundef %and.i271, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #8
  %addr.i = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %call10.i, i32 0, i32 7
  %119 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %call17.i, ptr %addr.i, align 4
  %120 = ptrtoint ptr %dmachan to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dmachan, align 4
  %dev20.i = getelementptr inbounds %struct.dma_device, ptr %121, i32 0, i32 15
  %122 = ptrtoint ptr %dev20.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev20.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %123, i32 noundef %call17.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call17.i)
  %cmp.i.not.i = icmp eq i32 %call17.i, -1
  br i1 %cmp.i.not.i, label %if.end13.i.free_resources.i_crit_edge, label %if.end24.i

if.end13.i.free_resources.i_crit_edge:            ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_resources.i

if.end24.i:                                       ; preds = %if.end13.i
  %to_cnt.i = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %call10.i, i32 0, i32 1
  %124 = ptrtoint ptr %to_cnt.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 1, ptr %to_cnt.i, align 2
  %125 = ptrtoint ptr %dmachan to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dmachan, align 4
  %dev26.i = getelementptr inbounds %struct.dma_device, ptr %126, i32 0, i32 15
  %127 = ptrtoint ptr %dev26.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev26.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %129 = load ptr, ptr @mem_map, align 4
  %130 = ptrtoint ptr %call7.i.i.i to i32
  %sub27.i = add i32 %130, 1073741824
  %shr28.i = lshr i32 %sub27.i, 12
  %add.ptr31.i = getelementptr %struct.page, ptr %129, i32 %shr28.i
  %and32.i = and i32 %130, 4088
  %call33.i = tail call i32 @dma_map_page_attrs(ptr noundef %128, ptr noundef %add.ptr31.i, i32 noundef %and32.i, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #8
  %arrayidx35.i = getelementptr %struct.dmaengine_unmap_data, ptr %call10.i, i32 1, i32 3
  %131 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %call33.i, ptr %arrayidx35.i, align 4
  %132 = ptrtoint ptr %dmachan to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dmachan, align 4
  %dev37.i = getelementptr inbounds %struct.dma_device, ptr %133, i32 0, i32 15
  %134 = ptrtoint ptr %dev37.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev37.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %135, i32 noundef %call33.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call33.i)
  %cmp.i131.not.i = icmp eq i32 %call33.i, -1
  br i1 %cmp.i131.not.i, label %if.end24.i.free_resources.i_crit_edge, label %if.end41.i

if.end24.i.free_resources.i_crit_edge:            ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_resources.i

if.end41.i:                                       ; preds = %if.end24.i
  %from_cnt.i = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %call10.i, i32 0, i32 2
  %136 = ptrtoint ptr %from_cnt.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 1, ptr %from_cnt.i, align 1
  %len.i = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %call10.i, i32 0, i32 6
  %137 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 4096, ptr %len.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %src.addr.i.i) #8
  %138 = ptrtoint ptr %src.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %call17.i, ptr %src.addr.i.i, align 4
  %call.i.i272 = call ptr @mv_xor_prep_dma_xor(ptr noundef %dmachan, i32 noundef %call33.i, ptr noundef nonnull %src.addr.i.i, i32 noundef 1, i32 noundef 4096, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src.addr.i.i) #8
  %tobool43.not.i = icmp eq ptr %call.i.i272, null
  br i1 %tobool43.not.i, label %do.end.i, label %if.end47.i

do.end.i:                                         ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  %139 = ptrtoint ptr %dmachan to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dmachan, align 4
  %dev46.i = getelementptr inbounds %struct.dma_device, ptr %140, i32 0, i32 15
  %141 = ptrtoint ptr %dev46.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev46.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %142, ptr noundef nonnull @.str.67) #11
  br label %free_resources.i

if.end47.i:                                       ; preds = %if.end41.i
  %call48.i = tail call i32 @mv_xor_tx_submit(ptr noundef nonnull %call.i.i272) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call48.i)
  %tobool50.not.i = icmp sgt i32 %call48.i, -1
  br i1 %tobool50.not.i, label %if.end57.i, label %do.end54.i

do.end54.i:                                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #10
  %143 = ptrtoint ptr %dmachan to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dmachan, align 4
  %dev56.i = getelementptr inbounds %struct.dma_device, ptr %144, i32 0, i32 15
  %145 = ptrtoint ptr %dev56.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev56.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %146, ptr noundef nonnull @.str.70) #11
  br label %free_resources.i

if.end57.i:                                       ; preds = %if.end47.i
  tail call void @mv_xor_issue_pending(ptr noundef %dmachan) #8
  %flags.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i272, i32 0, i32 1
  %147 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %flags.i.i, align 4
  %or.i.i = or i32 %148, 2
  store i32 %or.i.i, ptr %flags.i.i, align 4
  tail call void @msleep(i32 noundef 1) #8
  %call58.i = tail call i32 @mv_xor_status(ptr noundef %dmachan, i32 noundef %call48.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %cmp59.not.i = icmp eq i32 %call58.i, 0
  %149 = ptrtoint ptr %dmachan to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dmachan, align 4
  %dev69.i = getelementptr inbounds %struct.dma_device, ptr %150, i32 0, i32 15
  %151 = ptrtoint ptr %dev69.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dev69.i, align 4
  br i1 %cmp59.not.i, label %if.end67.i, label %do.end64.i

do.end64.i:                                       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %152, ptr noundef nonnull @.str.73) #11
  br label %free_resources.i

if.end67.i:                                       ; preds = %if.end57.i
  tail call void @dma_sync_single_for_cpu(ptr noundef %152, i32 noundef %call33.i, i32 noundef 4096, i32 noundef 2) #8
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4096) %call7.i.i, ptr noundef nonnull dereferenceable(4096) %call7.i.i.i, i32 4096) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool71.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool71.not.i, label %if.end67.i.free_resources.i_crit_edge, label %do.end75.i

if.end67.i.free_resources.i_crit_edge:            ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_resources.i

do.end75.i:                                       ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #10
  %153 = ptrtoint ptr %dmachan to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %dmachan, align 4
  %dev77.i = getelementptr inbounds %struct.dma_device, ptr %154, i32 0, i32 15
  %155 = ptrtoint ptr %dev77.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %dev77.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %156, ptr noundef nonnull @.str.76) #11
  br label %free_resources.i

free_resources.i:                                 ; preds = %do.end75.i, %if.end67.i.free_resources.i_crit_edge, %do.end64.i, %do.end54.i, %do.end.i, %if.end24.i.free_resources.i_crit_edge, %if.end13.i.free_resources.i_crit_edge, %if.end9.i.free_resources.i_crit_edge
  %err.0.i = phi i32 [ -19, %do.end54.i ], [ -19, %do.end64.i ], [ -19, %do.end75.i ], [ 0, %if.end67.i.free_resources.i_crit_edge ], [ -19, %do.end.i ], [ -12, %if.end9.i.free_resources.i_crit_edge ], [ -12, %if.end13.i.free_resources.i_crit_edge ], [ -12, %if.end24.i.free_resources.i_crit_edge ]
  tail call void @dmaengine_unmap_put(ptr noundef %call10.i) #8
  tail call void @mv_xor_free_chan_resources(ptr noundef %dmachan) #8
  br label %out.i

out.i:                                            ; preds = %free_resources.i, %for.end.i.out.i_crit_edge
  %err.1.i = phi i32 [ %err.0.i, %free_resources.i ], [ -19, %for.end.i.out.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %out.i, %if.end.i267.cleanup.sink.split.i_crit_edge
  %call7.i.i.sink.i = phi ptr [ %call7.i.i.i, %out.i ], [ %call7.i.i, %if.end.i267.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ %err.1.i, %out.i ], [ -12, %if.end.i267.cleanup.sink.split.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.sink.i) #8
  br label %mv_chan_memcpy_self_test.exit

mv_chan_memcpy_self_test.exit:                    ; preds = %cleanup.sink.split.i, %if.then57.mv_chan_memcpy_self_test.exit_crit_edge
  %retval.0.i273 = phi i32 [ -12, %if.then57.mv_chan_memcpy_self_test.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_xor_channel_add.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_xor_channel_add, %do.end69)) #8
          to label %if.then65 [label %do.end69], !srcloc !201

if.then65:                                        ; preds = %mv_chan_memcpy_self_test.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_xor_channel_add.__UNIQUE_ID_ddebug251, ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %retval.0.i273) #8
  br label %do.end69

do.end69:                                         ; preds = %if.then65, %mv_chan_memcpy_self_test.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i273)
  %tobool70.not = icmp eq i32 %retval.0.i273, 0
  br i1 %tobool70.not, label %do.end69.if.end73_crit_edge, label %do.end69.err_free_irq_crit_edge

do.end69.err_free_irq_crit_edge:                  ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_irq

do.end69.if.end73_crit_edge:                      ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

if.end73:                                         ; preds = %do.end69.if.end73_crit_edge, %list_add_tail.exit.if.end73_crit_edge
  %157 = ptrtoint ptr %cap_mask22 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load volatile i32, ptr %cap_mask22, align 4
  %159 = and i32 %158, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %tobool76.not = icmp eq i32 %159, 0
  br i1 %tobool76.not, label %if.end73.do.end104_crit_edge, label %if.then77

if.end73.do.end104_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end104

if.then77:                                        ; preds = %if.end73
  %call78 = tail call fastcc i32 @mv_chan_xor_self_test(ptr noundef nonnull %call.i)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_xor_channel_add.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_xor_channel_add, %do.end97)) #8
          to label %if.then93 [label %do.end97], !srcloc !201

if.then93:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_xor_channel_add.__UNIQUE_ID_ddebug252, ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call78) #8
  br label %do.end97

do.end97:                                         ; preds = %if.then93, %if.then77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool98.not = icmp eq i32 %call78, 0
  br i1 %tobool98.not, label %do.end97.do.end104_crit_edge, label %do.end97.err_free_irq_crit_edge

do.end97.err_free_irq_crit_edge:                  ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_irq

do.end97.do.end104_crit_edge:                     ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end104

do.end104:                                        ; preds = %do.end97.do.end104_crit_edge, %if.end73.do.end104_crit_edge
  %160 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %tobool107.not = icmp eq i32 %161, 0
  %cond = select i1 %tobool107.not, ptr @.str.13, ptr @.str.12
  %162 = ptrtoint ptr %cap_mask22 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load volatile i32, ptr %cap_mask22, align 4
  %164 = and i32 %163, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool110.not = icmp eq i32 %164, 0
  %cond111 = select i1 %tobool110.not, ptr @.str.15, ptr @.str.14
  %165 = ptrtoint ptr %cap_mask22 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load volatile i32, ptr %cap_mask22, align 4
  %and1.i.i278 = and i32 %166, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i278)
  %tobool114.not = icmp eq i32 %and1.i.i278, 0
  %cond115 = select i1 %tobool114.not, ptr @.str.15, ptr @.str.16
  %167 = ptrtoint ptr %cap_mask22 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load volatile i32, ptr %cap_mask22, align 4
  %169 = and i32 %168, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %tobool118.not = icmp eq i32 %169, 0
  %cond119 = select i1 %tobool118.not, ptr @.str.15, ptr @.str.17
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef nonnull %cond, ptr noundef nonnull %cond111, ptr noundef nonnull %cond115, ptr noundef nonnull %cond119) #11
  %call120 = tail call i32 @dma_async_device_register(ptr noundef %dmadev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %do.end104.cleanup_crit_edge, label %do.end104.err_free_irq_crit_edge

do.end104.err_free_irq_crit_edge:                 ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_irq

do.end104.cleanup_crit_edge:                      ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_free_irq:                                     ; preds = %do.end104.err_free_irq_crit_edge, %do.end97.err_free_irq_crit_edge, %do.end69.err_free_irq_crit_edge
  %ret.0 = phi i32 [ %retval.0.i273, %do.end69.err_free_irq_crit_edge ], [ %call78, %do.end97.err_free_irq_crit_edge ], [ %call120, %do.end104.err_free_irq_crit_edge ]
  %170 = ptrtoint ptr %irq3 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %irq3, align 4
  %call125 = tail call ptr @free_irq(i32 noundef %171, ptr noundef nonnull %call.i) #8
  br label %err_free_dma

err_free_dma:                                     ; preds = %err_free_irq, %dev_name.exit.err_free_dma_crit_edge
  %ret.1 = phi i32 [ %call.i240, %dev_name.exit.err_free_dma_crit_edge ], [ %ret.0, %err_free_irq ]
  %172 = ptrtoint ptr %dma_desc_pool_virt to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dma_desc_pool_virt, align 4
  %174 = ptrtoint ptr %dma_desc_pool to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %dma_desc_pool, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 196608, ptr noundef %173, i32 noundef %175, i32 noundef 0) #8
  %176 = inttoptr i32 %ret.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_free_dma, %do.end104.cleanup_crit_edge, %dma_map_single_attrs.exit232.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %176, %err_free_dma ], [ %call.i, %do.end104.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %dma_map_single_attrs.exit232.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_xor_alloc_chan_resources(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %slots_allocated = getelementptr i8, ptr %chan, i32 64
  %0 = ptrtoint ptr %slots_allocated to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %slots_allocated, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072, i32 %1)
  %cmp53 = icmp slt i32 %1, 3072
  br i1 %cmp53, label %while.body.lr.ph, label %entry.do.body9_crit_edge

entry.do.body9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body9

while.body.lr.ph:                                 ; preds = %entry
  %dma_desc_pool_virt = getelementptr i8, ptr %chan, i32 -372
  %dma_desc_pool = getelementptr i8, ptr %chan, i32 -376
  %lock = getelementptr i8, ptr %chan, i32 -468
  %free_slots = getelementptr i8, ptr %chan, i32 -400
  %prev.i50 = getelementptr i8, ptr %chan, i32 -396
  br label %while.body

while.body:                                       ; preds = %list_add_tail.exit.while.body_crit_edge, %while.body.lr.ph
  %idx.054 = phi i32 [ %1, %while.body.lr.ph ], [ %inc, %list_add_tail.exit.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 128) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr i8, ptr %chan, i32 -292
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.20, i32 noundef %idx.054) #11
  br label %do.body9

if.end:                                           ; preds = %while.body
  %5 = ptrtoint ptr %dma_desc_pool_virt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dma_desc_pool_virt, align 4
  %mul = shl i32 %idx.054, 6
  %add.ptr1 = getelementptr i8, ptr %6, i32 %mul
  %hw_desc = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %hw_desc to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr1, ptr %hw_desc, align 4
  %async_tx = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %call7.i.i, i32 0, i32 5
  tail call void @dma_async_tx_descriptor_init(ptr noundef %async_tx, ptr noundef %chan) #8
  %tx_submit = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %call7.i.i, i32 0, i32 5, i32 4
  %8 = ptrtoint ptr %tx_submit to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mv_xor_tx_submit, ptr %tx_submit, align 4
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %sg_tx_list = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %sg_tx_list to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %sg_tx_list, ptr %sg_tx_list, align 8
  %prev.i49 = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %call7.i.i, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i49 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %sg_tx_list, ptr %prev.i49, align 4
  %13 = ptrtoint ptr %dma_desc_pool to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_desc_pool, align 4
  %add = add i32 %14, %mul
  %phys = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %call7.i.i, i32 0, i32 5, i32 2
  %15 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add, ptr %phys, align 4
  %inc = add i32 %idx.054, 1
  %conv = trunc i32 %idx.054 to i16
  %idx5 = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %call7.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %idx5 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv, ptr %idx5, align 8
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %17 = ptrtoint ptr %slots_allocated to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %inc, ptr %slots_allocated, align 4
  %18 = ptrtoint ptr %prev.i50 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i50, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %19, ptr noundef %free_slots) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %prev.i50 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %prev.i50, align 4
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %free_slots, ptr %call7.i.i, align 8
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %call7.i.i, ptr %19, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  %exitcond.not = icmp eq i32 %inc, 3072
  br i1 %exitcond.not, label %list_add_tail.exit.do.body9_crit_edge, label %list_add_tail.exit.while.body_crit_edge

list_add_tail.exit.while.body_crit_edge:          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

list_add_tail.exit.do.body9_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body9

do.body9:                                         ; preds = %list_add_tail.exit.do.body9_crit_edge, %do.end, %entry.do.body9_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_xor_alloc_chan_resources.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_xor_alloc_chan_resources, %do.end22)) #8
          to label %if.then16 [label %do.end22], !srcloc !201

if.then16:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  %dev18 = getelementptr i8, ptr %chan, i32 -292
  %24 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev18, align 4
  %26 = ptrtoint ptr %slots_allocated to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %slots_allocated, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_xor_alloc_chan_resources.__UNIQUE_ID_ddebug245, ptr noundef %25, ptr noundef nonnull @.str.22, i32 noundef %27) #8
  br label %do.end22

do.end22:                                         ; preds = %if.then16, %do.body9
  %28 = ptrtoint ptr %slots_allocated to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %slots_allocated, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool24.not = icmp eq i32 %29, 0
  %. = select i1 %tobool24.not, i32 -12, i32 %29
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv_xor_free_chan_resources(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %chan, i32 -472
  %lock = getelementptr i8, ptr %chan, i32 -468
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  tail call fastcc void @mv_chan_slot_cleanup(ptr noundef %add.ptr)
  %chain = getelementptr i8, ptr %chan, i32 -408
  %0 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain, align 4
  %cmp.not170 = icmp eq ptr %1, %chain
  br i1 %cmp.not170, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %free_slots = getelementptr i8, ptr %chan, i32 -400
  %prev.i2.i = getelementptr i8, ptr %chan, i32 -396
  br label %for.body

for.body:                                         ; preds = %list_move_tail.exit.for.body_crit_edge, %for.body.lr.ph
  %iter.0172 = phi ptr [ %1, %for.body.lr.ph ], [ %_iter.0, %list_move_tail.exit.for.body_crit_edge ]
  %in_use_descs.0171 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %list_move_tail.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %iter.0172 to i32
  call void @__asan_load4_noabort(i32 %2)
  %_iter.0 = load ptr, ptr %iter.0172, align 4
  %inc = add i32 %in_use_descs.0171, 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %iter.0172) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.__list_del_entry.exit.i_crit_edge

for.body.__list_del_entry.exit.i_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %iter.0172, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %iter.0172 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iter.0172, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %for.body.__list_del_entry.exit.i_crit_edge
  %9 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %iter.0172, ptr noundef %10, ptr noundef %free_slots) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %iter.0172, ptr %prev.i2.i, align 4
  %12 = ptrtoint ptr %iter.0172 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %free_slots, ptr %iter.0172, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %iter.0172, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %iter.0172, ptr %10, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %cmp.not = icmp eq ptr %_iter.0, %chain
  br i1 %cmp.not, label %list_move_tail.exit.for.end_crit_edge, label %list_move_tail.exit.for.body_crit_edge

list_move_tail.exit.for.body_crit_edge:           ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

list_move_tail.exit.for.end_crit_edge:            ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %list_move_tail.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %in_use_descs.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %list_move_tail.exit.for.end_crit_edge ]
  %completed_slots = getelementptr i8, ptr %chan, i32 -384
  %15 = ptrtoint ptr %completed_slots to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %completed_slots, align 4
  %cmp28.not174 = icmp eq ptr %16, %completed_slots
  br i1 %cmp28.not174, label %for.end.for.end40_crit_edge, label %for.body30.lr.ph

for.end.for.end40_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end40

for.body30.lr.ph:                                 ; preds = %for.end
  %free_slots33 = getelementptr i8, ptr %chan, i32 -400
  %prev.i2.i148 = getelementptr i8, ptr %chan, i32 -396
  br label %for.body30

for.body30:                                       ; preds = %list_move_tail.exit153.for.body30_crit_edge, %for.body30.lr.ph
  %iter.1176 = phi ptr [ %16, %for.body30.lr.ph ], [ %_iter.1, %list_move_tail.exit153.for.body30_crit_edge ]
  %in_use_descs.1175 = phi i32 [ %in_use_descs.0.lcssa, %for.body30.lr.ph ], [ %inc31, %list_move_tail.exit153.for.body30_crit_edge ]
  %17 = ptrtoint ptr %iter.1176 to i32
  call void @__asan_load4_noabort(i32 %17)
  %_iter.1 = load ptr, ptr %iter.1176, align 4
  %inc31 = add i32 %in_use_descs.1175, 1
  %call.i.i144 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %iter.1176) #8
  br i1 %call.i.i144, label %if.end.i.i147, label %for.body30.__list_del_entry.exit.i150_crit_edge

for.body30.__list_del_entry.exit.i150_crit_edge:  ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i150

if.end.i.i147:                                    ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i145 = getelementptr inbounds %struct.list_head, ptr %iter.1176, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i145 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i145, align 4
  %20 = ptrtoint ptr %iter.1176 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iter.1176, align 4
  %prev1.i.i.i146 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i146 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i146, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %__list_del_entry.exit.i150

__list_del_entry.exit.i150:                       ; preds = %if.end.i.i147, %for.body30.__list_del_entry.exit.i150_crit_edge
  %24 = ptrtoint ptr %prev.i2.i148 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i2.i148, align 4
  %call.i.i.i149 = tail call zeroext i1 @__list_add_valid(ptr noundef %iter.1176, ptr noundef %25, ptr noundef %free_slots33) #8
  br i1 %call.i.i.i149, label %if.end.i.i.i152, label %__list_del_entry.exit.i150.list_move_tail.exit153_crit_edge

__list_del_entry.exit.i150.list_move_tail.exit153_crit_edge: ; preds = %__list_del_entry.exit.i150
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_move_tail.exit153

if.end.i.i.i152:                                  ; preds = %__list_del_entry.exit.i150
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %prev.i2.i148 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %iter.1176, ptr %prev.i2.i148, align 4
  %27 = ptrtoint ptr %iter.1176 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %free_slots33, ptr %iter.1176, align 4
  %prev3.i.i.i151 = getelementptr inbounds %struct.list_head, ptr %iter.1176, i32 0, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i151 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev3.i.i.i151, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %iter.1176, ptr %25, align 4
  br label %list_move_tail.exit153

list_move_tail.exit153:                           ; preds = %if.end.i.i.i152, %__list_del_entry.exit.i150.list_move_tail.exit153_crit_edge
  %cmp28.not = icmp eq ptr %_iter.1, %completed_slots
  br i1 %cmp28.not, label %list_move_tail.exit153.for.end40_crit_edge, label %list_move_tail.exit153.for.body30_crit_edge

list_move_tail.exit153.for.body30_crit_edge:      ; preds = %list_move_tail.exit153
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body30

list_move_tail.exit153.for.end40_crit_edge:       ; preds = %list_move_tail.exit153
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end40

for.end40:                                        ; preds = %list_move_tail.exit153.for.end40_crit_edge, %for.end.for.end40_crit_edge
  %in_use_descs.1.lcssa = phi i32 [ %in_use_descs.0.lcssa, %for.end.for.end40_crit_edge ], [ %inc31, %list_move_tail.exit153.for.end40_crit_edge ]
  %allocated_slots = getelementptr i8, ptr %chan, i32 -392
  %30 = ptrtoint ptr %allocated_slots to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %allocated_slots, align 4
  %cmp53.not179 = icmp eq ptr %31, %allocated_slots
  br i1 %cmp53.not179, label %for.end40.for.end65_crit_edge, label %for.body55.lr.ph

for.end40.for.end65_crit_edge:                    ; preds = %for.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end65

for.body55.lr.ph:                                 ; preds = %for.end40
  %free_slots58 = getelementptr i8, ptr %chan, i32 -400
  %prev.i2.i158 = getelementptr i8, ptr %chan, i32 -396
  br label %for.body55

for.body55:                                       ; preds = %list_move_tail.exit163.for.body55_crit_edge, %for.body55.lr.ph
  %iter.2181 = phi ptr [ %31, %for.body55.lr.ph ], [ %_iter.2, %list_move_tail.exit163.for.body55_crit_edge ]
  %in_use_descs.2180 = phi i32 [ %in_use_descs.1.lcssa, %for.body55.lr.ph ], [ %inc56, %list_move_tail.exit163.for.body55_crit_edge ]
  %32 = ptrtoint ptr %iter.2181 to i32
  call void @__asan_load4_noabort(i32 %32)
  %_iter.2 = load ptr, ptr %iter.2181, align 4
  %inc56 = add i32 %in_use_descs.2180, 1
  %call.i.i154 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %iter.2181) #8
  br i1 %call.i.i154, label %if.end.i.i157, label %for.body55.__list_del_entry.exit.i160_crit_edge

for.body55.__list_del_entry.exit.i160_crit_edge:  ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i160

if.end.i.i157:                                    ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i155 = getelementptr inbounds %struct.list_head, ptr %iter.2181, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i155 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i155, align 4
  %35 = ptrtoint ptr %iter.2181 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %iter.2181, align 4
  %prev1.i.i.i156 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i156 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i156, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %__list_del_entry.exit.i160

__list_del_entry.exit.i160:                       ; preds = %if.end.i.i157, %for.body55.__list_del_entry.exit.i160_crit_edge
  %39 = ptrtoint ptr %prev.i2.i158 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i2.i158, align 4
  %call.i.i.i159 = tail call zeroext i1 @__list_add_valid(ptr noundef %iter.2181, ptr noundef %40, ptr noundef %free_slots58) #8
  br i1 %call.i.i.i159, label %if.end.i.i.i162, label %__list_del_entry.exit.i160.list_move_tail.exit163_crit_edge

__list_del_entry.exit.i160.list_move_tail.exit163_crit_edge: ; preds = %__list_del_entry.exit.i160
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_move_tail.exit163

if.end.i.i.i162:                                  ; preds = %__list_del_entry.exit.i160
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %prev.i2.i158 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %iter.2181, ptr %prev.i2.i158, align 4
  %42 = ptrtoint ptr %iter.2181 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %free_slots58, ptr %iter.2181, align 4
  %prev3.i.i.i161 = getelementptr inbounds %struct.list_head, ptr %iter.2181, i32 0, i32 1
  %43 = ptrtoint ptr %prev3.i.i.i161 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev3.i.i.i161, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %iter.2181, ptr %40, align 4
  br label %list_move_tail.exit163

list_move_tail.exit163:                           ; preds = %if.end.i.i.i162, %__list_del_entry.exit.i160.list_move_tail.exit163_crit_edge
  %cmp53.not = icmp eq ptr %_iter.2, %allocated_slots
  br i1 %cmp53.not, label %list_move_tail.exit163.for.end65_crit_edge, label %list_move_tail.exit163.for.body55_crit_edge

list_move_tail.exit163.for.body55_crit_edge:      ; preds = %list_move_tail.exit163
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body55

list_move_tail.exit163.for.end65_crit_edge:       ; preds = %list_move_tail.exit163
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end65

for.end65:                                        ; preds = %list_move_tail.exit163.for.end65_crit_edge, %for.end40.for.end65_crit_edge
  %in_use_descs.2.lcssa = phi i32 [ %in_use_descs.1.lcssa, %for.end40.for.end65_crit_edge ], [ %inc56, %list_move_tail.exit163.for.end65_crit_edge ]
  %free_slots67 = getelementptr i8, ptr %chan, i32 -400
  %prev = getelementptr i8, ptr %chan, i32 -396
  %45 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev, align 4
  %cmp78.not184 = icmp eq ptr %46, %free_slots67
  br i1 %cmp78.not184, label %for.end65.do.body_crit_edge, label %for.body80.lr.ph

for.end65.do.body_crit_edge:                      ; preds = %for.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.body80.lr.ph:                                 ; preds = %for.end65
  %slots_allocated = getelementptr i8, ptr %chan, i32 64
  br label %for.body80

for.body80:                                       ; preds = %list_del.exit.for.body80_crit_edge, %for.body80.lr.ph
  %iter.3185 = phi ptr [ %46, %for.body80.lr.ph ], [ %_iter.3, %list_del.exit.for.body80_crit_edge ]
  %_iter.3.in = getelementptr inbounds %struct.list_head, ptr %iter.3185, i32 0, i32 1
  %47 = ptrtoint ptr %_iter.3.in to i32
  call void @__asan_load4_noabort(i32 %47)
  %_iter.3 = load ptr, ptr %_iter.3.in, align 4
  %call.i.i164 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %iter.3185) #8
  br i1 %call.i.i164, label %if.end.i.i167, label %for.body80.list_del.exit_crit_edge

for.body80.list_del.exit_crit_edge:               ; preds = %for.body80
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i167:                                    ; preds = %for.body80
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %_iter.3.in to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %_iter.3.in, align 4
  %50 = ptrtoint ptr %iter.3185 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %iter.3185, align 4
  %prev1.i.i.i166 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i.i166 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev1.i.i.i166, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %51, ptr %49, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i167, %for.body80.list_del.exit_crit_edge
  %54 = ptrtoint ptr %iter.3185 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr inttoptr (i32 256 to ptr), ptr %iter.3185, align 4
  %55 = ptrtoint ptr %_iter.3.in to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 290 to ptr), ptr %_iter.3.in, align 4
  tail call void @kfree(ptr noundef %iter.3185) #8
  %56 = ptrtoint ptr %slots_allocated to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %slots_allocated, align 4
  %dec = add i32 %57, -1
  store i32 %dec, ptr %slots_allocated, align 4
  %cmp78.not = icmp eq ptr %_iter.3, %free_slots67
  br i1 %cmp78.not, label %list_del.exit.do.body_crit_edge, label %list_del.exit.for.body80_crit_edge

list_del.exit.for.body80_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body80

list_del.exit.do.body_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %list_del.exit.do.body_crit_edge, %for.end65.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_xor_free_chan_resources.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_xor_free_chan_resources, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !201

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr i8, ptr %chan, i32 -292
  %58 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev, align 4
  %slots_allocated94 = getelementptr i8, ptr %chan, i32 64
  %60 = ptrtoint ptr %slots_allocated94 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %slots_allocated94, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_xor_free_chan_resources.__UNIQUE_ID_ddebug248, ptr noundef %59, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i32 noundef %61) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in_use_descs.2.lcssa)
  %tobool96.not = icmp eq i32 %in_use_descs.2.lcssa, 0
  br i1 %tobool96.not, label %do.end.if.end103_crit_edge, label %do.end100

do.end.if.end103_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

do.end100:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev102 = getelementptr i8, ptr %chan, i32 -292
  %62 = ptrtoint ptr %dev102 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev102, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.30, i32 noundef %in_use_descs.2.lcssa) #11
  br label %if.end103

if.end103:                                        ; preds = %do.end100, %do.end.if.end103_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_xor_status(ptr noundef %chan, i32 noundef %cookie, ptr noundef writeonly %txstate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !202
  %tobool.not.i = icmp eq ptr %txstate, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %or.cond.i.i, label %if.then.i.i.cleanup_crit_edge, label %if.then.i.i.if.end_crit_edge

if.then.i.i.if.end_crit_edge:                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  br i1 %or.cond16.i.i, label %if.else.i.i.cleanup_crit_edge, label %if.else.i.i.if.end_crit_edge

if.else.i.i.if.end_crit_edge:                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.else.i.i.if.end_crit_edge, %if.then.i.i.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %chan, i32 -472
  %lock = getelementptr i8, ptr %chan, i32 -468
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  tail call fastcc void @mv_chan_slot_cleanup(ptr noundef %add.ptr)
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  %8 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cookie1.i, align 4
  %10 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !202
  br i1 %tobool.not.i, label %if.end.if.end.i21_crit_edge, label %if.then.i17

if.end.if.end.i21_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i21

if.then.i17:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %txstate to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %txstate, align 4
  %used2.i14 = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 1
  %13 = ptrtoint ptr %used2.i14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %9, ptr %used2.i14, align 4
  %residue.i15 = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %14 = ptrtoint ptr %residue.i15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %residue.i15, align 4
  %in_flight_bytes.i16 = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 3
  %15 = ptrtoint ptr %in_flight_bytes.i16 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %in_flight_bytes.i16, align 4
  br label %if.end.i21

if.end.i21:                                       ; preds = %if.then.i17, %if.end.if.end.i21_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp.not.i.i18 = icmp sgt i32 %11, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %cookie)
  %cmp4.not.i.i19 = icmp sge i32 %11, %cookie
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %cookie)
  %cmp5.i.i20 = icmp slt i32 %9, %cookie
  br i1 %cmp.not.i.i18, label %if.else.i.i25, label %if.then.i.i23

if.then.i.i23:                                    ; preds = %if.end.i21
  %or.cond.i.i22 = or i1 %cmp5.i.i20, %cmp4.not.i.i19
  br i1 %or.cond.i.i22, label %if.then.i.i23.cleanup_crit_edge, label %if.then.i.i23.if.end8.i.i26_crit_edge

if.then.i.i23.if.end8.i.i26_crit_edge:            ; preds = %if.then.i.i23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i26

if.then.i.i23.cleanup_crit_edge:                  ; preds = %if.then.i.i23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.i.i25:                                    ; preds = %if.end.i21
  %or.cond16.i.i24 = and i1 %cmp5.i.i20, %cmp4.not.i.i19
  br i1 %or.cond16.i.i24, label %if.else.i.i25.cleanup_crit_edge, label %if.else.i.i25.if.end8.i.i26_crit_edge

if.else.i.i25.if.end8.i.i26_crit_edge:            ; preds = %if.else.i.i25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i26

if.else.i.i25.cleanup_crit_edge:                  ; preds = %if.else.i.i25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.i.i26:                                    ; preds = %if.else.i.i25.if.end8.i.i26_crit_edge, %if.then.i.i23.if.end8.i.i26_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end8.i.i26, %if.else.i.i25.cleanup_crit_edge, %if.then.i.i23.cleanup_crit_edge, %if.else.i.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end8.i.i26 ], [ 0, %if.then.i.i23.cleanup_crit_edge ], [ 0, %if.else.i.i25.cleanup_crit_edge ], [ 0, %if.then.i.i.cleanup_crit_edge ], [ 0, %if.else.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv_xor_issue_pending(ptr nocapture noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %chan, i32 -472
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %add.ptr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_chan_activate.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_xor_issue_pending, %mv_chan_activate.exit)) #8
          to label %if.then.i [label %mv_chan_activate.exit], !srcloc !201

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr i8, ptr %chan, i32 -292
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_chan_activate.__UNIQUE_ID_ddebug237, ptr noundef %4, ptr noundef nonnull @.str.39) #8
  br label %mv_chan_activate.exit

mv_chan_activate.exit:                            ; preds = %if.then.i, %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  tail call void @arm_heavy_mb() #8
  %mmr_base.i = getelementptr i8, ptr %chan, i32 -424
  %5 = ptrtoint ptr %mmr_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmr_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 32
  %idx.i = getelementptr i8, ptr %chan, i32 -416
  %7 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx.i, align 4
  %mul.i = shl i32 %8, 2
  %add.ptr6.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 16777216) #8, !srcloc !182
  br label %if.end

if.end:                                           ; preds = %mv_chan_activate.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mv_xor_prep_dma_interrupt(ptr noundef %chan, i32 noundef %flags) #2 align 64 {
entry:
  %src = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %src) #8
  %dummy_src_addr = getelementptr i8, ptr %chan, i32 352
  %0 = ptrtoint ptr %dummy_src_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dummy_src_addr, align 4
  %2 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %src, align 4
  %dummy_dst_addr = getelementptr i8, ptr %chan, i32 356
  %3 = ptrtoint ptr %dummy_dst_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dummy_dst_addr, align 4
  %call = call ptr @mv_xor_prep_dma_xor(ptr noundef %chan, i32 noundef %4, ptr noundef nonnull %src, i32 noundef 1, i32 noundef 128, i32 noundef %flags)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src) #8
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mv_xor_prep_dma_memcpy(ptr noundef %chan, i32 noundef %dest, i32 noundef %src, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  %src.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %src.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %src, ptr %src.addr, align 4
  %call = call ptr @mv_xor_prep_dma_xor(ptr noundef %chan, i32 noundef %dest, ptr noundef nonnull %src.addr, i32 noundef 1, i32 noundef %len, i32 noundef %flags)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mv_xor_prep_dma_xor(ptr noundef %chan, i32 noundef %dest, ptr nocapture noundef readonly %src, i32 noundef %src_cnt, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  %dest.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dest.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %dest, ptr %dest.addr, align 4
  %add.ptr = getelementptr i8, ptr %chan, i32 -472
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %len)
  %cmp = icmp ult i32 %len, 128
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body, !prof !204

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %len)
  %cmp2 = icmp ugt i32 %len, 16777215
  br i1 %cmp2, label %do.body10, label %do.body17, !prof !204

do.body10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/mv_xor.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 565, 0\0A.popsection", ""() #8, !srcloc !205
  unreachable

do.body17:                                        ; preds = %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_xor_prep_dma_xor.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_xor_prep_dma_xor, %do.end31)) #8
          to label %if.then28 [label %do.end31], !srcloc !201

if.then28:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr i8, ptr %chan, i32 -292
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_xor_prep_dma_xor.__UNIQUE_ID_ddebug246, ptr noundef %2, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i32 noundef %src_cnt, i32 noundef %len, ptr noundef nonnull %dest.addr, i32 noundef %flags) #8
  br label %do.end31

do.end31:                                         ; preds = %if.then28, %do.body17
  %3 = ptrtoint ptr %dest.addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dest.addr, align 4
  %call32 = call fastcc i32 @mv_xor_add_io_win(ptr noundef %add.ptr, i32 noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %do.end31.cleanup_crit_edge

do.end31.cleanup_crit_edge:                       ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end35:                                         ; preds = %do.end31
  %lock.i = getelementptr i8, ptr %chan, i32 -468
  call void @_raw_spin_lock_bh(ptr noundef %lock.i) #8
  %free_slots.i = getelementptr i8, ptr %chan, i32 -400
  %5 = ptrtoint ptr %free_slots.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %free_slots.i, align 4
  %cmp.i.not.i = icmp eq ptr %6, %free_slots.i
  br i1 %cmp.i.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end35
  %allocated_slots.i = getelementptr i8, ptr %chan, i32 -392
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.__list_del_entry.exit.i.i_crit_edge

if.then.i.__list_del_entry.exit.i.i_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.then.i.__list_del_entry.exit.i.i_crit_edge
  %prev.i2.i.i = getelementptr i8, ptr %chan, i32 -388
  %13 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %6, ptr noundef %14, ptr noundef %allocated_slots.i) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.mv_chan_alloc_slot.exit_crit_edge

__list_del_entry.exit.i.i.mv_chan_alloc_slot.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mv_chan_alloc_slot.exit

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %6, ptr %prev.i2.i.i, align 4
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %allocated_slots.i, ptr %6, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %6, ptr %14, align 4
  br label %mv_chan_alloc_slot.exit

if.end.i:                                         ; preds = %if.end35
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #8
  %state.i.i = getelementptr i8, ptr %chan, i32 72
  %call.i.i = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.do.body50_crit_edge

if.end.i.do.body50_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body50

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %irq_tasklet.i = getelementptr i8, ptr %chan, i32 68
  call void @__tasklet_schedule(ptr noundef %irq_tasklet.i) #8
  br label %do.body50

mv_chan_alloc_slot.exit:                          ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.mv_chan_alloc_slot.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #8
  %async_tx.i = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %6, i32 0, i32 5
  %flags.i.i = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %6, i32 0, i32 5, i32 1
  %19 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i.i, align 4
  %or.i.i = or i32 %20, 2
  store i32 %or.i.i, ptr %flags.i.i, align 4
  %21 = ptrtoint ptr %async_tx.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -16, ptr %async_tx.i, align 4
  %tobool37.not = icmp eq ptr %6, null
  br i1 %tobool37.not, label %mv_chan_alloc_slot.exit.do.body50_crit_edge, label %if.then38

mv_chan_alloc_slot.exit.do.body50_crit_edge:      ; preds = %mv_chan_alloc_slot.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body50

if.then38:                                        ; preds = %mv_chan_alloc_slot.exit
  %type = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %6, i32 0, i32 2
  %22 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %type, align 4
  %23 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %flags, ptr %flags.i.i, align 4
  %24 = ptrtoint ptr %dest.addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dest.addr, align 4
  %hw_desc1.i = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %6, i32 0, i32 3
  %26 = ptrtoint ptr %hw_desc1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw_desc1.i, align 4
  %status.i = getelementptr inbounds %struct.mv_xor_desc, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -2147483648, ptr %status.i, align 4
  %phy_next_desc.i = getelementptr inbounds %struct.mv_xor_desc, ptr %27, i32 0, i32 2
  %29 = ptrtoint ptr %phy_next_desc.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %phy_next_desc.i, align 4
  %30 = shl i32 %flags, 31
  %desc_command.i = getelementptr inbounds %struct.mv_xor_desc, ptr %27, i32 0, i32 3
  %31 = ptrtoint ptr %desc_command.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %desc_command.i, align 4
  %phy_dest_addr.i = getelementptr inbounds %struct.mv_xor_desc, ptr %27, i32 0, i32 4
  %32 = ptrtoint ptr %phy_dest_addr.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %25, ptr %phy_dest_addr.i, align 4
  %byte_count2.i = getelementptr inbounds %struct.mv_xor_desc, ptr %27, i32 0, i32 5
  %33 = ptrtoint ptr %byte_count2.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %len, ptr %byte_count2.i, align 4
  %op_in_desc = getelementptr i8, ptr %chan, i32 92
  %34 = ptrtoint ptr %op_in_desc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %op_in_desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp40 = icmp eq i32 %35, 1
  br i1 %cmp40, label %if.then41, label %if.then38.if.end42_crit_edge

if.then38.if.end42_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then41:                                        ; preds = %if.then38
  %36 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %type, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values)
  switch i32 %37, label %do.body.i [
    i32 2, label %if.then41.if.end42_crit_edge
    i32 8, label %if.then41.if.end42_crit_edge119
    i32 0, label %sw.bb2.i
  ]

if.then41.if.end42_crit_edge119:                  ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then41.if.end42_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

sw.bb2.i:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %hw_desc1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw_desc1.i, align 4
  %desc_command3.i = getelementptr inbounds %struct.mv_xor_desc, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %desc_command3.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %desc_command3.i, align 4
  %or4.i = or i32 %42, 33554432
  store i32 %or4.i, ptr %desc_command3.i, align 4
  br label %if.end42

do.body.i:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/mv_xor.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 76, 0\0A.popsection", ""() #8, !srcloc !206
  unreachable

if.end42:                                         ; preds = %sw.bb2.i, %if.then41.if.end42_crit_edge, %if.then41.if.end42_crit_edge119, %if.then38.if.end42_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_cnt)
  %tobool43.not117 = icmp eq i32 %src_cnt, 0
  br i1 %tobool43.not117, label %if.end42.do.body50_crit_edge, label %if.end42.while.body_crit_edge

if.end42.while.body_crit_edge:                    ; preds = %if.end42
  br label %while.body

if.end42.do.body50_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body50

while.body:                                       ; preds = %mv_desc_set_src_addr.exit.while.body_crit_edge, %if.end42.while.body_crit_edge
  %dec118.in = phi i32 [ %dec118, %mv_desc_set_src_addr.exit.while.body_crit_edge ], [ %src_cnt, %if.end42.while.body_crit_edge ]
  %dec118 = add i32 %dec118.in, -1
  %arrayidx = getelementptr i32, ptr %src, i32 %dec118
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx, align 4
  %call44 = call fastcc i32 @mv_xor_add_io_win(ptr noundef %add.ptr, i32 noundef %44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end47:                                         ; preds = %while.body
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx, align 4
  %47 = ptrtoint ptr %hw_desc1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hw_desc1.i, align 4
  %xor.i = xor i32 %dec118, 1
  %arrayidx.i = getelementptr %struct.mv_xor_desc, ptr %48, i32 0, i32 6, i32 %xor.i
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %46, ptr %arrayidx.i, align 4
  %50 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %51)
  %cmp.i = icmp eq i32 %51, 2
  br i1 %cmp.i, label %if.then.i108, label %if.end47.mv_desc_set_src_addr.exit_crit_edge

if.end47.mv_desc_set_src_addr.exit_crit_edge:     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %mv_desc_set_src_addr.exit

if.then.i108:                                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i = shl nuw i32 1, %dec118
  %desc_command.i107 = getelementptr inbounds %struct.mv_xor_desc, ptr %48, i32 0, i32 3
  %52 = ptrtoint ptr %desc_command.i107 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %desc_command.i107, align 4
  %or.i = or i32 %53, %shl.i
  store i32 %or.i, ptr %desc_command.i107, align 4
  br label %mv_desc_set_src_addr.exit

mv_desc_set_src_addr.exit:                        ; preds = %if.then.i108, %if.end47.mv_desc_set_src_addr.exit_crit_edge
  %tobool43.not = icmp eq i32 %dec118, 0
  br i1 %tobool43.not, label %mv_desc_set_src_addr.exit.do.body50_crit_edge, label %mv_desc_set_src_addr.exit.while.body_crit_edge

mv_desc_set_src_addr.exit.while.body_crit_edge:   ; preds = %mv_desc_set_src_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

mv_desc_set_src_addr.exit.do.body50_crit_edge:    ; preds = %mv_desc_set_src_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body50

do.body50:                                        ; preds = %mv_desc_set_src_addr.exit.do.body50_crit_edge, %if.end42.do.body50_crit_edge, %mv_chan_alloc_slot.exit.do.body50_crit_edge, %if.then.i.i, %if.end.i.do.body50_crit_edge
  %tobool37.not114 = phi i1 [ true, %mv_chan_alloc_slot.exit.do.body50_crit_edge ], [ true, %if.end.i.do.body50_crit_edge ], [ true, %if.then.i.i ], [ false, %if.end42.do.body50_crit_edge ], [ false, %mv_desc_set_src_addr.exit.do.body50_crit_edge ]
  %retval.0.i103113 = phi ptr [ null, %mv_chan_alloc_slot.exit.do.body50_crit_edge ], [ null, %if.end.i.do.body50_crit_edge ], [ null, %if.then.i.i ], [ %6, %if.end42.do.body50_crit_edge ], [ %6, %mv_desc_set_src_addr.exit.do.body50_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_xor_prep_dma_xor.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_xor_prep_dma_xor, %do.end70)) #8
          to label %if.then64 [label %do.end70], !srcloc !201

if.then64:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #10
  %dev66 = getelementptr i8, ptr %chan, i32 -292
  %54 = ptrtoint ptr %dev66 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev66, align 4
  %async_tx67 = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %retval.0.i103113, i32 0, i32 5
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_xor_prep_dma_xor.__UNIQUE_ID_ddebug247, ptr noundef %55, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.40, ptr noundef %retval.0.i103113, ptr noundef %async_tx67) #8
  br label %do.end70

do.end70:                                         ; preds = %if.then64, %do.body50
  %async_tx72 = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %retval.0.i103113, i32 0, i32 5
  %spec.select = select i1 %tobool37.not114, ptr null, ptr %async_tx72
  br label %cleanup

cleanup:                                          ; preds = %do.end70, %while.body.cleanup_crit_edge, %do.end31.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %spec.select, %do.end70 ], [ null, %entry.cleanup_crit_edge ], [ null, %do.end31.cleanup_crit_edge ], [ null, %while.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv_xor_tasklet(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -540
  %lock = getelementptr i8, ptr %t, i32 -536
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  tail call fastcc void @mv_chan_slot_cleanup(ptr noundef %add.ptr)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_xor_interrupt_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mmr_base.i = getelementptr inbounds %struct.mv_xor_chan, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %mmr_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmr_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 48
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !181
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  %idx.i = getelementptr inbounds %struct.mv_xor_chan, ptr %data, i32 0, i32 4
  %4 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx.i, align 4
  %mul.i = shl i32 %5, 4
  %shr.i = lshr i32 %3, %mul.i
  %and.i = and i32 %shr.i, 65535
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_xor_interrupt_handler.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_xor_interrupt_handler, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !201

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mv_xor_chan, ptr %data, i32 0, i32 13, i32 15
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_xor_interrupt_handler.__UNIQUE_ID_ddebug250, ptr noundef %7, ptr noundef nonnull @.str.44, i32 noundef %and.i) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = and i32 %shr.i, 1008
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.end.if.end7_crit_edge, label %if.then6

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mv_chan_err_interrupt_handler(ptr noundef %data, i32 noundef %and.i)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %do.end.if.end7_crit_edge
  %state.i = getelementptr inbounds %struct.mv_xor_chan, ptr %data, i32 0, i32 16, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end7.tasklet_schedule.exit_crit_edge

if.end7.tasklet_schedule.exit_crit_edge:          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %irq_tasklet = getelementptr inbounds %struct.mv_xor_chan, ptr %data, i32 0, i32 16
  tail call void @__tasklet_schedule(ptr noundef %irq_tasklet) #8
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %if.end7.tasklet_schedule.exit_crit_edge
  %8 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx.i, align 4
  %mul.i15 = shl i32 %9, 4
  %shl.i = shl i32 7, %mul.i15
  %neg.i = xor i32 %shl.i, -1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_chan_clear_eoc_cause.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_xor_interrupt_handler, %mv_chan_clear_eoc_cause.exit)) #8
          to label %if.then.i16 [label %mv_chan_clear_eoc_cause.exit], !srcloc !201

if.then.i16:                                      ; preds = %tasklet_schedule.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.mv_xor_chan, ptr %data, i32 0, i32 13, i32 15
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_chan_clear_eoc_cause.__UNIQUE_ID_ddebug236, ptr noundef %11, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.65, i32 noundef %neg.i) #8
  br label %mv_chan_clear_eoc_cause.exit

mv_chan_clear_eoc_cause.exit:                     ; preds = %if.then.i16, %tasklet_schedule.exit
  %12 = tail call i32 @llvm.bswap.i32(i32 %neg.i) #8
  %13 = ptrtoint ptr %mmr_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmr_base.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %14, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %12) #8, !srcloc !182
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mv_chan_xor_self_test(ptr noundef %mv_chan) unnamed_addr #2 align 64 {
entry:
  %xor_srcs = alloca [4 x ptr], align 4
  %dma_srcs = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %xor_srcs) #8
  %0 = getelementptr inbounds [4 x ptr], ptr %xor_srcs, i32 0, i32 1
  %1 = getelementptr inbounds [4 x ptr], ptr %xor_srcs, i32 0, i32 2
  %2 = getelementptr inbounds [4 x ptr], ptr %xor_srcs, i32 0, i32 3
  %3 = getelementptr inbounds i8, ptr %xor_srcs, i32 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 -1, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dma_srcs) #8
  %5 = getelementptr inbounds [4 x i32], ptr %dma_srcs, i32 0, i32 1
  %6 = getelementptr inbounds [4 x i32], ptr %dma_srcs, i32 0, i32 2
  %7 = getelementptr inbounds [4 x i32], ptr %dma_srcs, i32 0, i32 3
  %8 = call ptr @memset(ptr %dma_srcs, i32 255, i32 16)
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #8
  %9 = ptrtoint ptr %xor_srcs to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call38.i.i.i, ptr %xor_srcs, align 4
  %tobool.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup153_crit_edge, label %for.inc

entry.cleanup153_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup153

while.body.1:                                     ; preds = %while.body.preheader
  %dec.1 = add nsw i32 %src_idx.1270.ph, -1
  %arrayidx3.1 = getelementptr [4 x ptr], ptr %xor_srcs, i32 0, i32 %dec.1
  %10 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx3.1, align 4
  tail call void @__free_pages(ptr noundef %11, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.1)
  %tobool2.not.1 = icmp eq i32 %dec.1, 0
  br i1 %tobool2.not.1, label %while.body.1.cleanup153_crit_edge, label %while.body.2

while.body.1.cleanup153_crit_edge:                ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup153

while.body.2:                                     ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #10
  %dec.2 = add nsw i32 %src_idx.1270.ph, -2
  %arrayidx3.2 = getelementptr [4 x ptr], ptr %xor_srcs, i32 0, i32 %dec.2
  %12 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx3.2, align 4
  tail call void @__free_pages(ptr noundef %13, i32 noundef 0) #8
  br label %cleanup153

for.inc:                                          ; preds = %entry
  %call38.i.i.i.1 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #8
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call38.i.i.i.1, ptr %0, align 4
  %tobool.not.1 = icmp eq ptr %call38.i.i.i.1, null
  br i1 %tobool.not.1, label %for.inc.while.body.preheader_crit_edge, label %for.inc.1

for.inc.while.body.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.preheader

while.body.preheader:                             ; preds = %for.inc.2.while.body.preheader_crit_edge, %for.inc.1.while.body.preheader_crit_edge, %for.inc.while.body.preheader_crit_edge
  %src_idx.1270.ph = phi i32 [ 0, %for.inc.while.body.preheader_crit_edge ], [ 1, %for.inc.1.while.body.preheader_crit_edge ], [ 2, %for.inc.2.while.body.preheader_crit_edge ]
  %arrayidx3 = getelementptr [4 x ptr], ptr %xor_srcs, i32 0, i32 %src_idx.1270.ph
  %15 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx3, align 4
  tail call void @__free_pages(ptr noundef %16, i32 noundef 0) #8
  br i1 %tobool.not.1, label %while.body.preheader.cleanup153_crit_edge, label %while.body.1

while.body.preheader.cleanup153_crit_edge:        ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup153

for.inc.1:                                        ; preds = %for.inc
  %call38.i.i.i.2 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #8
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call38.i.i.i.2, ptr %1, align 4
  %tobool.not.2 = icmp eq ptr %call38.i.i.i.2, null
  br i1 %tobool.not.2, label %for.inc.1.while.body.preheader_crit_edge, label %for.inc.2

for.inc.1.while.body.preheader_crit_edge:         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.preheader

for.inc.2:                                        ; preds = %for.inc.1
  %call38.i.i.i.3 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #8
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call38.i.i.i.3, ptr %2, align 4
  %tobool.not.3 = icmp eq ptr %call38.i.i.i.3, null
  br i1 %tobool.not.3, label %for.inc.2.while.body.preheader_crit_edge, label %for.inc.3

for.inc.2.while.body.preheader_crit_edge:         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.preheader

for.inc.3:                                        ; preds = %for.inc.2
  %call38.i.i.i246 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #8
  %tobool5.not = icmp eq ptr %call38.i.i.i246, null
  br i1 %tobool5.not, label %while.body10.preheader, label %for.body16.preheader

for.body16.preheader:                             ; preds = %for.inc.3
  %19 = ptrtoint ptr %xor_srcs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %xor_srcs, align 4
  %call18 = tail call ptr @page_address(ptr noundef %20) #8
  %21 = call ptr @memset(ptr %call18, i32 1, i32 4096)
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %0, align 4
  %call18.1 = tail call ptr @page_address(ptr noundef %23) #8
  %24 = call ptr @memset(ptr %call18.1, i32 2, i32 4096)
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %call18.2 = tail call ptr @page_address(ptr noundef %26) #8
  %27 = call ptr @memset(ptr %call18.2, i32 4, i32 4096)
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %2, align 4
  %call18.3 = tail call ptr @page_address(ptr noundef %29) #8
  %30 = call ptr @memset(ptr %call18.3, i32 8, i32 4096)
  %call50 = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i246) #8
  %31 = call ptr @memset(ptr %call50, i32 0, i32 4096)
  %dmachan = getelementptr inbounds %struct.mv_xor_chan, ptr %mv_chan, i32 0, i32 14
  %call51 = tail call i32 @mv_xor_alloc_chan_resources(ptr noundef %dmachan)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 1
  br i1 %cmp52, label %for.body16.preheader.out_crit_edge, label %if.end55

for.body16.preheader.out_crit_edge:               ; preds = %for.body16.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

while.body10.preheader:                           ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %2, align 4
  tail call void @__free_pages(ptr noundef %33, i32 noundef 0) #8
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  tail call void @__free_pages(ptr noundef %35, i32 noundef 0) #8
  %36 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %0, align 4
  tail call void @__free_pages(ptr noundef %37, i32 noundef 0) #8
  %38 = ptrtoint ptr %xor_srcs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %xor_srcs, align 4
  tail call void @__free_pages(ptr noundef %39, i32 noundef 0) #8
  br label %cleanup153

if.end55:                                         ; preds = %for.body16.preheader
  %40 = ptrtoint ptr %dmachan to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dmachan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %41, i32 0, i32 15
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  %call56 = tail call ptr @dmaengine_get_unmap_data(ptr noundef %43, i32 noundef 5, i32 noundef 3264) #8
  %tobool57.not = icmp eq ptr %call56, null
  br i1 %tobool57.not, label %if.end55.free_resources_crit_edge, label %for.cond60.preheader

if.end55.free_resources_crit_edge:                ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_resources

for.cond60.preheader:                             ; preds = %if.end55
  %to_cnt = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %call56, i32 0, i32 1
  %44 = ptrtoint ptr %dmachan to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dmachan, align 4
  %dev65 = getelementptr inbounds %struct.dma_device, ptr %45, i32 0, i32 15
  %46 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev65, align 4
  %48 = ptrtoint ptr %xor_srcs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %xor_srcs, align 4
  %call67 = tail call i32 @dma_map_page_attrs(ptr noundef %47, ptr noundef %49, i32 noundef 0, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #8
  %arrayidx68 = getelementptr %struct.dmaengine_unmap_data, ptr %call56, i32 0, i32 7, i32 0
  %50 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call67, ptr %arrayidx68, align 4
  %51 = ptrtoint ptr %dma_srcs to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call67, ptr %dma_srcs, align 4
  %52 = ptrtoint ptr %dmachan to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dmachan, align 4
  %dev73 = getelementptr inbounds %struct.dma_device, ptr %53, i32 0, i32 15
  %54 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev73, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %55, i32 noundef %call67) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call67)
  %cmp.i.not = icmp eq i32 %call67, -1
  br i1 %cmp.i.not, label %for.cond60.preheader.free_resources_crit_edge, label %if.end79

for.cond60.preheader.free_resources_crit_edge:    ; preds = %for.cond60.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_resources

if.end79:                                         ; preds = %for.cond60.preheader
  %56 = ptrtoint ptr %to_cnt to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %to_cnt, align 2
  %inc80 = add i8 %57, 1
  store i8 %inc80, ptr %to_cnt, align 2
  %58 = ptrtoint ptr %dmachan to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dmachan, align 4
  %dev65.1 = getelementptr inbounds %struct.dma_device, ptr %59, i32 0, i32 15
  %60 = ptrtoint ptr %dev65.1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev65.1, align 4
  %62 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %0, align 4
  %call67.1 = tail call i32 @dma_map_page_attrs(ptr noundef %61, ptr noundef %63, i32 noundef 0, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #8
  %arrayidx68.1 = getelementptr %struct.dmaengine_unmap_data, ptr %call56, i32 0, i32 7, i32 1
  %64 = ptrtoint ptr %arrayidx68.1 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %call67.1, ptr %arrayidx68.1, align 4
  %65 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %call67.1, ptr %5, align 4
  %66 = ptrtoint ptr %dmachan to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dmachan, align 4
  %dev73.1 = getelementptr inbounds %struct.dma_device, ptr %67, i32 0, i32 15
  %68 = ptrtoint ptr %dev73.1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev73.1, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %69, i32 noundef %call67.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call67.1)
  %cmp.i.not.1 = icmp eq i32 %call67.1, -1
  br i1 %cmp.i.not.1, label %if.end79.free_resources_crit_edge, label %if.end79.1

if.end79.free_resources_crit_edge:                ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_resources

if.end79.1:                                       ; preds = %if.end79
  %70 = ptrtoint ptr %to_cnt to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %to_cnt, align 2
  %inc80.1 = add i8 %71, 1
  store i8 %inc80.1, ptr %to_cnt, align 2
  %72 = ptrtoint ptr %dmachan to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dmachan, align 4
  %dev65.2 = getelementptr inbounds %struct.dma_device, ptr %73, i32 0, i32 15
  %74 = ptrtoint ptr %dev65.2 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev65.2, align 4
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %1, align 4
  %call67.2 = tail call i32 @dma_map_page_attrs(ptr noundef %75, ptr noundef %77, i32 noundef 0, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #8
  %arrayidx68.2 = getelementptr %struct.dmaengine_unmap_data, ptr %call56, i32 0, i32 7, i32 2
  %78 = ptrtoint ptr %arrayidx68.2 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %call67.2, ptr %arrayidx68.2, align 4
  %79 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %call67.2, ptr %6, align 4
  %80 = ptrtoint ptr %dmachan to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dmachan, align 4
  %dev73.2 = getelementptr inbounds %struct.dma_device, ptr %81, i32 0, i32 15
  %82 = ptrtoint ptr %dev73.2 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev73.2, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %83, i32 noundef %call67.2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call67.2)
  %cmp.i.not.2 = icmp eq i32 %call67.2, -1
  br i1 %cmp.i.not.2, label %if.end79.1.free_resources_crit_edge, label %if.end79.2

if.end79.1.free_resources_crit_edge:              ; preds = %if.end79.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_resources

if.end79.2:                                       ; preds = %if.end79.1
  %84 = ptrtoint ptr %to_cnt to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %to_cnt, align 2
  %inc80.2 = add i8 %85, 1
  store i8 %inc80.2, ptr %to_cnt, align 2
  %86 = ptrtoint ptr %dmachan to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dmachan, align 4
  %dev65.3 = getelementptr inbounds %struct.dma_device, ptr %87, i32 0, i32 15
  %88 = ptrtoint ptr %dev65.3 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev65.3, align 4
  %90 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %2, align 4
  %call67.3 = tail call i32 @dma_map_page_attrs(ptr noundef %89, ptr noundef %91, i32 noundef 0, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #8
  %arrayidx68.3 = getelementptr %struct.dmaengine_unmap_data, ptr %call56, i32 0, i32 7, i32 3
  %92 = ptrtoint ptr %arrayidx68.3 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %call67.3, ptr %arrayidx68.3, align 4
  %93 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %call67.3, ptr %7, align 4
  %94 = ptrtoint ptr %dmachan to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dmachan, align 4
  %dev73.3 = getelementptr inbounds %struct.dma_device, ptr %95, i32 0, i32 15
  %96 = ptrtoint ptr %dev73.3 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev73.3, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %97, i32 noundef %call67.3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call67.3)
  %cmp.i.not.3 = icmp eq i32 %call67.3, -1
  br i1 %cmp.i.not.3, label %if.end79.2.free_resources_crit_edge, label %if.end79.3

if.end79.2.free_resources_crit_edge:              ; preds = %if.end79.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_resources

if.end79.3:                                       ; preds = %if.end79.2
  %98 = ptrtoint ptr %to_cnt to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %to_cnt, align 2
  %inc80.3 = add i8 %99, 1
  store i8 %inc80.3, ptr %to_cnt, align 2
  %100 = ptrtoint ptr %dmachan to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dmachan, align 4
  %dev85 = getelementptr inbounds %struct.dma_device, ptr %101, i32 0, i32 15
  %102 = ptrtoint ptr %dev85 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev85, align 4
  %call86 = tail call i32 @dma_map_page_attrs(ptr noundef %103, ptr noundef nonnull %call38.i.i.i246, i32 noundef 0, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #8
  %arrayidx88 = getelementptr %struct.dmaengine_unmap_data, ptr %call56, i32 1, i32 6
  %104 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %call86, ptr %arrayidx88, align 4
  %105 = ptrtoint ptr %dmachan to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dmachan, align 4
  %dev92 = getelementptr inbounds %struct.dma_device, ptr %106, i32 0, i32 15
  %107 = ptrtoint ptr %dev92 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev92, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %108, i32 noundef %call86) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call86)
  %cmp.i247.not = icmp eq i32 %call86, -1
  br i1 %cmp.i247.not, label %if.end79.3.free_resources_crit_edge, label %if.end98

if.end79.3.free_resources_crit_edge:              ; preds = %if.end79.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_resources

if.end98:                                         ; preds = %if.end79.3
  %from_cnt = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %call56, i32 0, i32 2
  %109 = ptrtoint ptr %from_cnt to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 1, ptr %from_cnt, align 1
  %len = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %call56, i32 0, i32 6
  %110 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 4096, ptr %len, align 4
  %call99 = call ptr @mv_xor_prep_dma_xor(ptr noundef %dmachan, i32 noundef %call86, ptr noundef nonnull %dma_srcs, i32 noundef 4, i32 noundef 4096, i32 noundef 0)
  %tobool100.not = icmp eq ptr %call99, null
  br i1 %tobool100.not, label %do.end, label %if.end104

do.end:                                           ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  %111 = ptrtoint ptr %dmachan to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dmachan, align 4
  %dev103 = getelementptr inbounds %struct.dma_device, ptr %112, i32 0, i32 15
  %113 = ptrtoint ptr %dev103 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev103, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %114, ptr noundef nonnull @.str.67) #11
  br label %free_resources

if.end104:                                        ; preds = %if.end98
  %call105 = tail call i32 @mv_xor_tx_submit(ptr noundef nonnull %call99)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call105)
  %tobool107.not = icmp sgt i32 %call105, -1
  br i1 %tobool107.not, label %if.end114, label %do.end111

do.end111:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  %115 = ptrtoint ptr %dmachan to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dmachan, align 4
  %dev113 = getelementptr inbounds %struct.dma_device, ptr %116, i32 0, i32 15
  %117 = ptrtoint ptr %dev113 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev113, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.70) #11
  br label %free_resources

if.end114:                                        ; preds = %if.end104
  %119 = ptrtoint ptr %mv_chan to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %mv_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp.i249 = icmp sgt i32 %120, 0
  br i1 %cmp.i249, label %if.then.i, label %if.end114.mv_xor_issue_pending.exit_crit_edge

if.end114.mv_xor_issue_pending.exit_crit_edge:    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  br label %mv_xor_issue_pending.exit

if.then.i:                                        ; preds = %if.end114
  %121 = ptrtoint ptr %mv_chan to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %mv_chan, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_chan_activate.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_chan_xor_self_test, %mv_chan_activate.exit.i)) #8
          to label %if.then.i.i [label %mv_chan_activate.exit.i], !srcloc !201

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr %struct.mv_xor_chan, ptr %mv_chan, i32 0, i32 13, i32 15
  %122 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_chan_activate.__UNIQUE_ID_ddebug237, ptr noundef %123, ptr noundef nonnull @.str.39) #8
  br label %mv_chan_activate.exit.i

mv_chan_activate.exit.i:                          ; preds = %if.then.i.i, %if.then.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  tail call void @arm_heavy_mb() #8
  %mmr_base.i.i = getelementptr %struct.mv_xor_chan, ptr %mv_chan, i32 0, i32 2
  %124 = ptrtoint ptr %mmr_base.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %mmr_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %125, i32 32
  %idx.i.i = getelementptr %struct.mv_xor_chan, ptr %mv_chan, i32 0, i32 4
  %126 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %idx.i.i, align 4
  %mul.i.i = shl i32 %127, 2
  %add.ptr6.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 16777216) #8, !srcloc !182
  br label %mv_xor_issue_pending.exit

mv_xor_issue_pending.exit:                        ; preds = %mv_chan_activate.exit.i, %if.end114.mv_xor_issue_pending.exit_crit_edge
  %flags.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call99, i32 0, i32 1
  %128 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %129, 2
  store i32 %or.i, ptr %flags.i, align 4
  tail call void @msleep(i32 noundef 8) #8
  %cookie1.i.i = getelementptr inbounds %struct.mv_xor_chan, ptr %mv_chan, i32 0, i32 14, i32 2
  %130 = ptrtoint ptr %cookie1.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %cookie1.i.i, align 4
  %completed_cookie.i.i = getelementptr inbounds %struct.mv_xor_chan, ptr %mv_chan, i32 0, i32 14, i32 3
  %132 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %completed_cookie.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !202
  call void @__sanitizer_cov_trace_cmp4(i32 %133, i32 %131)
  %cmp.not.i.i.i = icmp sgt i32 %133, %131
  call void @__sanitizer_cov_trace_cmp4(i32 %133, i32 %call105)
  %cmp4.not.i.i.i = icmp sge i32 %133, %call105
  call void @__sanitizer_cov_trace_cmp4(i32 %131, i32 %call105)
  %cmp5.i.i.i = icmp slt i32 %131, %call105
  br i1 %cmp.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %mv_xor_issue_pending.exit
  %or.cond.i.i.i = or i1 %cmp5.i.i.i, %cmp4.not.i.i.i
  br i1 %or.cond.i.i.i, label %if.then.i.i.i.if.end124_crit_edge, label %if.then.i.i.i.if.end.i_crit_edge

if.then.i.i.i.if.end.i_crit_edge:                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i.i.i.if.end124_crit_edge:                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end124

if.else.i.i.i:                                    ; preds = %mv_xor_issue_pending.exit
  %or.cond16.i.i.i = and i1 %cmp5.i.i.i, %cmp4.not.i.i.i
  br i1 %or.cond16.i.i.i, label %if.else.i.i.i.if.end124_crit_edge, label %if.else.i.i.i.if.end.i_crit_edge

if.else.i.i.i.if.end.i_crit_edge:                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.else.i.i.i.if.end124_crit_edge:                ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end124

if.end.i:                                         ; preds = %if.else.i.i.i.if.end.i_crit_edge, %if.then.i.i.i.if.end.i_crit_edge
  %lock.i = getelementptr %struct.mv_xor_chan, ptr %mv_chan, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #8
  tail call fastcc void @mv_chan_slot_cleanup(ptr noundef %mv_chan) #8
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #8
  %134 = ptrtoint ptr %cookie1.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %cookie1.i.i, align 4
  %136 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %completed_cookie.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !202
  call void @__sanitizer_cov_trace_cmp4(i32 %137, i32 %135)
  %cmp.not.i.i18.i = icmp sgt i32 %137, %135
  call void @__sanitizer_cov_trace_cmp4(i32 %137, i32 %call105)
  %cmp4.not.i.i19.i = icmp sge i32 %137, %call105
  call void @__sanitizer_cov_trace_cmp4(i32 %135, i32 %call105)
  %cmp5.i.i20.i = icmp slt i32 %135, %call105
  br i1 %cmp.not.i.i18.i, label %if.else.i.i25.i, label %if.then.i.i23.i

if.then.i.i23.i:                                  ; preds = %if.end.i
  %or.cond.i.i22.i = or i1 %cmp5.i.i20.i, %cmp4.not.i.i19.i
  br i1 %or.cond.i.i22.i, label %if.then.i.i23.i.if.end124_crit_edge, label %if.then.i.i23.i.do.end121_crit_edge

if.then.i.i23.i.do.end121_crit_edge:              ; preds = %if.then.i.i23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end121

if.then.i.i23.i.if.end124_crit_edge:              ; preds = %if.then.i.i23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end124

if.else.i.i25.i:                                  ; preds = %if.end.i
  %or.cond16.i.i24.i = and i1 %cmp5.i.i20.i, %cmp4.not.i.i19.i
  br i1 %or.cond16.i.i24.i, label %if.else.i.i25.i.if.end124_crit_edge, label %if.else.i.i25.i.do.end121_crit_edge

if.else.i.i25.i.do.end121_crit_edge:              ; preds = %if.else.i.i25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end121

if.else.i.i25.i.if.end124_crit_edge:              ; preds = %if.else.i.i25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end124

do.end121:                                        ; preds = %if.else.i.i25.i.do.end121_crit_edge, %if.then.i.i23.i.do.end121_crit_edge
  %138 = ptrtoint ptr %dmachan to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dmachan, align 4
  %dev123 = getelementptr inbounds %struct.dma_device, ptr %139, i32 0, i32 15
  %140 = ptrtoint ptr %dev123 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dev123, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %141, ptr noundef nonnull @.str.82) #11
  br label %free_resources

if.end124:                                        ; preds = %if.else.i.i25.i.if.end124_crit_edge, %if.then.i.i23.i.if.end124_crit_edge, %if.else.i.i.i.if.end124_crit_edge, %if.then.i.i.i.if.end124_crit_edge
  %142 = ptrtoint ptr %dmachan to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dmachan, align 4
  %dev126 = getelementptr inbounds %struct.dma_device, ptr %143, i32 0, i32 15
  %144 = ptrtoint ptr %dev126 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev126, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %145, i32 noundef %call86, i32 noundef 4096, i32 noundef 2) #8
  br label %for.body130

for.body130:                                      ; preds = %for.inc144.for.body130_crit_edge, %if.end124
  %i.2266 = phi i32 [ 0, %if.end124 ], [ %inc145, %for.inc144.for.body130_crit_edge ]
  %call132 = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i246) #8
  %arrayidx133 = getelementptr i32, ptr %call132, i32 %i.2266
  %146 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx133, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 252645135, i32 %147)
  %cmp134.not = icmp eq i32 %147, 252645135
  br i1 %cmp134.not, label %for.inc144, label %cleanup

cleanup:                                          ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #10
  %148 = ptrtoint ptr %dmachan to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dmachan, align 4
  %dev141 = getelementptr inbounds %struct.dma_device, ptr %149, i32 0, i32 15
  %150 = ptrtoint ptr %dev141 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev141, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %151, ptr noundef nonnull @.str.85, i32 noundef %i.2266, i32 noundef %147, i32 noundef 252645135) #11
  br label %free_resources

for.inc144:                                       ; preds = %for.body130
  %inc145 = add nuw nsw i32 %i.2266, 1
  %exitcond.not = icmp eq i32 %inc145, 1024
  br i1 %exitcond.not, label %for.inc144.free_resources_crit_edge, label %for.inc144.for.body130_crit_edge

for.inc144.for.body130_crit_edge:                 ; preds = %for.inc144
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body130

for.inc144.free_resources_crit_edge:              ; preds = %for.inc144
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_resources

free_resources:                                   ; preds = %for.inc144.free_resources_crit_edge, %cleanup, %do.end121, %do.end111, %do.end, %if.end79.3.free_resources_crit_edge, %if.end79.2.free_resources_crit_edge, %if.end79.1.free_resources_crit_edge, %if.end79.free_resources_crit_edge, %for.cond60.preheader.free_resources_crit_edge, %if.end55.free_resources_crit_edge
  %err.2 = phi i32 [ -19, %do.end111 ], [ -19, %do.end121 ], [ -19, %cleanup ], [ -19, %do.end ], [ -12, %if.end55.free_resources_crit_edge ], [ -12, %if.end79.3.free_resources_crit_edge ], [ -12, %if.end79.2.free_resources_crit_edge ], [ -12, %if.end79.1.free_resources_crit_edge ], [ -12, %if.end79.free_resources_crit_edge ], [ -12, %for.cond60.preheader.free_resources_crit_edge ], [ 0, %for.inc144.free_resources_crit_edge ]
  tail call void @dmaengine_unmap_put(ptr noundef %call56) #8
  tail call void @mv_xor_free_chan_resources(ptr noundef %dmachan)
  br label %out

out:                                              ; preds = %free_resources, %for.body16.preheader.out_crit_edge
  %err.3 = phi i32 [ %err.2, %free_resources ], [ -19, %for.body16.preheader.out_crit_edge ]
  %152 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %2, align 4
  tail call void @__free_pages(ptr noundef %153, i32 noundef 0) #8
  %154 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %1, align 4
  tail call void @__free_pages(ptr noundef %155, i32 noundef 0) #8
  %156 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %0, align 4
  tail call void @__free_pages(ptr noundef %157, i32 noundef 0) #8
  %158 = ptrtoint ptr %xor_srcs to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %xor_srcs, align 4
  tail call void @__free_pages(ptr noundef %159, i32 noundef 0) #8
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i246, i32 noundef 0) #8
  br label %cleanup153

cleanup153:                                       ; preds = %out, %while.body10.preheader, %while.body.preheader.cleanup153_crit_edge, %while.body.2, %while.body.1.cleanup153_crit_edge, %entry.cleanup153_crit_edge
  %retval.0 = phi i32 [ %err.3, %out ], [ -12, %while.body10.preheader ], [ -12, %entry.cleanup153_crit_edge ], [ -12, %while.body.2 ], [ -12, %while.body.1.cleanup153_crit_edge ], [ -12, %while.body.preheader.cleanup153_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dma_srcs) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %xor_srcs) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_xor_tx_submit(ptr noundef %tx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %tx, i32 -28
  %chan = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx, i32 0, i32 3
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %add.ptr3 = getelementptr i8, ptr %1, i32 -472
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_xor_tx_submit.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_xor_tx_submit, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !201

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr i8, ptr %1, i32 -292
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_xor_tx_submit.__UNIQUE_ID_ddebug243, ptr noundef %3, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23, ptr noundef %add.ptr, ptr noundef %tx) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr i8, ptr %1, i32 -468
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan, align 4
  %cookie2.i = getelementptr inbounds %struct.dma_chan, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cookie2.i, align 4
  %add.i = add i32 %7, 1
  %8 = tail call i32 @llvm.smax.i32(i32 %add.i, i32 1) #8
  %9 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %cookie2.i, align 4
  %10 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %8, ptr %tx, align 4
  %chain = getelementptr i8, ptr %1, i32 -408
  %11 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %chain, align 4
  %cmp.i.not = icmp eq ptr %12, %chain
  br i1 %cmp.i.not, label %if.then11, label %if.else

if.then11:                                        ; preds = %do.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then11.__list_del_entry.exit.i_crit_edge

if.then11.__list_del_entry.exit.i_crit_edge:      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr i8, ptr %tx, i32 -24
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then11.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr i8, ptr %1, i32 -404
  %19 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %add.ptr, ptr noundef %20, ptr noundef %chain) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.if.then53_crit_edge

__list_del_entry.exit.i.if.then53_crit_edge:      ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then53

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr, ptr %prev.i2.i, align 4
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %chain, ptr %add.ptr, align 4
  %prev3.i.i.i = getelementptr i8, ptr %tx, i32 -24
  %23 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %add.ptr, ptr %20, align 4
  br label %if.then53

if.else:                                          ; preds = %do.end
  %prev = getelementptr i8, ptr %1, i32 -404
  %25 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev, align 4
  %call.i.i78 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr) #8
  br i1 %call.i.i78, label %if.end.i.i81, label %if.else.__list_del_entry.exit.i84_crit_edge

if.else.__list_del_entry.exit.i84_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i84

if.end.i.i81:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i79 = getelementptr i8, ptr %tx, i32 -24
  %27 = ptrtoint ptr %prev.i.i79 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i79, align 4
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr, align 4
  %prev1.i.i.i80 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i80 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i80, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %__list_del_entry.exit.i84

__list_del_entry.exit.i84:                        ; preds = %if.end.i.i81, %if.else.__list_del_entry.exit.i84_crit_edge
  %33 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev, align 4
  %call.i.i.i83 = tail call zeroext i1 @__list_add_valid(ptr noundef %add.ptr, ptr noundef %34, ptr noundef %chain) #8
  br i1 %call.i.i.i83, label %if.end.i.i.i86, label %__list_del_entry.exit.i84.list_move_tail.exit87_crit_edge

__list_del_entry.exit.i84.list_move_tail.exit87_crit_edge: ; preds = %__list_del_entry.exit.i84
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_move_tail.exit87

if.end.i.i.i86:                                   ; preds = %__list_del_entry.exit.i84
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr, ptr %prev, align 4
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %chain, ptr %add.ptr, align 4
  %prev3.i.i.i85 = getelementptr i8, ptr %tx, i32 -24
  %37 = ptrtoint ptr %prev3.i.i.i85 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev3.i.i.i85, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %add.ptr, ptr %34, align 4
  br label %list_move_tail.exit87

list_move_tail.exit87:                            ; preds = %if.end.i.i.i86, %__list_del_entry.exit.i84.list_move_tail.exit87_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_xor_tx_submit.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_xor_tx_submit, %do.end39)) #8
          to label %if.then33 [label %do.end39], !srcloc !201

if.then33:                                        ; preds = %list_move_tail.exit87
  call void @__sanitizer_cov_trace_pc() #10
  %dev35 = getelementptr i8, ptr %1, i32 -292
  %39 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev35, align 4
  %phys = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %26, i32 0, i32 5, i32 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_xor_tx_submit.__UNIQUE_ID_ddebug244, ptr noundef %40, ptr noundef nonnull @.str.25, ptr noundef %phys) #8
  br label %do.end39

do.end39:                                         ; preds = %if.then33, %list_move_tail.exit87
  %hw_desc1.i = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %26, i32 0, i32 3
  %41 = ptrtoint ptr %hw_desc1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw_desc1.i, align 4
  %phy_next_desc.i = getelementptr inbounds %struct.mv_xor_desc, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %phy_next_desc.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %phy_next_desc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i = icmp eq i32 %44, 0
  br i1 %tobool.not.i, label %mv_desc_set_next_desc.exit, label %do.body4.i, !prof !200

do.body4.i:                                       ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/mv_xor.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 85, 0\0A.popsection", ""() #8, !srcloc !207
  unreachable

mv_desc_set_next_desc.exit:                       ; preds = %do.end39
  %phys41 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx, i32 0, i32 2
  %45 = ptrtoint ptr %phys41 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %phys41, align 4
  %47 = ptrtoint ptr %phy_next_desc.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %phy_next_desc.i, align 4
  %mmr_base.i = getelementptr i8, ptr %1, i32 -424
  %48 = ptrtoint ptr %mmr_base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mmr_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %49, i32 32
  %idx.i = getelementptr i8, ptr %1, i32 -416
  %50 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %idx.i, align 4
  %mul.i = shl i32 %51, 2
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #8, !srcloc !181
  %53 = and i32 %52, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %53)
  %cmp.i88.not = icmp eq i32 %53, 268435456
  br i1 %cmp.i88.not, label %mv_desc_set_next_desc.exit.if.end54_crit_edge, label %if.then44

mv_desc_set_next_desc.exit.if.end54_crit_edge:    ; preds = %mv_desc_set_next_desc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then44:                                        ; preds = %mv_desc_set_next_desc.exit
  %mmr_high_base.i = getelementptr i8, ptr %1, i32 -420
  %54 = ptrtoint ptr %mmr_high_base.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mmr_high_base.i, align 4
  %add.ptr.i90 = getelementptr i8, ptr %55, i32 16
  %56 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %idx.i, align 4
  %mul.i92 = shl i32 %57, 2
  %add.ptr1.i93 = getelementptr i8, ptr %add.ptr.i90, i32 %mul.i92
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i93) #8, !srcloc !181
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #8
  %phys47 = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %26, i32 0, i32 5, i32 2
  %60 = ptrtoint ptr %phys47 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %phys47, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %61)
  %cmp = icmp eq i32 %59, %61
  br i1 %cmp, label %if.then44.if.then53_crit_edge, label %if.then44.if.end54_crit_edge

if.then44.if.end54_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then44.if.then53_crit_edge:                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then53

if.then53:                                        ; preds = %if.then44.if.then53_crit_edge, %if.end.i.i.i, %__list_del_entry.exit.i.if.then53_crit_edge
  tail call fastcc void @mv_chan_start_new_chain(ptr noundef %add.ptr3, ptr noundef %add.ptr)
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.then44.if.end54_crit_edge, %mv_desc_set_next_desc.exit.if.end54_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mv_chan_start_new_chain(ptr nocapture noundef %mv_chan, ptr noundef %sw_desc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_chan_start_new_chain.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_chan_start_new_chain, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !201

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mv_xor_chan, ptr %mv_chan, i32 0, i32 13, i32 15
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_chan_start_new_chain.__UNIQUE_ID_ddebug238, ptr noundef %1, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26, i32 noundef 182, ptr noundef %sw_desc) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %phys = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %sw_desc, i32 0, i32 5, i32 2
  %2 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phys, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #8
  %mmr_high_base.i = getelementptr inbounds %struct.mv_xor_chan, ptr %mv_chan, i32 0, i32 3
  %5 = ptrtoint ptr %mmr_high_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmr_high_base.i, align 4
  %idx.i = getelementptr %struct.mv_xor_chan, ptr %mv_chan, i32 0, i32 4
  %7 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx.i, align 4
  %mul.i = shl i32 %8, 2
  %add.ptr1.i = getelementptr i8, ptr %6, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %4) #8, !srcloc !182
  %9 = ptrtoint ptr %mv_chan to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mv_chan, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %mv_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %10)
  %cmp.i = icmp ult i32 %10, 2147483647
  br i1 %cmp.i, label %if.then.i, label %do.end.mv_xor_issue_pending.exit_crit_edge

do.end.mv_xor_issue_pending.exit_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %mv_xor_issue_pending.exit

if.then.i:                                        ; preds = %do.end
  %11 = ptrtoint ptr %mv_chan to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %mv_chan, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_chan_activate.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_chan_start_new_chain, %mv_chan_activate.exit.i)) #8
          to label %if.then.i.i [label %mv_chan_activate.exit.i], !srcloc !201

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr %struct.mv_xor_chan, ptr %mv_chan, i32 0, i32 13, i32 15
  %12 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_chan_activate.__UNIQUE_ID_ddebug237, ptr noundef %13, ptr noundef nonnull @.str.39) #8
  br label %mv_chan_activate.exit.i

mv_chan_activate.exit.i:                          ; preds = %if.then.i.i, %if.then.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  tail call void @arm_heavy_mb() #8
  %mmr_base.i.i = getelementptr %struct.mv_xor_chan, ptr %mv_chan, i32 0, i32 2
  %14 = ptrtoint ptr %mmr_base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmr_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 32
  %16 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %idx.i, align 4
  %mul.i.i = shl i32 %17, 2
  %add.ptr6.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 16777216) #8, !srcloc !182
  br label %mv_xor_issue_pending.exit

mv_xor_issue_pending.exit:                        ; preds = %mv_chan_activate.exit.i, %do.end.mv_xor_issue_pending.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mv_chan_slot_cleanup(ptr noundef %mv_chan) unnamed_addr #2 align 64 {
entry:
  %dummy_result.i.i.i = alloca %struct.dmaengine_result, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mmr_base.i = getelementptr inbounds %struct.mv_xor_chan, ptr %mv_chan, i32 0, i32 2
  %0 = ptrtoint ptr %mmr_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmr_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 32
  %idx.i = getelementptr inbounds %struct.mv_xor_chan, ptr %mv_chan, i32 0, i32 4
  %2 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx.i, align 4
  %mul.i = shl i32 %3, 2
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #8, !srcloc !181
  %5 = and i32 %4, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %5)
  %cmp.i.not = icmp eq i32 %5, 268435456
  %mmr_high_base.i = getelementptr inbounds %struct.mv_xor_chan, ptr %mv_chan, i32 0, i32 3
  %6 = ptrtoint ptr %mmr_high_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmr_high_base.i, align 4
  %add.ptr.i123 = getelementptr i8, ptr %7, i32 16
  %8 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx.i, align 4
  %mul.i125 = shl i32 %9, 2
  %add.ptr1.i126 = getelementptr i8, ptr %add.ptr.i123, i32 %mul.i125
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i126) #8, !srcloc !181
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_chan_slot_cleanup.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_chan_slot_cleanup, %do.body6)) #8
          to label %if.then [label %do.body6], !srcloc !201

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mv_xor_chan, ptr %mv_chan, i32 0, i32 13, i32 15
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_chan_slot_cleanup.__UNIQUE_ID_ddebug241, ptr noundef %13, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32, i32 noundef 272) #8
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_chan_slot_cleanup.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_chan_slot_cleanup, %do.end25)) #8
          to label %if.then20 [label %do.end25], !srcloc !201

if.then20:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  %dev22 = getelementptr inbounds %struct.mv_xor_chan, ptr %mv_chan, i32 0, i32 13, i32 15
  %14 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev22, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_chan_slot_cleanup.__UNIQUE_ID_ddebug242, ptr noundef %15, ptr noundef nonnull @.str.34, i32 noundef %11) #8
  br label %do.end25

do.end25:                                         ; preds = %if.then20, %do.body6
  tail call fastcc void @mv_chan_clean_completed_slots(ptr noundef %mv_chan)
  %chain = getelementptr inbounds %struct.mv_xor_chan, ptr %mv_chan, i32 0, i32 6
  %16 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chain, align 4
  %cmp.not136 = icmp eq ptr %17, %chain
  br i1 %cmp.not136, label %do.end25.for.end_crit_edge, label %do.end25.for.body_crit_edge

do.end25.for.body_crit_edge:                      ; preds = %do.end25
  br label %for.body

do.end25.for.end_crit_edge:                       ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end25.for.body_crit_edge
  %iter.0138 = phi ptr [ %_iter.0139, %for.inc.for.body_crit_edge ], [ %17, %do.end25.for.body_crit_edge ]
  %cookie.0137 = phi i32 [ %cookie.1, %for.inc.for.body_crit_edge ], [ 0, %do.end25.for.body_crit_edge ]
  %18 = ptrtoint ptr %iter.0138 to i32
  call void @__asan_load4_noabort(i32 %18)
  %_iter.0139 = load ptr, ptr %iter.0138, align 4
  %hw_desc37 = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %iter.0138, i32 0, i32 3
  %19 = ptrtoint ptr %hw_desc37 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw_desc37, align 4
  %status = getelementptr inbounds %struct.mv_xor_desc, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status, align 4
  %and = and i32 %22, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool38.not = icmp eq i32 %and, 0
  br i1 %tobool38.not, label %if.else, label %if.then39

if.then39:                                        ; preds = %for.body
  %async_tx.i = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %iter.0138, i32 0, i32 5
  %23 = ptrtoint ptr %async_tx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %async_tx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i127 = icmp slt i32 %24, 0
  br i1 %cmp.i127, label %do.body3.i, label %do.end6.i, !prof !204

do.body3.i:                                       ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/mv_xor.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 196, 0\0A.popsection", ""() #8, !srcloc !208
  unreachable

do.end6.i:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp9.not.i = icmp eq i32 %24, 0
  br i1 %cmp9.not.i, label %do.end6.i.mv_desc_run_tx_complete_actions.exit_crit_edge, label %if.then10.i

do.end6.i.mv_desc_run_tx_complete_actions.exit_crit_edge: ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mv_desc_run_tx_complete_actions.exit

if.then10.i:                                      ; preds = %do.end6.i
  %unmap.i.i = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %iter.0138, i32 0, i32 5, i32 9
  %25 = ptrtoint ptr %unmap.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %unmap.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i, label %if.then10.i.dma_descriptor_unmap.exit.i_crit_edge, label %if.end.i.i

if.then10.i.dma_descriptor_unmap.exit.i_crit_edge: ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_descriptor_unmap.exit.i

if.end.i.i:                                       ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @dmaengine_unmap_put(ptr noundef nonnull %26) #8
  %27 = ptrtoint ptr %unmap.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %unmap.i.i, align 4
  br label %dma_descriptor_unmap.exit.i

dma_descriptor_unmap.exit.i:                      ; preds = %if.end.i.i, %if.then10.i.dma_descriptor_unmap.exit.i_crit_edge
  %callback.i.i.i = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %iter.0138, i32 0, i32 5, i32 6
  %28 = ptrtoint ptr %callback.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %callback.i.i.i, align 4
  %callback_result.i.i.i = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %iter.0138, i32 0, i32 5, i32 7
  %30 = ptrtoint ptr %callback_result.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %callback_result.i.i.i, align 4
  %callback_param.i.i.i = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %iter.0138, i32 0, i32 5, i32 8
  %32 = ptrtoint ptr %callback_param.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %callback_param.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i.i.i) #8
  %34 = ptrtoint ptr %dummy_result.i.i.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 0, ptr %dummy_result.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %dma_descriptor_unmap.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void %31(ptr noundef %33, ptr noundef nonnull %dummy_result.i.i.i) #8
  br label %dmaengine_desc_get_callback_invoke.exit.i

if.else.i.i.i:                                    ; preds = %dma_descriptor_unmap.exit.i
  %tobool4.not.i.i.i = icmp eq ptr %29, null
  br i1 %tobool4.not.i.i.i, label %if.else.i.i.i.dmaengine_desc_get_callback_invoke.exit.i_crit_edge, label %if.then5.i.i.i

if.else.i.i.i.dmaengine_desc_get_callback_invoke.exit.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_desc_get_callback_invoke.exit.i

if.then5.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void %29(ptr noundef %33) #8
  br label %dmaengine_desc_get_callback_invoke.exit.i

dmaengine_desc_get_callback_invoke.exit.i:        ; preds = %if.then5.i.i.i, %if.else.i.i.i.dmaengine_desc_get_callback_invoke.exit.i_crit_edge, %if.then.i.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy_result.i.i.i) #8
  br label %mv_desc_run_tx_complete_actions.exit

mv_desc_run_tx_complete_actions.exit:             ; preds = %dmaengine_desc_get_callback_invoke.exit.i, %do.end6.i.mv_desc_run_tx_complete_actions.exit_crit_edge
  %cookie.addr.0.i = phi i32 [ %24, %dmaengine_desc_get_callback_invoke.exit.i ], [ %cookie.0137, %do.end6.i.mv_desc_run_tx_complete_actions.exit_crit_edge ]
  call void @dma_run_dependencies(ptr noundef %async_tx.i) #8
  call fastcc void @mv_desc_clean_slot(ptr noundef %iter.0138, ptr noundef %mv_chan)
  %phys = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %iter.0138, i32 0, i32 5, i32 2
  %35 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %phys, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %11)
  %cmp42 = icmp eq i32 %36, %11
  br i1 %cmp42, label %mv_desc_run_tx_complete_actions.exit.for.end_crit_edge, label %mv_desc_run_tx_complete_actions.exit.for.inc_crit_edge

mv_desc_run_tx_complete_actions.exit.for.inc_crit_edge: ; preds = %mv_desc_run_tx_complete_actions.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

mv_desc_run_tx_complete_actions.exit.for.end_crit_edge: ; preds = %mv_desc_run_tx_complete_actions.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.else:                                          ; preds = %for.body
  %phys47 = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %iter.0138, i32 0, i32 5, i32 2
  %37 = ptrtoint ptr %phys47 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %phys47, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %11)
  %cmp48 = icmp eq i32 %38, %11
  br i1 %cmp48, label %if.else.for.end_crit_edge, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %if.else.for.inc_crit_edge, %mv_desc_run_tx_complete_actions.exit.for.inc_crit_edge
  %cookie.1 = phi i32 [ %cookie.addr.0.i, %mv_desc_run_tx_complete_actions.exit.for.inc_crit_edge ], [ %cookie.0137, %if.else.for.inc_crit_edge ]
  %cmp.not = icmp eq ptr %_iter.0139, %chain
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.else.for.end_crit_edge, %mv_desc_run_tx_complete_actions.exit.for.end_crit_edge, %do.end25.for.end_crit_edge
  %iter.0.lcssa = phi ptr [ %chain, %do.end25.for.end_crit_edge ], [ %iter.0138, %if.else.for.end_crit_edge ], [ %iter.0138, %mv_desc_run_tx_complete_actions.exit.for.end_crit_edge ], [ %chain, %for.inc.for.end_crit_edge ]
  %tobool64.not = phi i1 [ true, %do.end25.for.end_crit_edge ], [ true, %if.else.for.end_crit_edge ], [ false, %mv_desc_run_tx_complete_actions.exit.for.end_crit_edge ], [ true, %for.inc.for.end_crit_edge ]
  %cookie.2 = phi i32 [ 0, %do.end25.for.end_crit_edge ], [ %cookie.0137, %if.else.for.end_crit_edge ], [ %cookie.addr.0.i, %mv_desc_run_tx_complete_actions.exit.for.end_crit_edge ], [ %cookie.1, %for.inc.for.end_crit_edge ]
  br i1 %cmp.i.not, label %for.end.if.end85_crit_edge, label %land.lhs.true

for.end.if.end85_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

land.lhs.true:                                    ; preds = %for.end
  %39 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %chain, align 4
  %cmp.i128.not = icmp eq ptr %40, %chain
  br i1 %cmp.i128.not, label %land.lhs.true.if.end85_crit_edge, label %if.then63

land.lhs.true.if.end85_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.then63:                                        ; preds = %land.lhs.true
  br i1 %tobool64.not, label %if.else71, label %if.then65

if.then65:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @mv_chan_start_new_chain(ptr noundef %mv_chan, ptr noundef %40)
  br label %if.end85

if.else71:                                        ; preds = %if.then63
  %41 = ptrtoint ptr %iter.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %iter.0.lcssa, align 4
  %cmp.i130.not = icmp eq ptr %42, %chain
  br i1 %cmp.i130.not, label %if.else82, label %if.then76

if.then76:                                        ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @mv_chan_start_new_chain(ptr noundef %mv_chan, ptr noundef %42)
  br label %if.end85

if.else82:                                        ; preds = %if.else71
  %state.i = getelementptr inbounds %struct.mv_xor_chan, ptr %mv_chan, i32 0, i32 16, i32 1
  %call.i = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else82.if.end85_crit_edge

if.else82.if.end85_crit_edge:                     ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.then.i:                                        ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #10
  %irq_tasklet = getelementptr inbounds %struct.mv_xor_chan, ptr %mv_chan, i32 0, i32 16
  call void @__tasklet_schedule(ptr noundef %irq_tasklet) #8
  br label %if.end85

if.end85:                                         ; preds = %if.then.i, %if.else82.if.end85_crit_edge, %if.then76, %if.then65, %land.lhs.true.if.end85_crit_edge, %for.end.if.end85_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cookie.2)
  %cmp86 = icmp sgt i32 %cookie.2, 0
  br i1 %cmp86, label %if.then88, label %if.end85.if.end89_crit_edge

if.end85.if.end89_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

if.then88:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  %completed_cookie = getelementptr inbounds %struct.mv_xor_chan, ptr %mv_chan, i32 0, i32 14, i32 3
  %43 = ptrtoint ptr %completed_cookie to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %cookie.2, ptr %completed_cookie, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.then88, %if.end85.if.end89_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mv_chan_clean_completed_slots(ptr noundef %mv_chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_chan_clean_completed_slots.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_chan_clean_completed_slots, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !201

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mv_xor_chan, ptr %mv_chan, i32 0, i32 13, i32 15
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_chan_clean_completed_slots.__UNIQUE_ID_ddebug239, ptr noundef %1, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.35, i32 noundef 219) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %completed_slots = getelementptr inbounds %struct.mv_xor_chan, ptr %mv_chan, i32 0, i32 9
  %2 = ptrtoint ptr %completed_slots to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %completed_slots, align 4
  %cmp.not4 = icmp eq ptr %3, %completed_slots
  br i1 %cmp.not4, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %free_slots = getelementptr inbounds %struct.mv_xor_chan, ptr %mv_chan, i32 0, i32 7
  %prev.i2.i = getelementptr inbounds %struct.mv_xor_chan, ptr %mv_chan, i32 0, i32 7, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %iter.05 = phi ptr [ %3, %for.body.lr.ph ], [ %_iter.06, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %iter.05 to i32
  call void @__asan_load4_noabort(i32 %4)
  %_iter.06 = load ptr, ptr %iter.05, align 4
  %flags.i = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %iter.05, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %for.body.for.inc_crit_edge, label %if.then14

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then14:                                        ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %iter.05) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then14.__list_del_entry.exit.i_crit_edge

if.then14.__list_del_entry.exit.i_crit_edge:      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %iter.05, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %iter.05 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iter.05, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then14.__list_del_entry.exit.i_crit_edge
  %13 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %iter.05, ptr noundef %14, ptr noundef %free_slots) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %iter.05, ptr %prev.i2.i, align 4
  %16 = ptrtoint ptr %iter.05 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %free_slots, ptr %iter.05, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %iter.05, i32 0, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %iter.05, ptr %14, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %sg_tx_list = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %iter.05, i32 0, i32 1
  %19 = ptrtoint ptr %sg_tx_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %sg_tx_list, align 4
  %cmp.i1.not = icmp eq ptr %20, %sg_tx_list
  br i1 %cmp.i1.not, label %list_move_tail.exit.for.inc_crit_edge, label %if.then18

list_move_tail.exit.for.inc_crit_edge:            ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then18:                                        ; preds = %list_move_tail.exit
  %21 = ptrtoint ptr %sg_tx_list to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %sg_tx_list, align 4
  %cmp.i.not.i = icmp eq ptr %22, %sg_tx_list
  br i1 %cmp.i.not.i, label %if.then18.for.inc_crit_edge, label %if.then.i

if.then18.for.inc_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then.i:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i2.i, align 4
  %prev2.i.i = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %iter.05, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %27 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %22, ptr %24, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %free_slots, ptr %26, align 4
  store ptr %26, ptr %prev.i2.i, align 4
  %30 = ptrtoint ptr %sg_tx_list to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %sg_tx_list, ptr %sg_tx_list, align 4
  store ptr %sg_tx_list, ptr %prev2.i.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then.i, %if.then18.for.inc_crit_edge, %list_move_tail.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %_iter.06, %completed_slots
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mv_desc_clean_slot(ptr noundef %desc, ptr noundef %mv_chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_desc_clean_slot.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_desc_clean_slot, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !201

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mv_xor_chan, ptr %mv_chan, i32 0, i32 13, i32 15
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %flags = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %desc, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_desc_clean_slot.__UNIQUE_ID_ddebug240, ptr noundef %1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.36, i32 noundef 239, ptr noundef %desc, i32 noundef %3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags.i = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %desc, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %if.then6, label %if.else

if.then6:                                         ; preds = %do.end
  %completed_slots = getelementptr inbounds %struct.mv_xor_chan, ptr %mv_chan, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %desc) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then6.__list_del_entry.exit.i_crit_edge

if.then6.__list_del_entry.exit.i_crit_edge:       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %desc, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then6.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.mv_xor_chan, ptr %mv_chan, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %desc, ptr noundef %13, ptr noundef %completed_slots) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %desc, ptr %prev.i2.i, align 4
  %15 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %completed_slots, ptr %desc, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %desc, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %desc, ptr %13, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %sg_tx_list = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %desc, i32 0, i32 1
  %18 = ptrtoint ptr %sg_tx_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %sg_tx_list, align 4
  %cmp.i1.not = icmp eq ptr %19, %sg_tx_list
  br i1 %cmp.i1.not, label %list_move_tail.exit.if.end21_crit_edge, label %if.then9

list_move_tail.exit.if.end21_crit_edge:           ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then9:                                         ; preds = %list_move_tail.exit
  %20 = ptrtoint ptr %sg_tx_list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %sg_tx_list, align 4
  %cmp.i.not.i = icmp eq ptr %21, %sg_tx_list
  br i1 %cmp.i.not.i, label %if.then9.if.end21_crit_edge, label %if.then.i

if.then9.if.end21_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i2.i, align 4
  %prev2.i.i = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %desc, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %26 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %21, ptr %23, align 4
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %completed_slots, ptr %25, align 4
  store ptr %25, ptr %prev.i2.i, align 4
  %29 = ptrtoint ptr %sg_tx_list to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %sg_tx_list, ptr %sg_tx_list, align 4
  store ptr %sg_tx_list, ptr %prev2.i.i, align 4
  br label %if.end21

if.else:                                          ; preds = %do.end
  %free_slots = getelementptr inbounds %struct.mv_xor_chan, ptr %mv_chan, i32 0, i32 7
  %call.i.i2 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %desc) #8
  br i1 %call.i.i2, label %if.end.i.i5, label %if.else.__list_del_entry.exit.i8_crit_edge

if.else.__list_del_entry.exit.i8_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i8

if.end.i.i5:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i3 = getelementptr inbounds %struct.list_head, ptr %desc, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i3, align 4
  %32 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %desc, align 4
  %prev1.i.i.i4 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i4 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i4, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %__list_del_entry.exit.i8

__list_del_entry.exit.i8:                         ; preds = %if.end.i.i5, %if.else.__list_del_entry.exit.i8_crit_edge
  %prev.i2.i6 = getelementptr inbounds %struct.mv_xor_chan, ptr %mv_chan, i32 0, i32 7, i32 1
  %36 = ptrtoint ptr %prev.i2.i6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i2.i6, align 4
  %call.i.i.i7 = tail call zeroext i1 @__list_add_valid(ptr noundef %desc, ptr noundef %37, ptr noundef %free_slots) #8
  br i1 %call.i.i.i7, label %if.end.i.i.i10, label %__list_del_entry.exit.i8.list_move_tail.exit11_crit_edge

__list_del_entry.exit.i8.list_move_tail.exit11_crit_edge: ; preds = %__list_del_entry.exit.i8
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_move_tail.exit11

if.end.i.i.i10:                                   ; preds = %__list_del_entry.exit.i8
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %prev.i2.i6 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %desc, ptr %prev.i2.i6, align 4
  %39 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %free_slots, ptr %desc, align 4
  %prev3.i.i.i9 = getelementptr inbounds %struct.list_head, ptr %desc, i32 0, i32 1
  %40 = ptrtoint ptr %prev3.i.i.i9 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev3.i.i.i9, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %desc, ptr %37, align 4
  br label %list_move_tail.exit11

list_move_tail.exit11:                            ; preds = %if.end.i.i.i10, %__list_del_entry.exit.i8.list_move_tail.exit11_crit_edge
  %sg_tx_list14 = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %desc, i32 0, i32 1
  %42 = ptrtoint ptr %sg_tx_list14 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %sg_tx_list14, align 4
  %cmp.i12.not = icmp eq ptr %43, %sg_tx_list14
  br i1 %cmp.i12.not, label %list_move_tail.exit11.if.end21_crit_edge, label %if.then17

list_move_tail.exit11.if.end21_crit_edge:         ; preds = %list_move_tail.exit11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then17:                                        ; preds = %list_move_tail.exit11
  %44 = ptrtoint ptr %sg_tx_list14 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %sg_tx_list14, align 4
  %cmp.i.not.i14 = icmp eq ptr %45, %sg_tx_list14
  br i1 %cmp.i.not.i14, label %if.then17.if.end21_crit_edge, label %if.then.i18

if.then17.if.end21_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then.i18:                                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %prev.i2.i6 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i2.i6, align 4
  %prev2.i.i16 = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %desc, i32 0, i32 1, i32 1
  %48 = ptrtoint ptr %prev2.i.i16 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev2.i.i16, align 4
  %prev3.i.i17 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %50 = ptrtoint ptr %prev3.i.i17 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev3.i.i17, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %45, ptr %47, align 4
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %free_slots, ptr %49, align 4
  store ptr %49, ptr %prev.i2.i6, align 4
  %53 = ptrtoint ptr %sg_tx_list14 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %sg_tx_list14, ptr %sg_tx_list14, align 4
  store ptr %sg_tx_list14, ptr %prev2.i.i16, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then.i18, %if.then17.if.end21_crit_edge, %list_move_tail.exit11.if.end21_crit_edge, %if.then.i, %if.then9.if.end21_crit_edge, %list_move_tail.exit.if.end21_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_run_dependencies(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmaengine_unmap_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mv_xor_add_io_win(ptr nocapture noundef readonly %mv_chan, i32 noundef %addr) unnamed_addr #2 align 64 {
entry:
  %size = alloca i32, align 4
  %target = alloca i8, align 1
  %attr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %xordev1 = getelementptr inbounds %struct.mv_xor_chan, ptr %mv_chan, i32 0, i32 24
  %0 = ptrtoint ptr %xordev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xordev1, align 4
  %mmr_high_base = getelementptr inbounds %struct.mv_xor_chan, ptr %mv_chan, i32 0, i32 3
  %2 = ptrtoint ptr %mmr_high_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmr_high_base, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #8
  %4 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %size, align 4, !annotation !209
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %target) #8
  %5 = ptrtoint ptr %target to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %target, align 1, !annotation !209
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %attr) #8
  %6 = ptrtoint ptr %attr to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %attr, align 1, !annotation !209
  %xor_type = getelementptr inbounds %struct.mv_xor_device, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %xor_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %xor_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp = icmp eq i32 %8, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %arrayidx = getelementptr %struct.mv_xor_device, ptr %1, i32 0, i32 5, i32 0
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %addr)
  %cmp3.not = icmp ugt i32 %10, %addr
  br i1 %cmp3.not, label %for.body.preheader.for.inc_crit_edge, label %land.lhs.true

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body.preheader
  %arrayidx4 = getelementptr %struct.mv_xor_device, ptr %1, i32 0, i32 6, i32 0
  %11 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %addr)
  %cmp5.not = icmp ult i32 %12, %addr
  br i1 %cmp5.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.mv_xor_device, ptr %1, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %addr)
  %cmp3.not.1 = icmp ugt i32 %14, %addr
  br i1 %cmp3.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %arrayidx4.1 = getelementptr %struct.mv_xor_device, ptr %1, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx4.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %addr)
  %cmp5.not.1 = icmp ult i32 %16, %addr
  br i1 %cmp5.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %land.lhs.true.1.cleanup_crit_edge

land.lhs.true.1.cleanup_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.mv_xor_device, ptr %1, i32 0, i32 5, i32 2
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %addr)
  %cmp3.not.2 = icmp ugt i32 %18, %addr
  br i1 %cmp3.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %arrayidx4.2 = getelementptr %struct.mv_xor_device, ptr %1, i32 0, i32 6, i32 2
  %19 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx4.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %addr)
  %cmp5.not.2 = icmp ult i32 %20, %addr
  br i1 %cmp5.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %land.lhs.true.2.cleanup_crit_edge

land.lhs.true.2.cleanup_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.mv_xor_device, ptr %1, i32 0, i32 5, i32 3
  %21 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %addr)
  %cmp3.not.3 = icmp ugt i32 %22, %addr
  br i1 %cmp3.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %arrayidx4.3 = getelementptr %struct.mv_xor_device, ptr %1, i32 0, i32 6, i32 3
  %23 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx4.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %addr)
  %cmp5.not.3 = icmp ult i32 %24, %addr
  br i1 %cmp5.not.3, label %land.lhs.true.3.for.inc.3_crit_edge, label %land.lhs.true.3.cleanup_crit_edge

land.lhs.true.3.cleanup_crit_edge:                ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

for.inc.3:                                        ; preds = %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.mv_xor_device, ptr %1, i32 0, i32 5, i32 4
  %25 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %addr)
  %cmp3.not.4 = icmp ugt i32 %26, %addr
  br i1 %cmp3.not.4, label %for.inc.3.for.inc.4_crit_edge, label %land.lhs.true.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %arrayidx4.4 = getelementptr %struct.mv_xor_device, ptr %1, i32 0, i32 6, i32 4
  %27 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx4.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %addr)
  %cmp5.not.4 = icmp ult i32 %28, %addr
  br i1 %cmp5.not.4, label %land.lhs.true.4.for.inc.4_crit_edge, label %land.lhs.true.4.cleanup_crit_edge

land.lhs.true.4.cleanup_crit_edge:                ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4

for.inc.4:                                        ; preds = %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.mv_xor_device, ptr %1, i32 0, i32 5, i32 5
  %29 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %addr)
  %cmp3.not.5 = icmp ugt i32 %30, %addr
  br i1 %cmp3.not.5, label %for.inc.4.for.inc.5_crit_edge, label %land.lhs.true.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %arrayidx4.5 = getelementptr %struct.mv_xor_device, ptr %1, i32 0, i32 6, i32 5
  %31 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx4.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %addr)
  %cmp5.not.5 = icmp ult i32 %32, %addr
  br i1 %cmp5.not.5, label %land.lhs.true.5.for.inc.5_crit_edge, label %land.lhs.true.5.cleanup_crit_edge

land.lhs.true.5.cleanup_crit_edge:                ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.5

for.inc.5:                                        ; preds = %land.lhs.true.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %arrayidx.6 = getelementptr %struct.mv_xor_device, ptr %1, i32 0, i32 5, i32 6
  %33 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %addr)
  %cmp3.not.6 = icmp ugt i32 %34, %addr
  br i1 %cmp3.not.6, label %for.inc.5.for.inc.6_crit_edge, label %land.lhs.true.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.6

land.lhs.true.6:                                  ; preds = %for.inc.5
  %arrayidx4.6 = getelementptr %struct.mv_xor_device, ptr %1, i32 0, i32 6, i32 6
  %35 = ptrtoint ptr %arrayidx4.6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx4.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %addr)
  %cmp5.not.6 = icmp ult i32 %36, %addr
  br i1 %cmp5.not.6, label %land.lhs.true.6.for.inc.6_crit_edge, label %land.lhs.true.6.cleanup_crit_edge

land.lhs.true.6.cleanup_crit_edge:                ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.6.for.inc.6_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.6

for.inc.6:                                        ; preds = %land.lhs.true.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %arrayidx.7 = getelementptr %struct.mv_xor_device, ptr %1, i32 0, i32 5, i32 7
  %37 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %addr)
  %cmp3.not.7 = icmp ugt i32 %38, %addr
  br i1 %cmp3.not.7, label %for.inc.6.for.inc.7_crit_edge, label %land.lhs.true.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.7

land.lhs.true.7:                                  ; preds = %for.inc.6
  %arrayidx4.7 = getelementptr %struct.mv_xor_device, ptr %1, i32 0, i32 6, i32 7
  %39 = ptrtoint ptr %arrayidx4.7 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx4.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %addr)
  %cmp5.not.7 = icmp ult i32 %40, %addr
  br i1 %cmp5.not.7, label %land.lhs.true.7.for.inc.7_crit_edge, label %land.lhs.true.7.cleanup_crit_edge

land.lhs.true.7.cleanup_crit_edge:                ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.7.for.inc.7_crit_edge:              ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.7

for.inc.7:                                        ; preds = %land.lhs.true.7.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  %call = call i32 @mvebu_mbus_get_io_win_info(i32 noundef %addr, ptr noundef nonnull %size, ptr noundef nonnull %target, ptr noundef nonnull %attr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp8 = icmp slt i32 %call, 0
  br i1 %cmp8, label %for.inc.7.cleanup_crit_edge, label %if.end10

for.inc.7.cleanup_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %for.inc.7
  %41 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %size, align 4
  %sub = add i32 %42, -1
  store i32 %sub, ptr %size, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 64
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !181
  %44 = call i32 @llvm.bswap.i32(i32 %43)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !210
  %neg13 = xor i32 %44, -1
  %45 = call i32 @llvm.cttz.i32(i32 %neg13, i1 true), !range !211
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %iszero = icmp eq i32 %43, -1
  %sub14 = select i1 %iszero, i32 -1, i32 %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub14)
  %cmp15 = icmp sgt i32 %sub14, 7
  br i1 %cmp15, label %if.end10.cleanup_crit_edge, label %do.body

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %neg = sub i32 0, %42
  %and = and i32 %neg, %addr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !212
  call void @arm_heavy_mb() #8
  %and18 = and i32 %and, -65536
  %46 = ptrtoint ptr %attr to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %attr, align 1
  %conv = zext i8 %47 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %or = or i32 %shl, %and18
  %48 = ptrtoint ptr %target to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %target, align 1
  %conv19 = zext i8 %49 to i32
  %or20 = or i32 %or, %conv19
  %50 = call i32 @llvm.bswap.i32(i32 %or20)
  %shl21 = shl nsw i32 %sub14, 2
  %add = add nsw i32 %shl21, 80
  %add.ptr22 = getelementptr i8, ptr %3, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %50) #8, !srcloc !182
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !213
  call void @arm_heavy_mb() #8
  %51 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %size, align 4
  %and26 = and i32 %52, -65536
  %53 = call i32 @llvm.bswap.i32(i32 %and26)
  %add28 = add nsw i32 %shl21, 112
  %add.ptr29 = getelementptr i8, ptr %3, i32 %add28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %53) #8, !srcloc !182
  %arrayidx31 = getelementptr %struct.mv_xor_device, ptr %1, i32 0, i32 5, i32 %sub14
  %54 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %and, ptr %arrayidx31, align 4
  %55 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %size, align 4
  %add32 = add i32 %56, %and
  %arrayidx34 = getelementptr %struct.mv_xor_device, ptr %1, i32 0, i32 6, i32 %sub14
  %57 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add32, ptr %arrayidx34, align 4
  %shl35 = shl nuw nsw i32 1, %sub14
  %or36 = or i32 %shl35, %44
  %mul = shl nsw i32 %sub14, 1
  %add37 = add nsw i32 %mul, 16
  %shl38 = shl i32 3, %add37
  %or39 = or i32 %or36, %shl38
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !214
  call void @arm_heavy_mb() #8
  %58 = call i32 @llvm.bswap.i32(i32 %or39)
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %58) #8, !srcloc !182
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !215
  call void @arm_heavy_mb() #8
  %add.ptr47 = getelementptr i8, ptr %3, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %58) #8, !srcloc !182
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end10.cleanup_crit_edge, %for.inc.7.cleanup_crit_edge, %land.lhs.true.7.cleanup_crit_edge, %land.lhs.true.6.cleanup_crit_edge, %land.lhs.true.5.cleanup_crit_edge, %land.lhs.true.4.cleanup_crit_edge, %land.lhs.true.3.cleanup_crit_edge, %land.lhs.true.2.cleanup_crit_edge, %land.lhs.true.1.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.7.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ], [ 0, %land.lhs.true.7.cleanup_crit_edge ], [ 0, %land.lhs.true.6.cleanup_crit_edge ], [ 0, %land.lhs.true.5.cleanup_crit_edge ], [ 0, %land.lhs.true.4.cleanup_crit_edge ], [ 0, %land.lhs.true.3.cleanup_crit_edge ], [ 0, %land.lhs.true.2.cleanup_crit_edge ], [ 0, %land.lhs.true.1.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %attr) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %target) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvebu_mbus_get_io_win_info(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mv_chan_err_interrupt_handler(ptr nocapture noundef readonly %chan, i32 noundef %intr_cause) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %intr_cause, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end8, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_chan_err_interrupt_handler.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mv_chan_err_interrupt_handler, %return)) #8
          to label %if.then5 [label %return], !srcloc !201

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mv_xor_chan, ptr %chan, i32 0, i32 13, i32 15
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_chan_err_interrupt_handler.__UNIQUE_ID_ddebug249, ptr noundef %1, ptr noundef nonnull @.str.46) #8
  br label %return

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev10 = getelementptr inbounds %struct.mv_xor_chan, ptr %chan, i32 0, i32 13, i32 15
  %2 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev10, align 4
  %idx = getelementptr inbounds %struct.mv_xor_chan, ptr %chan, i32 0, i32 4
  %4 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.47, i32 noundef %5, i32 noundef %intr_cause) #11
  %mmr_base.i = getelementptr inbounds %struct.mv_xor_chan, ptr %chan, i32 0, i32 2
  %6 = ptrtoint ptr %mmr_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmr_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 16
  %8 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx, align 4
  %mul.i = shl i32 %9, 2
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #8, !srcloc !181
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  %12 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.48, i32 noundef %11) #11
  %14 = ptrtoint ptr %mmr_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmr_base.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %15, i32 32
  %16 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %idx, align 4
  %mul6.i = shl i32 %17, 2
  %add.ptr7.i = getelementptr i8, ptr %add.ptr4.i, i32 %mul6.i
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #8, !srcloc !181
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  %20 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.51, i32 noundef %19) #11
  %22 = ptrtoint ptr %mmr_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmr_base.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %23, i32 48
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i) #8, !srcloc !181
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #8
  %26 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.54, i32 noundef %25) #11
  %28 = ptrtoint ptr %mmr_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmr_base.i, align 4
  %add.ptr27.i = getelementptr i8, ptr %29, i32 64
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i) #8, !srcloc !181
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #8
  %32 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.57, i32 noundef %31) #11
  %34 = ptrtoint ptr %mmr_base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmr_base.i, align 4
  %add.ptr37.i = getelementptr i8, ptr %35, i32 80
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37.i) #8, !srcloc !181
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #8
  %38 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.60, i32 noundef %37) #11
  %40 = ptrtoint ptr %mmr_base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmr_base.i, align 4
  %add.ptr47.i = getelementptr i8, ptr %41, i32 96
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47.i) #8, !srcloc !181
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #8
  %44 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.63, i32 noundef %43) #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 727, i32 noundef 9, ptr noundef null) #8
  br label %return

return:                                           ; preds = %do.end8, %if.then5, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmaengine_get_unmap_data(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !19, !21, !22, !23, !25, !26, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !51, !52, !53, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !161, !162, !163, !165, !166, !167, !169}
!llvm.named.register.sp = !{!171}
!llvm.module.flags = !{!172, !173, !174, !175, !176, !177, !178, !179}
!llvm.ident = !{!180}

!0 = !{ptr @__initcall__kmod_mv_xor__255_1462_mv_xor_driver_init6, !1, !"__initcall__kmod_mv_xor__255_1462_mv_xor_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/dma/mv_xor.c", i32 1462, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/dma/mv_xor.c", i32 1457, i32 19}
!4 = !{ptr @mv_xor_driver, !5, !"mv_xor_driver", i1 false, i1 false}
!5 = !{!"../drivers/dma/mv_xor.c", i32 1452, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/dma/mv_xor.c", i32 1299, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @mv_xor_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @mv_xor_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = distinct !{null, !15, !"mv_xor_engine_count", i1 false, i1 false}
!15 = !{!"../drivers/dma/mv_xor.c", i32 1288, i32 21}
!16 = !{ptr @mv_xor_channel_add.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/dma/mv_xor.c", i32 1117, i32 2}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/dma/mv_xor.c", i32 1129, i32 3}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mv_xor_channel_add.__UNIQUE_ID_ddebug251, !20, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/dma/mv_xor.c", i32 1136, i32 3}
!25 = !{ptr @mv_xor_channel_add.__UNIQUE_ID_ddebug252, !24, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/dma/mv_xor.c", i32 1141, i32 2}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @mv_xor_channel_add._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @mv_xor_channel_add._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/dma/mv_xor.c", i32 448, i32 4}
!43 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @mv_xor_alloc_chan_resources._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @mv_xor_alloc_chan_resources._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/dma/mv_xor.c", i32 470, i32 2}
!48 = !{ptr @mv_xor_alloc_chan_resources.__UNIQUE_ID_ddebug245, !47, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/dma/mv_xor.c", i32 390, i32 2}
!51 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @mv_xor_tx_submit.__UNIQUE_ID_ddebug243, !50, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/dma/mv_xor.c", i32 407, i32 3}
!55 = !{ptr @mv_xor_tx_submit.__UNIQUE_ID_ddebug244, !54, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/dma/mv_xor.c", i32 181, i32 2}
!58 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @mv_chan_start_new_chain.__UNIQUE_ID_ddebug238, !57, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/dma/mv_xor.c", i32 659, i32 2}
!62 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @mv_xor_free_chan_resources.__UNIQUE_ID_ddebug248, !61, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/dma/mv_xor.c", i32 664, i32 3}
!66 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @mv_xor_free_chan_resources._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @mv_xor_free_chan_resources._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/dma/mv_xor.c", i32 272, i32 2}
!71 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @mv_chan_slot_cleanup.__UNIQUE_ID_ddebug241, !70, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/dma/mv_xor.c", i32 273, i32 2}
!75 = !{ptr @mv_chan_slot_cleanup.__UNIQUE_ID_ddebug242, !74, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/dma/mv_xor.c", i32 219, i32 2}
!78 = !{ptr @mv_chan_clean_completed_slots.__UNIQUE_ID_ddebug239, !77, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/dma/mv_xor.c", i32 238, i32 2}
!81 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @mv_desc_clean_slot.__UNIQUE_ID_ddebug240, !80, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/dma/mv_xor.c", i32 158, i32 2}
!85 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @mv_chan_activate.__UNIQUE_ID_ddebug237, !84, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/dma/mv_xor.c", i32 567, i32 2}
!89 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @mv_xor_prep_dma_xor.__UNIQUE_ID_ddebug246, !88, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/dma/mv_xor.c", i32 592, i32 2}
!93 = !{ptr @mv_xor_prep_dma_xor.__UNIQUE_ID_ddebug247, !92, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!94 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/dma/mv_xor.c", i32 735, i32 2}
!96 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @mv_xor_interrupt_handler.__UNIQUE_ID_ddebug250, !95, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/dma/mv_xor.c", i32 719, i32 3}
!100 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @mv_chan_err_interrupt_handler.__UNIQUE_ID_ddebug249, !99, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/dma/mv_xor.c", i32 723, i32 2}
!104 = !{ptr @mv_chan_err_interrupt_handler._entry, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @mv_chan_err_interrupt_handler._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/dma/mv_xor.c", i32 697, i32 2}
!108 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @mv_chan_dump_regs._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @mv_chan_dump_regs._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/dma/mv_xor.c", i32 700, i32 2}
!113 = !{ptr @mv_chan_dump_regs._entry.50, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @mv_chan_dump_regs._entry_ptr.52, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/dma/mv_xor.c", i32 703, i32 2}
!117 = !{ptr @mv_chan_dump_regs._entry.53, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @mv_chan_dump_regs._entry_ptr.55, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.57, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/dma/mv_xor.c", i32 706, i32 2}
!121 = !{ptr @mv_chan_dump_regs._entry.56, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @mv_chan_dump_regs._entry_ptr.58, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.60, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/dma/mv_xor.c", i32 709, i32 2}
!125 = !{ptr @mv_chan_dump_regs._entry.59, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @mv_chan_dump_regs._entry_ptr.61, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.63, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/dma/mv_xor.c", i32 712, i32 2}
!129 = !{ptr @mv_chan_dump_regs._entry.62, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @mv_chan_dump_regs._entry_ptr.64, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.65, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/dma/mv_xor.c", i32 129, i32 2}
!133 = !{ptr @.str.66, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @mv_chan_clear_eoc_cause.__UNIQUE_ID_ddebug236, !132, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!135 = !{ptr @.str.67, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/dma/mv_xor.c", i32 826, i32 3}
!137 = !{ptr @.str.68, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @mv_chan_memcpy_self_test._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @mv_chan_memcpy_self_test._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/dma/mv_xor.c", i32 834, i32 3}
!142 = !{ptr @mv_chan_memcpy_self_test._entry.69, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @mv_chan_memcpy_self_test._entry_ptr.71, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.73, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/dma/mv_xor.c", i32 846, i32 3}
!146 = !{ptr @mv_chan_memcpy_self_test._entry.72, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @mv_chan_memcpy_self_test._entry_ptr.74, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.76, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/dma/mv_xor.c", i32 855, i32 3}
!150 = !{ptr @mv_chan_memcpy_self_test._entry.75, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @mv_chan_memcpy_self_test._entry_ptr.77, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.78, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/dma/mv_xor.c", i32 959, i32 3}
!154 = !{ptr @mv_chan_xor_self_test._entry, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @mv_chan_xor_self_test._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @mv_chan_xor_self_test._entry.79, !157, !"_entry", i1 false, i1 false}
!157 = !{!"../drivers/dma/mv_xor.c", i32 967, i32 3}
!158 = !{ptr @mv_chan_xor_self_test._entry_ptr.80, !157, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.82, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/dma/mv_xor.c", i32 979, i32 3}
!161 = !{ptr @mv_chan_xor_self_test._entry.81, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @mv_chan_xor_self_test._entry_ptr.83, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.85, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/dma/mv_xor.c", i32 990, i32 4}
!165 = !{ptr @mv_chan_xor_self_test._entry.84, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @mv_chan_xor_self_test._entry_ptr.86, !164, !"_entry_ptr", i1 false, i1 false}
!167 = distinct !{null, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!169 = !{ptr @mv_xor_dt_ids, !170, !"mv_xor_dt_ids", i1 false, i1 false}
!170 = !{!"../drivers/dma/mv_xor.c", i32 1281, i32 34}
!171 = !{!"sp"}
!172 = !{i32 1, !"wchar_size", i32 2}
!173 = !{i32 1, !"min_enum_size", i32 4}
!174 = !{i32 8, !"branch-target-enforcement", i32 0}
!175 = !{i32 8, !"sign-return-address", i32 0}
!176 = !{i32 8, !"sign-return-address-all", i32 0}
!177 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!178 = !{i32 7, !"uwtable", i32 1}
!179 = !{i32 7, !"frame-pointer", i32 2}
!180 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!181 = !{i64 6302335}
!182 = !{i64 6301917}
!183 = !{i64 2154654260}
!184 = !{i64 2154654685}
!185 = !{i64 2154655110}
!186 = !{i64 2154655544}
!187 = !{i64 2154656008}
!188 = !{i64 2154656472}
!189 = !{i64 2154656927}
!190 = !{i64 2154657355}
!191 = !{i64 2154649883}
!192 = !{i64 2154650308}
!193 = !{i64 2154650733}
!194 = !{i64 2154651249}
!195 = !{i64 2154651973}
!196 = !{i64 2154652488}
!197 = !{i64 2154652952}
!198 = !{i64 2154653407}
!199 = !{i64 2154653835}
!200 = !{!"branch_weights", i32 2000, i32 1}
!201 = !{i64 2148237249, i64 2148237254, i64 2148237267, i64 2148237311, i64 2148237345, i64 2148237366}
!202 = !{i64 2154449608}
!203 = !{i64 2154504458}
!204 = !{!"branch_weights", i32 1, i32 2000}
!205 = !{i64 2154557618, i64 2154558103, i64 2154557655, i64 2154557711, i64 2154557745, i64 2154557769, i64 2154557810, i64 2154557831, i64 2154557859, i64 2154557893}
!206 = !{i64 2154492432, i64 2154492916, i64 2154492469, i64 2154492525, i64 2154492559, i64 2154492583, i64 2154492624, i64 2154492645, i64 2154492673, i64 2154492707}
!207 = !{i64 2154494032, i64 2154494516, i64 2154494069, i64 2154494125, i64 2154494159, i64 2154494183, i64 2154494224, i64 2154494245, i64 2154494273, i64 2154494307}
!208 = !{i64 2154507977, i64 2154508462, i64 2154508014, i64 2154508070, i64 2154508104, i64 2154508128, i64 2154508169, i64 2154508190, i64 2154508218, i64 2154508252}
!209 = !{!"auto-init"}
!210 = !{i64 2154553877}
!211 = !{i32 0, i32 33}
!212 = !{i64 2154554197}
!213 = !{i64 2154554761}
!214 = !{i64 2154555246}
!215 = !{i64 2154555710}
