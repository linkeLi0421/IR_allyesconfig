; ModuleID = '/llk/IR_all_yes/drivers/dma/k3dma.c_pt.bc'
source_filename = "../drivers/dma/k3dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.k3dma_soc_data = type { i32 }
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
%struct.k3_dma_dev = type { %struct.dma_device, ptr, %struct.tasklet_struct, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.k3_dma_phy = type { i32, ptr, ptr, ptr, ptr }
%struct.k3_dma_chan = type { i32, %struct.virt_dma_chan, ptr, %struct.list_head, i32, i32, i8, %struct.dma_slave_config }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dmaengine_result = type { i32, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.k3_dma_desc_sw = type { %struct.virt_dma_desc, i32, i32, i32, ptr }
%struct.k3_desc_hw = type { i32, [3 x i32], i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_k3dma__254_1040_k3_pdma_driver_init6 = internal global ptr @k3_pdma_driver_init, section ".initcall6.init", align 4
@k3_pdma_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @k3_dma_probe, ptr @k3_dma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @k3_pdma_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @k3_dma_pmops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_k3_pdma_driver_exit = internal global ptr @k3_pdma_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description255 = internal constant [42 x i8] c"k3dma.description=HiSilicon k3 DMA Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias256 = internal constant [27 x i8] c"k3dma.alias=platform:k3dma\00", section ".modinfo", align 1
@__UNIQUE_ID_file257 = internal constant [29 x i8] c"k3dma.file=drivers/dma/k3dma\00", section ".modinfo", align 1
@__UNIQUE_ID_license258 = internal constant [21 x i8] c"k3dma.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"k3-dma\00", [25 x i8] zeroinitializer }, align 32
@k3_pdma_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,k3-dma-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @k3_v1_dma_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hisi-pcm-asp-dma-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @asp_v1_dma_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@k3_dma_pmops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @k3_dma_suspend_dev, ptr @k3_dma_resume_dev, ptr @k3_dma_suspend_dev, ptr @k3_dma_resume_dev, ptr @k3_dma_suspend_dev, ptr @k3_dma_resume_dev, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dma-channels\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dma-requests\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dma-channel-mask\00", [47 x i8] zeroinitializer }, align 32
@k3_dma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 867, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"dma-channel-mask doesn't exist, considering all as available.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"k3_dma_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"drivers/dma/k3dma.c\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@k3_dma_probe._entry_ptr = internal global ptr @k3_dma_probe._entry, section ".printk_index", align 4
@k3_dma_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 875, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"no dma clk\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@k3_dma_probe._entry_ptr.12 = internal global ptr @k3_dma_probe._entry.9, section ".printk_index", align 4
@k3_dma_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.6, i32 947, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"clk_prepare_enable failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@k3_dma_probe._entry_ptr.15 = internal global ptr @k3_dma_probe._entry.13, section ".printk_index", align 4
@k3_dma_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&d->lock\00", [23 x i8] zeroinitializer }, align 32
@k3_dma_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.5, ptr @.str.6, i32 966, ptr @.str.19, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"initialized\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@k3_dma_probe._entry_ptr.20 = internal global ptr @k3_dma_probe._entry.17, section ".printk_index", align 4
@k3_dma_int_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.6, i32 247, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DMA ERR\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"k3_dma_int_handler\00", [45 x i8] zeroinitializer }, align 32
@k3_dma_int_handler._entry_ptr = internal global ptr @k3_dma_int_handler._entry, section ".printk_index", align 4
@vchan_cookie_complete.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, i8 0, i8 25, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"k3dma\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vchan_cookie_complete\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/dma/virt-dma.h\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"txd %p[%x]: marked complete\0A\00", [35 x i8] zeroinitializer }, align 32
@k3_dma_alloc_desc_resource.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.27, ptr @.str.6, ptr @.str.28, i8 0, i8 117, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"k3_dma_alloc_desc_resource\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"vch %p: sg num %d exceed max %d\0A\00", [63 x i8] zeroinitializer }, align 32
@k3_dma_alloc_desc_resource.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.27, ptr @.str.6, ptr @.str.29, i8 0, i8 120, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vch %p: dma alloc fail\0A\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@k3_dma_prep_dma_cyclic.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.30, ptr @.str.6, ptr @.str.31, i8 0, i8 -106, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"k3_dma_prep_dma_cyclic\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s: buf %pad, dst %pad, buf len %zu, period_len = %zu, dir %d\0A\00", [33 x i8] zeroinitializer }, align 32
@k3_dma_issue_pending.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.32, ptr @.str.6, ptr @.str.33, i8 0, i8 109, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"k3_dma_issue_pending\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vchan %p: issued\0A\00", [46 x i8] zeroinitializer }, align 32
@k3_dma_issue_pending.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.32, ptr @.str.6, ptr @.str.34, i8 0, i8 110, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"vchan %p: nothing to issue\0A\00", [36 x i8] zeroinitializer }, align 32
@k3_dma_transfer_pause.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.35, ptr @.str.6, ptr @.str.36, i8 0, i8 -64, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"k3_dma_transfer_pause\00", [42 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vchan %p: pause\0A\00", [47 x i8] zeroinitializer }, align 32
@k3_dma_transfer_resume.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.37, ptr @.str.6, ptr @.str.38, i8 0, i8 -59, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"k3_dma_transfer_resume\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vchan %p: resume\0A\00", [46 x i8] zeroinitializer }, align 32
@k3_dma_terminate_all.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.39, ptr @.str.6, ptr @.str.40, i8 0, i8 -74, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"k3_dma_terminate_all\00", [43 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vchan %p: terminate all\0A\00", [39 x i8] zeroinitializer }, align 32
@k3_dma_tasklet.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.41, ptr @.str.6, ptr @.str.42, i8 0, i8 78, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"k3_dma_tasklet\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pchan %u: free\0A\00", [16 x i8] zeroinitializer }, align 32
@k3_dma_tasklet.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.41, ptr @.str.6, ptr @.str.43, i8 0, i8 84, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pchan %u: alloc vchan %p\0A\00", [38 x i8] zeroinitializer }, align 32
@k3_v1_dma_data = internal constant { %struct.k3dma_soc_data, [28 x i8] } zeroinitializer, align 32
@asp_v1_dma_data = internal constant { %struct.k3dma_soc_data, [28 x i8] } { %struct.k3dma_soc_data { i32 2 }, [28 x i8] zeroinitializer }, align 32
@k3_dma_suspend_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.6, i32 1005, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"chan %d is running fail to suspend\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"k3_dma_suspend_dev\00", [45 x i8] zeroinitializer }, align 32
@k3_dma_suspend_dev._entry_ptr = internal global ptr @k3_dma_suspend_dev._entry, section ".printk_index", align 4
@k3_dma_resume_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.46, ptr @.str.6, i32 1020, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"k3_dma_resume_dev\00", [46 x i8] zeroinitializer }, align 32
@k3_dma_resume_dev._entry_ptr = internal global ptr @k3_dma_resume_dev._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.47 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.50 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.52 = private unnamed_addr constant [15 x i8] c"k3_pdma_driver\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1030, i32 31 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1032, i32 11 }
@___asan_gen_.58 = private unnamed_addr constant [15 x i8] c"k3_pdma_dt_ids\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 815, i32 34 }
@___asan_gen_.61 = private unnamed_addr constant [13 x i8] c"k3_dma_pmops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1028, i32 8 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 860, i32 5 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 862, i32 5 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 864, i32 5 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 866, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 875, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 947, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 962, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 966, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 247, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant [26 x i8] c"../drivers/dma/virt-dma.h\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 101, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 470, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 481, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 601, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 438, i32 5 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 443, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 768, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 790, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 728, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 313, i32 5 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 339, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant [15 x i8] c"k3_v1_dma_data\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 807, i32 36 }
@___asan_gen_.196 = private unnamed_addr constant [16 x i8] c"asp_v1_dma_data\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 811, i32 36 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1004, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.212 = private constant [23 x i8] c"../drivers/dma/k3dma.c\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1020, i32 3 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_alias256, ptr @__UNIQUE_ID_description255, ptr @__UNIQUE_ID_file257, ptr @__UNIQUE_ID_license258, ptr @__exitcall_k3_pdma_driver_exit, ptr @__initcall__kmod_k3dma__254_1040_k3_pdma_driver_init6, ptr @k3_dma_int_handler._entry, ptr @k3_dma_int_handler._entry_ptr, ptr @k3_dma_probe._entry, ptr @k3_dma_probe._entry.13, ptr @k3_dma_probe._entry.17, ptr @k3_dma_probe._entry.9, ptr @k3_dma_probe._entry_ptr, ptr @k3_dma_probe._entry_ptr.12, ptr @k3_dma_probe._entry_ptr.15, ptr @k3_dma_probe._entry_ptr.20, ptr @k3_dma_resume_dev._entry, ptr @k3_dma_resume_dev._entry_ptr, ptr @k3_dma_suspend_dev._entry, ptr @k3_dma_suspend_dev._entry_ptr, ptr @k3_pdma_driver_exit, ptr @k3_pdma_driver, ptr @.str, ptr @k3_pdma_dt_ids, ptr @k3_dma_pmops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @k3_dma_probe.__key, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @k3_v1_dma_data, ptr @asp_v1_dma_data, ptr @.str.44, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k3_pdma_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k3_pdma_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k3_dma_pmops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k3_dma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k3_dma_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k3_dma_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k3_dma_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k3_dma_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k3_dma_int_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k3_v1_dma_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asp_v1_dma_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k3_dma_suspend_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k3_dma_resume_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @k3_pdma_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @k3_pdma_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @k3_pdma_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @k3_pdma_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @k3_dma_probe(ptr noundef %op) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %op, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 476, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup143_crit_edge, label %if.end

entry.cleanup143_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup143

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @device_get_match_data(ptr noundef %dev) #9
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup143_crit_edge, label %if.end5

if.end.cleanup143_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup143

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %op, i32 noundef 0) #9
  %base = getelementptr inbounds %struct.k3_dma_dev, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call6, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %call6 to i32
  br label %cleanup143

if.end12:                                         ; preds = %if.end5
  %call14 = tail call ptr @of_match_device(ptr noundef nonnull @k3_pdma_dt_ids, ptr noundef %dev) #9
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end12.if.end30_crit_edge, label %if.then16

if.end12.if.end30_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then16:                                        ; preds = %if.end12
  %of_node = getelementptr inbounds %struct.platform_device, ptr %op, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %dma_channels = getelementptr inbounds %struct.k3_dma_dev, ptr %call.i, i32 0, i32 9
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef %dma_channels, i32 noundef 1, i32 noundef 0) #9
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %dma_requests = getelementptr inbounds %struct.k3_dma_dev, ptr %call.i, i32 0, i32 10
  %call.i.i244 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.2, ptr noundef %dma_requests, i32 noundef 1, i32 noundef 0) #9
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %dma_channel_mask = getelementptr inbounds %struct.k3_dma_dev, ptr %call.i, i32 0, i32 11
  %call.i.i245 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.3, ptr noundef %dma_channel_mask, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i245)
  %tobool25.not = icmp sgt i32 %call.i.i245, -1
  br i1 %tobool25.not, label %if.then16.if.end30_crit_edge, label %do.end

if.then16.if.end30_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

do.end:                                           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.4) #12
  %8 = ptrtoint ptr %dma_channel_mask to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %dma_channel_mask, align 4
  br label %if.end30

if.end30:                                         ; preds = %do.end, %if.then16.if.end30_crit_edge, %if.end12.if.end30_crit_edge
  %9 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call2, align 4
  %and = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %if.then32, label %if.end30.if.end45_crit_edge

if.end30.if.end45_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then32:                                        ; preds = %if.end30
  %call34 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #9
  %clk = getelementptr inbounds %struct.k3_dma_dev, ptr %call.i, i32 0, i32 7
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call34, ptr %clk, align 4
  %cmp.i246 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i246, label %do.end40, label %if.then32.if.end45_crit_edge

if.then32.if.end45_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

do.end40:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #12
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %cleanup143

if.end45:                                         ; preds = %if.then32.if.end45_crit_edge, %if.end30.if.end45_crit_edge
  %call46 = tail call i32 @platform_get_irq(ptr noundef %op, i32 noundef 0) #9
  %call.i247 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call46, ptr noundef nonnull @k3_dma_int_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i247)
  %tobool49.not = icmp eq i32 %call.i247, 0
  br i1 %tobool49.not, label %if.end51, label %if.end45.cleanup143_crit_edge

if.end45.cleanup143_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup143

if.end51:                                         ; preds = %if.end45
  %irq52 = getelementptr inbounds %struct.k3_dma_dev, ptr %call.i, i32 0, i32 12
  %15 = ptrtoint ptr %irq52 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call46, ptr %irq52, align 4
  %call54 = tail call ptr @dmam_pool_create(ptr noundef nonnull @.str, ptr noundef %dev, i32 noundef 16384, i32 noundef 32, i32 noundef 0) #9
  %pool = getelementptr inbounds %struct.k3_dma_dev, ptr %call.i, i32 0, i32 8
  %16 = ptrtoint ptr %pool to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call54, ptr %pool, align 4
  %tobool56.not = icmp eq ptr %call54, null
  br i1 %tobool56.not, label %if.end51.cleanup143_crit_edge, label %if.end58

if.end51.cleanup143_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup143

if.end58:                                         ; preds = %if.end51
  %dma_channels60 = getelementptr inbounds %struct.k3_dma_dev, ptr %call.i, i32 0, i32 9
  %17 = ptrtoint ptr %dma_channels60 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma_channels60, align 4
  %19 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %18, i32 20) #9
  %20 = extractvalue { i32, i1 } %19, 1
  br i1 %20, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !119

devm_kcalloc.exit.thread:                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  %phy255 = getelementptr inbounds %struct.k3_dma_dev, ptr %call.i, i32 0, i32 5
  %21 = ptrtoint ptr %phy255 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %phy255, align 4
  br label %cleanup143

devm_kcalloc.exit:                                ; preds = %if.end58
  %22 = extractvalue { i32, i1 } %19, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %22, i32 noundef 3520) #9
  %phy = getelementptr inbounds %struct.k3_dma_dev, ptr %call.i, i32 0, i32 5
  %23 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call5.i.i, ptr %phy, align 4
  %cmp = icmp eq ptr %call5.i.i, null
  br i1 %cmp, label %devm_kcalloc.exit.cleanup143_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup143_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup143

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %24 = ptrtoint ptr %dma_channels60 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_channels60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp66260.not = icmp eq i32 %25, 0
  br i1 %cmp66260.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dma_channel_mask67 = getelementptr inbounds %struct.k3_dma_dev, ptr %call.i, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0261 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %26 = ptrtoint ptr %dma_channel_mask67 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma_channel_mask67, align 4
  %shl = shl nuw i32 1, %i.0261
  %and68 = and i32 %27, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %for.body.cleanup_crit_edge, label %if.end71

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end71:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %phy, align 4
  %arrayidx = getelementptr %struct.k3_dma_phy, ptr %29, i32 %i.0261
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %i.0261, ptr %arrayidx, align 4
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base, align 4
  %mul = shl i32 %i.0261, 6
  %add.ptr = getelementptr i8, ptr %32, i32 %mul
  %base74 = getelementptr %struct.k3_dma_phy, ptr %29, i32 %i.0261, i32 1
  %33 = ptrtoint ptr %base74 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr, ptr %base74, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.0261, 1
  %34 = ptrtoint ptr %dma_channels60 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma_channels60, align 4
  %cmp66 = icmp ult i32 %inc, %35
  br i1 %cmp66, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %channels = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3
  %36 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3, i32 1
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %channels, ptr %prev.i, align 4
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #9
  tail call void @_set_bit(i32 noundef 0, ptr noundef %cap_mask) #9
  tail call void @_set_bit(i32 noundef 12, ptr noundef %cap_mask) #9
  %dev82 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 15
  %38 = ptrtoint ptr %dev82 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %dev, ptr %dev82, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 29
  %39 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @k3_dma_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_tx_status = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 49
  %40 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @k3_dma_tx_status, ptr %device_tx_status, align 4
  %device_prep_dma_memcpy = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 30
  %41 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @k3_dma_prep_memcpy, ptr %device_prep_dma_memcpy, align 4
  %device_prep_slave_sg = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 39
  %42 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @k3_dma_prep_slave_sg, ptr %device_prep_slave_sg, align 4
  %device_prep_dma_cyclic = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 40
  %43 = ptrtoint ptr %device_prep_dma_cyclic to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @k3_dma_prep_dma_cyclic, ptr %device_prep_dma_cyclic, align 4
  %device_issue_pending = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 50
  %44 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @k3_dma_issue_pending, ptr %device_issue_pending, align 4
  %device_config = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 44
  %45 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @k3_dma_config, ptr %device_config, align 4
  %device_pause = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 45
  %46 = ptrtoint ptr %device_pause to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @k3_dma_transfer_pause, ptr %device_pause, align 4
  %device_resume = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 46
  %47 = ptrtoint ptr %device_resume to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @k3_dma_transfer_resume, ptr %device_resume, align 4
  %device_terminate_all = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 47
  %48 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @k3_dma_terminate_all, ptr %device_terminate_all, align 4
  %device_synchronize = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 48
  %49 = ptrtoint ptr %device_synchronize to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @k3_dma_synchronize, ptr %device_synchronize, align 4
  %copy_align = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 10
  %50 = ptrtoint ptr %copy_align to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 3, ptr %copy_align, align 4
  %dma_requests96 = getelementptr inbounds %struct.k3_dma_dev, ptr %call.i, i32 0, i32 10
  %51 = ptrtoint ptr %dma_requests96 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dma_requests96, align 4
  %53 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %52, i32 256) #9
  %54 = extractvalue { i32, i1 } %53, 1
  br i1 %54, label %devm_kcalloc.exit251.thread, label %devm_kcalloc.exit251, !prof !119

devm_kcalloc.exit251.thread:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %chans258 = getelementptr inbounds %struct.k3_dma_dev, ptr %call.i, i32 0, i32 6
  %55 = ptrtoint ptr %chans258 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %chans258, align 4
  br label %cleanup143

devm_kcalloc.exit251:                             ; preds = %for.end
  %56 = extractvalue { i32, i1 } %53, 0
  %call5.i.i248 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %56, i32 noundef 3520) #9
  %chans = getelementptr inbounds %struct.k3_dma_dev, ptr %call.i, i32 0, i32 6
  %57 = ptrtoint ptr %chans to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call5.i.i248, ptr %chans, align 4
  %cmp99 = icmp eq ptr %call5.i.i248, null
  br i1 %cmp99, label %devm_kcalloc.exit251.cleanup143_crit_edge, label %for.cond102.preheader

devm_kcalloc.exit251.cleanup143_crit_edge:        ; preds = %devm_kcalloc.exit251
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup143

for.cond102.preheader:                            ; preds = %devm_kcalloc.exit251
  %58 = ptrtoint ptr %dma_requests96 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dma_requests96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp104263.not = icmp eq i32 %59, 0
  br i1 %cmp104263.not, label %for.cond102.preheader.for.end112_crit_edge, label %for.cond102.preheader.for.body105_crit_edge

for.cond102.preheader.for.body105_crit_edge:      ; preds = %for.cond102.preheader
  br label %for.body105

for.cond102.preheader.for.end112_crit_edge:       ; preds = %for.cond102.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end112

for.body105:                                      ; preds = %for.body105.for.body105_crit_edge, %for.cond102.preheader.for.body105_crit_edge
  %i.1264 = phi i32 [ %inc111, %for.body105.for.body105_crit_edge ], [ 0, %for.cond102.preheader.for.body105_crit_edge ]
  %60 = ptrtoint ptr %chans to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %chans, align 4
  %status = getelementptr %struct.k3_dma_chan, ptr %61, i32 %i.1264, i32 5
  %62 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %status, align 4
  %node = getelementptr %struct.k3_dma_chan, ptr %61, i32 %i.1264, i32 3
  %63 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %node, ptr %node, align 4
  %prev.i252 = getelementptr %struct.k3_dma_chan, ptr %61, i32 %i.1264, i32 3, i32 1
  %64 = ptrtoint ptr %prev.i252 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %node, ptr %prev.i252, align 4
  %vc = getelementptr %struct.k3_dma_chan, ptr %61, i32 %i.1264, i32 1
  %desc_free = getelementptr %struct.k3_dma_chan, ptr %61, i32 %i.1264, i32 1, i32 2
  %65 = ptrtoint ptr %desc_free to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @k3_dma_free_desc, ptr %desc_free, align 4
  tail call void @vchan_init(ptr noundef %vc, ptr noundef nonnull %call.i) #9
  %inc111 = add nuw i32 %i.1264, 1
  %66 = ptrtoint ptr %dma_requests96 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dma_requests96, align 4
  %cmp104 = icmp ult i32 %inc111, %67
  br i1 %cmp104, label %for.body105.for.body105_crit_edge, label %for.body105.for.end112_crit_edge

for.body105.for.end112_crit_edge:                 ; preds = %for.body105
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end112

for.body105.for.body105_crit_edge:                ; preds = %for.body105
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body105

for.end112:                                       ; preds = %for.body105.for.end112_crit_edge, %for.cond102.preheader.for.end112_crit_edge
  %clk113 = getelementptr inbounds %struct.k3_dma_dev, ptr %call.i, i32 0, i32 7
  %68 = ptrtoint ptr %clk113 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %clk113, align 4
  %call114 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %69)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %cmp115 = icmp slt i32 %call114, 0
  br i1 %cmp115, label %do.end119, label %if.end121

do.end119:                                        ; preds = %for.end112
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call114) #12
  br label %cleanup143

if.end121:                                        ; preds = %for.end112
  tail call fastcc void @k3_dma_enable_dma(ptr noundef nonnull %call.i, i1 noundef zeroext true)
  %call123 = tail call i32 @dma_async_device_register(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.end126, label %if.end121.dma_async_register_fail_crit_edge

if.end121.dma_async_register_fail_crit_edge:      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_async_register_fail

if.end126:                                        ; preds = %if.end121
  %of_node128 = getelementptr inbounds %struct.platform_device, ptr %op, i32 0, i32 3, i32 27
  %70 = ptrtoint ptr %of_node128 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %of_node128, align 8
  %call129 = tail call i32 @of_dma_controller_register(ptr noundef %71, ptr noundef nonnull @k3_of_dma_simple_xlate, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %do.body133, label %of_dma_register_fail

do.body133:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.k3_dma_dev, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @k3_dma_probe.__key, i16 noundef signext 3) #9
  %chan_pending = getelementptr inbounds %struct.k3_dma_dev, ptr %call.i, i32 0, i32 4
  %72 = ptrtoint ptr %chan_pending to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %chan_pending, ptr %chan_pending, align 4
  %prev.i253 = getelementptr inbounds %struct.k3_dma_dev, ptr %call.i, i32 0, i32 4, i32 1
  %73 = ptrtoint ptr %prev.i253 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %chan_pending, ptr %prev.i253, align 4
  %task = getelementptr inbounds %struct.k3_dma_dev, ptr %call.i, i32 0, i32 2
  tail call void @tasklet_setup(ptr noundef %task, ptr noundef nonnull @k3_dma_tasklet) #9
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %op, i32 0, i32 3, i32 8
  %74 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.18) #12
  br label %cleanup143

of_dma_register_fail:                             ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_async_device_unregister(ptr noundef nonnull %call.i) #9
  br label %dma_async_register_fail

dma_async_register_fail:                          ; preds = %of_dma_register_fail, %if.end121.dma_async_register_fail_crit_edge
  %ret.0 = phi i32 [ %call123, %if.end121.dma_async_register_fail_crit_edge ], [ %call129, %of_dma_register_fail ]
  %75 = ptrtoint ptr %clk113 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %clk113, align 4
  tail call void @clk_disable(ptr noundef %76) #9
  tail call void @clk_unprepare(ptr noundef %76) #9
  br label %cleanup143

cleanup143:                                       ; preds = %dma_async_register_fail, %do.body133, %do.end119, %devm_kcalloc.exit251.cleanup143_crit_edge, %devm_kcalloc.exit251.thread, %devm_kcalloc.exit.cleanup143_crit_edge, %devm_kcalloc.exit.thread, %if.end51.cleanup143_crit_edge, %if.end45.cleanup143_crit_edge, %do.end40, %if.then9, %if.end.cleanup143_crit_edge, %entry.cleanup143_crit_edge
  %retval.0 = phi i32 [ %1, %if.then9 ], [ %call114, %do.end119 ], [ %ret.0, %dma_async_register_fail ], [ 0, %do.body133 ], [ %14, %do.end40 ], [ -12, %entry.cleanup143_crit_edge ], [ -22, %if.end.cleanup143_crit_edge ], [ %call.i247, %if.end45.cleanup143_crit_edge ], [ -12, %if.end51.cleanup143_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup143_crit_edge ], [ -12, %devm_kcalloc.exit251.cleanup143_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %devm_kcalloc.exit251.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @k3_dma_remove(ptr noundef %op) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %op, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @dma_async_device_unregister(ptr noundef %1) #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %op, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %op, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  tail call void @of_dma_controller_free(ptr noundef %3) #9
  %irq = getelementptr inbounds %struct.k3_dma_dev, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @devm_free_irq(ptr noundef %dev, i32 noundef %5, ptr noundef %1) #9
  %channels = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %channels, align 4
  %cmp.not36 = icmp eq ptr %7, %channels
  br i1 %cmp.not36, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %8 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %7, %entry.for.body_crit_edge ]
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %8, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %8) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %8, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %task = getelementptr i8, ptr %8, i32 32
  tail call void @tasklet_kill(ptr noundef %task) #9
  %cmp.not = icmp eq ptr %.pn, %channels
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %task23 = getelementptr inbounds %struct.k3_dma_dev, ptr %1, i32 0, i32 2
  tail call void @tasklet_kill(ptr noundef %task23) #9
  %clk = getelementptr inbounds %struct.k3_dma_dev, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %19) #9
  tail call void @clk_unprepare(ptr noundef %19) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @k3_dma_int_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.k3_dma_dev, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !120
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %4, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #9, !srcloc !120
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr8 = getelementptr i8, ptr %8, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #9, !srcloc !120
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr13 = getelementptr i8, ptr %12, i32 12
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #9, !srcloc !120
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %add.ptr18 = getelementptr i8, ptr %16, i32 16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #9, !srcloc !120
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not161 = icmp eq i32 %2, 0
  br i1 %tobool.not161, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %19 = tail call i32 @llvm.bswap.i32(i32 %2)
  %phy = getelementptr inbounds %struct.k3_dma_dev, ptr %dev_id, i32 0, i32 5
  %dev = getelementptr inbounds %struct.dma_device, ptr %dev_id, i32 0, i32 15
  br label %while.body

while.body:                                       ; preds = %if.end74.while.body_crit_edge, %while.body.lr.ph
  %irq_chan.0163 = phi i32 [ 0, %while.body.lr.ph ], [ %irq_chan.1, %if.end74.while.body_crit_edge ]
  %stat.0162 = phi i32 [ %19, %while.body.lr.ph ], [ %and, %if.end74.while.body_crit_edge ]
  %20 = tail call i32 @llvm.cttz.i32(i32 %stat.0162, i1 true) #9, !range !121
  %shl = shl nuw i32 1, %20
  %neg = xor i32 %shl, -1
  %and = and i32 %stat.0162, %neg
  %and23 = and i32 %shl, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %lor.lhs.false, label %if.then, !prof !119

lor.lhs.false:                                    ; preds = %while.body
  %and28 = and i32 %shl, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %lor.lhs.false.if.end60_crit_edge, label %if.then.thread

lor.lhs.false.if.end60_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.then.thread:                                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %phy, align 4
  %vchan156 = getelementptr %struct.k3_dma_phy, ptr %22, i32 %20, i32 2
  %23 = ptrtoint ptr %vchan156 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vchan156, align 4
  %tobool30.not157 = icmp eq ptr %24, null
  br label %if.end41

if.then:                                          ; preds = %while.body
  %25 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %phy, align 4
  %vchan = getelementptr %struct.k3_dma_phy, ptr %26, i32 %20, i32 2
  %27 = ptrtoint ptr %vchan to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vchan, align 4
  %tobool30.not = icmp eq ptr %28, null
  br i1 %tobool30.not, label %if.then.if.end58_crit_edge, label %if.then34

if.then.if.end58_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.then34:                                        ; preds = %if.then
  %lock = getelementptr inbounds %struct.k3_dma_chan, ptr %28, i32 0, i32 1, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %ds_run = getelementptr %struct.k3_dma_phy, ptr %26, i32 %20, i32 3
  %29 = ptrtoint ptr %ds_run to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ds_run, align 4
  %cmp.not = icmp eq ptr %30, null
  br i1 %cmp.not, label %if.then34.if.end_crit_edge, label %if.then35

if.then34.if.end_crit_edge:                       ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then35:                                        ; preds = %if.then34
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chan.i, align 4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp.i.i = icmp slt i32 %34, 1
  br i1 %cmp.i.i, label %do.body2.i.i, label %dma_cookie_complete.exit.i, !prof !119

do.body2.i.i:                                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #9, !srcloc !122
  unreachable

dma_cookie_complete.exit.i:                       ; preds = %if.then35
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %32, i32 0, i32 3
  %35 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %completed_cookie.i.i, align 4
  %36 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %30, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@k3_dma_int_handler, %do.end.i)) #9
          to label %if.then.i [label %do.end.i], !srcloc !123

if.then.i:                                        ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %32, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %38, i32 0, i32 15
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vchan_cookie_complete.__UNIQUE_ID_ddebug236, ptr noundef %40, ptr noundef nonnull @.str.26, ptr noundef nonnull %30, i32 noundef %34) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %dma_cookie_complete.exit.i
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %30, i32 0, i32 2
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %32, i32 0, i32 7
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %32, i32 0, i32 7, i32 1
  %41 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %42, ptr noundef %desc_completed.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i.list_add_tail.exit.i_crit_edge

do.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %node.i, ptr %prev.i.i, align 4
  %44 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %desc_completed.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %30, i32 0, i32 2, i32 1
  %45 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev3.i.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %node.i, ptr %42, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.end.i.list_add_tail.exit.i_crit_edge
  %state.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %32, i32 0, i32 1, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge

list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_cookie_complete.exit

if.then.i.i:                                      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %32, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i) #9
  br label %vchan_cookie_complete.exit

vchan_cookie_complete.exit:                       ; preds = %if.then.i.i, %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge
  %47 = ptrtoint ptr %ds_run to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ds_run, align 4
  %ds_done = getelementptr %struct.k3_dma_phy, ptr %26, i32 %20, i32 4
  %49 = ptrtoint ptr %ds_done to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %ds_done, align 4
  store ptr null, ptr %ds_run, align 4
  br label %if.end

if.end:                                           ; preds = %vchan_cookie_complete.exit, %if.then34.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %if.end41

if.end41:                                         ; preds = %if.end, %if.then.thread
  %tobool30.not159 = phi i1 [ %tobool30.not157, %if.then.thread ], [ false, %if.end ]
  %50 = phi ptr [ %24, %if.then.thread ], [ %28, %if.end ]
  %51 = phi ptr [ %22, %if.then.thread ], [ %26, %if.end ]
  %and45 = and i32 %shl, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  %or.cond = select i1 %tobool30.not159, i1 true, i1 %tobool46.not
  br i1 %or.cond, label %if.end41.if.end58_crit_edge, label %if.then47

if.end41.if.end58_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.then47:                                        ; preds = %if.end41
  %lock49 = getelementptr inbounds %struct.k3_dma_chan, ptr %50, i32 0, i32 1, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock49) #9
  %ds_run50 = getelementptr %struct.k3_dma_phy, ptr %51, i32 %20, i32 3
  %52 = ptrtoint ptr %ds_run50 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ds_run50, align 4
  %cmp51.not = icmp eq ptr %53, null
  br i1 %cmp51.not, label %if.then47.if.end55_crit_edge, label %if.then52

if.then47.if.end55_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then52:                                        ; preds = %if.then47
  %chan.i148 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %chan.i148 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %chan.i148, align 4
  %cyclic.i = getelementptr inbounds %struct.virt_dma_chan, ptr %55, i32 0, i32 9
  %56 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %cyclic.i, align 4
  %state.i.i149 = getelementptr inbounds %struct.virt_dma_chan, ptr %55, i32 0, i32 1, i32 1
  %call.i.i150 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i149) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i150)
  %tobool.not.i.i151 = icmp eq i32 %call.i.i150, 0
  br i1 %tobool.not.i.i151, label %if.then.i.i153, label %if.then52.if.end55_crit_edge

if.then52.if.end55_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then.i.i153:                                   ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  %task.i152 = getelementptr inbounds %struct.virt_dma_chan, ptr %55, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i152) #9
  br label %if.end55

if.end55:                                         ; preds = %if.then.i.i153, %if.then52.if.end55_crit_edge, %if.then47.if.end55_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock49) #9
  br label %if.end58

if.end58:                                         ; preds = %if.end55, %if.end41.if.end58_crit_edge, %if.then.if.end58_crit_edge
  %or = or i32 %shl, %irq_chan.0163
  br label %if.end60

if.end60:                                         ; preds = %if.end58, %lor.lhs.false.if.end60_crit_edge
  %irq_chan.1 = phi i32 [ %or, %if.end58 ], [ %irq_chan.0163, %lor.lhs.false.if.end60_crit_edge ]
  %and62 = and i32 %shl, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp ne i32 %and62, 0
  %and65 = and i32 %shl, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66 = icmp ne i32 %and65, 0
  %57 = select i1 %tobool63.not, i1 true, i1 %tobool66
  br i1 %57, label %do.end, label %if.end60.if.end74_crit_edge, !prof !119

if.end60.if.end74_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

do.end:                                           ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %59, ptr noundef nonnull @.str.21) #12
  br label %if.end74

if.end74:                                         ; preds = %do.end, %if.end60.if.end74_crit_edge
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end74.while.end_crit_edge, label %if.end74.while.body_crit_edge

if.end74.while.body_crit_edge:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end74.while.end_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end74.while.end_crit_edge, %entry.while.end_crit_edge
  %irq_chan.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %irq_chan.1, %if.end74.while.end_crit_edge ]
  %60 = tail call i32 @llvm.bswap.i32(i32 %irq_chan.0.lcssa)
  %61 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base, align 4
  %add.ptr76 = getelementptr i8, ptr %62, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 %60) #9, !srcloc !124
  %63 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base, align 4
  %add.ptr78 = getelementptr i8, ptr %64, i32 1544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 %60) #9, !srcloc !124
  %65 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base, align 4
  %add.ptr80 = getelementptr i8, ptr %66, i32 1552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 %13) #9, !srcloc !124
  %67 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base, align 4
  %add.ptr82 = getelementptr i8, ptr %68, i32 1560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82, i32 %17) #9, !srcloc !124
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq_chan.0.lcssa)
  %tobool83.not = icmp eq i32 %irq_chan.0.lcssa, 0
  br i1 %tobool83.not, label %lor.lhs.false87.critedge, label %if.then84

if.then84:                                        ; preds = %while.end
  %state.i = getelementptr inbounds %struct.k3_dma_dev, ptr %dev_id, i32 0, i32 2, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i154, label %if.then84.cleanup_crit_edge

if.then84.cleanup_crit_edge:                      ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i154:                                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #11
  %task = getelementptr inbounds %struct.k3_dma_dev, ptr %dev_id, i32 0, i32 2
  tail call void @__tasklet_schedule(ptr noundef %task) #9
  br label %cleanup

lor.lhs.false87.critedge:                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool88.not = icmp ne i32 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool90.not = icmp ne i32 %17, 0
  %or.cond147 = select i1 %tobool88.not, i1 true, i1 %tobool90.not
  %spec.select = zext i1 %or.cond147 to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false87.critedge, %if.then.i154, %if.then84.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %lor.lhs.false87.critedge ], [ 1, %if.then84.cleanup_crit_edge ], [ 1, %if.then.i154 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @k3_dma_free_chan_resources(ptr noundef %chan) #2 align 64 {
entry:
  %head.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %lock = getelementptr inbounds %struct.k3_dma_dev, ptr %1, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %node = getelementptr i8, ptr %chan, i32 184
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr i8, ptr %chan, i32 188
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %node, ptr %node, align 4
  %prev.i3.i = getelementptr i8, ptr %chan, i32 188
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %node, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i) #9
  %10 = getelementptr inbounds %struct.list_head, ptr %head.i, i32 0, i32 1
  %11 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %head.i, ptr %head.i, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %head.i, ptr %10, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %desc_allocated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %13 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %desc_allocated.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %14, %desc_allocated.i.i
  br i1 %cmp.i.not.i.i.i, label %list_del_init.exit.list_splice_tail_init.exit.i.i_crit_edge, label %if.then.i.i.i

list_del_init.exit.list_splice_tail_init.exit.i.i_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit.i.i

if.then.i.i.i:                                    ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %10, align 4
  %prev2.i.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %prev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev2.i.i.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %14, ptr %16, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %head.i, ptr %18, align 4
  store ptr %18, ptr %10, align 4
  %22 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %desc_allocated.i.i, ptr %desc_allocated.i.i, align 4
  store ptr %desc_allocated.i.i, ptr %prev2.i.i.i.i, align 4
  br label %list_splice_tail_init.exit.i.i

list_splice_tail_init.exit.i.i:                   ; preds = %if.then.i.i.i, %list_del_init.exit.list_splice_tail_init.exit.i.i_crit_edge
  %desc_submitted.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %23 = ptrtoint ptr %desc_submitted.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %desc_submitted.i.i, align 4
  %cmp.i.not.i9.i.i = icmp eq ptr %24, %desc_submitted.i.i
  br i1 %cmp.i.not.i9.i.i, label %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge, label %if.then.i13.i.i

list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge: ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit14.i.i

if.then.i13.i.i:                                  ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %10, align 4
  %prev2.i.i11.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %27 = ptrtoint ptr %prev2.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev2.i.i11.i.i, align 4
  %prev3.i.i12.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %prev3.i.i12.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i12.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %24, ptr %26, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %head.i, ptr %28, align 4
  store ptr %28, ptr %10, align 4
  %32 = ptrtoint ptr %desc_submitted.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %desc_submitted.i.i, ptr %desc_submitted.i.i, align 4
  store ptr %desc_submitted.i.i, ptr %prev2.i.i11.i.i, align 4
  br label %list_splice_tail_init.exit14.i.i

list_splice_tail_init.exit14.i.i:                 ; preds = %if.then.i13.i.i, %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge
  %desc_issued.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %33 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %desc_issued.i.i, align 4
  %cmp.i.not.i15.i.i = icmp eq ptr %34, %desc_issued.i.i
  br i1 %cmp.i.not.i15.i.i, label %list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge, label %if.then.i19.i.i

list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit20.i.i

if.then.i19.i.i:                                  ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %10, align 4
  %prev2.i.i17.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %37 = ptrtoint ptr %prev2.i.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev2.i.i17.i.i, align 4
  %prev3.i.i18.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %39 = ptrtoint ptr %prev3.i.i18.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev3.i.i18.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %34, ptr %36, align 4
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %head.i, ptr %38, align 4
  store ptr %38, ptr %10, align 4
  %42 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %desc_issued.i.i, ptr %desc_issued.i.i, align 4
  store ptr %desc_issued.i.i, ptr %prev2.i.i17.i.i, align 4
  br label %list_splice_tail_init.exit20.i.i

list_splice_tail_init.exit20.i.i:                 ; preds = %if.then.i19.i.i, %list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge
  %desc_completed.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7
  %43 = ptrtoint ptr %desc_completed.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %desc_completed.i.i, align 4
  %cmp.i.not.i21.i.i = icmp eq ptr %44, %desc_completed.i.i
  br i1 %cmp.i.not.i21.i.i, label %list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge, label %if.then.i25.i.i

list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit26.i.i

if.then.i25.i.i:                                  ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %10, align 4
  %prev2.i.i23.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7, i32 1
  %47 = ptrtoint ptr %prev2.i.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev2.i.i23.i.i, align 4
  %prev3.i.i24.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %49 = ptrtoint ptr %prev3.i.i24.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev3.i.i24.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %44, ptr %46, align 4
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %head.i, ptr %48, align 4
  store ptr %48, ptr %10, align 4
  %52 = ptrtoint ptr %desc_completed.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %desc_completed.i.i, ptr %desc_completed.i.i, align 4
  store ptr %desc_completed.i.i, ptr %prev2.i.i23.i.i, align 4
  br label %list_splice_tail_init.exit26.i.i

list_splice_tail_init.exit26.i.i:                 ; preds = %if.then.i25.i.i, %list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge
  %desc_terminated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %53 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %desc_terminated.i.i, align 4
  %cmp.i.not.i27.i.i = icmp eq ptr %54, %desc_terminated.i.i
  br i1 %cmp.i.not.i27.i.i, label %list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge, label %if.then.i31.i.i

list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge: ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_get_all_descriptors.exit.i

if.then.i31.i.i:                                  ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %10, align 4
  %prev2.i.i29.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  %57 = ptrtoint ptr %prev2.i.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev2.i.i29.i.i, align 4
  %prev3.i.i30.i.i = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %59 = ptrtoint ptr %prev3.i.i30.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %prev3.i.i30.i.i, align 4
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %54, ptr %56, align 4
  %61 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %head.i, ptr %58, align 4
  store ptr %58, ptr %10, align 4
  %62 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %desc_terminated.i.i, ptr %desc_terminated.i.i, align 4
  store ptr %desc_terminated.i.i, ptr %prev2.i.i29.i.i, align 4
  br label %vchan_get_all_descriptors.exit.i

vchan_get_all_descriptors.exit.i:                 ; preds = %if.then.i31.i.i, %list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge
  %63 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %63)
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
  %64 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %65, -65
  store i32 %and.i.i, ptr %flags.i.i, align 4
  %66 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %66)
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
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #9
  %67 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %add.ptr.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @k3_dma_tx_status(ptr noundef %chan, i32 noundef %cookie, ptr noundef writeonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %2 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %4 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !125
  %tobool.not.i = icmp eq ptr %state, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %state, align 4
  %used2.i = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 1
  %7 = ptrtoint ptr %used2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %3, ptr %used2.i, align 4
  %residue.i = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 2
  %8 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %residue.i, align 4
  %in_flight_bytes.i = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 3
  %9 = ptrtoint ptr %in_flight_bytes.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %in_flight_bytes.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp.not.i.i = icmp sgt i32 %5, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %cookie)
  %cmp4.not.i.i = icmp sge i32 %5, %cookie
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cookie)
  %cmp5.i.i = icmp slt i32 %3, %cookie
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %or.cond.i.i = or i1 %cmp5.i.i, %cmp4.not.i.i
  br i1 %or.cond.i.i, label %if.then.i.i.cleanup_crit_edge, label %if.then.i.i.do.body3_crit_edge

if.then.i.i.do.body3_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  br i1 %or.cond16.i.i, label %if.else.i.i.cleanup_crit_edge, label %if.else.i.i.do.body3_crit_edge

if.else.i.i.do.body3_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body3:                                         ; preds = %if.else.i.i.do.body3_crit_edge, %if.then.i.i.do.body3_crit_edge
  %lock = getelementptr i8, ptr %chan, i32 92
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %phy = getelementptr i8, ptr %chan, i32 180
  %10 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy, align 4
  %status = getelementptr i8, ptr %chan, i32 196
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 4
  %call12 = tail call ptr @vchan_find_desc(ptr noundef %chan, i32 noundef %cookie) #9
  %tobool.not = icmp eq ptr %call12, null
  br i1 %tobool.not, label %do.body3.if.else_crit_edge, label %land.lhs.true

do.body3.if.else_crit_edge:                       ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %do.body3
  %cyclic = getelementptr i8, ptr %chan, i32 200
  %14 = ptrtoint ptr %cyclic to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cyclic, align 4, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool13.not = icmp eq i8 %15, 0
  br i1 %tobool13.not, label %if.then14, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %size = getelementptr inbounds %struct.k3_dma_desc_sw, ptr %call12, i32 0, i32 3
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size, align 4
  br label %if.end34

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.body3.if.else_crit_edge
  %tobool18.not = icmp eq ptr %11, null
  br i1 %tobool18.not, label %if.else.if.end34_crit_edge, label %lor.lhs.false

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

lor.lhs.false:                                    ; preds = %if.else
  %ds_run = getelementptr inbounds %struct.k3_dma_phy, ptr %11, i32 0, i32 3
  %18 = ptrtoint ptr %ds_run to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ds_run, align 4
  %tobool19.not = icmp eq ptr %19, null
  br i1 %tobool19.not, label %lor.lhs.false.if.end34_crit_edge, label %if.else21

lor.lhs.false.if.end34_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.else21:                                        ; preds = %lor.lhs.false
  %base.i = getelementptr inbounds %struct.k3_dma_dev, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr.i68 = getelementptr i8, ptr %21, i32 1796
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %11, align 4
  %mul.i = shl i32 %23, 4
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i68, i32 %mul.i
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #9, !srcloc !120
  %25 = and i32 %24, -65536
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #9
  %base.i69 = getelementptr inbounds %struct.k3_dma_phy, ptr %11, i32 0, i32 1
  %27 = ptrtoint ptr %base.i69 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i69, align 4
  %add.ptr.i70 = getelementptr i8, ptr %28, i32 2048
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i70) #9, !srcloc !120
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #9
  %desc_hw_lli = getelementptr inbounds %struct.k3_dma_desc_sw, ptr %19, i32 0, i32 1
  %31 = ptrtoint ptr %desc_hw_lli to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %desc_hw_lli, align 4
  %sub = sub i32 %30, %32
  %div67 = lshr i32 %sub, 5
  %desc_hw = getelementptr inbounds %struct.k3_dma_desc_sw, ptr %19, i32 0, i32 4
  %desc_num = getelementptr inbounds %struct.k3_dma_desc_sw, ptr %19, i32 0, i32 2
  %33 = ptrtoint ptr %desc_num to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %desc_num, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.else21
  %bytes.0 = phi i32 [ %26, %if.else21 ], [ %add27, %for.body.for.cond_crit_edge ]
  %index.0.in = phi i32 [ %div67, %if.else21 ], [ %index.0, %for.body.for.cond_crit_edge ]
  %index.0 = add nuw i32 %index.0.in, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %index.0, i32 %34)
  %cmp25 = icmp ult i32 %index.0, %34
  br i1 %cmp25, label %for.body, label %for.cond.if.end34_crit_edge

for.cond.if.end34_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

for.body:                                         ; preds = %for.cond
  %35 = ptrtoint ptr %desc_hw to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %desc_hw, align 4
  %arrayidx = getelementptr %struct.k3_desc_hw, ptr %36, i32 %index.0
  %count = getelementptr %struct.k3_desc_hw, ptr %36, i32 %index.0, i32 2
  %37 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %count, align 16
  %add27 = add i32 %38, %bytes.0
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx, align 32
  %tobool30.not = icmp eq i32 %40, 0
  br i1 %tobool30.not, label %for.body.if.end34_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.body.if.end34_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.end34:                                         ; preds = %for.body.if.end34_crit_edge, %for.cond.if.end34_crit_edge, %lor.lhs.false.if.end34_crit_edge, %if.else.if.end34_crit_edge, %if.then14
  %bytes.2 = phi i32 [ %17, %if.then14 ], [ 0, %lor.lhs.false.if.end34_crit_edge ], [ 0, %if.else.if.end34_crit_edge ], [ %bytes.0, %for.cond.if.end34_crit_edge ], [ %add27, %for.body.if.end34_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #9
  br i1 %tobool.not.i, label %if.end34.cleanup_crit_edge, label %if.then.i72

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i72:                                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %residue1.i = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 2
  %41 = ptrtoint ptr %residue1.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %bytes.2, ptr %residue1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i72, %if.end34.cleanup_crit_edge, %if.else.i.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.end34.cleanup_crit_edge ], [ %13, %if.then.i72 ], [ 0, %if.then.i.i.cleanup_crit_edge ], [ 0, %if.else.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @k3_dma_prep_memcpy(ptr noundef %chan, i32 noundef %dst, i32 noundef %src, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add i32 %len, 8187
  %div = udiv i32 %sub, 8188
  %call1 = tail call fastcc ptr @k3_dma_alloc_desc_resource(i32 noundef %div, ptr noundef %chan)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %cyclic = getelementptr i8, ptr %chan, i32 200
  %0 = ptrtoint ptr %cyclic to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %cyclic, align 4
  %size = getelementptr inbounds %struct.k3_dma_desc_sw, ptr %call1, i32 0, i32 3
  %1 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %len, ptr %size, align 4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool5.not = icmp eq i32 %3, 0
  br i1 %tobool5.not, label %if.then6, label %if.end4.if.end11_crit_edge

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -806146047, ptr %add.ptr.i, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %if.end4.if.end11_crit_edge
  %desc_num.i = getelementptr inbounds %struct.k3_dma_desc_sw, ptr %call1, i32 0, i32 2
  %desc_hw2.i = getelementptr inbounds %struct.k3_dma_desc_sw, ptr %call1, i32 0, i32 4
  %desc_hw_lli.i = getelementptr inbounds %struct.k3_dma_desc_sw, ptr %call1, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %k3_dma_fill_desc.exit.do.body_crit_edge, %if.end11
  %src.addr.0 = phi i32 [ %src, %if.end11 ], [ %add13, %k3_dma_fill_desc.exit.do.body_crit_edge ]
  %len.addr.0 = phi i32 [ %len, %if.end11 ], [ %sub15, %k3_dma_fill_desc.exit.do.body_crit_edge ]
  %dst.addr.0 = phi i32 [ %dst, %if.end11 ], [ %add14, %k3_dma_fill_desc.exit.do.body_crit_edge ]
  %num.0 = phi i32 [ 0, %if.end11 ], [ %inc, %k3_dma_fill_desc.exit.do.body_crit_edge ]
  %5 = tail call i32 @llvm.umin.i32(i32 %len.addr.0, i32 8188)
  %inc = add i32 %num.0, 1
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  %8 = ptrtoint ptr %desc_num.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %desc_num.i, align 4
  %sub.i = add i32 %9, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %num.0)
  %cmp.not.i = icmp eq i32 %sub.i, %num.0
  br i1 %cmp.not.i, label %do.body.k3_dma_fill_desc.exit_crit_edge, label %if.then.i

do.body.k3_dma_fill_desc.exit_crit_edge:          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %k3_dma_fill_desc.exit

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %desc_hw_lli.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %desc_hw_lli.i, align 4
  %add.i = shl i32 %num.0, 5
  %mul.i = add i32 %add.i, 32
  %add1.i = add i32 %mul.i, %11
  %12 = ptrtoint ptr %desc_hw2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc_hw2.i, align 4
  %arrayidx.i = getelementptr %struct.k3_desc_hw, ptr %13, i32 %num.0
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add1.i, ptr %arrayidx.i, align 32
  br label %k3_dma_fill_desc.exit

k3_dma_fill_desc.exit:                            ; preds = %if.then.i, %do.body.k3_dma_fill_desc.exit_crit_edge
  %15 = ptrtoint ptr %desc_hw2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %desc_hw2.i, align 4
  %arrayidx3.i = getelementptr %struct.k3_desc_hw, ptr %16, i32 %num.0
  %17 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx3.i, align 32
  %or.i = or i32 %18, 2
  store i32 %or.i, ptr %arrayidx3.i, align 32
  %19 = load ptr, ptr %desc_hw2.i, align 4
  %count.i = getelementptr %struct.k3_desc_hw, ptr %19, i32 %num.0, i32 2
  %20 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %5, ptr %count.i, align 16
  %21 = load ptr, ptr %desc_hw2.i, align 4
  %saddr.i = getelementptr %struct.k3_desc_hw, ptr %21, i32 %num.0, i32 3
  %22 = ptrtoint ptr %saddr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %src.addr.0, ptr %saddr.i, align 4
  %23 = load ptr, ptr %desc_hw2.i, align 4
  %daddr.i = getelementptr %struct.k3_desc_hw, ptr %23, i32 %num.0, i32 4
  %24 = ptrtoint ptr %daddr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %dst.addr.0, ptr %daddr.i, align 8
  %25 = load ptr, ptr %desc_hw2.i, align 4
  %config.i = getelementptr %struct.k3_desc_hw, ptr %25, i32 %num.0, i32 5
  %26 = ptrtoint ptr %config.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %7, ptr %config.i, align 4
  %add13 = add i32 %5, %src.addr.0
  %add14 = add i32 %dst.addr.0, %5
  %sub15 = sub i32 %len.addr.0, %5
  %tobool16.not = icmp eq i32 %sub15, 0
  br i1 %tobool16.not, label %do.end, label %k3_dma_fill_desc.exit.do.body_crit_edge

k3_dma_fill_desc.exit.do.body_crit_edge:          ; preds = %k3_dma_fill_desc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %k3_dma_fill_desc.exit
  %27 = ptrtoint ptr %desc_hw2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %desc_hw2.i, align 4
  %arrayidx = getelementptr %struct.k3_desc_hw, ptr %28, i32 %num.0
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %arrayidx, align 32
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call1, ptr noundef %chan) #9
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call1, i32 0, i32 1
  %30 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call1, i32 0, i32 4
  %31 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 4
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call1, i32 0, i32 5
  %32 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call1, i32 0, i32 1
  %33 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call1, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %residue.i, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call1, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %36, ptr noundef %desc_allocated.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.vchan_tx_prep.exit_crit_edge

do.end.vchan_tx_prep.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %node.i, ptr %prev.i.i, align 4
  %38 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call1, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev3.i.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %node.i, ptr %36, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %do.end.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call1, %vchan_tx_prep.exit ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @k3_dma_prep_slave_sg(ptr noundef %chan, ptr noundef %sgl, i32 noundef %sglen, i32 noundef %dir, i32 noundef %flags, ptr nocapture noundef readnone %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -4
  %cmp = icmp eq ptr %sgl, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %cyclic = getelementptr i8, ptr %chan, i32 200
  %0 = ptrtoint ptr %cyclic to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %cyclic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sglen)
  %cmp187.not = icmp eq i32 %sglen, 0
  br i1 %cmp187.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.090 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %num.089 = phi i32 [ %num.1, %for.body.for.body_crit_edge ], [ %sglen, %if.end.for.body_crit_edge ]
  %sg.088 = phi ptr [ %call7, %for.body.for.body_crit_edge ], [ %sgl, %if.end.for.body_crit_edge ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.088, i32 0, i32 4
  %1 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8188, i32 %2)
  %cmp2 = icmp ugt i32 %2, 8188
  %sub = add i32 %2, 8187
  %div = udiv i32 %sub, 8188
  %sub4 = add nsw i32 %div, -1
  %add5 = select i1 %cmp2, i32 %sub4, i32 0
  %num.1 = add i32 %add5, %num.089
  %inc = add nuw i32 %i.090, 1
  %call7 = tail call ptr @sg_next(ptr noundef %sg.088) #9
  %exitcond.not = icmp eq i32 %inc, %sglen
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %num.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %num.1, %for.body.for.end_crit_edge ]
  %call8 = tail call fastcc ptr @k3_dma_alloc_desc_resource(i32 noundef %num.0.lcssa, ptr noundef %chan)
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %if.end10

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %for.end
  %3 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %dir, label %if.end10.k3_dma_config_write.exit_crit_edge [
    i32 2, label %if.end10.if.end5.i_crit_edge
    i32 1, label %if.then2.i
  ]

if.end10.if.end5.i_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.end10.k3_dma_config_write.exit_crit_edge:      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %k3_dma_config_write.exit

if.then2.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then2.i, %if.end10.if.end5.i_crit_edge
  %.sink104 = phi i32 [ -2147483648, %if.then2.i ], [ 1073741824, %if.end10.if.end5.i_crit_edge ]
  %.sink103 = phi i32 [ 212, %if.then2.i ], [ 208, %if.end10.if.end5.i_crit_edge ]
  %.sink101 = phi i32 [ 228, %if.then2.i ], [ 224, %if.end10.if.end5.i_crit_edge ]
  %.sink = phi i32 [ 220, %if.then2.i ], [ 216, %if.end10.if.end5.i_crit_edge ]
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink104, ptr %add.ptr.i, align 4
  %dst_addr.i = getelementptr i8, ptr %chan, i32 %.sink103
  %5 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dst_addr.i, align 4
  %dev_addr4.i = getelementptr i8, ptr %chan, i32 192
  %7 = ptrtoint ptr %dev_addr4.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %dev_addr4.i, align 4
  %dst_maxburst.i = getelementptr i8, ptr %chan, i32 %.sink101
  %dst_addr_width.i = getelementptr i8, ptr %chan, i32 %.sink
  %8 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %width.0.i = load i32, ptr %dst_addr_width.i, align 4
  %9 = ptrtoint ptr %dst_maxburst.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %maxburst.0.i = load i32, ptr %dst_maxburst.i, align 4
  %10 = zext i32 %width.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %width.0.i, label %if.end5.i.k3_dma_config_write.exit_crit_edge [
    i32 1, label %if.end5.i.sw.bb.i_crit_edge
    i32 2, label %if.end5.i.sw.bb.i_crit_edge105
    i32 4, label %if.end5.i.sw.bb.i_crit_edge106
    i32 8, label %if.end5.i.sw.bb.i_crit_edge107
  ]

if.end5.i.sw.bb.i_crit_edge107:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end5.i.sw.bb.i_crit_edge106:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end5.i.sw.bb.i_crit_edge105:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end5.i.sw.bb.i_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end5.i.k3_dma_config_write.exit_crit_edge:     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %k3_dma_config_write.exit

sw.bb.i:                                          ; preds = %if.end5.i.sw.bb.i_crit_edge, %if.end5.i.sw.bb.i_crit_edge105, %if.end5.i.sw.bb.i_crit_edge106, %if.end5.i.sw.bb.i_crit_edge107
  %11 = tail call i32 @llvm.cttz.i32(i32 %width.0.i, i1 false) #9, !range !121
  br label %k3_dma_config_write.exit

k3_dma_config_write.exit:                         ; preds = %sw.bb.i, %if.end5.i.k3_dma_config_write.exit_crit_edge, %if.end10.k3_dma_config_write.exit_crit_edge
  %maxburst.03.i = phi i32 [ %maxburst.0.i, %sw.bb.i ], [ %maxburst.0.i, %if.end5.i.k3_dma_config_write.exit_crit_edge ], [ 0, %if.end10.k3_dma_config_write.exit_crit_edge ]
  %val.0.i = phi i32 [ %11, %sw.bb.i ], [ 3, %if.end5.i.k3_dma_config_write.exit_crit_edge ], [ 3, %if.end10.k3_dma_config_write.exit_crit_edge ]
  %shl.i = shl nuw nsw i32 %val.0.i, 12
  %shl7.i = shl nuw nsw i32 %val.0.i, 16
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i, align 4
  %14 = add i32 %maxburst.03.i, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %14)
  %15 = icmp ult i32 %14, -16
  %sub.i = add i32 %maxburst.03.i, -1
  %val.1.i = select i1 %15, i32 15, i32 %sub.i
  %shl15.i = shl nuw nsw i32 %val.1.i, 20
  %shl16.i = shl nuw nsw i32 %val.1.i, 24
  %chan_id.i = getelementptr i8, ptr %chan, i32 16
  %16 = ptrtoint ptr %chan_id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %chan_id.i, align 4
  %shl23.i = shl i32 %17, 4
  %or17.i = or i32 %shl.i, %shl7.i
  %or.i = or i32 %or17.i, %13
  %or9.i = or i32 %or.i, %shl16.i
  %or19.i = or i32 %or9.i, %shl15.i
  %or21.i = or i32 %or19.i, %shl23.i
  %or25.i = or i32 %or21.i, 5
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or25.i, ptr %add.ptr.i, align 4
  br i1 %cmp187.not, label %k3_dma_config_write.exit.for.end32_crit_edge, label %for.body14.lr.ph

k3_dma_config_write.exit.for.end32_crit_edge:     ; preds = %k3_dma_config_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end32

for.body14.lr.ph:                                 ; preds = %k3_dma_config_write.exit
  %desc_num.i = getelementptr inbounds %struct.k3_dma_desc_sw, ptr %call8, i32 0, i32 2
  %desc_hw2.i = getelementptr inbounds %struct.k3_dma_desc_sw, ptr %call8, i32 0, i32 4
  %dev_addr22 = getelementptr i8, ptr %chan, i32 192
  %desc_hw_lli.i = getelementptr inbounds %struct.k3_dma_desc_sw, ptr %call8, i32 0, i32 1
  br label %for.body14

for.body14:                                       ; preds = %for.inc29.for.body14_crit_edge, %for.body14.lr.ph
  %i.197 = phi i32 [ 0, %for.body14.lr.ph ], [ %inc30, %for.inc29.for.body14_crit_edge ]
  %num.296 = phi i32 [ 0, %for.body14.lr.ph ], [ %inc25, %for.inc29.for.body14_crit_edge ]
  %dst.095 = phi i32 [ 0, %for.body14.lr.ph ], [ %dst.2, %for.inc29.for.body14_crit_edge ]
  %src.094 = phi i32 [ 0, %for.body14.lr.ph ], [ %src.2, %for.inc29.for.body14_crit_edge ]
  %sg.193 = phi ptr [ %sgl, %for.body14.lr.ph ], [ %call31, %for.inc29.for.body14_crit_edge ]
  %total.092 = phi i32 [ 0, %for.body14.lr.ph ], [ %add16, %for.inc29.for.body14_crit_edge ]
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.193, i32 0, i32 3
  %19 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma_address, align 4
  %dma_length15 = getelementptr inbounds %struct.scatterlist, ptr %sg.193, i32 0, i32 4
  %21 = ptrtoint ptr %dma_length15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma_length15, align 4
  br label %do.body

do.body:                                          ; preds = %k3_dma_fill_desc.exit.do.body_crit_edge, %for.body14
  %avail.0 = phi i32 [ %22, %for.body14 ], [ %sub27, %k3_dma_fill_desc.exit.do.body_crit_edge ]
  %addr.0 = phi i32 [ %20, %for.body14 ], [ %add26, %k3_dma_fill_desc.exit.do.body_crit_edge ]
  %src.1 = phi i32 [ %src.094, %for.body14 ], [ %src.2, %k3_dma_fill_desc.exit.do.body_crit_edge ]
  %dst.1 = phi i32 [ %dst.095, %for.body14 ], [ %dst.2, %k3_dma_fill_desc.exit.do.body_crit_edge ]
  %num.3 = phi i32 [ %num.296, %for.body14 ], [ %inc25, %k3_dma_fill_desc.exit.do.body_crit_edge ]
  %23 = tail call i32 @llvm.umin.i32(i32 %avail.0, i32 8188)
  %24 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %dir, label %do.body.if.end24_crit_edge [
    i32 1, label %if.then19
    i32 2, label %if.then21
  ]

do.body.if.end24_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %dev_addr22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dev_addr22, align 4
  br label %if.end24

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %dev_addr22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dev_addr22, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.then19, %do.body.if.end24_crit_edge
  %src.2 = phi i32 [ %addr.0, %if.then19 ], [ %28, %if.then21 ], [ %src.1, %do.body.if.end24_crit_edge ]
  %dst.2 = phi i32 [ %26, %if.then19 ], [ %addr.0, %if.then21 ], [ %dst.1, %do.body.if.end24_crit_edge ]
  %inc25 = add i32 %num.3, 1
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i, align 4
  %31 = ptrtoint ptr %desc_num.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %desc_num.i, align 4
  %sub.i84 = add i32 %32, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i84, i32 %num.3)
  %cmp.not.i = icmp eq i32 %sub.i84, %num.3
  br i1 %cmp.not.i, label %if.end24.k3_dma_fill_desc.exit_crit_edge, label %if.then.i85

if.end24.k3_dma_fill_desc.exit_crit_edge:         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %k3_dma_fill_desc.exit

if.then.i85:                                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %desc_hw_lli.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %desc_hw_lli.i, align 4
  %add.i = shl i32 %num.3, 5
  %mul.i = add i32 %add.i, 32
  %add1.i = add i32 %mul.i, %34
  %35 = ptrtoint ptr %desc_hw2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %desc_hw2.i, align 4
  %arrayidx.i = getelementptr %struct.k3_desc_hw, ptr %36, i32 %num.3
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add1.i, ptr %arrayidx.i, align 32
  br label %k3_dma_fill_desc.exit

k3_dma_fill_desc.exit:                            ; preds = %if.then.i85, %if.end24.k3_dma_fill_desc.exit_crit_edge
  %38 = ptrtoint ptr %desc_hw2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %desc_hw2.i, align 4
  %arrayidx3.i = getelementptr %struct.k3_desc_hw, ptr %39, i32 %num.3
  %40 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx3.i, align 32
  %or.i86 = or i32 %41, 2
  store i32 %or.i86, ptr %arrayidx3.i, align 32
  %42 = load ptr, ptr %desc_hw2.i, align 4
  %count.i = getelementptr %struct.k3_desc_hw, ptr %42, i32 %num.3, i32 2
  %43 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %23, ptr %count.i, align 16
  %44 = load ptr, ptr %desc_hw2.i, align 4
  %saddr.i = getelementptr %struct.k3_desc_hw, ptr %44, i32 %num.3, i32 3
  %45 = ptrtoint ptr %saddr.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %src.2, ptr %saddr.i, align 4
  %46 = load ptr, ptr %desc_hw2.i, align 4
  %daddr.i = getelementptr %struct.k3_desc_hw, ptr %46, i32 %num.3, i32 4
  %47 = ptrtoint ptr %daddr.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %dst.2, ptr %daddr.i, align 8
  %48 = load ptr, ptr %desc_hw2.i, align 4
  %config.i = getelementptr %struct.k3_desc_hw, ptr %48, i32 %num.3, i32 5
  %49 = ptrtoint ptr %config.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %30, ptr %config.i, align 4
  %add26 = add i32 %addr.0, %23
  %sub27 = sub i32 %avail.0, %23
  %tobool28.not = icmp eq i32 %sub27, 0
  br i1 %tobool28.not, label %for.inc29, label %k3_dma_fill_desc.exit.do.body_crit_edge

k3_dma_fill_desc.exit.do.body_crit_edge:          ; preds = %k3_dma_fill_desc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.inc29:                                        ; preds = %k3_dma_fill_desc.exit
  %add16 = add i32 %22, %total.092
  %inc30 = add nuw i32 %i.197, 1
  %call31 = tail call ptr @sg_next(ptr noundef %sg.193) #9
  %exitcond100.not = icmp eq i32 %inc30, %sglen
  br i1 %exitcond100.not, label %for.inc29.for.end32_crit_edge, label %for.inc29.for.body14_crit_edge

for.inc29.for.body14_crit_edge:                   ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body14

for.inc29.for.end32_crit_edge:                    ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end32

for.end32:                                        ; preds = %for.inc29.for.end32_crit_edge, %k3_dma_config_write.exit.for.end32_crit_edge
  %total.0.lcssa = phi i32 [ 0, %k3_dma_config_write.exit.for.end32_crit_edge ], [ %add16, %for.inc29.for.end32_crit_edge ]
  %num.2.lcssa = phi i32 [ -1, %k3_dma_config_write.exit.for.end32_crit_edge ], [ %num.3, %for.inc29.for.end32_crit_edge ]
  %desc_hw = getelementptr inbounds %struct.k3_dma_desc_sw, ptr %call8, i32 0, i32 4
  %50 = ptrtoint ptr %desc_hw to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %desc_hw, align 4
  %arrayidx = getelementptr %struct.k3_desc_hw, ptr %51, i32 %num.2.lcssa
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %arrayidx, align 32
  %size = getelementptr inbounds %struct.k3_dma_desc_sw, ptr %call8, i32 0, i32 3
  %53 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %total.0.lcssa, ptr %size, align 4
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call8, ptr noundef %chan) #9
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call8, i32 0, i32 1
  %54 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call8, i32 0, i32 4
  %55 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 4
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call8, i32 0, i32 5
  %56 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call8, i32 0, i32 1
  %57 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call8, i32 0, i32 1, i32 1
  %58 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %residue.i, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call8, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %59 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %60, ptr noundef %desc_allocated.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end32.vchan_tx_prep.exit_crit_edge

for.end32.vchan_tx_prep.exit_crit_edge:           ; preds = %for.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %for.end32
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %node.i, ptr %prev.i.i, align 4
  %62 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call8, i32 0, i32 2, i32 1
  %63 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev3.i.i.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %node.i, ptr %60, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %for.end32.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call8, %vchan_tx_prep.exit ], [ null, %entry.cleanup_crit_edge ], [ null, %for.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @k3_dma_prep_dma_cyclic(ptr noundef %chan, i32 noundef %buf_addr, i32 noundef %buf_len, i32 noundef %period_len, i32 noundef %dir, i32 noundef %flags) #2 align 64 {
entry:
  %buf_addr.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf_addr.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %buf_addr, ptr %buf_addr.addr, align 4
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @k3_dma_prep_dma_cyclic.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@k3_dma_prep_dma_cyclic, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !123

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %2, i32 0, i32 15
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %dev_addr = getelementptr i8, ptr %chan, i32 192
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @k3_dma_prep_dma_cyclic.__UNIQUE_ID_ddebug248, ptr noundef %4, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30, ptr noundef nonnull %buf_addr.addr, ptr noundef %dev_addr, i32 noundef %buf_len, i32 noundef %period_len, i32 noundef %dir) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %buf_len)
  %cmp = icmp ugt i32 %buf_len, 4096
  %sub = add i32 %buf_len, 4095
  %div98 = lshr i32 %sub, 12
  %num.0 = select i1 %cmp, i32 %div98, i32 1
  %call10 = call fastcc ptr @k3_dma_alloc_desc_resource(i32 noundef %num.0, ptr noundef %chan)
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %do.end.cleanup_crit_edge, label %if.end13

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %do.end
  %cyclic = getelementptr i8, ptr %chan, i32 200
  %5 = ptrtoint ptr %cyclic to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %cyclic, align 4
  %6 = ptrtoint ptr %buf_addr.addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf_addr.addr, align 4
  %8 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %dir, label %if.end13.k3_dma_config_write.exit_crit_edge [
    i32 2, label %if.end13.if.end5.i_crit_edge
    i32 1, label %if.then2.i
  ]

if.end13.if.end5.i_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.end13.k3_dma_config_write.exit_crit_edge:      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %k3_dma_config_write.exit

if.then2.i:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then2.i, %if.end13.if.end5.i_crit_edge
  %.sink107 = phi i32 [ -2147483648, %if.then2.i ], [ 1073741824, %if.end13.if.end5.i_crit_edge ]
  %.sink106 = phi i32 [ 212, %if.then2.i ], [ 208, %if.end13.if.end5.i_crit_edge ]
  %.sink104 = phi i32 [ 228, %if.then2.i ], [ 224, %if.end13.if.end5.i_crit_edge ]
  %.sink = phi i32 [ 220, %if.then2.i ], [ 216, %if.end13.if.end5.i_crit_edge ]
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink107, ptr %add.ptr.i, align 4
  %dst_addr.i = getelementptr i8, ptr %chan, i32 %.sink106
  %10 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dst_addr.i, align 4
  %dev_addr4.i = getelementptr i8, ptr %chan, i32 192
  %12 = ptrtoint ptr %dev_addr4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %dev_addr4.i, align 4
  %dst_maxburst.i = getelementptr i8, ptr %chan, i32 %.sink104
  %dst_addr_width.i = getelementptr i8, ptr %chan, i32 %.sink
  %13 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %width.0.i = load i32, ptr %dst_addr_width.i, align 4
  %14 = ptrtoint ptr %dst_maxburst.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %maxburst.0.i = load i32, ptr %dst_maxburst.i, align 4
  %15 = zext i32 %width.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %width.0.i, label %if.end5.i.k3_dma_config_write.exit_crit_edge [
    i32 1, label %if.end5.i.sw.bb.i_crit_edge
    i32 2, label %if.end5.i.sw.bb.i_crit_edge108
    i32 4, label %if.end5.i.sw.bb.i_crit_edge109
    i32 8, label %if.end5.i.sw.bb.i_crit_edge110
  ]

if.end5.i.sw.bb.i_crit_edge110:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end5.i.sw.bb.i_crit_edge109:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end5.i.sw.bb.i_crit_edge108:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end5.i.sw.bb.i_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end5.i.k3_dma_config_write.exit_crit_edge:     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %k3_dma_config_write.exit

sw.bb.i:                                          ; preds = %if.end5.i.sw.bb.i_crit_edge, %if.end5.i.sw.bb.i_crit_edge108, %if.end5.i.sw.bb.i_crit_edge109, %if.end5.i.sw.bb.i_crit_edge110
  %16 = call i32 @llvm.cttz.i32(i32 %width.0.i, i1 false) #9, !range !121
  br label %k3_dma_config_write.exit

k3_dma_config_write.exit:                         ; preds = %sw.bb.i, %if.end5.i.k3_dma_config_write.exit_crit_edge, %if.end13.k3_dma_config_write.exit_crit_edge
  %maxburst.03.i = phi i32 [ %maxburst.0.i, %sw.bb.i ], [ %maxburst.0.i, %if.end5.i.k3_dma_config_write.exit_crit_edge ], [ 0, %if.end13.k3_dma_config_write.exit_crit_edge ]
  %val.0.i = phi i32 [ %16, %sw.bb.i ], [ 3, %if.end5.i.k3_dma_config_write.exit_crit_edge ], [ 3, %if.end13.k3_dma_config_write.exit_crit_edge ]
  %shl.i = shl nuw nsw i32 %val.0.i, 12
  %shl7.i = shl nuw nsw i32 %val.0.i, 16
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i, align 4
  %19 = add i32 %maxburst.03.i, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %19)
  %20 = icmp ult i32 %19, -16
  %sub.i = add i32 %maxburst.03.i, -1
  %val.1.i = select i1 %20, i32 15, i32 %sub.i
  %shl15.i = shl nuw nsw i32 %val.1.i, 20
  %shl16.i = shl nuw nsw i32 %val.1.i, 24
  %chan_id.i = getelementptr i8, ptr %chan, i32 16
  %21 = ptrtoint ptr %chan_id.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chan_id.i, align 4
  %shl23.i = shl i32 %22, 4
  %or17.i = or i32 %shl.i, %shl7.i
  %or.i = or i32 %or17.i, %18
  %or9.i = or i32 %or.i, %shl16.i
  %or19.i = or i32 %or9.i, %shl15.i
  %or21.i = or i32 %or19.i, %shl23.i
  %or25.i = or i32 %or21.i, 5
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or25.i, ptr %add.ptr.i, align 4
  %desc_num.i = getelementptr inbounds %struct.k3_dma_desc_sw, ptr %call10, i32 0, i32 2
  %desc_hw2.i = getelementptr inbounds %struct.k3_dma_desc_sw, ptr %call10, i32 0, i32 4
  %dev_addr26 = getelementptr i8, ptr %chan, i32 192
  %desc_hw_lli.i = getelementptr inbounds %struct.k3_dma_desc_sw, ptr %call10, i32 0, i32 1
  br label %do.body18

do.body18:                                        ; preds = %k3_dma_fill_desc.exit.do.body18_crit_edge, %k3_dma_config_write.exit
  %avail.0 = phi i32 [ %buf_len, %k3_dma_config_write.exit ], [ %sub36, %k3_dma_fill_desc.exit.do.body18_crit_edge ]
  %addr.0 = phi i32 [ %7, %k3_dma_config_write.exit ], [ %add35, %k3_dma_fill_desc.exit.do.body18_crit_edge ]
  %src.0 = phi i32 [ 0, %k3_dma_config_write.exit ], [ %src.1, %k3_dma_fill_desc.exit.do.body18_crit_edge ]
  %dst.0 = phi i32 [ 0, %k3_dma_config_write.exit ], [ %dst.1, %k3_dma_fill_desc.exit.do.body18_crit_edge ]
  %num.1 = phi i32 [ 0, %k3_dma_config_write.exit ], [ %inc, %k3_dma_fill_desc.exit.do.body18_crit_edge ]
  %since.0 = phi i32 [ 0, %k3_dma_config_write.exit ], [ %since.1, %k3_dma_fill_desc.exit.do.body18_crit_edge ]
  %24 = call i32 @llvm.umin.i32(i32 %period_len, i32 %avail.0)
  %25 = call i32 @llvm.umin.i32(i32 %24, i32 4096)
  %26 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %dir, label %do.body18.if.end28_crit_edge [
    i32 1, label %if.then22
    i32 2, label %if.then25
  ]

do.body18.if.end28_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then22:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %dev_addr26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dev_addr26, align 4
  br label %if.end28

if.then25:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %dev_addr26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dev_addr26, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.then22, %do.body18.if.end28_crit_edge
  %src.1 = phi i32 [ %addr.0, %if.then22 ], [ %30, %if.then25 ], [ %src.0, %do.body18.if.end28_crit_edge ]
  %dst.1 = phi i32 [ %28, %if.then22 ], [ %addr.0, %if.then25 ], [ %dst.0, %do.body18.if.end28_crit_edge ]
  %add29 = add i32 %since.0, %25
  call void @__sanitizer_cov_trace_cmp4(i32 %add29, i32 %period_len)
  %cmp30.not = icmp ult i32 %add29, %period_len
  %sub32 = select i1 %cmp30.not, i32 0, i32 %period_len
  %since.1 = sub i32 %add29, %sub32
  %en_tc2.0 = select i1 %cmp30.not, i32 0, i32 2
  %inc = add i32 %num.1, 1
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i, align 4
  %or = or i32 %32, %en_tc2.0
  %33 = ptrtoint ptr %desc_num.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %desc_num.i, align 4
  %sub.i100 = add i32 %34, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i100, i32 %num.1)
  %cmp.not.i = icmp eq i32 %sub.i100, %num.1
  br i1 %cmp.not.i, label %if.end28.k3_dma_fill_desc.exit_crit_edge, label %if.then.i101

if.end28.k3_dma_fill_desc.exit_crit_edge:         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %k3_dma_fill_desc.exit

if.then.i101:                                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %desc_hw_lli.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %desc_hw_lli.i, align 4
  %add.i = shl i32 %num.1, 5
  %mul.i = add i32 %add.i, 32
  %add1.i = add i32 %mul.i, %36
  %37 = ptrtoint ptr %desc_hw2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %desc_hw2.i, align 4
  %arrayidx.i = getelementptr %struct.k3_desc_hw, ptr %38, i32 %num.1
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add1.i, ptr %arrayidx.i, align 32
  br label %k3_dma_fill_desc.exit

k3_dma_fill_desc.exit:                            ; preds = %if.then.i101, %if.end28.k3_dma_fill_desc.exit_crit_edge
  %40 = ptrtoint ptr %desc_hw2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %desc_hw2.i, align 4
  %arrayidx3.i = getelementptr %struct.k3_desc_hw, ptr %41, i32 %num.1
  %42 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx3.i, align 32
  %or.i102 = or i32 %43, 2
  store i32 %or.i102, ptr %arrayidx3.i, align 32
  %44 = load ptr, ptr %desc_hw2.i, align 4
  %count.i = getelementptr %struct.k3_desc_hw, ptr %44, i32 %num.1, i32 2
  %45 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %25, ptr %count.i, align 16
  %46 = load ptr, ptr %desc_hw2.i, align 4
  %saddr.i = getelementptr %struct.k3_desc_hw, ptr %46, i32 %num.1, i32 3
  %47 = ptrtoint ptr %saddr.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %src.1, ptr %saddr.i, align 4
  %48 = load ptr, ptr %desc_hw2.i, align 4
  %daddr.i = getelementptr %struct.k3_desc_hw, ptr %48, i32 %num.1, i32 4
  %49 = ptrtoint ptr %daddr.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %dst.1, ptr %daddr.i, align 8
  %50 = load ptr, ptr %desc_hw2.i, align 4
  %config.i = getelementptr %struct.k3_desc_hw, ptr %50, i32 %num.1, i32 5
  %51 = ptrtoint ptr %config.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or, ptr %config.i, align 4
  %add35 = add i32 %25, %addr.0
  %sub36 = sub i32 %avail.0, %25
  %tobool38.not = icmp eq i32 %sub36, 0
  br i1 %tobool38.not, label %do.end39, label %k3_dma_fill_desc.exit.do.body18_crit_edge

k3_dma_fill_desc.exit.do.body18_crit_edge:        ; preds = %k3_dma_fill_desc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body18

do.end39:                                         ; preds = %k3_dma_fill_desc.exit
  %52 = ptrtoint ptr %desc_hw_lli.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %desc_hw_lli.i, align 4
  %54 = ptrtoint ptr %desc_hw2.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %desc_hw2.i, align 4
  %arrayidx = getelementptr %struct.k3_desc_hw, ptr %55, i32 %num.1
  %56 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx, align 32
  %or41 = or i32 %57, %53
  store i32 %or41, ptr %arrayidx, align 32
  %size = getelementptr inbounds %struct.k3_dma_desc_sw, ptr %call10, i32 0, i32 3
  %58 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %buf_len, ptr %size, align 4
  call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call10, ptr noundef %chan) #9
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call10, i32 0, i32 1
  %59 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call10, i32 0, i32 4
  %60 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 4
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call10, i32 0, i32 5
  %61 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call10, i32 0, i32 1
  %62 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call10, i32 0, i32 1, i32 1
  %63 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %residue.i, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call10, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %64 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %65, ptr noundef %desc_allocated.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end39.vchan_tx_prep.exit_crit_edge

do.end39.vchan_tx_prep.exit_crit_edge:            ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %node.i, ptr %prev.i.i, align 4
  %67 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call10, i32 0, i32 2, i32 1
  %68 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev3.i.i.i, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %node.i, ptr %65, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %do.end39.vchan_tx_prep.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %do.end.cleanup_crit_edge
  ret ptr %call10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @k3_dma_issue_pending(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %lock = getelementptr i8, ptr %chan, i32 92
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %2 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %3, %desc_submitted.i
  br i1 %cmp.i.not.i.i, label %entry.vchan_issue_pending.exit_crit_edge, label %if.then.i.i

entry.vchan_issue_pending.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_issue_pending.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %3, ptr %5, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %desc_issued.i, ptr %7, align 4
  store ptr %7, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %desc_submitted.i, ptr %desc_submitted.i, align 4
  store ptr %desc_submitted.i, ptr %prev2.i.i.i, align 4
  br label %vchan_issue_pending.exit

vchan_issue_pending.exit:                         ; preds = %if.then.i.i, %entry.vchan_issue_pending.exit_crit_edge
  %12 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.i.not = icmp eq ptr %13, %desc_issued.i
  br i1 %cmp.i.i.not, label %do.body29, label %if.then

if.then:                                          ; preds = %vchan_issue_pending.exit
  %lock9 = getelementptr inbounds %struct.k3_dma_dev, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock9) #9
  %phy = getelementptr i8, ptr %chan, i32 180
  %14 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.then10, label %if.then.if.end27_crit_edge

if.then.if.end27_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then10:                                        ; preds = %if.then
  %node = getelementptr i8, ptr %chan, i32 184
  %16 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %node, align 4
  %cmp.i.not = icmp eq ptr %17, %node
  br i1 %cmp.i.not, label %if.then13, label %if.then10.if.end27_crit_edge

if.then10.if.end27_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then13:                                        ; preds = %if.then10
  %chan_pending = getelementptr inbounds %struct.k3_dma_dev, ptr %1, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.k3_dma_dev, ptr %1, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %19, ptr noundef %chan_pending) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then13.list_add_tail.exit_crit_edge

if.then13.list_add_tail.exit_crit_edge:           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %node, ptr %prev.i, align 4
  %21 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %chan_pending, ptr %node, align 4
  %prev3.i.i = getelementptr i8, ptr %chan, i32 188
  %22 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %node, ptr %19, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then13.list_add_tail.exit_crit_edge
  %state.i = getelementptr inbounds %struct.k3_dma_dev, ptr %1, i32 0, i32 2, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %list_add_tail.exit.tasklet_schedule.exit_crit_edge

list_add_tail.exit.tasklet_schedule.exit_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  %task = getelementptr inbounds %struct.k3_dma_dev, ptr %1, i32 0, i32 2
  tail call void @__tasklet_schedule(ptr noundef %task) #9
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %list_add_tail.exit.tasklet_schedule.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @k3_dma_issue_pending.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@k3_dma_issue_pending, %if.end27)) #9
          to label %if.then22 [label %if.end27], !srcloc !123

if.then22:                                        ; preds = %tasklet_schedule.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @k3_dma_issue_pending.__UNIQUE_ID_ddebug240, ptr noundef %25, ptr noundef nonnull @.str.33, ptr noundef %chan) #9
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %tasklet_schedule.exit, %if.then10.if.end27_crit_edge, %if.then.if.end27_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock9) #9
  br label %if.end50

do.body29:                                        ; preds = %vchan_issue_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @k3_dma_issue_pending.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@k3_dma_issue_pending, %if.end50)) #9
          to label %if.then43 [label %if.end50], !srcloc !123

if.then43:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #11
  %dev45 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %26 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev45, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @k3_dma_issue_pending.__UNIQUE_ID_ddebug241, ptr noundef %27, ptr noundef nonnull @.str.34, ptr noundef %chan) #9
  br label %if.end50

if.end50:                                         ; preds = %if.then43, %do.body29, %if.end27
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @k3_dma_config(ptr nocapture noundef writeonly %chan, ptr nocapture noundef readonly %cfg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %slave_config = getelementptr i8, ptr %chan, i32 204
  %0 = call ptr @memcpy(ptr %slave_config, ptr %cfg, i32 48)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @k3_dma_transfer_pause(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %phy = getelementptr i8, ptr %chan, i32 180
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @k3_dma_transfer_pause.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@k3_dma_transfer_pause, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !123

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @k3_dma_transfer_pause.__UNIQUE_ID_ddebug252, ptr noundef %5, ptr noundef nonnull @.str.36, ptr noundef %chan) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %status = getelementptr i8, ptr %chan, i32 196
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.then6, label %do.end.if.end12_crit_edge

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then6:                                         ; preds = %do.end
  %8 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %status, align 4
  %tobool8.not = icmp eq ptr %3, null
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %base.i = getelementptr inbounds %struct.k3_dma_phy, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %10, i32 2076
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21) #9
  %12 = and i32 %11, -16777217
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %14, i32 2076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %12) #9, !srcloc !124
  br label %if.end12

if.else:                                          ; preds = %if.then6
  %lock = getelementptr inbounds %struct.k3_dma_dev, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %node = getelementptr i8, ptr %chan, i32 184
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.else.list_del_init.exit_crit_edge

if.else.list_del_init.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr i8, ptr %chan, i32 188
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.else.list_del_init.exit_crit_edge
  %21 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %node, ptr %node, align 4
  %prev.i3.i = getelementptr i8, ptr %chan, i32 188
  %22 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %node, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %if.end12

if.end12:                                         ; preds = %list_del_init.exit, %if.then9, %do.end.if.end12_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @k3_dma_transfer_resume(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %phy = getelementptr i8, ptr %chan, i32 180
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @k3_dma_transfer_resume.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@k3_dma_transfer_resume, %do.body7)) #9
          to label %if.then [label %do.body7], !srcloc !123

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @k3_dma_transfer_resume.__UNIQUE_ID_ddebug253, ptr noundef %5, ptr noundef nonnull @.str.38, ptr noundef %chan) #9
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry
  %lock = getelementptr i8, ptr %chan, i32 92
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %status = getelementptr i8, ptr %chan, i32 196
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp16 = icmp eq i32 %7, 2
  br i1 %cmp16, label %if.then18, label %do.body7.if.end30_crit_edge

do.body7.if.end30_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then18:                                        ; preds = %do.body7
  %8 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %status, align 4
  %tobool20.not = icmp eq ptr %3, null
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %base.i = getelementptr inbounds %struct.k3_dma_phy, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr.i45 = getelementptr i8, ptr %10, i32 2076
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45) #9
  %12 = or i32 %11, 16777216
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %14, i32 2076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %12) #9, !srcloc !124
  br label %if.end30

if.else:                                          ; preds = %if.then18
  %desc_issued = getelementptr i8, ptr %chan, i32 152
  %15 = ptrtoint ptr %desc_issued to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %desc_issued, align 4
  %cmp.i.not = icmp eq ptr %16, %desc_issued
  br i1 %cmp.i.not, label %if.else.if.end30_crit_edge, label %if.then25

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then25:                                        ; preds = %if.else
  %lock26 = getelementptr inbounds %struct.k3_dma_dev, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock26) #9
  %node = getelementptr i8, ptr %chan, i32 184
  %chan_pending = getelementptr inbounds %struct.k3_dma_dev, ptr %1, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.k3_dma_dev, ptr %1, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %18, ptr noundef %chan_pending) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then25.list_add_tail.exit_crit_edge

if.then25.list_add_tail.exit_crit_edge:           ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %node, ptr %prev.i, align 4
  %20 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %chan_pending, ptr %node, align 4
  %prev3.i.i = getelementptr i8, ptr %chan, i32 188
  %21 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %node, ptr %18, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then25.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock26) #9
  br label %if.end30

if.end30:                                         ; preds = %list_add_tail.exit, %if.else.if.end30_crit_edge, %if.then21, %do.body7.if.end30_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call11) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @k3_dma_terminate_all(ptr noundef %chan) #2 align 64 {
entry:
  %head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %phy = getelementptr i8, ptr %chan, i32 180
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head) #9
  %4 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %5 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %head, ptr %head, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %head, ptr %4, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @k3_dma_terminate_all.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@k3_dma_terminate_all, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !123

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @k3_dma_terminate_all.__UNIQUE_ID_ddebug251, ptr noundef %8, ptr noundef nonnull @.str.40, ptr noundef %chan) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.k3_dma_dev, ptr %1, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %lock) #9
  %node = getelementptr i8, ptr %chan, i32 184
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #9
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_del_init.exit_crit_edge

do.end.list_del_init.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr i8, ptr %chan, i32 188
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.end.list_del_init.exit_crit_edge
  %15 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %node, ptr %node, align 4
  %prev.i3.i = getelementptr i8, ptr %chan, i32 188
  %16 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %node, ptr %prev.i3.i, align 4
  call void @_raw_spin_unlock(ptr noundef %lock) #9
  %lock11 = getelementptr i8, ptr %chan, i32 92
  %call13 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock11) #9
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %17 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %desc_allocated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %18, %desc_allocated.i
  br i1 %cmp.i.not.i.i, label %list_del_init.exit.list_splice_tail_init.exit.i_crit_edge, label %if.then.i.i

list_del_init.exit.list_splice_tail_init.exit.i_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit.i

if.then.i.i:                                      ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %4, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %18, ptr %20, align 4
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %head, ptr %22, align 4
  store ptr %22, ptr %4, align 4
  %26 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %desc_allocated.i, ptr %desc_allocated.i, align 4
  store ptr %desc_allocated.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_tail_init.exit.i

list_splice_tail_init.exit.i:                     ; preds = %if.then.i.i, %list_del_init.exit.list_splice_tail_init.exit.i_crit_edge
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %27 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i9.i = icmp eq ptr %28, %desc_submitted.i
  br i1 %cmp.i.not.i9.i, label %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge, label %if.then.i13.i

list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge: ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit14.i

if.then.i13.i:                                    ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %4, align 4
  %prev2.i.i11.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %31 = ptrtoint ptr %prev2.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev2.i.i11.i, align 4
  %prev3.i.i12.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %33 = ptrtoint ptr %prev3.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev3.i.i12.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %28, ptr %30, align 4
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %head, ptr %32, align 4
  store ptr %32, ptr %4, align 4
  %36 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %desc_submitted.i, ptr %desc_submitted.i, align 4
  store ptr %desc_submitted.i, ptr %prev2.i.i11.i, align 4
  br label %list_splice_tail_init.exit14.i

list_splice_tail_init.exit14.i:                   ; preds = %if.then.i13.i, %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %37 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.not.i15.i = icmp eq ptr %38, %desc_issued.i
  br i1 %cmp.i.not.i15.i, label %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge, label %if.then.i19.i

list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit20.i

if.then.i19.i:                                    ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %4, align 4
  %prev2.i.i17.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %41 = ptrtoint ptr %prev2.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev2.i.i17.i, align 4
  %prev3.i.i18.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %43 = ptrtoint ptr %prev3.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev3.i.i18.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %38, ptr %40, align 4
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %head, ptr %42, align 4
  store ptr %42, ptr %4, align 4
  %46 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %desc_issued.i, ptr %desc_issued.i, align 4
  store ptr %desc_issued.i, ptr %prev2.i.i17.i, align 4
  br label %list_splice_tail_init.exit20.i

list_splice_tail_init.exit20.i:                   ; preds = %if.then.i19.i, %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7
  %47 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %desc_completed.i, align 4
  %cmp.i.not.i21.i = icmp eq ptr %48, %desc_completed.i
  br i1 %cmp.i.not.i21.i, label %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge, label %if.then.i25.i

list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit26.i

if.then.i25.i:                                    ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %4, align 4
  %prev2.i.i23.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7, i32 1
  %51 = ptrtoint ptr %prev2.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev2.i.i23.i, align 4
  %prev3.i.i24.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %53 = ptrtoint ptr %prev3.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev3.i.i24.i, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %48, ptr %50, align 4
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %head, ptr %52, align 4
  store ptr %52, ptr %4, align 4
  %56 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %desc_completed.i, ptr %desc_completed.i, align 4
  store ptr %desc_completed.i, ptr %prev2.i.i23.i, align 4
  br label %list_splice_tail_init.exit26.i

list_splice_tail_init.exit26.i:                   ; preds = %if.then.i25.i, %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %57 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile ptr, ptr %desc_terminated.i, align 4
  %cmp.i.not.i27.i = icmp eq ptr %58, %desc_terminated.i
  br i1 %cmp.i.not.i27.i, label %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge, label %if.then.i31.i

list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge: ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_get_all_descriptors.exit

if.then.i31.i:                                    ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %4, align 4
  %prev2.i.i29.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  %61 = ptrtoint ptr %prev2.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prev2.i.i29.i, align 4
  %prev3.i.i30.i = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  %63 = ptrtoint ptr %prev3.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev3.i.i30.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %58, ptr %60, align 4
  %65 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %head, ptr %62, align 4
  store ptr %62, ptr %4, align 4
  %66 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %desc_terminated.i, ptr %desc_terminated.i, align 4
  store ptr %desc_terminated.i, ptr %prev2.i.i29.i, align 4
  br label %vchan_get_all_descriptors.exit

vchan_get_all_descriptors.exit:                   ; preds = %if.then.i31.i, %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge
  %tobool19.not = icmp eq ptr %3, null
  br i1 %tobool19.not, label %vchan_get_all_descriptors.exit.if.end27_crit_edge, label %if.then20

vchan_get_all_descriptors.exit.if.end27_crit_edge: ; preds = %vchan_get_all_descriptors.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then20:                                        ; preds = %vchan_get_all_descriptors.exit
  %base.i.i = getelementptr inbounds %struct.k3_dma_phy, ptr %3, i32 0, i32 1
  %67 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %68, i32 2076
  %69 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9
  %70 = and i32 %69, -16777217
  %71 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base.i.i, align 4
  %add.ptr9.i.i = getelementptr i8, ptr %72, i32 2076
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i, i32 %70) #9, !srcloc !124
  %73 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %3, align 4
  %shl.i = shl nuw i32 1, %74
  %75 = call i32 @llvm.bswap.i32(i32 %shl.i) #9
  %base.i = getelementptr inbounds %struct.k3_dma_dev, ptr %1, i32 0, i32 1
  %76 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %77, i32 1536
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %75) #9, !srcloc !124
  %78 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %79, i32 1544
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %75) #9, !srcloc !124
  %80 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %81, i32 1552
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %75) #9, !srcloc !124
  %82 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %83, i32 1560
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %75) #9, !srcloc !124
  %84 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %phy, align 4
  %vchan = getelementptr inbounds %struct.k3_dma_phy, ptr %3, i32 0, i32 2
  %85 = ptrtoint ptr %vchan to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %vchan, align 4
  %ds_run = getelementptr inbounds %struct.k3_dma_phy, ptr %3, i32 0, i32 3
  %86 = ptrtoint ptr %ds_run to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ds_run, align 4
  %tobool22.not = icmp eq ptr %87, null
  br i1 %tobool22.not, label %if.then20.if.end26_crit_edge, label %if.then23

if.then20.if.end26_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then23:                                        ; preds = %if.then20
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %chan.i, align 4
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %87, i32 0, i32 2
  %desc_terminated.i51 = getelementptr inbounds %struct.virt_dma_chan, ptr %89, i32 0, i32 8
  %prev.i.i52 = getelementptr inbounds %struct.virt_dma_chan, ptr %89, i32 0, i32 8, i32 1
  %90 = ptrtoint ptr %prev.i.i52 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %prev.i.i52, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %91, ptr noundef %desc_terminated.i51) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then23.list_add_tail.exit.i_crit_edge

if.then23.list_add_tail.exit.i_crit_edge:         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %prev.i.i52 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %node.i, ptr %prev.i.i52, align 4
  %93 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %desc_terminated.i51, ptr %node.i, align 4
  %prev3.i.i.i53 = getelementptr inbounds %struct.virt_dma_desc, ptr %87, i32 0, i32 2, i32 1
  %94 = ptrtoint ptr %prev3.i.i.i53 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %91, ptr %prev3.i.i.i53, align 4
  %95 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %node.i, ptr %91, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.then23.list_add_tail.exit.i_crit_edge
  %cyclic.i = getelementptr inbounds %struct.virt_dma_chan, ptr %89, i32 0, i32 9
  %96 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cyclic.i, align 4
  %cmp.i = icmp eq ptr %97, %87
  br i1 %cmp.i, label %if.then.i, label %list_add_tail.exit.i.vchan_terminate_vdesc.exit_crit_edge

list_add_tail.exit.i.vchan_terminate_vdesc.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_terminate_vdesc.exit

if.then.i:                                        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %98 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %cyclic.i, align 4
  br label %vchan_terminate_vdesc.exit

vchan_terminate_vdesc.exit:                       ; preds = %if.then.i, %list_add_tail.exit.i.vchan_terminate_vdesc.exit_crit_edge
  %99 = ptrtoint ptr %ds_run to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr null, ptr %ds_run, align 4
  br label %if.end26

if.end26:                                         ; preds = %vchan_terminate_vdesc.exit, %if.then20.if.end26_crit_edge
  %ds_done = getelementptr inbounds %struct.k3_dma_phy, ptr %3, i32 0, i32 4
  %100 = ptrtoint ptr %ds_done to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %ds_done, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %vchan_get_all_descriptors.exit.if.end27_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock11, i32 noundef %call13) #9
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @k3_dma_synchronize(ptr noundef %chan) #2 align 64 {
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @k3_dma_free_desc(ptr noundef %vd) #2 align 64 {
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
  %pool = getelementptr inbounds %struct.k3_dma_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pool, align 4
  %desc_hw = getelementptr inbounds %struct.k3_dma_desc_sw, ptr %vd, i32 0, i32 4
  %6 = ptrtoint ptr %desc_hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc_hw, align 4
  %desc_hw_lli = getelementptr inbounds %struct.k3_dma_desc_sw, ptr %vd, i32 0, i32 1
  %8 = ptrtoint ptr %desc_hw_lli to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %desc_hw_lli, align 4
  tail call void @dma_pool_free(ptr noundef %5, ptr noundef %7, i32 noundef %9) #9
  tail call void @kfree(ptr noundef %vd) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #6 align 64 {
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
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @k3_dma_enable_dma(ptr nocapture noundef readonly %d, i1 noundef zeroext %on) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.k3_dma_dev, ptr %d, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  br i1 %on, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %1, i32 1672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #9, !srcloc !124
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 -65536) #9, !srcloc !124
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 -65536) #9, !srcloc !124
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr6 = getelementptr i8, ptr %7, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 -65536) #9, !srcloc !124
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr8 = getelementptr i8, ptr %9, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 -65536) #9, !srcloc !124
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr10 = getelementptr i8, ptr %1, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 0) #9, !srcloc !124
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr12 = getelementptr i8, ptr %11, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 0) #9, !srcloc !124
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr14 = getelementptr i8, ptr %13, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 0) #9, !srcloc !124
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr16 = getelementptr i8, ptr %15, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 0) #9, !srcloc !124
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @k3_of_dma_simple_xlate(ptr nocapture noundef readonly %dma_spec, ptr nocapture noundef readonly %ofdma) #2 align 64 {
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
  %dma_requests = getelementptr inbounds %struct.k3_dma_dev, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %dma_requests to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_requests, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp ult i32 %3, %5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %chans = getelementptr inbounds %struct.k3_dma_dev, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %chans to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chans, align 4
  %vc = getelementptr %struct.k3_dma_chan, ptr %7, i32 %3, i32 1
  %call = tail call ptr @dma_get_slave_channel(ptr noundef %vc) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @k3_dma_tasklet(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %channels = getelementptr i8, ptr %t, i32 -356
  %0 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channels, align 4
  %cmp.not169 = icmp eq ptr %1, %channels
  br i1 %cmp.not169, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr i8, ptr %t, i32 -296
  br label %for.body

for.body:                                         ; preds = %if.end28.for.body_crit_edge, %for.body.lr.ph
  %.pn.in170 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn172, %if.end28.for.body_crit_edge ]
  %c.0171 = getelementptr i8, ptr %.pn.in170, i32 -36
  %2 = ptrtoint ptr %.pn.in170 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn172 = load ptr, ptr %.pn.in170, align 4
  %lock = getelementptr i8, ptr %.pn.in170, i32 60
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #9
  %phy = getelementptr i8, ptr %.pn.in170, i32 148
  %3 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phy, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.body.if.end28_crit_edge, label %land.lhs.true

for.body.if.end28_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

land.lhs.true:                                    ; preds = %for.body
  %ds_done = getelementptr inbounds %struct.k3_dma_phy, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %ds_done to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ds_done, align 4
  %tobool14.not = icmp eq ptr %6, null
  br i1 %tobool14.not, label %land.lhs.true.if.end28_crit_edge, label %if.then

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then:                                          ; preds = %land.lhs.true
  %call = tail call fastcc i32 @k3_dma_start_txd(ptr noundef %c.0171)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool15.not = icmp eq i32 %call, 0
  br i1 %tobool15.not, label %if.then.if.end28_crit_edge, label %do.body

if.then.if.end28_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

do.body:                                          ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @k3_dma_tasklet.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@k3_dma_tasklet, %do.end)) #9
          to label %if.then24 [label %do.end], !srcloc !123

if.then24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %4, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @k3_dma_tasklet.__UNIQUE_ID_ddebug238, ptr noundef %8, ptr noundef nonnull @.str.42, i32 noundef %10) #9
  br label %do.end

do.end:                                           ; preds = %if.then24, %do.body
  %11 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %phy, align 4
  %vchan = getelementptr inbounds %struct.k3_dma_phy, ptr %4, i32 0, i32 2
  %12 = ptrtoint ptr %vchan to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %vchan, align 4
  br label %if.end28

if.end28:                                         ; preds = %do.end, %if.then.if.end28_crit_edge, %land.lhs.true.if.end28_crit_edge, %for.body.if.end28_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #9
  %cmp.not = icmp eq ptr %.pn172, %channels
  br i1 %cmp.not, label %if.end28.for.end_crit_edge, label %if.end28.for.body_crit_edge

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end28.for.end_crit_edge, %entry.for.end_crit_edge
  %lock38 = getelementptr i8, ptr %t, i32 24
  tail call void @_raw_spin_lock_irq(ptr noundef %lock38) #9
  %dma_channels = getelementptr i8, ptr %t, i32 92
  %13 = ptrtoint ptr %dma_channels to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp40173.not = icmp eq i32 %14, 0
  br i1 %cmp40173.not, label %for.end.for.end83_crit_edge, label %for.body41.lr.ph

for.end.for.end83_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end83

for.body41.lr.ph:                                 ; preds = %for.end
  %dma_channel_mask = getelementptr i8, ptr %t, i32 100
  %phy45 = getelementptr i8, ptr %t, i32 76
  %chan_pending = getelementptr i8, ptr %t, i32 68
  %dev76 = getelementptr i8, ptr %t, i32 -296
  br label %for.body41

for.body41:                                       ; preds = %for.inc82.for.body41_crit_edge, %for.body41.lr.ph
  %pch.0175 = phi i32 [ 0, %for.body41.lr.ph ], [ %inc, %for.inc82.for.body41_crit_edge ]
  %pch_alloc.0174 = phi i32 [ 0, %for.body41.lr.ph ], [ %pch_alloc.1, %for.inc82.for.body41_crit_edge ]
  %15 = ptrtoint ptr %dma_channel_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_channel_mask, align 4
  %shl = shl nuw i32 1, %pch.0175
  %and = and i32 %16, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool42.not = icmp eq i32 %and, 0
  br i1 %tobool42.not, label %for.body41.for.inc82_crit_edge, label %if.end44

for.body41.for.inc82_crit_edge:                   ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc82

if.end44:                                         ; preds = %for.body41
  %17 = ptrtoint ptr %phy45 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phy45, align 4
  %arrayidx = getelementptr %struct.k3_dma_phy, ptr %18, i32 %pch.0175
  %vchan46 = getelementptr %struct.k3_dma_phy, ptr %18, i32 %pch.0175, i32 2
  %19 = ptrtoint ptr %vchan46 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vchan46, align 4
  %cmp47 = icmp eq ptr %20, null
  br i1 %cmp47, label %land.lhs.true48, label %if.end44.for.inc82_crit_edge

if.end44.for.inc82_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc82

land.lhs.true48:                                  ; preds = %if.end44
  %21 = ptrtoint ptr %chan_pending to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %chan_pending, align 4
  %cmp.i.not = icmp eq ptr %22, %chan_pending
  br i1 %cmp.i.not, label %land.lhs.true48.for.inc82_crit_edge, label %if.then51

land.lhs.true48.for.inc82_crit_edge:              ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc82

if.then51:                                        ; preds = %land.lhs.true48
  %add.ptr56 = getelementptr i8, ptr %22, i32 -188
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %22) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then51.list_del_init.exit_crit_edge

if.then51.list_del_init.exit_crit_edge:           ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %22, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then51.list_del_init.exit_crit_edge
  %29 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %22, ptr %22, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %22, ptr %prev.i3.i, align 4
  %or = or i32 %shl, %pch_alloc.0174
  %31 = ptrtoint ptr %vchan46 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr56, ptr %vchan46, align 4
  %phy59 = getelementptr i8, ptr %22, i32 -4
  %32 = ptrtoint ptr %phy59 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %arrayidx, ptr %phy59, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @k3_dma_tasklet.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@k3_dma_tasklet, %for.inc82)) #9
          to label %if.then74 [label %for.inc82], !srcloc !123

if.then74:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %dev76 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev76, align 4
  %vc77 = getelementptr i8, ptr %22, i32 -184
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @k3_dma_tasklet.__UNIQUE_ID_ddebug239, ptr noundef %34, ptr noundef nonnull @.str.43, i32 noundef %pch.0175, ptr noundef %vc77) #9
  br label %for.inc82

for.inc82:                                        ; preds = %if.then74, %list_del_init.exit, %land.lhs.true48.for.inc82_crit_edge, %if.end44.for.inc82_crit_edge, %for.body41.for.inc82_crit_edge
  %pch_alloc.1 = phi i32 [ %pch_alloc.0174, %land.lhs.true48.for.inc82_crit_edge ], [ %or, %if.then74 ], [ %pch_alloc.0174, %if.end44.for.inc82_crit_edge ], [ %pch_alloc.0174, %for.body41.for.inc82_crit_edge ], [ %or, %list_del_init.exit ]
  %inc = add nuw i32 %pch.0175, 1
  %35 = ptrtoint ptr %dma_channels to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dma_channels, align 4
  %cmp40 = icmp ult i32 %inc, %36
  br i1 %cmp40, label %for.inc82.for.body41_crit_edge, label %for.inc82.for.end83_crit_edge

for.inc82.for.end83_crit_edge:                    ; preds = %for.inc82
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end83

for.inc82.for.body41_crit_edge:                   ; preds = %for.inc82
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body41

for.end83:                                        ; preds = %for.inc82.for.end83_crit_edge, %for.end.for.end83_crit_edge
  %pch_alloc.0.lcssa = phi i32 [ 0, %for.end.for.end83_crit_edge ], [ %pch_alloc.1, %for.inc82.for.end83_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock38) #9
  %37 = ptrtoint ptr %dma_channels to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp87177.not = icmp eq i32 %38, 0
  br i1 %cmp87177.not, label %for.end83.for.end113_crit_edge, label %for.body88.lr.ph

for.end83.for.end113_crit_edge:                   ; preds = %for.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end113

for.body88.lr.ph:                                 ; preds = %for.end83
  %dma_channel_mask89 = getelementptr i8, ptr %t, i32 100
  %phy99 = getelementptr i8, ptr %t, i32 76
  br label %for.body88

for.body88:                                       ; preds = %for.inc111.for.body88_crit_edge, %for.body88.lr.ph
  %pch.1178 = phi i32 [ 0, %for.body88.lr.ph ], [ %inc112, %for.inc111.for.body88_crit_edge ]
  %39 = ptrtoint ptr %dma_channel_mask89 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dma_channel_mask89, align 4
  %shl90 = shl nuw i32 1, %pch.1178
  %and91 = and i32 %40, %shl90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  %and96 = and i32 %shl90, %pch_alloc.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  %or.cond = select i1 %tobool92.not, i1 true, i1 %tobool97.not
  br i1 %or.cond, label %for.body88.for.inc111_crit_edge, label %if.then98

for.body88.for.inc111_crit_edge:                  ; preds = %for.body88
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc111

if.then98:                                        ; preds = %for.body88
  %41 = ptrtoint ptr %phy99 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %phy99, align 4
  %vchan101 = getelementptr %struct.k3_dma_phy, ptr %42, i32 %pch.1178, i32 2
  %43 = ptrtoint ptr %vchan101 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vchan101, align 4
  %tobool102.not = icmp eq ptr %44, null
  br i1 %tobool102.not, label %if.then98.for.inc111_crit_edge, label %if.then103

if.then98.for.inc111_crit_edge:                   ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc111

if.then103:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #11
  %lock105 = getelementptr inbounds %struct.k3_dma_chan, ptr %44, i32 0, i32 1, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock105) #9
  %call106 = tail call fastcc i32 @k3_dma_start_txd(ptr noundef nonnull %44)
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock105) #9
  br label %for.inc111

for.inc111:                                       ; preds = %if.then103, %if.then98.for.inc111_crit_edge, %for.body88.for.inc111_crit_edge
  %inc112 = add nuw i32 %pch.1178, 1
  %45 = ptrtoint ptr %dma_channels to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dma_channels, align 4
  %cmp87 = icmp ult i32 %inc112, %46
  br i1 %cmp87, label %for.inc111.for.body88_crit_edge, label %for.inc111.for.end113_crit_edge

for.inc111.for.end113_crit_edge:                  ; preds = %for.inc111
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end113

for.inc111.for.body88_crit_edge:                  ; preds = %for.inc111
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body88

for.end113:                                       ; preds = %for.inc111.for.end113_crit_edge, %for.end83.for.end113_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vchan_find_desc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @k3_dma_alloc_desc_resource(i32 noundef %num, ptr noundef %chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %num)
  %cmp = icmp sgt i32 %num, 512
  br i1 %cmp, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @k3_dma_alloc_desc_resource.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@k3_dma_alloc_desc_resource, %cleanup)) #9
          to label %if.then6 [label %cleanup], !srcloc !123

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @k3_dma_alloc_desc_resource.__UNIQUE_ID_ddebug242, ptr noundef %5, ptr noundef nonnull @.str.28, ptr noundef %chan, i32 noundef %num, i32 noundef 512) #9
  br label %cleanup

if.end8:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 2304, i32 noundef 132) #13
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %pool = getelementptr inbounds %struct.k3_dma_dev, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pool, align 4
  %desc_hw_lli = getelementptr inbounds %struct.k3_dma_desc_sw, ptr %call7.i.i, i32 0, i32 1
  %call.i = tail call ptr @dma_pool_alloc(ptr noundef %8, i32 noundef 2304, ptr noundef %desc_hw_lli) #9
  %desc_hw = getelementptr inbounds %struct.k3_dma_desc_sw, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %desc_hw to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %desc_hw, align 8
  %tobool15.not = icmp eq ptr %call.i, null
  br i1 %tobool15.not, label %do.body17, label %if.end38

do.body17:                                        ; preds = %if.end12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @k3_dma_alloc_desc_resource.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@k3_dma_alloc_desc_resource, %do.end37)) #9
          to label %if.then31 [label %do.end37], !srcloc !123

if.then31:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chan, align 4
  %dev33 = getelementptr inbounds %struct.dma_device, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev33, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @k3_dma_alloc_desc_resource.__UNIQUE_ID_ddebug243, ptr noundef %13, ptr noundef nonnull @.str.29, ptr noundef %chan) #9
  br label %do.end37

do.end37:                                         ; preds = %if.then31, %do.body17
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end38:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %desc_num = getelementptr inbounds %struct.k3_dma_desc_sw, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %desc_num to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %num, ptr %desc_num, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %do.end37, %if.end8.cleanup_crit_edge, %if.then6, %do.body
  %retval.0 = phi ptr [ %call7.i.i, %if.end38 ], [ null, %do.end37 ], [ null, %if.then6 ], [ null, %if.end8.cleanup_crit_edge ], [ null, %do.body ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_get_slave_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @k3_dma_start_txd(ptr noundef %c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vc = getelementptr inbounds %struct.k3_dma_chan, ptr %c, i32 0, i32 1
  %0 = ptrtoint ptr %vc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vc, align 4
  %desc_issued.i = getelementptr inbounds %struct.k3_dma_chan, ptr %c, i32 0, i32 1, i32 6
  %2 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.not.i = icmp eq ptr %3, %desc_issued.i
  %add.ptr.i = getelementptr i8, ptr %3, i32 -108
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %add.ptr.i
  %phy = getelementptr inbounds %struct.k3_dma_chan, ptr %c, i32 0, i32 2
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %shl = shl nuw i32 1, %7
  %base.i = getelementptr inbounds %struct.k3_dma_dev, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i39 = getelementptr i8, ptr %9, i32 1680
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39) #9, !srcloc !120
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  %and = and i32 %11, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %12 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy, align 4
  %ds_run = getelementptr inbounds %struct.k3_dma_phy, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %ds_run to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ds_run, align 4
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %tobool11.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool11.not, label %if.end21, label %if.then12

if.then12:                                        ; preds = %if.end10
  %node = getelementptr inbounds %struct.virt_dma_desc, ptr %spec.select.i, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then12.list_del.exit_crit_edge

if.then12.list_del.exit_crit_edge:                ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %spec.select.i, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then12.list_del.exit_crit_edge
  %22 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.virt_dma_desc, ptr %spec.select.i, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %24 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %phy, align 4
  %ds_run18 = getelementptr inbounds %struct.k3_dma_phy, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %ds_run18 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %spec.select.i, ptr %ds_run18, align 4
  %27 = load ptr, ptr %phy, align 4
  %ds_done = getelementptr inbounds %struct.k3_dma_phy, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %ds_done to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %ds_done, align 4
  %29 = load ptr, ptr %phy, align 4
  %desc_hw = getelementptr inbounds %struct.k3_dma_desc_sw, ptr %spec.select.i, i32 0, i32 4
  %30 = ptrtoint ptr %desc_hw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %desc_hw, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 32
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #9
  %base.i40 = getelementptr inbounds %struct.k3_dma_phy, ptr %29, i32 0, i32 1
  %35 = ptrtoint ptr %base.i40 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i40, align 4
  %add.ptr.i41 = getelementptr i8, ptr %36, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41, i32 %34) #9, !srcloc !124
  %count.i = getelementptr inbounds %struct.k3_desc_hw, ptr %31, i32 0, i32 2
  %37 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %count.i, align 16
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #9
  %40 = ptrtoint ptr %base.i40 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i40, align 4
  %add.ptr2.i = getelementptr i8, ptr %41, i32 2064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %39) #9, !srcloc !124
  %saddr.i = getelementptr inbounds %struct.k3_desc_hw, ptr %31, i32 0, i32 3
  %42 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %saddr.i, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #9
  %45 = ptrtoint ptr %base.i40 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i40, align 4
  %add.ptr4.i = getelementptr i8, ptr %46, i32 2068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %44) #9, !srcloc !124
  %daddr.i = getelementptr inbounds %struct.k3_desc_hw, ptr %31, i32 0, i32 4
  %47 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %daddr.i, align 8
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #9
  %50 = ptrtoint ptr %base.i40 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i40, align 4
  %add.ptr6.i = getelementptr i8, ptr %51, i32 2072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %49) #9, !srcloc !124
  %config.i = getelementptr inbounds %struct.k3_desc_hw, ptr %31, i32 0, i32 5
  %52 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %config.i, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #9
  %55 = ptrtoint ptr %base.i40 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i40, align 4
  %add.ptr8.i = getelementptr i8, ptr %56, i32 2076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %54) #9, !srcloc !124
  br label %cleanup

if.end21:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %ds_run to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %ds_run, align 4
  %58 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %phy, align 4
  %ds_done25 = getelementptr inbounds %struct.k3_dma_phy, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %ds_done25 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %ds_done25, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %list_del.exit, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_del.exit ], [ -11, %if.end21 ], [ -11, %entry.cleanup_crit_edge ], [ -11, %if.end.cleanup_crit_edge ], [ -11, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @k3_dma_suspend_dev(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %base.i = getelementptr inbounds %struct.k3_dma_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 1680
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  %dev2 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.44, i32 noundef %5) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %9, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 0) #9, !srcloc !124
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %11, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 0) #9, !srcloc !124
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %13, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 0) #9, !srcloc !124
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %15, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 0) #9, !srcloc !124
  %clk = getelementptr inbounds %struct.k3_dma_dev, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %17) #9
  tail call void @clk_unprepare(ptr noundef %17) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @k3_dma_resume_dev(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.k3_dma_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %3) #9
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %do.end, label %clk_prepare_enable.exit.if.end_crit_edge

clk_prepare_enable.exit.if.end_crit_edge:         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev2 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.14, i32 noundef %retval.0.i) #12
  br label %cleanup

if.end:                                           ; preds = %clk_prepare_enable.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %base.i = getelementptr inbounds %struct.k3_dma_dev, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 1672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !124
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %9, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 -65536) #9, !srcloc !124
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %11, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 -65536) #9, !srcloc !124
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %13, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 -65536) #9, !srcloc !124
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %15, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 -65536) #9, !srcloc !124
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %retval.0.i, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55, !56, !58, !59, !60, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !95, !97, !99, !101, !103, !104, !105, !106, !108, !109}
!llvm.module.flags = !{!110, !111, !112, !113, !114, !115, !116, !117}
!llvm.ident = !{!118}

!0 = !{ptr @__initcall__kmod_k3dma__254_1040_k3_pdma_driver_init6, !1, !"__initcall__kmod_k3dma__254_1040_k3_pdma_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/dma/k3dma.c", i32 1040, i32 1}
!2 = !{ptr @__exitcall_k3_pdma_driver_exit, !1, !"__exitcall_k3_pdma_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description255, !4, !"__UNIQUE_ID_description255", i1 false, i1 false}
!4 = !{!"../drivers/dma/k3dma.c", i32 1042, i32 1}
!5 = !{ptr @__UNIQUE_ID_alias256, !6, !"__UNIQUE_ID_alias256", i1 false, i1 false}
!6 = !{!"../drivers/dma/k3dma.c", i32 1043, i32 1}
!7 = !{ptr @__UNIQUE_ID_file257, !8, !"__UNIQUE_ID_file257", i1 false, i1 false}
!8 = !{!"../drivers/dma/k3dma.c", i32 1044, i32 1}
!9 = !{ptr @__UNIQUE_ID_license258, !8, !"__UNIQUE_ID_license258", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/dma/k3dma.c", i32 1032, i32 11}
!12 = !{ptr @k3_pdma_driver, !13, !"k3_pdma_driver", i1 false, i1 false}
!13 = !{!"../drivers/dma/k3dma.c", i32 1030, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/dma/k3dma.c", i32 860, i32 5}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/dma/k3dma.c", i32 862, i32 5}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/dma/k3dma.c", i32 864, i32 5}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/dma/k3dma.c", i32 866, i32 4}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @k3_dma_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @k3_dma_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/dma/k3dma.c", i32 875, i32 4}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @k3_dma_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @k3_dma_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/dma/k3dma.c", i32 947, i32 3}
!35 = !{ptr @k3_dma_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @k3_dma_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @k3_dma_probe.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/dma/k3dma.c", i32 962, i32 2}
!39 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/dma/k3dma.c", i32 966, i32 2}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @k3_dma_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @k3_dma_probe._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/dma/k3dma.c", i32 247, i32 4}
!47 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @k3_dma_int_handler._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @k3_dma_int_handler._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/dma/virt-dma.h", i32 101, i32 2}
!52 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug236, !51, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/dma/k3dma.c", i32 470, i32 3}
!58 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @k3_dma_alloc_desc_resource.__UNIQUE_ID_ddebug242, !57, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/dma/k3dma.c", i32 481, i32 3}
!62 = !{ptr @k3_dma_alloc_desc_resource.__UNIQUE_ID_ddebug243, !61, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/dma/k3dma.c", i32 601, i32 2}
!65 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @k3_dma_prep_dma_cyclic.__UNIQUE_ID_ddebug248, !64, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/dma/k3dma.c", i32 438, i32 5}
!69 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @k3_dma_issue_pending.__UNIQUE_ID_ddebug240, !68, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/dma/k3dma.c", i32 443, i32 3}
!73 = !{ptr @k3_dma_issue_pending.__UNIQUE_ID_ddebug241, !72, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/dma/k3dma.c", i32 768, i32 2}
!76 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @k3_dma_transfer_pause.__UNIQUE_ID_ddebug252, !75, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/dma/k3dma.c", i32 790, i32 2}
!80 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @k3_dma_transfer_resume.__UNIQUE_ID_ddebug253, !79, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/dma/k3dma.c", i32 728, i32 2}
!84 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @k3_dma_terminate_all.__UNIQUE_ID_ddebug251, !83, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/dma/k3dma.c", i32 313, i32 5}
!88 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @k3_dma_tasklet.__UNIQUE_ID_ddebug238, !87, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/dma/k3dma.c", i32 339, i32 4}
!92 = !{ptr @k3_dma_tasklet.__UNIQUE_ID_ddebug239, !91, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!93 = !{ptr @k3_pdma_dt_ids, !94, !"k3_pdma_dt_ids", i1 false, i1 false}
!94 = !{!"../drivers/dma/k3dma.c", i32 815, i32 34}
!95 = !{ptr @k3_v1_dma_data, !96, !"k3_v1_dma_data", i1 false, i1 false}
!96 = !{!"../drivers/dma/k3dma.c", i32 807, i32 36}
!97 = !{ptr @asp_v1_dma_data, !98, !"asp_v1_dma_data", i1 false, i1 false}
!98 = !{!"../drivers/dma/k3dma.c", i32 811, i32 36}
!99 = !{ptr @k3_dma_pmops, !100, !"k3_dma_pmops", i1 false, i1 false}
!100 = !{!"../drivers/dma/k3dma.c", i32 1028, i32 8}
!101 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/dma/k3dma.c", i32 1004, i32 3}
!103 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @k3_dma_suspend_dev._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @k3_dma_suspend_dev._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/dma/k3dma.c", i32 1020, i32 3}
!108 = !{ptr @k3_dma_resume_dev._entry, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @k3_dma_resume_dev._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{i32 1, !"wchar_size", i32 2}
!111 = !{i32 1, !"min_enum_size", i32 4}
!112 = !{i32 8, !"branch-target-enforcement", i32 0}
!113 = !{i32 8, !"sign-return-address", i32 0}
!114 = !{i32 8, !"sign-return-address-all", i32 0}
!115 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!116 = !{i32 7, !"uwtable", i32 1}
!117 = !{i32 7, !"frame-pointer", i32 2}
!118 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!119 = !{!"branch_weights", i32 1, i32 2000}
!120 = !{i64 6240643}
!121 = !{i32 0, i32 33}
!122 = !{i64 2154397169, i64 2154397656, i64 2154397206, i64 2154397262, i64 2154397296, i64 2154397320, i64 2154397361, i64 2154397382, i64 2154397410, i64 2154397444}
!123 = !{i64 2148256164, i64 2148256169, i64 2148256182, i64 2148256226, i64 2148256260, i64 2148256281}
!124 = !{i64 6240225}
!125 = !{i64 2154398669}
!126 = !{i8 0, i8 2}
